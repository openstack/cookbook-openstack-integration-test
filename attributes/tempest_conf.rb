default['openstack']['integration-test']['conf_secrets'] = {}
default['openstack']['integration-test']['conf'].tap do |conf|
  conf['DEFAULT']['log_dir'] = '/opt/tempest/logs'
  conf['DEFAULT']['log_file'] = 'tempest.log'
  conf['auth']['use_dynamic_credentials'] = node['openstack']['integration-test']['use_dynamic_credentials']
  conf['auth']['default_credentials_domain_name'] = 'Default'
  conf['auth']['admin_domain_name'] = 'Default'
  conf['identity']['catalog_type'] = 'identity'
  conf['identity']['disable_ssl_certificate_validation'] = node['openstack']['integration-test']['disable_ssl_validation']
  conf['identity']['v3_endpoint_type'] = 'publicURL'
  conf['identity']['strategy'] = 'keystone'
  conf['identity']['region'] = 'RegionOne'
  conf['identity']['username'] = node['openstack']['integration-test']['user1']['user_name']
  conf['identity']['password'] = node['openstack']['integration-test']['user1']['password']
  conf['identity']['user_domain_name'] = 'Default'
  conf['identity']['project_domain_name'] = 'Default'
  conf['identity']['project_name'] = node['openstack']['integration-test']['user1']['project_name']
  conf['identity']['alt_username'] = node['openstack']['integration-test']['user2']['user_name']
  conf['identity']['alt_password'] = node['openstack']['integration-test']['user2']['password']
  conf['identity']['alt_project_name']  = node['openstack']['integration-test']['user2']['project_name']
  conf['identity']['default_domain_id'] = 'default'
  conf['identity']['admin_domain_scope'] = false
  conf['validation']['run_validation'] = false
  conf['validation']['image_alt_ssh_user'] = node['openstack']['integration-test']['alt_ssh_user']
  conf['validation']['image_ssh_user'] = node['openstack']['integration-test']['ssh_user']
  conf['compute']['flavor_ref'] = node['openstack']['integration-test']['image1']['flavor']
  conf['compute']['flavor_ref_alt'] = node['openstack']['integration-test']['image2']['flavor']
  conf['compute']['fixed_network_name'] = node['openstack']['integration-test']['fixed_network']
  conf['compute']['build_interval'] = 3
  conf['compute']['build_timeout'] = 400
  conf['compute']['run_ssh'] = false
  conf['compute']['ssh_user'] = node['openstack']['integration-test']['ssh_user']
  conf['compute']['ip_version_for_ssh']
  conf['compute']['ssh_timeout'] = 400
  conf['compute']['ssh_channel_timeout'] = 60
  conf['compute']['catalog_type'] = 'compute'
  conf['compute']['create_image_enabled'] = true
  conf['compute']['resize_available'] = true
  conf['compute']['change_password_available'] = false
  conf['compute']['live_migration_available'] = false
  conf['compute']['use_block_migration_for_live_migration'] = false
  conf['compute']['disk_config_enabled_override'] = true
  conf['identity-feature-enabled']['api_v3'] = true
  conf['identity-feature-enabled']['api_v2'] = false
  conf['whitebox']['whitebox_enabled'] = false
  conf['whitebox']['source_dir'] = '/usr/share/pyshared/nova'
  conf['whitebox']['config_path'] = '/etc/nova/nova.conf'
  conf['whitebox']['bin_dir'] = '/usr/bin'
  conf['whitebox']['path_to_private_key'] = ''
  conf['whitebox']['db_uri'] = ''
  conf['compute-feature-enabled']['api_v3'] = false
  conf['image']['catalog_type'] = 'image'
  conf['image']['api_version'] = 1
  conf['network']['api_version'] = 2.0
  conf['network']['catalog_type'] = 'network'
  conf['network']['project_network_cidr'] = '10.100.0.0/16'
  conf['network']['project_network_mask_bits'] = 28
  conf['network']['project_networks_reachable'] = false
  conf['network']['public_network_id'] = ''
  conf['network']['public_router_id'] = ''
  conf['network']['quantum_available'] = false
  conf['network-feature-enabled']['api_extensions'] = %w(
    address-scope
    agent
    allowed-address-pairs
    auto-allocated-topology
    availability_zone
    availability_zone_filter
    binding
    binding-extended
    default-subnetpools
    dhcp_agent_scheduler
    dvr
    empty-string-filtering
    ext-gw-mode
    external-net
    extra_dhcp_opt
    extraroute
    filter-validation
    fip-port-details
    flavors
    ip-substring-filtering
    l3-flavors
    l3-ha
    l3_agent_scheduler
    multi-provider
    net-mtu
    net-mtu-writable
    network-ip-availability
    network_availability_zone
    pagination
    port-mac-address-regenerate
    port-security-groups-filtering
    project-id
    provider
    quota_details
    quotas
    rbac-policies
    revision-if-match
    router
    router_availability_zone
    security-group
    service-type
    sorting
    standard-attr-description
    standard-attr-revisions
    standard-attr-tag
    standard-attr-timestamp
    subnet-service-types
    subnet_allocation).join(',')
  conf['volume']['catalog_type'] = 'volumev3'
  conf['volume']['build_interval'] = 3
  conf['volume']['build_timeout'] = 400
  conf['volume']['backup'] = false
  conf['volume-feature-enabled']['snapshot'] = false
  conf['object-storage']['catalog_type'] = 'object-storage'
  conf['object-storage']['container_sync_timeout'] = 120
  conf['object-storage']['container_sync_interval'] = 5
  conf['orchestration']['catalog_type'] = 'orchestration'
  conf['boto']['ssh_user'] = 'cirros'
  conf['boto']['ec2_url'] = ''
  conf['boto']['s3_url'] = ''
  conf['boto']['aws_access'] = ''
  conf['boto']['aws_secret'] = ''
  conf['boto']['s3_materials_path'] = '/opt/stack/devstack/files/images/s3-materials/cirros-0.3.0'
  conf['boto']['ari_manifest'] = 'cirros-0.3.0-x86_64-initrd.manifest.xml'
  conf['boto']['ami_manifest'] = 'cirros-0.3.0-x86_64-blank.img.manifest.xml'
  conf['boto']['aki_manifest'] = 'cirros-0.3.0-x86_64-vmlinuz.manifest.xml'
  conf['boto']['instance_type'] = 'm1.tiny'
  conf['boto']['http_socket_timeout'] = 30
  conf['boto']['num_retries'] = 1
  conf['boto']['build_timeout'] = 400
  conf['boto']['build_interval'] = 3
  conf['service_available']['cinder'] = false
  conf['service_available']['glance'] = true
  conf['service_available']['heat'] = true
  conf['service_available']['neutron'] = false
  conf['service_available']['nova'] = true
  conf['service_available']['swift'] = false
  conf['oslo_concurrency']['lock_path'] = '/opt/tempest/tempest_lock'
end
