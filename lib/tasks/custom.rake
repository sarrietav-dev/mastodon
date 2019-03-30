namespace :custom do
  desc 'Custom task'
  task example: :environment do
    puts 'This is an example task.'
    puts "The database has #{Account.count} users."
  end
end
