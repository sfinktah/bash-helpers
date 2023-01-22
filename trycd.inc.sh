# SAVEFNDOC
# functionName="trycd"
# requires=()
# shortDesc=""
# longDesc=<<'# EOD'
# EOD
trycd () 
{ 
    TARGET="${1:-$PWD}";
    if [[ ${TARGET:0:5} == "file:" ]]; then
        TARGET=${TARGET##*///};
        TARGET=${TARGET/:};
        TARGET=${TARGET//%20/ };
        TARGET="/${TARGET}";
        echo "Converted file:// Target to \"$TARGET\"" 1>&2;
    fi;
    if [[ ${TARGET:1:1} == ":" ]]; then
        TARGET=$(( cygpath "$TARGET" ));
        echo "Converted Windows Target to \"$TARGET\"" 1>&2;
    fi;
    while IFS=/ read -a line; do
        for subpath in "${line[@]}";
        do
            test -d "${subpath:-/}" || break;
            \cd "${subpath:-/}" > /dev/null 2>&1 || break;
        done;
    done < <( echo "$TARGET" )
}
trycd () 
{ 
    TARGET="${1:-$PWD}";
    if [[ ${TARGET:0:5} == "file:" ]]; then
        TARGET=${TARGET##*///};
        TARGET=${TARGET/:};
        TARGET=${TARGET//%20/ };
        TARGET="/${TARGET}";
        echo "Converted file:// Target to \"$TARGET\"" 1>&2;
    fi;
    if [[ ${TARGET:1:1} == ":" ]]; then
        echo "$TARGET";
        TARGET=$( cygpath "$1" );
        echo "Converted Windows Target to \"$TARGET\"" 1>&2;
    fi;
    while IFS=/ read -a line; do
        for subpath in "${line[@]}";
        do
            test -d "${subpath:-/}" || break;
            \cd "${subpath:-/}" > /dev/null 2>&1 || break;
        done;
    done < <( echo "$TARGET" )
}
