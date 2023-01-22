# SAVEFNDOC
# functionName="vimpaste"
# requires=()
# shortDesc=""
# longDesc=<<'# EOD'
# EOD
vimpaste () 
{ 
    local extension=$1;
    shift;
    local tn="/var/tmp/tmpvimpaste.$$.${1:-txt}";
    touch "$tn"-stamp;
    getclip > "$tn";
    while :; do
        vim "$tn";
        test "$fn" -nt "$tn"-stamp && { 
            __ln=($( ls -Lon "$1" ));
            __size=${__ln[3]};
            putclip < "$tn";
            echo "Copied $__size bytes to the clipboard";
            break
        };
        if read -t 60 -p "Edit again? (y/n)? " yesno && [ "$yesno" = 'y' ]; then
            :;
        else
            break;
        fi;
    done
}
vimpaste () 
{ 
    local extension=$1;
    shift;
    local tn="/var/tmp/tmpvimpaste.$$.$1";
    touch "$tn"-stamp;
    getclip > "$tn";
    while :; do
        vim "$tn";
        test "$fn" -nt "$tn"-stamp && { 
            __ln=($( ls -Lon "$1" ));
            __size=${__ln[3]};
            putclip < "$tn";
            echo "Copied $__size bytes to the clipboard";
            break
        };
        if read -p "Edit again? (y/n)? " yesno && [ "$yesno" = 'y' ]; then
            :;
        else
            break;
        fi;
    done
}
vimpaste () 
{ 
    local extension=$1;
    shift;
    local tn="/var/tmp/tmpvimpaste.$$.$1";
    touch "$tn"-stamp;
    getclip > "$tn";
    while :; do
        vim "$tn";
        echo "Vim errorlevel $?";
        test "$tn" -nt "$tn"-stamp && { 
            __ln=($( ls -Lon "$1" ));
            __size=${__ln[3]};
            putclip < "$tn";
            echo "Copied $__size bytes to the clipboard";
            break
        };
        if read -p "Edit again? (y/n)? " yesno && [ "$yesno" = 'y' ]; then
            :;
        else
            break;
        fi;
    done
}
vimpaste () 
{ 
    local extension=$1;
    shift;
    local tn="/var/tmp/tmpvimpaste.$$.$1";
    touch "$tn"-stamp;
    getclip > "$tn";
    while :; do
        vim "$tn";
        echo "Vim errorlevel $?";
        test "$tn" -nt "$tn"-stamp && { 
            __ln=($( ls -Lon "$tn" ));
            __size=${__ln[3]};
            putclip < "$tn";
            echo "Copied $__size bytes to the clipboard";
            break
        };
        if read -p "Edit again? (y/n)? " yesno && [ "$yesno" = 'y' ]; then
            :;
        else
            break;
        fi;
    done
}
vimpaste () 
{ 
    local extension=${1:-txt};
    shift;
    local tn="/var/tmp/tmpvimpaste.$$.$extension";
    touch "$tn"-stamp;
    getclip > "$tn";
    while :; do
        vim "$tn";
        echo "Vim errorlevel $?";
        test "$tn" -nt "$tn"-stamp && { 
            __ln=($( ls -Lon "$tn" ));
            __size=${__ln[3]};
            putclip < "$tn";
            echo "Copied $__size bytes to the clipboard";
            break
        };
        if read -t 60 -p "Edit again? (y/n)? " yesno && [ "$yesno" = 'y' ]; then
            :;
        else
            break;
        fi;
    done
}
