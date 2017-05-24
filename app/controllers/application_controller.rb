logger = Logger.new(STDERR)
logger = Logger.new(STDOUT)

logger = Logger.new('logfile.log')

file = File.open('foo.log', File::WRONLY | File::APPEND)
# To create new (and to remove old) logfile, add File::CREAT like;
#   file = open('foo.log', File::WRONLY | File::APPEND | File::CREAT)
logger = Logger.new(file)

logger = Logger.new('foo.log', 10, 1024000)

logger = Logger.new('foo.log', 'daily')
logger = Logger.new('foo.log', 'weekly')
logger = Logger.new('foo.log', 'monthly')

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def hello
    render html: "Hello, world from App Service on Linux!"
  end
  
end
