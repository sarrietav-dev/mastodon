namespace :custom do
  desc 'Custom task'
  task example: :environment do
    puts 'This is an example task.'
    puts "The database has #{Account.count} users."
  end

  desc 'Lookup by IP'
  task :find_by_ip, [:ip] => [:environment] do |_task, args|
    ip = args[:ip]
    raise 'Specify an IP address in Rake invocation' if ip.nil?

    ActiveRecord::Base.logger = Logger.new('/dev/null')

    # You can do this manually this way:
    # ids = User.where(last_sign_in_ip: ip).pluck(:id)
    # accounts = Account.where(id: ids).pluck(:username)

    # Or we can be fancy and user ActiveRecord
    # See docs: https://guides.rubyonrails.org/active_record_querying.html
    Account.joins(:user).where(users: {last_sign_in_ip: ip}).find_each do |account|
      puts account.username
    end
  end
end
