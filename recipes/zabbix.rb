#
# Cookbook Name:: mongodb
# Recipe:: zabbix
#
# Authors:
#       Guilhem Lettron <guilhem.lettron@youscribe.com>
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

include_recipe "php"
#include_recipe "subversion"
php_pear "mongo"

#subversion "mongodb plugin" do
#  repository "http://mikoomi.googlecode.com/svn/plugins/MongoDB%20Plugin/"
#  destination node['zabbix']['external_dir']
##  user node['zabbix']['login']
##  group node['zabbix']['group']
#  action :export
#end

remote_file "#{node['zabbix']['external_dir']}/mikoomi-mongodb-plugin.php" do
  source "http://mikoomi.googlecode.com/svn/plugins/MongoDB%20Plugin/mikoomi-mongodb-plugin.php"
  mode "0744"
end

remote_file "#{node['zabbix']['external_dir']}/mikoomi-mongodb-plugin.sh" do
  source "http://mikoomi.googlecode.com/svn/plugins/MongoDB%20Plugin/mikoomi-mongodb-plugin.sh"
  mode "0744"
end

