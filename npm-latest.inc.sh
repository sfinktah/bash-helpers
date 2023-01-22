# SAVEFNDOC
# functionName="npm-latest"
# requires=()
# shortDesc=""
# longDesc=<<'# EOD'
# EOD
npm-latest () 
{ 
    npm info --json "$1" | jq '."dist-tags".latest' | strip.sh '"'
}
