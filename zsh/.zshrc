export ZSH="/home/louis/.oh-my-zsh"

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

ZSH_THEME="dieter"
#ZSH_THEME="lukerandall"
#ZSH_THEME="pygmalion"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh


xrdb ~/.Xresources

# git
alias st='git status'
alias gcr='git checkout release'
alias gll='git fetch --all && git pull'
alias gamend='git commit --amend --no-edit'
alias gpo='git push --set-upstream origin'
alias idontcare='git commit --amend --no-edit && git push -f'
alias nah='git reset --hard;git clean -df'
alias nope='git reset --hard;git clean -df'

# laravel
alias a='php artisan'
alias migrate="php artisan migrate"

# symfony
alias pbc="php bin/console"
alias sf="php bin/console"

# docker-compose
alias up="docker-compose up -d"
alias upw="docker-compose up"
alias down="docker-compose down"

alias _='sudo'

# services
alias __mysql='sudo systemctl start mysqld'
alias __mysql-stop='sudo systemctl start mysqld'
alias __pgsql='sudo systemctl start postgresql'
alias __pgsql-stop='sudo systemctl stop postgresql'
alias __docker='valet stop && sudo systemctl start docker'
alias __docker-stop='sudo systemctl stop docker'

# customization
alias bashedit='subl -n  ~/.zshrc ~/.Xresources'
alias themeedit='subl -n ~/.config/startup.sh ~/.config/awesome/rc.lua ~/.config/awesome/themes/powerarrow-dark/theme.lua'

alias wifi-stop=nmcli radio wifi off
alias wifi-start=nmcli radio wifi on
alias wifi-powersave=sudo iw dev wlp58s0 set power_save on

# cli
alias vue='~/web/tools/node_modules/.bin/vue'
alias semantic='~/web/tools/node_modules/.bin/semantic-release-cli'
alias reactapp='~/web/tools/node_modules/.bin/create-react-app'
alias suspend='systemctl suspend && slock'
alias reboot='systemctl reboot && slock'
alias poweroff='systemctl poweroff && slock'
alias xclip="xclip -selection c"


function att()
{
  docker exec -t -i "$1" bash
}

function shatt()
{
  docker exec -t -i "$1" sh
}

function _docker_containers_list()
{
services=$(docker ps --format '{{.Names}}' 2>/dev/null)
if [ -z $services ]; then
echo
echo "No container available"
else
  _arguments "1: :($services)"
fi

}

compdef _docker_containers_list att
compdef _docker_containers_list shatt

export GOPATH=$HOME/.go

PATH="$HOME/.npm/bin:$PATH"
PATH="./node_modules/.bin:$PATH"
export GOPATH=$HOME/.go


alias gogogo='cd ~/.go/src/github.com'

export NVM_DIR="$HOME/.nvm"                            # You can change this if you want.
export NVM_SOURCE="/usr/share/nvm"                     # The AUR package installs it to here.
[ -s "$NVM_SOURCE/nvm.sh" ] && . "$NVM_SOURCE/nvm.sh"  # Load NVM

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export laravel=$HOME/.config/composer/vendor/bin/laravel

