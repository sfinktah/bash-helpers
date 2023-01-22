# SAVEFNDOC
# functionName="pngquant"
# requires=()
# shortDesc=""
# longDesc=<<'# EOD'
# EOD
pngquant () 
{ 
    /bin/pngquant --speed 1 --nofs --output "$2" -- "$1"
}
