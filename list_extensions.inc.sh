# SAVEFNDOC
# functionName="list_extensions"
# requires=()
# shortDesc=""
# longDesc=<<'# EOD'
# EOD
list_extensions () 
{ 
    for fn in *.*;
    do
        if ! test -d "$fn"; then
            echo "${fn##*.}";
        fi;
    done | sort -u
}
