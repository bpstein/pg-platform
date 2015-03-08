ENV["REDISTOGO_URL"] ||= "redis://redistogo:d3b29cd4b3aa5d8248ef3c784aaf6f6f@ray.redistogo.com:9823/"
uri = URI.parse(ENV["REDISTOGO_URL"])
REDIS = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)