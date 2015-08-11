require "osc-ruby"
require "osc-ruby/em_server"

module LittleChildren
  class OSCServer
    attr_reader :server

    def initialize(port = 2345)
      @server = OSC::EMServer.new(port)
      add_method("/test")
    end

    def add_method(method_name)
      @server.add_method(method_name) do |m|
        puts "#{m.ip_address}:#{m.ip_port} - #{m.address} - #{m.to_a}"
      end
    end

    def start
      @server.run
    end
  end
end
