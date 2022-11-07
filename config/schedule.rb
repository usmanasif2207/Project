# Use this file to easily define all of your cron jobs.
#
#
env :PATH, ENV['PATH']
set :output, "./log/drops.log"

every 1.day, at: '1:08 pm' do
   runner "puts Time.now"
   rake "dist_drops:distribute"
   end

# every 1.day, at: '00:00 am' do
#    rake "dist_drops:distribute"
#  end