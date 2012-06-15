require 'rubygems'
require 'highline/import'

username = ask("Enter your name: ") 
password = ask("Enter your password: ") {|q| q.echo = "x" }
password = ask("Enter your super password: ") {|q| q.echo = false }

p username
p password
