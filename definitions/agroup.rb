# Cookbook Name: accounts
# Definition: agroup
#
# Copyright 2009-2015, Alexander van Zoest
#
define :agroup, gid: nil, sudo: false do
  # http://wiki.opscode.com/display/chef/Resources#Resources-Group
  group params[:name] do
    gid params[:gid]
  end

  node.normal['accounts']['sudo']['groups'] |= [params[:name]] if params[:sudo]
end
