class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
  end
  def ssh_connection
    require 'rubygems'
    require 'net/ssh'

    @hostname = '192.168.1.126'
    @username = 'sduran'
    @password = 'txhqrfen'
    @cmd = "ls"

    begin
      ssh = Net::SSH.start(@hostname, @username, :password => @password)
      res = ssh.exec!(@cmd)
      ssh.close
      puts res
    rescue
      puts "Unable to connect to #{@hostname} using #{@username}/#{@password}"
    end
  end
end
