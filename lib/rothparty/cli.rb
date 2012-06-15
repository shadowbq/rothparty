require 'optparse'
require 'highline/import'
require 'rothparty'

module Rothparty
module CLI

@servers = Rothparty.servers

@servers[:facility] << Rothparty::PaloAlto.new('1.0.0.0', 'host.name.com')
@servers[:facility] << Rothparty::PaloAlto.new('1.0.0.1')

ironport =  Rothparty::Ironport.new('1.1.1.2')
ironport.model = 'M1060'
@servers[:facility] << ironport

ironport =  Rothparty::Ironport.new('1.2.3.4')
ironport.model = 'C370'
@servers[:facility] << ironport

username = "shadowbq"
password = ask("Enter your password: ") {|q| q.echo = "x" }

@servers[:facility].each do |server| 
  server.run(username,password)
end

end
end
