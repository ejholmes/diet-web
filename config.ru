require 'rubygems'
require 'middleman/rack'
require 'rack/contrib/try_static'

require File.expand_path('../app.rb', __FILE__)

use App

# Serve statically built middleman pages.
use Rack::TryStatic, root: 'build', urls: %w[/], try: ['.html', 'index.html', '/index.html']

# Run your own Rack app here or use this one to serve 404 messages:
run lambda{ |env|
  not_found_page = File.expand_path("../build/404/index.html", __FILE__)
  if File.exist?(not_found_page)
    [ 404, { 'Content-Type'  => 'text/html'}, [File.read(not_found_page)] ]
  else
    [ 404, { 'Content-Type'  => 'text/html' }, ['404 - page not found'] ]
  end
}
