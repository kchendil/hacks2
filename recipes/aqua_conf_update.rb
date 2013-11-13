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


execute "Change the Java path" do
 user "root" 
 command " sed -i -e 's/com.netiq.idm.create-db-on-startup._attr_value = false/com.netiq.idm.create-db-on-startup._attr_value = true/g' /opt/novell/idm/rbpm/jboss/server/IDMProv/conf/aquamarine.conf" 
  action :run
end

execute "Add Portal context 1 " do
 user "root" 
 command " echo 'portal.context._attr_encoding=NONE' >>/opt/novell/idm/rbpm/jboss/server/IDMProv/conf/aquamarine.conf" 
  action :run
end

execute "Add Portal context 2" do
 user "root" 
 command " echo 'portal.context._attr_renewable=false' >>/opt/novell/idm/rbpm/jboss/server/IDMProv/conf/aquamarine.conf" 
  action :run
end

execute "Add Portal context 3" do
 user "root" 
 command " echo 'portal.context._attr_value=IDMProv' >>/opt/novell/idm/rbpm/jboss/server/IDMProv/conf/aquamarine.conf" 
  action :run
end






