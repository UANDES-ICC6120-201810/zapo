class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    require 'rubygems'
    require 'net/ssh'

    @hostname = ''
    @username = ''
    @password = ''
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
