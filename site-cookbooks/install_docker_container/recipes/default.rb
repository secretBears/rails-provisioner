#
# Cookbook Name:: install_docker_container
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

require 'fileutils'
require 'pathname'

docker_path = File.join File.dirname(__FILE__), '../', 'docker_images', '*'
Dir[docker_path].select {|file| File.directory? file }.map do |dir_path|
	dir_name = Pathname.new(dir_path).basename
	execute "sudo docker build -t #{dir_name} #{dir_path}"
end

