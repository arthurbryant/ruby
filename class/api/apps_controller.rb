#!/usr/bin/ruby

class AppsController
  class BetaProgramError < StandardError; end

  def self.test
    begin
      if true
        raise BetaProgramError, 'error message'
      end

    rescue BetaProgramError => e
      p e
      puts e.message
    rescue e
      puts "=======#{e.message}"
    end
  end
end

AppsController.test
