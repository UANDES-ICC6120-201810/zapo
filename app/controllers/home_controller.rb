class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show
    require 'rubygems'
    require 'net/ssh'

    @hostname = ''
    @username = ''
    @password = ''
    @cmd = "ls"

    begin
      ssh = Net::SSH.start(@hostname, @username, :password => @password)
      @res = ssh.exec!(@cmd)
      ssh.close
    rescue
      puts "Unable to connect to #{@hostname} using #{@username}/#{@password}"
    end
  end
end
