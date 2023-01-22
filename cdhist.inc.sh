# SAVEFNDOC
# functionName="cdhist"
# requires=()
# shortDesc=""
# longDesc=<<'# EOD'
# EOD
cdhist () 
{ 
    tail ~/.cdhistory | pickone
}
