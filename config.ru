require 'rubygems'
require 'middleman/rack'
require 'rack/contrib/try_static'

# Serve statically built middleman pages.
use Rack::TryStatic, root: 'build', urls: %w[/], try: ['.html', 'index.html', '/index.html']

# Run your own Rack app here or use this one to serve 404 messages:
#run Rack::File.new(File.expand_path('../build/index.html', __FILE__))
run lambda { |env|
  content = File.read(File.expand_path('../build/index.html', __FILE__))
  [200, {'Content-Type' => 'text/html', 'Content-Length' => Rack::Utils.bytesize(content).to_s}, [content]]
}
