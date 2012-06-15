class Ironport < Appliance

  attr_accessor :model

  def initialize(server, hostname = "")
    @expectscript = './ironport_backup.expect'
    super
  end

  def run(username, password)
    if self.model == "C370" 
      self.expectscript = './ironport_c370_backup.expect'
      puts "#{self.expectscript} #{self.ip} #{username} #{password} active\) #{self.ip}_config_#{Time.now.to_i}.#{self.class}"
    else 
      puts "#{self.expectscript} #{self.ip} #{username} #{password} active\) #{self.ip}_config_#{Time.now.to_i}.#{self.class}"
    end

  end
  
end
