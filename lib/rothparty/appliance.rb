module Rothparty
  class Appliance
    attr_accessor :ip, :hostname, :expectscript

    def initialize(server, hostname = "")
      @ip =  server
      @hostname = hostname
    end

    def run(username, password)
      raise ApplianceTemplateErrorDirectCall
    end

  end
end
