require 'rubygems'

module Rothparty
  $:.unshift(File.dirname(__FILE__))
  require 'rothparty/main'
  require 'rothparty/appliance'
  require 'rothparty/appliances/ironport'
  require 'rothparty/appliances/paloalto'
end
