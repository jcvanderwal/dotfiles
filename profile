export MAVEN_OPTS="-Xmx512m -XX:MaxPermSize=128m -XX:+TieredCompilation -XX:TieredStopAtLevel=1"
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


