# SAVEFNDOC
# functionName="optipng"
# requires=()
# shortDesc=""
# longDesc=<<'# EOD'
# EOD
optipng () 
{ 
    cp "$1" "$2";
    /bin/optipng -o7 "$2"
}
