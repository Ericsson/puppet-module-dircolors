# Class: dircolors
#
class dircolors           (
  $dircolors_file         = '/etc/DIR_COLORS',
  $dircolors_file_ensure  = 'file',
  $dircolors_file_owner   = 'root',
  $dircolors_file_group   = 'root',
  $dircolors_file_mode    = '0644',
) {

  file {'dircolors_file':
    ensure  => $dircolors_file_ensure,
    path    => $dircolors_file,
    owner   => $dircolors_config_file_owner,
    group   => $dircolors_config_file_group,
    mode    => $dircolors_config_file_mode,
  }
