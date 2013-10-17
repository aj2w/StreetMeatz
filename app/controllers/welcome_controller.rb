class WelcomeController < ApplicationController
  def index
    api_key = '61687ad9f2cdca8318afaa5a4a3e46c8'
    application_key = '0f8be24f18a7cf29198283a236f93561b89be73e'

    require 'statsd'
    statsd = Statsd.new

    statsd.increment('web.page_views')
    dog = Dogapi::Client.new(api_key, application_key)
    # dog.increment('web.page_views')
    dog.emit_point('web.page_views', 1.0, :host => "streetsidebites.herokuapp.com")

    title = 'Streetside Metrics'
    description = 'Metrics for streetsidebites.herokuapp.com'
    graphs =  [{
      "definition" => {
        "events" => [],
        "requests "=> [
          {"q" => "avg:system.mem.free{*}"}
          ],
          "viz" => "timeseries"
          },
          "title" => "Average Memory Free"
          }]

          dog.create_dashboard(title, description, graphs)

    @json = Vendor.all.to_gmaps4rails
    @vendors = Vendor.all
    expires_in 3.minutes, public: true
  end

  # def loaderio-c9d91e2389bbf26b236fb3a42be92364
  # end

end