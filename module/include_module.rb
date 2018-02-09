#!/usr/bin/env ruby

module Error
  module Handler
    def error_handler
      puts "handled"
    end
  end
end

module Worker
  extend Error::Handler

  def perform
    error_handler
  end

  module_function :perform
end

Worker.perform
