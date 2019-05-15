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

function less () {
  filename=$(basename -- "$1")
  extension="${filename##*.}"
  filename="${filename%.*}"
  lowerextension=$(echo "$extension" | tr '[:upper:]' '[:lower:]')

  case $lowerextension in
    xls|xlsx)
      TEMPORARY_FILENAME_BASE="/tmp/$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13 ; echo '')"
      TEMPORARY_FILENAME_PATTERN="$TEMPORARY_FILENAME_BASE.%n.%s.csv"
      ssconvert \
        --export-file-per-sheet "$1" $TEMPORARY_FILENAME_PATTERN > /dev/null 2>&1
      less $TEMPORARY_FILENAME_BASE*
      rm $TEMPORARY_FILENAME_BASE*
      ;;
    *)
      command less "$@"
  esac
}
