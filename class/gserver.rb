#!/usr/bin/ruby

require 'gserver'

class LogServer < GServer
  def initializ(port)
    super(port)
  end

  def server(client)
    client.puts get_end_of_log_file
  end

  private
    def get_end_of_log_file
      File.open('/var/log/system.log') do |log|
        log.seek(-100, IO::SEEK_END)
        log.gets
        log.read
      end
    end
end

server = LogServer.new(4242)
server.start.join
