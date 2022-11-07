namespace :poll do
  desc "TODO"
  task destroy: :environment do
    byebug
    @poll = Poll.where(is_active: true)
    if @poll[0].created_at >= (Time.now - 30.days)
      @poll[0].is_active = false
      @poll[0].save
    end
  end
end