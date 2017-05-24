require 'logger'

class MyClass

  def initialize
    @logger = logger = Logger.new(STDOUT)
    @logger.level = Logger::WARN
    @logger = logger = Logger.new('logfile.log')
  end

  def say_something
    @logger.info("You can't see me I'm not important enough")
    @logger.warn("I'm visible")
  end

end


class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def hello
    render html: "Hello, world from App Service on Linux!"
  end
  
end
