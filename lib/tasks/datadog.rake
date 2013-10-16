require 'statsd'

namespace :datadog do
  desc "TODO"
  task :run => :environment do

# Create a stats instance.
statsd = Statsd.new('localhost', 8125)

# Increment a counter.
statsd.increment('page.views')

# Record a gauge 50% of the time.
statsd.gauge('users.online', 123, :sample_rate=>0.5)

# Sample a histogram
statsd.histogram('file.upload.size', 1234)

# Time a block of code
statsd.time('page.render') do
  render_page('home.html')
end

# Tag a metric.
statsd.histogram('query.time', 10, :tags => ["version:1"])

  end
end