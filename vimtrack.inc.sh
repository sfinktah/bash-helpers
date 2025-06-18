# SAVEFNDOC
# functionName="vimtrack"
# requires=()
# shortDesc=""
# longDesc=<<'# EOD'
# EOD
vimtrack () 
{ 
    local el;
    if test -f "$@"; then
        echo "$@" >> ~/.vimhistory;
    else
        return 1;
    fi
}
vimtrack () 
{ 
    local el;
    if [[ $# == 1 ]]; then
        if test -f "$@"; then
            echo "$( realpath "$@" )" >> ~/.vimhistory;
        fi;
    fi;
    vim "$@"
}
vimtrack () 
{ 
    . include realpath
    local el;
    if [[ $# == 1 ]]; then
        if test -f "$@"; then
            echo "$( realpath "$@" )" >> ~/.vimhistory;
        fi;
    fi;
    vimhist "$@"
}
