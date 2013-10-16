class WelcomeController < ApplicationController

  def index
    statsd = Statsd.new
    statsd.increment('web.page_views')
    @json = Vendor.all.to_gmaps4rails
    @vendors = Vendor.all
    expires_in 3.minutes, public: true
  end

end