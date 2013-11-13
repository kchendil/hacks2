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




execute "Change the Java path in Configupdate.sh" do
 user "root" 
 command "sed -i -e 's/jdk1.7.0_21/jdk1.7.0_25/g' /opt/novell/idm/rbpm/UserApplication/configupdate.sh"
  action :run
end


execute "Change the Java path in start-jboss.sh" do
 user "root" 
 command "sed -i -e 's/jdk1.7.0_21/jdk1.7.0_25/g' /opt/novell/idm/rbpm/UserApplication/start-jboss.sh"
  action :run
end


