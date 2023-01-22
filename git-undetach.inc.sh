# SAVEFNDOC
# functionName="git-undetach"
# requires=()
# shortDesc=""
# longDesc=<<'# EOD'
# EOD
git-undetach () 
{ 
    git checkout -b temp && git checkout -B master temp && git push && echo git branch -d temp
}
