is_mac_os() {
  if [ ! "$(uname -s)" = "Darwin" ]; then
    return 1
  fi
}
