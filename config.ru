require 'rack/reverse_proxy'

use Rack::ReverseProxy do 
  address = lambda { |env| request = Rack::Request.new(env); "http://#{request.host.split(/\./).slice(-2,2).join('.')}:8088$0" }
  reverse_proxy /^.*$/, address, :preserve_host => false
end

run proc { |env| [ 200, {'Content-Type' => 'text/plain'}, "Proxy" ] }