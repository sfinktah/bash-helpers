# SAVEFNDOC
# functionName="pngcrush"
# requires=()
# shortDesc=""
# longDesc=<<'# EOD'
# EOD
pngcrush () 
{ 
    /bin/pngcrush -rem gAMA -rem cHRM -rem iCCP -rem sRGB -l 9 -rem alla -rem allb -w 512 -brute -rem all "$@"
}
pngcrush () 
{ 
    /bin/pngcrush -rem gAMA -rem cHRM -rem iCCP -rem sRGB -l 9 -rem alla -rem allb -brute -rem all "$@"
}
pngcrush () 
{ 
    /bin/pngcrush -rem gAMA -rem cHRM -rem iCCP -rem sRGB -l 9 -rem alla -rem allb -brute -rem all "$@"
}
