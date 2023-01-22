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
