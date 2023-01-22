# SAVEFNDOC
# functionName="vimfn"
# requires=()
# shortDesc="edit shell function in vim"
# longDesc=<<'# EOD'
# EOD
vimfn () 
{ 
    local fn=$1;
    shift;
    declare -f "$fn" > /var/tmp/vimfn.$$.sh && vim /var/tmp/vimfn.$$.sh && source /var/tmp/vimfn.$$.sh
}
vimfn () 
{ 
    local fn=$1;
    shift;
    declare -f "$fn" > /var/tmp/vimfn.$$.sh && vim /var/tmp/vimfn.$$.sh && source /var/tmp/vimfn.$$.sh
}
vimfn () 
{ 
    local fn=$1;
    shift;
    local tn=/var/tmp/tmpfn.$$.sh;
    declare -f "$fn" > "$tn";
    while :; do
        vim "$tn";
        if source "$tn"; then
            break;
        else
            if read -p "Edit again? (y/n)? " yesno && [ "$yesno" = 'y' ]; then
                :;
            else
                break;
            fi;
        fi;
    done
}
vimfn () 
{ 
    local fn=$1;
    shift;
    local tn=/var/tmp/tmpfn.$$.sh;
    declare -f "$fn" > "$tn";
    echo '# vim: set ts=4 sts=0 sw=0 et:' >> "$tn";
    echo;
    while :; do
        vim "$tn";
        if source "$tn"; then
            break;
        else
            if read -p "Edit again? (y/n)? " yesno && [ "$yesno" = 'y' ]; then
                :;
            else
                break;
            fi;
        fi;
    done
}
vimfn () 
{ 
    local fn=$1;
    shift;
    local tn=/var/tmp/tmpfn.$$.sh;
    declare -f "$fn" > "$tn";
    echo '# vim: set ts=4 sts=0 sw=0 et:' >> "$tn";
    echo;
    while :; do
        vim "$tn";
        if source "$tn"; then
            break;
        else
            if read -p "Edit again? (y/n)? " yesno && [ "$yesno" = 'y' ]; then
                :;
            else
                break;
            fi;
        fi;
    done
}
vimfn () 
{ 
    local fn=$1;
    shift;
    local tn=/var/tmp/tmpfn.$$.sh;
    declare -f "$fn" > "$tn";
    echo '# vim: set ts=4 sts=0 sw=0 et:' >> "$tn";
    echo;
    while :; do
        vim "$tn";
        if source "$tn"; then
            break;
        else
            if read -p "Edit again? (y/n)? " yesno && [ "$yesno" = 'y' ]; then
                :;
            else
                break;
            fi;
        fi;
    done
}
vimfn () 
{ 
    local fn=$1;
    shift;
    local tn=/var/tmp/tmpfn.$$.sh;
    declare -f "$fn" > "$tn";
    echo '# vim: set ts=4 sts=0 sw=0 et:' >> "$tn";
    echo;
    while :; do
        vim "$tn";
        if source "$tn"; then
            break;
        else
            if read -p "Edit again? (y/n)? " yesno && [ "$yesno" = 'y' ]; then
                :;
            else
                break;
            fi;
        fi;
    done
}
vimfn () 
{ 
    local fn=$1;
    shift;
    local tn="/var/tmp/fn.$fn.$$.sh";
    touch "$tn"-stamp;
    declare -f "$fn" > "$tn";
    echo '# vim: set ts=4 sts=0 sw=0 et:' >> "$tn";
    echo;
    while :; do
        vim "$tn";
        if test "$tn" -nt "$tn"-stamp; then
            if source "$tn"; then
                __ln=($( ls -Lon "$tn" ));
                __size=${__ln[3]};
                echo "read $__size bytes";
                break;
            else
                if read -p "Edit again? (y/n)? " yesno && [ "$yesno" = 'y' ]; then
                    :;
                else
                    break;
                fi;
            fi;
        else
            if read -p "Edit again? (y/n)? " yesno && [ "$yesno" = 'y' ]; then
                :;
            else
                break;
            fi;
        fi;
    done
}
vimfn () 
{ 
    local fn=$1;
    shift;
    local tn="/var/tmp/fn.$fn.$$.sh";
    touch "$tn"-stamp;
    declare -f "$fn" > "$tn";
    local requires=();
    set -o trace
    while read -r line; do
        if startswith "$line" "    requires=("; then
            explode " " "$( string_between -s '(' ')' "$line" )";
            for fn in "${EXPLODED[@]}";
            do
                case "$( type -t "$fn" )" in 
                    alias)
                        echo "requires '$fn' which is a alias";
                    ;;
                    builtin)
                        echo "requires '$fn' which is a builtin";
                    ;;
                    file)
                        echo >> "$tn";
                        cat "$( type -t "$fn" )" >> "$tn";
                    ;;
                    function)
                        echo >> "$tn";
                        declare -f "$fn" >> "$tn";
                    ;;
                    keyword)
                        echo "requires '$fn' which is a keyword";
                    ;;
                    '')
                        echo "requires '$fn' which is not found";
                    ;;
                    *)
                        echo "requires '$fn' which is of unknown type '$( type -t "$fn" )'";
                    ;;
                esac;
            done;
        fi;
    done;
    echo '# vim: set ts=4 sts=0 sw=0 et:' >> "$tn";
    echo;
    while :; do
        vim "$tn";
        if test "$tn" -nt "$tn"-stamp; then
            if source "$tn"; then
                __ln=($( ls -Lon "$tn" ));
                __size=${__ln[3]};
                echo "read $__size bytes";
                break;
            else
                if read -p "Edit again? (y/n)? " yesno && [ "$yesno" = 'y' ]; then
                    :;
                else
                    break;
                fi;
            fi;
        else
            if read -p "Edit again? (y/n)? " yesno && [ "$yesno" = 'y' ]; then
                :;
            else
                break;
            fi;
        fi;
    done
}
vimfn () 
{ 
    local fn=$1;
    shift;
    local tn="/var/tmp/fn.$fn.$$.sh";
    touch "$tn"-stamp;
    declare -f "$fn" > "$tn";
    local requires=();
    type versioncmp;
    declare -f "$fn" | while read -r line; do
        if startswith "$line" "requires=("; then
            explode " " "$( string_between -s '(' ')' "$line" )";
            for fn in "${EXPLODED[@]}";
            do
                local t;
                declare -fF "$fn" && t=function;
                echo "type $fn: $t";
                case "$t" in 
                    alias)
                        echo "requires '$fn' which is a alias"
                    ;;
                    builtin)
                        echo "requires '$fn' which is a builtin"
                    ;;
                    file)
                        echo >> "$tn";
                        cat "$( type -t "$fn" )" >> "$tn"
                    ;;
                    function)
                        echo >> "$tn";
                        declare -f "$fn" >> "$tn"
                    ;;
                    keyword)
                        echo "requires '$fn' which is a keyword"
                    ;;
                    '')
                        echo "requires '$fn' which is not found"
                    ;;
                    *)
                        echo "requires '$fn' which is of unknown type '$( type -t "$fn" )'"
                    ;;
                esac;
            done;
        fi;
    done;
    echo '# vim: set ts=4 sts=0 sw=0 et:' >> "$tn";
    echo;
    while :; do
        vim "$tn";
        if test "$tn" -nt "$tn"-stamp; then
            if source "$tn"; then
                __ln=($( ls -Lon "$tn" ));
                __size=${__ln[3]};
                echo "read $__size bytes";
                break;
            else
                if read -p "Edit again? (y/n)? " yesno && [ "$yesno" = 'y' ]; then
                    :;
                else
                    break;
                fi;
            fi;
        else
            if read -p "Edit again? (y/n)? " yesno && [ "$yesno" = 'y' ]; then
                :;
            else
                break;
            fi;
        fi;
    done
}
vimfn () 
{ 
    local fn=$1;
    shift;
    local tn="/var/tmp/fn.$fn.$$.sh";
    touch "$tn"-stamp;
    declare -f "$fn" > "$tn";
    local requires=();
    type versioncmp;
    declare -f "$fn" | while read -r line; do
        if startswith "$line" "requires=("; then
            explode " " "$( string_between -s '(' ')' "$line" )";
            for fn in "${EXPLODED[@]}";
            do
                local t=$(type -t "$fn");
                declare -fF "$fn" && t=function;
                echo "type $fn: $t";
                case "$t" in 
                    alias)
                        echo "requires '$fn' which is a alias"
                    ;;
                    builtin)
                        echo "requires '$fn' which is a builtin"
                    ;;
                    file)
                        echo >> "$tn";
                        cat "$( which "$fn" )" >> "$tn"
                    ;;
                    function)
                        echo >> "$tn";
                        declare -f "$fn" >> "$tn"
                    ;;
                    keyword)
                        echo "requires '$fn' which is a keyword"
                    ;;
                    '')
                        echo "requires '$fn' which is not found"
                    ;;
                    *)
                        echo "requires '$fn' which is of unknown type '$t'"
                    ;;
                esac;
            done;
        fi;
    done;
    echo '# vim: set ts=4 sts=0 sw=0 et:' >> "$tn";
    echo;
    while :; do
        vim "$tn";
        if test "$tn" -nt "$tn"-stamp; then
            if source "$tn"; then
                __ln=($( ls -Lon "$tn" ));
                __size=${__ln[3]};
                echo "read $__size bytes";
                break;
            else
                if read -p "Edit again? (y/n)? " yesno && [ "$yesno" = 'y' ]; then
                    :;
                else
                    break;
                fi;
            fi;
        else
            if read -p "Edit again? (y/n)? " yesno && [ "$yesno" = 'y' ]; then
                :;
            else
                break;
            fi;
        fi;
    done
}
vimfn () 
{ 
    local fn=$1;
    shift;
    local tn="/var/tmp/fn.$fn.$$.sh";
    touch "$tn"-stamp;
    declare -f "$fn" > "$tn";
    local requires=();
    type versioncmp;
    declare -f "$fn" | while read -r line; do
        if startswith "$line" "requires=("; then
            explode " " "$( string_between -s '(' ')' "$line" )";
            for fn in "${EXPLODED[@]}";
            do
                local t=$(type -t "$fn");
                echo "type $fn: $t";
                case "$t" in 
                    alias)
                        echo "requires '$fn' which is a alias"
                    ;;
                    builtin)
                        echo "requires '$fn' which is a builtin"
                    ;;
                    file)
                        echo "requires '$fn' (file)";
                        echo >> "$tn";
                        cat "$( which "$fn" )" >> "$tn"
                    ;;
                    function)
                        echo "requires '$fn' (function)";
                        echo >> "$tn";
                        declare -f "$fn" >> "$tn"
                    ;;
                    keyword)
                        echo "requires '$fn' which is a keyword"
                    ;;
                    '')
                        echo "requires '$fn' which is not found"
                    ;;
                    *)
                        echo "requires '$fn' which is of unknown type '$t'"
                    ;;
                esac;
            done;
        fi;
    done;
    echo '# vim: set ts=4 sts=0 sw=0 et:' >> "$tn";
    echo;
    while :; do
        vim "$tn";
        if test "$tn" -nt "$tn"-stamp; then
            if source "$tn"; then
                __ln=($( ls -Lon "$tn" ));
                __size=${__ln[3]};
                echo "read $__size bytes";
                break;
            else
                if read -p "Edit again? (y/n)? " yesno && [ "$yesno" = 'y' ]; then
                    :;
                else
                    break;
                fi;
            fi;
        else
            if read -p "Edit again? (y/n)? " yesno && [ "$yesno" = 'y' ]; then
                :;
            else
                break;
            fi;
        fi;
    done
}
vimfn () 
{ 
    local fn=$1;
    shift;
    local tn="/var/tmp/fn.$fn.$$.sh";
    touch "$tn"-stamp;
    declare -f "$fn" > "$tn";
    local requires=();
    type versioncmp;
    declare -f "$fn" | while read -r line; do
        if startswith "$line" "requires=("; then
            explode " " "$( string_between -s '(' ')' "$line" )";
            for fn in "${EXPLODED[@]}";
            do
                local t=$(type -t "$fn");
                echo "type $fn: $t";
                case "$t" in 
                    alias)
                        echo "requires '$fn' which is a alias"
                    ;;
                    builtin)
                        echo "requires '$fn' which is a builtin"
                    ;;
                    file)
                        echo "requires '$fn' (file)";
                        echo >> "$tn";
                        cat "$( which "$fn" )" >> "$tn"
                    ;;
                    function)
                        echo "requires '$fn' (function)";
                        echo >> "$tn";
                        declare -f "$fn" >> "$tn"
                    ;;
                    keyword)
                        echo "requires '$fn' which is a keyword"
                    ;;
                    '')
                        echo "requires '$fn' which is not found"
                    ;;
                    *)
                        echo "requires '$fn' which is of unknown type '$t'"
                    ;;
                esac;
            done;
        fi;
    done;
    echo '# vim: set ts=4 sts=0 sw=0 et:' >> "$tn";
    echo;
    while :; do
        vim "$tn";
        if test "$tn" -nt "$tn"-stamp; then
            if source "$tn"; then
                __ln=($( ls -Lon "$tn" ));
                __size=${__ln[3]};
                echo "read $__size bytes";
                break;
            else
                if read -p "Edit again? (y/n)? " yesno && [ "$yesno" = 'y' ]; then
                    :;
                else
                    break;
                fi;
            fi;
        else
            if read -p "Edit again? (y/n)? " yesno && [ "$yesno" = 'y' ]; then
                :;
            else
                break;
            fi;
        fi;
    done
}
vimfn () 
{ 
    local fn=$1;
    shift;
    local tn="/var/tmp/fn.$fn.$$.sh";
    touch "$tn"-stamp;
    declare -f "$fn" > "$tn";
    local requires=();
    type versioncmp;
    declare -f "$fn" | while read -r line; do
        echo "line: $line";
        if startswith "$line" "requires=("; then
            explode " " "$( string_between -s '(' ')' "$line" )";
            echo "exploded: ${exploded[@]}";
            for fn in "${EXPLODED[@]}";
            do
                local t=$(type -t "$fn");
                echo "type $fn: $t";
                case "$t" in 
                    alias)
                        echo "requires '$fn' which is a alias"
                    ;;
                    builtin)
                        echo "requires '$fn' which is a builtin"
                    ;;
                    file)
                        echo "requires '$fn' (file)";
                        echo >> "$tn";
                        cat "$( which "$fn" )" >> "$tn"
                    ;;
                    function)
                        echo "requires '$fn' (function)";
                        echo >> "$tn";
                        declare -f "$fn" >> "$tn"
                    ;;
                    keyword)
                        echo "requires '$fn' which is a keyword"
                    ;;
                    '')
                        echo "requires '$fn' which is not found"
                    ;;
                    *)
                        echo "requires '$fn' which is of unknown type '$t'"
                    ;;
                esac;
            done;
        fi;
    done;
    echo '# vim: set ts=4 sts=0 sw=0 et:' >> "$tn";
    echo;
    while :; do
        vim "$tn";
        if test "$tn" -nt "$tn"-stamp; then
            if source "$tn"; then
                __ln=($( ls -Lon "$tn" ));
                __size=${__ln[3]};
                echo "read $__size bytes";
                break;
            else
                if read -p "Edit again? (y/n)? " yesno && [ "$yesno" = 'y' ]; then
                    :;
                else
                    break;
                fi;
            fi;
        else
            if read -p "Edit again? (y/n)? " yesno && [ "$yesno" = 'y' ]; then
                :;
            else
                break;
            fi;
        fi;
    done
}
