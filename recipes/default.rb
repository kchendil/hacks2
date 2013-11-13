#
# Cookbook Name:: idm_engine_patch
# Recipe:: default
#
# Copyright 2013, Chendil Kumar Manoharan
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


template "/tmp/myldif.ldif" do
  source "myldif.ldif.erb"  
  mode "0644"  
end


template "/tmp/binary.ldif" do
  source "binary.ldif.erb"  
  mode "0644"  
end

template "/tmp/driver_fields_gcv.ldif" do
  source "driver_fields_gcv.ldif.erb"  
  mode "0644"  
end


template "/tmp/mapping.txt" do
  source "mapping.txt.erb"  
  mode "0644"  
end

template "/tmp/driver_gcv.txt" do
  source "driver_gcv.txt.erb"  
  mode "0644"  
end

execute "Associate to start up policies" do
 user "root" 
 command " ldapmodify -h 127.0.0.1 -p 389 -D cn=admin,ou=servers,o=system -w novell123$ -a -c -f /tmp/driver_fields_gcv.ldif"
  action :run
end

execute "Associate to start up policies" do
 user "root" 
 command " ldapmodify -h 127.0.0.1 -p 389 -D cn=admin,ou=servers,o=system -w novell123$ -a -c -f /tmp/myldif.ldif"
  action :run
end



execute "Modify the mapping table" do
 user "root" 
 command "ldapmodify -h 127.0.0.1 -p 389 -D cn=admin,ou=servers,o=system -w novell123$ -a -c -f /tmp/binary.ldif"
  action :run
end



