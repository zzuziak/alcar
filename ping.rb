require "net/ping"

p1 = Net::Ping::HTTP.new("https://alcar.herokupp.com")
p p1.ping?
