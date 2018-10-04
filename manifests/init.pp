# Class: jupyterhub
# ===========================
#
# Full description of class jupyterhub here.
#
# Parameters
# ----------
#
# @param service_name [String] Set name of the Jupyterhub service.
# @param jupyterhub_username [String] Set username
# @param jupyterhub_group [String] Set group
# @param Stdlib::Absolutepath $jupyterhub_dir,
# @param Stdlib::Absolutepath $pyvenv,
# @param Optional[String] $allowed_users,
# @param Integer $port,
# @param Optional[Httpurl] $oauth_callback_url,
# @param Optional[Boolean] $oauth_github_enable,
# @param Optional[String] $oauth_github_client_id,
# @param Optional[String] $oauth_github_client_secret,
# @param String $base_url,
# @param Optional[Boolean] $sudospawner_enable,
# @param Optional[Boolean] $systemdspawner_enable,
# @param Optional[Stdlib::Absolutepath] $systemdspawner_user_workingdir,
# @param Optional[Stdlib::Absolutepath] $systemdspawner_default_shell,
# @param Optional[String] $systemdspawner_mem_limit,
# @param Optional[String] $systemdspawner_cpu_limit,
# @param Optional[Boolean] $systemdspawner_isolate_tmp,
# @param Optional[Boolean] $systemdspawner_isolate_devices,
#
class jupyterhub (
  # Default values are in jupyterhub/data
  $ip,
  Boolean $service_enable,
  Boolean $service_manage,
  Enum['running', 'stopped'] $service_ensure,
  Integer $port,
  Optional $hub_ip,
  Optional[Array[String]] $sudospawner_allowed_users,
  Optional[Array] $batchspawner_commands,
  Optional[Array] $custom_packages,
  Optional[Array] $reverse_proxy_origin,
  Optional[Boolean] $batchspawner_commands_enable,
  Optional[Boolean] $batchspawner_enable,
  Optional[Boolean] $batchspawner_torque_enable,
  Optional[Boolean] $custom_packages_enable,
  Optional[Boolean] $debug_enable,
  Optional[Boolean] $epel_enable,
  Optional[Boolean] $manage_git,
  Optional[Boolean] $oauth_create_system_users,
  Optional[Boolean] $oauth_custom_enable,
  Optional[Boolean] $oauth_enable,
  Optional[Boolean] $oauth_github_enable,
  Optional[Boolean] $reverse_proxy_enable,
  Optional[Boolean] $ssl_enable,
  Optional[Boolean] $sudospawner_debug_enable,
  Optional[Boolean] $sudospawner_enable,
  Optional[Boolean] $systemdspawner_enable,
  Optional[Boolean] $systemdspawner_isolate_devices,
  Optional[Boolean] $systemdspawner_isolate_tmp,
  Optional[Boolean] $wrapspawner_enable,
  Optional[Integer] $batchspawner_nprocs,
  Optional[Integer] $hub_port,
  Optional[Integer] $proxy_api_port,
  Optional[Stdlib::Absolutepath] $batchspawner_module_path,
  Optional[Stdlib::Absolutepath] $config_dir,
  Optional[Stdlib::Absolutepath] $cookie_secret_file,
  Optional[Stdlib::Absolutepath] $ssl_cert,
  Optional[Stdlib::Absolutepath] $ssl_key,
  Optional[Stdlib::Absolutepath] $systemdspawner_default_shell,
  Optional[Stdlib::Absolutepath] $systemdspawner_user_workingdir,
  Optional[Stdlib::Httpurl] $oauth_callback_url,
  Optional[String] $batchspawner_command,
  Optional[String] $batchspawner_host,
  Optional[String] $batchspawner_memory,
  Optional[String] $batchspawner_module_python,
  Optional[String] $batchspawner_node,
  Optional[String] $batchspawner_partition,
  Optional[String] $batchspawner_qos,
  Optional[String] $batchspawner_queue,
  Optional[String] $batchspawner_runtime,
  Optional[String] $oauth_client_id,
  Optional[String] $oauth_client_secret,
  Optional[String] $oauth_full_name,
  Optional[String] $oauth_github_client_id,
  Optional[String] $oauth_github_client_secret,
  Optional[String] $oauth_name,
  Optional[String] $systemdspawner_cpu_limit,
  Optional[String] $systemdspawner_mem_limit,
  Stdlib::Absolutepath $jupyterhub_dir,
  Stdlib::Absolutepath $pyvenv,
  String $base_url,
  String $jupyterhub_group,
  String $jupyterhub_username,
  String $python_version,
  String $service_name,

) {

  Class { '::jupyterhub::install': }
  -> Class { '::jupyterhub::config': }
  ~> Class { '::jupyterhub::service': }
}
