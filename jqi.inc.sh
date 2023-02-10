# SAVEFNDOC
# functionName="jqi"
# requires=()
# shortDesc=""
# longDesc=<<'# EOD'
# EOD
jqi () 
{ 
    local filename=$1;
    shift;
    local inplace=;
    local stdin=;
    if [[ $filename == "-i" ]]; then
        echo "jqi: in-place editing enabled" 1>&2;
        inplace=y;
        filename=$1;
        shift;
    fi;
    if [[ $filename == "-" ]]; then
        echo "jqi: reading/writing from stdin/stdout" 1>&2;
        if [ -n "$inplace" ]; then
            stdin=y;
            inplace=;
        fi;
        filename="/dev/stdin";
    fi;
    local tempname="$( mktemp --directory --suffix __jq )/$( dirname "$filename" ).$$.json";
    local timestamp="${tempname%json}timestamp";
    local -i error=0;
    cat "$filename" > "$tempname";
    touch "$timestamp";
    while :; do
        if jq "${@}" "$filename" > "$tempname"; then
            if test "$tempname" -nt "$timestamp"; then
                local ls_output=($( ls -Lon "$tempname" ));
                filesize=${ls_output[3]};
                if [[ $filesize -lt 7 ]]; then
                    echo "jqi: read only $filesize bytes, not overwriting" 1>&2;
                    error=1;
                    break;
                fi;
                if [ -n "$inplace" ]; then
                    cat "$tempname" > "$filename";
                else
                    echo "jqi: output from dry run" 1>&2;
                    cat "$tempname";
                fi;
                error=0;
                break;
            else
                echo "jqi: output not newer, not overwriting" 1>&2;
                error=1;
                break;
            fi;
        else
            echo "jqi: jq error, not overwriting" 1>&2;
            error=1;
            break;
        fi;
    done;
    if [ -n "$stdin" ] && [ $error -eq 1 ]; then
        echo "jqi: output original to stdout" 1>&2;
        cat "$filename";
    fi;
    rm "$tempname" "$timestamp";
    rmdir "$( dirname "$tempname" )"
}
jqi () 
{ 
    local filename=$1;
    shift;
    local inplace=;
    local stdin=;
    if [[ $filename == "-i" ]]; then
        echo "jqi: in-place editing enabled" 1>&2;
        inplace=y;
        filename=$1;
        shift;
    fi;
    if [[ $filename == "-" ]]; then
        echo "jqi: reading/writing from stdin/stdout" 1>&2;
        if [ -n "$inplace" ]; then
            stdin=y;
            inplace=;
        fi;
        filename="/dev/stdin";
    fi;
    local tempname="$( mktemp --directory --suffix __jq )/$( dirname "$filename" ).$$.json";
    local timestamp="${tempname%json}timestamp";
    echo "filename:  $filename";
    echo "inplace:   $inplace";
    echo "stdin:     $stdin";
    echo "tempname:  $tempname";
    echo "timestamp: $timestamp";
    echo jq \""${*}"\" \""$filename"\" \> \""$tempname"\";
    local -i error=0;
    cat "$filename" > "$tempname";
    touch "$timestamp";
    while :; do
        if jq "${*}" "$filename" > "$tempname"; then
            if test "$tempname" -nt "$timestamp"; then
                local ls_output=($( ls -Lon "$tempname" ));
                filesize=${ls_output[3]};
                if [[ $filesize -lt 7 ]]; then
                    echo "jqi: read only $filesize bytes, not overwriting" 1>&2;
                    error=1;
                    break;
                fi;
                if [ -n "$inplace" ]; then
                    cat "$tempname" > "$filename";
                else
                    echo "jqi: output from dry run" 1>&2;
                    cat "$tempname";
                fi;
                error=0;
                break;
            else
                echo "jqi: output not newer, not overwriting" 1>&2;
                error=1;
                break;
            fi;
        else
            echo "jqi: jq error, not overwriting" 1>&2;
            error=1;
            break;
        fi;
    done;
    if [ -n "$stdin" ] && [ $error -eq 1 ]; then
        echo "jqi: output original to stdout" 1>&2;
        cat "$filename";
    fi;
    rm "$tempname" "$timestamp";
    rmdir "$( dirname "$tempname" )"
}
jqi () 
{ 
    local filename=$1;
    shift;
    local inplace=;
    local stdin=;
    if [[ $filename == "-i" ]]; then
        echo "jqi: in-place editing enabled" 1>&2;
        inplace=y;
        filename=$1;
        shift;
    fi;
    if [[ $filename == "-" ]]; then
        echo "jqi: reading/writing from stdin/stdout" 1>&2;
        if [ -n "$inplace" ]; then
            stdin=y;
            inplace=;
        fi;
        filename="/dev/stdin";
    fi;
    local tempname="$( mktemp --directory --suffix __jq )/$( dirname "$filename" ).$$.json";
    local timestamp="${tempname%json}timestamp";
    echo "filename:  $filename" 1>&2;
    echo "inplace:   $inplace" 1>&2;
    echo "stdin:     $stdin" 1>&2;
    echo "tempname:  $tempname" 1>&2;
    echo "timestamp: $timestamp" 1>&2;
    echo jq \""${*}"\" \""$filename"\" \> \""$tempname"\" 1>&2;
    local -i error=0;
    cat "$filename" > "$tempname";
    touch "$timestamp";
    while :; do
        if jq "${*}" "$filename" > "$tempname"; then
            if test "$tempname" -nt "$timestamp"; then
                local ls_output=($( ls -Lon "$tempname" ));
                filesize=${ls_output[3]};
                if [[ $filesize -lt 7 ]]; then
                    echo "jqi: read only $filesize bytes, not overwriting" 1>&2;
                    error=1;
                    break;
                fi;
                if [ -n "$inplace" ]; then
                    cat "$tempname" > "$filename";
                else
                    echo "jqi: output from dry run" 1>&2;
                    cat "$tempname";
                fi;
                error=0;
                break;
            else
                echo "jqi: output not newer, not overwriting" 1>&2;
                error=1;
                break;
            fi;
        else
            echo "jqi: jq error, not overwriting" 1>&2;
            error=1;
            break;
        fi;
    done;
    if [ -n "$stdin" ] && [ $error -eq 1 ]; then
        echo "jqi: output original to stdout" 1>&2;
        cat "$filename";
    fi;
    rm "$tempname" "$timestamp";
    rmdir "$( dirname "$tempname" )"
}
jqi () 
{ 
    local filename=$1;
    shift;
    local inplace=;
    local stdin=;
    if [[ $filename == "-i" ]]; then
        echo "jqi: in-place editing enabled" 1>&2;
        inplace=y;
        filename=$1;
        shift;
    fi;
    if [[ $filename == "-" ]]; then
        echo "jqi: reading/writing from stdin/stdout" 1>&2;
        if [ -n "$inplace" ]; then
            stdin=y;
            inplace=;
        fi;
        filename="/dev/stdin";
    fi;
    local tempname="$( mktemp --directory --suffix __jq )/$( basename "$filename" ).$$.json";
    local timestamp="${tempname%json}timestamp";
    echo "filename:  $filename" 1>&2;
    echo "inplace:   $inplace" 1>&2;
    echo "stdin:     $stdin" 1>&2;
    echo "tempname:  $tempname" 1>&2;
    echo "timestamp: $timestamp" 1>&2;
    echo jq \""${*}"\" \""$filename"\" \> \""$tempname"\" 1>&2;
    local -i error=0;
    cat "$filename" > "$tempname";
    touch "$timestamp";
    while :; do
        if jq "${*}" "$filename" > "$tempname"; then
            if test "$tempname" -nt "$timestamp"; then
                local ls_output=($( ls -Lon "$tempname" ));
                filesize=${ls_output[3]};
                if [[ $filesize -lt 7 ]]; then
                    echo "jqi: read only $filesize bytes, not overwriting" 1>&2;
                    error=1;
                    break;
                fi;
                if [ -n "$inplace" ]; then
                    cat "$tempname" > "$filename";
                else
                    echo "jqi: output from dry run" 1>&2;
                    cat "$tempname";
                fi;
                error=0;
                break;
            else
                echo "jqi: output not newer, not overwriting" 1>&2;
                error=1;
                break;
            fi;
        else
            echo "jqi: jq error, not overwriting" 1>&2;
            error=1;
            break;
        fi;
    done;
    if [ -n "$stdin" ] && [ $error -eq 1 ]; then
        echo "jqi: output original to stdout" 1>&2;
        cat "$filename";
    fi;
    rm "$tempname" "$timestamp";
    rmdir "$( dirname "$tempname" )";
    return $error
}
jqi () 
{ 
    local filename=$1;
    shift;
    local inplace=;
    local stdin=;
    if [[ $filename == "" ]]; then
        cat  <<'EOT'
See: https://stackoverflow.com/questions/36565295/jq-to-replace-text-directly-on-file-like-sed-i/69857148#69857148
Usage: jqi [-i] <filename> [jq options] <jq filter>

e.g.:

fix-node-sass() 
{ 
    jqi -i package.json '.resolutions += {"node-sass": "6.0.1"}' \
                  '| .devDependencies += {"node-sass": "6.0.1"}'

}

Much like sed or perl, specify -i as the leading argument to force rewriting of the original file. If -i is not specified, it will be a "dry run" and output will go to stdout.

If for some arcane reason you want to do something weird like:

cat in.json | jq -i - > out.json

Then out.json will hold either the result, or the original contents of in.json on error -- i.e., out.json should be valid json.

Note: an output of less than 7 characters (e.g. null) is considered an error, and will not overwrite. You can disable this safety feature if you wish.
EOT

        return 1;
    fi
    if [[ $filename == "-i" ]]; then
        echo "jqi: in-place editing enabled" 1>&2;
        inplace=y;
        filename=$1;
        shift;
    fi;
    if [[ $filename == "-" ]]; then
        echo "jqi: reading/writing from stdin/stdout" 1>&2;
        if [ -n "$inplace" ]; then
            stdin=y;
            inplace=;
        fi;
        filename="/dev/stdin";
    fi;
    local tempname="$( mktemp --directory --suffix __jq )/$( basename "$filename" ).$$.json";
    local timestamp="${tempname%json}timestamp";
    echo "filename:  $filename" 1>&2;
    echo "inplace:   $inplace" 1>&2;
    echo "stdin:     $stdin" 1>&2;
    echo "tempname:  $tempname" 1>&2;
    echo "timestamp: $timestamp" 1>&2;
    echo jq \""${*}"\" \""$filename"\" \> \""$tempname"\" 1>&2;
    local -i error=0;
    cat "$filename" > "$tempname";
    touch "$timestamp";
    while :; do
        if jq "${*}" "$filename" > "$tempname"; then
            if test "$tempname" -nt "$timestamp"; then
                local ls_output=($( ls -Lon "$tempname" ));
                filesize=${ls_output[3]};
                if [[ $filesize -lt 7 ]]; then
                    echo "jqi: read only $filesize bytes, not overwriting" 1>&2;
                    error=1;
                    break;
                fi;
                if [ -n "$inplace" ]; then
                    cat "$tempname" > "$filename";
                else
                    echo "jqi: output from dry run" 1>&2;
                    cat "$tempname";
                fi;
                error=0;
                break;
            else
                echo "jqi: output not newer, not overwriting" 1>&2;
                error=1;
                break;
            fi;
        else
            echo "jqi: jq error, not overwriting" 1>&2;
            error=1;
            break;
        fi;
    done;
    if [ -n "$stdin" ] && [ $error -eq 1 ]; then
        echo "jqi: output original to stdout" 1>&2;
        cat "$filename";
    fi;
    rm "$tempname" "$timestamp";
    rmdir "$( dirname "$tempname" )";
    return $error
}
