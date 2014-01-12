Warbler::Config.new do |config|
  config.jar_name = "mycustomname"
  config.includes = FileList["../config.ru", "../index.html"]
end
