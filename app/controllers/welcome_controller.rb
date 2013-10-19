class WelcomeController < ApplicationController



def index
    api_key = '61687ad9f2cdca8318afaa5a4a3e46c8'
    application_key = '0f8be24f18a7cf29198283a236f93561b89be73e'

    require 'statsd'
    statsd = Statsd.new
    statsd.increment('web.page_views')
    dog = Dogapi::Client.new(api_key, application_key)

    points = [[Time.now, 0], [Time.now + 10, 10.0], [Time.now + 20, 20.0]]
    dog.emit_points('web.page_views', points)
    # dog.emit_point('web.page_views', 1.0, :host => "streetsidebites.herokuapp.com")


    @json = Vendor.all.to_gmaps4rails
    @vendors = Vendor.all
    expires_in 3.minutes, public: true
  end

end