export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm


function dev() {
  local projectName="$1"

  if [ -z "$projectName" ]; then
    nr dev
  else
    nr "dev:$projectName"
  fi
}


alias d='dev'
