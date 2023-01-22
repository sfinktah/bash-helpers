# SAVEFNDOC
# functionName="dospath"
# requires=()
# shortDesc=""
# longDesc=<<'# EOD'
# EOD
dospath () 
{ 
    \cd "$1";
    cmd /c cd
}
dospath () 
{ 
    bn=$(basename "$1");
    dn=$(dirname "$1");
    # \cd "$1" && cmd /c cd && exit 0;
    \cd "$1" && cmd /c cd
    \cd "$dn";
    ddn=$( cmd /c cd );
    echo "${ddn%}\\$bn"
}
dospath () 
{ 
    bn=$(basename "$1");
    dn=$(dirname "$1");
    \cd "$1" 2>&1 > /dev/null && cmd /c cd;
    \cd "$dn";
    ddn=$( cmd /c cd );
    echo "${ddn%}\\$bn"
}
dospath () 
{ 
    bn=$(basename "$1");
    dn=$(dirname "$1");
    test -d "$1" && { 
        \cd "$1";
        cmd /c cd
    } || { 
        \cd "$dn";
        ddn=$( cmd /c cd );
        echo "${ddn%}\\$bn"
    }
}
