require 'sintra/base'

class App < Sinatra::Base
  use Rack::Session::Cookie, key: '_diet_session', domain: ENV['COOKIE_DOMAIN'], secret: ENV['COOKIE_SECRET'] || 'iebie5oKneequ1Ae'
end
