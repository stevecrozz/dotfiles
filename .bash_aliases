function git () {
  case "$PWD" in
    /home/stevecrozz/Projects/sd/*)
      command git -c user.email=stephen.crosby@securedocs.com -c user.signingkey=A41C066375B19B56F0C6A5E9483827A0AD9E53ED "$@"
      ;;
    *)
      command git "$@"
      ;;
  esac
}
