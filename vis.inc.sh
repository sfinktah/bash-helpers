# SAVEFNDOC
# functionName="vis"
# requires=()
# shortDesc=""
# longDesc=<<'# EOD'
# EOD
vis () 
{ 
    if (( $# == 1 )); then
        echo $1 items;
        fn=$1;
        shift;
        test -e "$fn" && ! test -d "$fn" && { 
            edit "$fn";
            return
        };
        FOO=("$fn"*);
        echo "${FOO[@]/#/vim }";
    fi
}
vis () 
{ 
    if (( $# == 1 )); then
        echo $1 items;
        fn=$1;
        shift;
        test -e "$fn" && ! test -d "$fn" && { 
            vimtrack "$fn";
            return
        };
        FOO=("$fn"*);
        if [[ -n ${#FOO} ]]; then
            echo;
            echo "${FOO[@]}";
            echo;
            REPLY=;
            read -n 1 -t 2 -p "Are you sure you didn't mean one of these [y/N] ?";
            if [[ $REPLY == "n" ]]; then
                :;
            else
                vimtrack "$fn";
            fi;
        fi;
    fi
}
vis () 
{ 
    local el;
    local fn;
    local -a FOO;
    local REPLY;
    if (( $# == 1 )); then
        echo $1 items;
        fn=$1;
        shift;
        test -e "$fn" && ! test -d "$fn" && { 
            vimtrack "$fn";
            return
        };
        FOO=("$fn"*);
        if [[ -n ${#FOO} ]]; then
            echo;
            echo "${FOO[@]}";
            echo;
            REPLY=;
            read -n 1 -t 3 -p "Are you sure you didn't mean one of these [y/N] ?";
            el=$?;
            echo Errorlevel: $el Reply: "$REPLY";
            (( el > 128 )) && vimtrack "$fn";
            [[ $REPLY == "y" ]] && vimtrack "$fn";
        fi;
    fi
}
alias vi=vis
vis () 
{ 
    local el;
    local fn;
    local -a FOO;
    local REPLY;
    if (( $# == 1 )); then
        echo $1 items;
        fn=$1;
        shift;
        test -e "$fn" && ! test -d "$fn" && { 
            vimtrack "$fn";
            return
        };
        FOO=("$fn"*);
        if [[ -n ${#FOO} ]]; then
            echo;
            echo "${FOO[@]}";
            echo;
            REPLY=;
            read -n 1 -t 3 -p "Are you sure you didn't mean one of these [y/N] ?";
            el=$?;
            echo Errorlevel: $el Reply: "$REPLY";
            (( el > 128 )) && vimtrack "$fn";
            [[ $REPLY == "y" ]] && vimtrack "$fn";
        fi;
    else
        vim "$@";
    fi
}
vis () 
{ 
    local el;
    local fn;
    local -a FOO;
    local REPLY;
    if (( $# == 1 )); then
        echo $1 items;
        fn=$1;
        shift;
        test -e "$fn" && ! test -d "$fn" && { 
            vimtrack "$fn";
            return
        };
        FOO=("$fn"?*);
        if [[ -n ${#FOO} ]]; then
            echo;
            echo "Other options: ${FOO[@]}";
            echo;
            REPLY=;
            read -n 1 -t 3 -p "Proceed? [Y/n] ?";
            el=$?;
            echo Errorlevel: $el Reply: "$REPLY";
            (( el > 128 )) && vimtrack "$fn";
            [[ $REPLY == "y" ]] && vimtrack "$fn";
        else
            vimtrack "$fn";
        fi;
    else
        vim "$@";
    fi
}
vis () 
{ 
    local el;
    local fn;
    local -a FOO;
    local REPLY;
    if (( $# == 1 )); then
        echo $1 items;
        fn=$1;
        shift;
        test -e "$fn" && ! test -d "$fn" && { 
            vimtrack "$fn";
            return
        };
        FOO=("$fn"?*);
        if [[ $FOO == "$fn?*" ]]; then
            FOO=;
        fi;
        if [[ -n ${#FOO} ]]; then
            echo;
            echo "Other options: ${FOO[@]}";
            echo;
            REPLY=;
            read -n 1 -t 3 -p "Proceed? [Y/n] ?";
            el=$?;
            echo Errorlevel: $el Reply: "$REPLY";
            (( el > 128 )) && vimtrack "$fn";
            [[ $REPLY == "y" ]] && vimtrack "$fn";
        else
            vimtrack "$fn";
        fi;
    else
        vim "$@";
    fi
}
vis () 
{ 
    local el;
    local fn;
    local -a FOO;
    local REPLY;
    if (( $# == 1 )); then
        echo $1 items;
        fn=$1;
        shift;
        test -e "$fn" && ! test -d "$fn" && { 
            vimtrack "$fn";
            return
        };
        FOO=("$fn"?*);
        if [[ $FOO == "$fn?*" ]]; then
            FOO=;
        fi;
        if [[ ${#FOO} > 0 ]]; then
            echo;
            echo "Other options: ${FOO[@]}";
            echo;
            REPLY=;
            read -n 1 -t 3 -p "Proceed? [Y/n] ?";
            el=$?;
            echo Errorlevel: $el Reply: "$REPLY";
            (( el > 128 )) && vimtrack "$fn";
            [[ $REPLY == "y" ]] && vimtrack "$fn";
        else
            vimtrack "$fn";
        fi;
    else
        vim "$@";
    fi
}
vis () 
{ 
    local el;
    local fn;
    local -a FOO;
    local REPLY;
    if (( $# == 1 )); then
        echo $1 items;
        fn=$1;
        shift;
        test -e "$fn" && ! test -d "$fn" && { 
            vimtrack "$fn";
            return
        };
        FOO=("$fn"?*);
        if [[ $FOO == "$fn?*" ]]; then
            FOO=;
        fi;
        if [[ ${#FOO} > 0 ]]; then
            echo;
            echo "Other options: ${FOO[@]}";
            echo;
            REPLY=;
            read -n 1 -t 3 -p "Proceed? [Y/n] ?";
            el=$?;
            echo Errorlevel: $el Reply: "$REPLY";
            (( el > 128 )) && vimtrack "$fn";
            [[ $REPLY == "y" ]] && vimtrack "$fn";
        else
            vimtrack "$fn";
        fi;
    else
        vimhist "$@";
    fi
}
