#
# Cookbook Name:: delimited
# Attributes:: default
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


default['hacks']['ldap_clear_port'] = "389"
default['hacks']['ldap_ssl_port'] = "636"
default['hacks']['ldap_server_ip'] = "127.0.0.1"
default['hacks']['ldap_user_name'] = "cn=admin,ou=servers,o=system"
default['hacks']['ldap_password'] = "novell123$"
