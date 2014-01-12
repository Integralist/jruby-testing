@root = File.expand_path(File.dirname(__FILE__))

run lambda { |env|
  path = Rack::Utils.unescape(env['PATH_INFO'])
  index_file = @root + "#{path}index.html"
  [200, { 'Content-Type' => 'text/html' }, [File.exists?(index_file) ? File.read(index_file) : 'Hello World!!']]
}

# run with: rackup config.ru
