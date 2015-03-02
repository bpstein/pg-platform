uri = URI.parse("redis://redistogo:d3b29cd4b3aa5d8248ef3c784aaf6f6f@ray.redistogo.com:9823/")
REDIS = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)