# SAVEFNDOC
# functionName="strip"
# requires=()
# shortDesc=""
# longDesc=<<'# EOD'
# EOD

strip_invalid_args() {
    cat <<'END'
strip.sh: strip.sh string chars
   or     echo string | strip.sh chars
    Output is `string` with any character listen in `chars` removed
    from the back or front of the string.
END
    return 1
}

strip () 
{ 
    local string=$1;
    local chars=$2;
    if [ -z "$string" ]; then
        strip_invalid_args;
        return 1;
    fi;
    if [ -z "$chars" ]; then
        chars=$string;
        while IFS= read -r line; do
            fn "$line" "$chars";
        done;
        return;
    fi;
    local found=1;
    while (( found )); do
        found=0;
        local length=${#string};
        for ((i=0; i<length; ++i ))
        do
            local char=${chars:$i:1};
            local before=$string;
            string=${string%$char};
            string=${string#$char};
            [[ "$string" = "$before" ]] || found=1;
        done;
    done;
    echo $string
}
