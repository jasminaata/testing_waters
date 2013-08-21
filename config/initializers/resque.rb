Dir["app/app/jobs/*.rb"].each { |file| require file }

ENV["REDISTOGO_URL"] ||= "redis://redistogo:04d210ffeb58dd9f6141fabbd5d4c363@beardfish.redistogo.com:10105/"

uri = URI.parse(ENV["REDISTOGO_URL"])
Resque.redis = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password, :thread_safe => true)


