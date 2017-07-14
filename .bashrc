export PATH=/usr/local/bin:/usr/local/sbin:/opt/apache-maven-3.3.9/bin:$PATH
export CLASSPATH=/usr/local/share/nltk_data/stanford-postagger-full:/usr/local/share/nltk_data/stanford-ner:/usr/local/share/nltk_data/stanford-parser-full:$CLASSPATH
export STANFORD_MODELS=/usr/local/share/nltk_data/stanford-postagger-full/models

livedir=/Users/Mark/Documents/Work/Live/Projects

gitcleanfunc(){
    git branch --merged master | grep -v "\* master" | xargs -n 1 git branch -d
}
alias gitclean=gitcleanfunc

symphstartfunc(){
    cd /Users/Mark/Documents/Work/Live/symphony-api/cmd/symphony
    ./symphony
}
alias startsymphony=symphstartfunc

chromeopenfunc(){
    open /Applications/Google\ Chrome.app
}
alias chrome=chromeopenfunc

webstartfunc(){
    python -m SimpleHTTPServer 8080
}
alias webserve=webstartfunc

sparkstartfunc(){
    ssh hadoop@ec2-50-112-32-44.us-west-2.compute.amazonaws.com -i /Users/Mark/SSL/brenckle.pem
}
alias spark=sparkstartfunc

sparkwebfunc(){
    ssh -N -D 8158 hadoop@ec2-50-112-32-44.us-west-2.compute.amazonaws.com -i /Users/Mark/SSL/brenckle.pem
}
alias sparkweb=sparkwebfunc

powercomputestartfunc(){
    ssh -i /Users/Mark/SSL/brenckle.pem ec2-user@ec2-50-112-26-236.us-west-2.compute.amazonaws.com
 
}
alias ec2=powercomputestartfunc

csvviewerfunc(){
   cat $1 | sed -e 's/,,/, ,/g' | column -s, -t | less -#5 -N -S
}
alias csv=csvviewerfunc

export GOVERSION=1.6.2 
export GOPATH=/opt/go/$GOVERSION 
export GOROOT=/usr/local/opt/go/libexec
export GOBIN=$GOROOT/bin
export PATH=$GOBIN:${GOPATH//://bin:}/bin:$PATH

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_92.jdk/Contents/Home