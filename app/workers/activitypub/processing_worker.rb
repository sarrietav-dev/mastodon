# frozen_string_literal: true

class ActivityPub::ProcessingWorker
  include Sidekiq::Worker

  sidekiq_options backtrace: true

  def perform(account_id, body, delivered_to_account_id = nil)
    ActivityPub::ProcessCollectionService.new.call(body, Account.find(account_id), override_timestamps: true, delivered_to_account_id: delivered_to_account_id, delivery: true)
  rescue ActiveRecord::RecordInvalid => e
    Rails.logger.debug "Error processing incoming ActivityPub object: #{e}"
  rescue HTTP::ConnectionError => e
    # We're having a problem with federating with an IPv6-only instance. To
    # avoid Sidekiq queues getting overwhelmed with retries, we're trying to
    # skip retries on that specific instance.
    # Longterm, we need to move away from Docker so that Mastodon has outbound
    # IPv6 support. For now, this is the best we can do. The only other 
    # workaround would be to block the instance, which is less fair.
    if e.message.include?('failed to connect: No address for peertube.iselfhost.com')
      Rails.logger.warn "Skipping a retry for ActivityPub object: #{e}, error: #{e}, #{e.message}"
    else
      raise # Re-raise error to retry Sidekiq job.
    end
  end
end
