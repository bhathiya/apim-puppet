# ------------------------------------------------------------------------------
#
# Copyright (c) 2015, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# ------------------------------------------------------------------------------
#
# Class to manage WSO2 API Manager deployment

class wso2am inherits wso2base {
  $keymanager_subdomain     = hiera ("wso2::keymanager_subdomain")
  $store_subdomain     = hiera ("wso2::store_subdomain")
  $publisher_subdomain     = hiera ("wso2::publisher_subdomain")
  $gateway_subdomain     = hiera ("wso2::gateway_subdomain")
  $gatewaymgt_subdomain     = hiera ("wso2::gatewaymgt_subdomain")
  $am_subdomain     = hiera ("wso2::am_subdomain")
  $domain    = hiera ("wso2::domain")
  $am_datasources     = hiera ("wso2::am_datasources")

  $admin_username    = hiera ("wso2::admin_username")
  $admin_password    = hiera ("wso2::admin_password")

  $am_nio_http_port     = hiera ("wso2::am_nio_http_port")
  $am_nio_https_port     = hiera ("wso2::am_nio_https_port")
  $am_servlet_http_port     = hiera ("wso2::am_servlet_http_port")
  $am_servlet_https_port     = hiera ("wso2::am_servlet_https_port")

  $apim_gateway       = hiera_hash ("wso2::apim_gateway")
  $apim_keymanager    = hiera_hash ("wso2::apim_keymanager")
  $apim_publisher     = hiera_hash ("wso2::apim_publisher")
  $apim_store         = hiera_hash ("wso2::apim_store")

  wso2base::server { "${carbon_home}" :
    maintenance_mode   => $maintenance_mode,
    pack_filename      => $pack_filename,
    pack_dir           => $pack_dir,
    install_mode       => $install_mode,
    install_dir        => $install_dir,
    pack_extracted_dir => $pack_extracted_dir,
    wso2_user          => $wso2_user,
    wso2_group         => $wso2_group,
    patches_dir        => $patches_dir,
    service_name       => $service_name,
    service_template   => $service_template,
    hosts_template     => $hosts_template,
    template_list      => $template_list,
    file_list          => $file_list
  }
}
