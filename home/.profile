# Maven
export MAVEN_OPTS="-XX:+TieredCompilation -XX:TieredStopAtLevel=1"
alias mci='mvn clean install -T 1C'
alias mcis='mvn clean install -T 1C -DskipTests'
alias mcio='mvn clean install -o -T 1C'
alias mcios='mvn clean install -o -T 1C -DskipTests'
alias mi='mvn install -T 1C'
alias mio='mvn install -o -T 1C'
alias mios='mvn clean install -o -T 1C -DskipTests'
alias gf='git fetch'
alias gm='git merge origin/master --ff-only'
alias gs='git status'
alias gc='git commit -m'
alias ll='ls -lhA'

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# Shortcuts
alias d="cd ~/Documents/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias p="cd ~/projects"
alias g="git"
alias h="history"
alias j="jobs"

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
	colorflag="--color"
else # OS X `ls`
	colorflag="-G"
fi

# List all files colorized in long format
alias l="ls -lF ${colorflag}"

# List all files colorized in long format, including dot files
alias la="ls -laF ${colorflag}"

# List only directories
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"

# Always use color output for `ls`
alias ls="command ls ${colorflag}"
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Get week number
alias week='date +%V'

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'





function forsub(){
	for d in `find . ! -path . -type d -maxdepth 1`
	do
    		pushd $d 
		eval "$@"
		popd > /dev/null
    	done

}
function forest(){
	for d in ~/src/github/estatio/estatio ~/src/bitbucket/incodehq/camel-coda ~/src/bitbucket/incodehq/estatio-ecp
	do
    	pushd $d > /dev/null
        pwd
		eval "$@"
		popd > /dev/null
    	done
}