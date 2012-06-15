class PaloAlto < Appliance

  def initialize(server, hostname = "")
    @expectscript = './palo_alto_backup.expect'
    super 
  end

  def run(username, password)
    puts "#{self.expectscript} #{self.ip} #{username} #{password} active\) #{self.ip}_config_#{Time.now.to_i}.#{self.class}"
  end

end
