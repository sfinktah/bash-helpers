# SAVEFNDOC
# functionName="timestat"
# requires=()
# shortDesc=""
# longDesc=<<'# EOD'
# EOD
timestat () 
{ 
    now=$( date +"%s" );
    for fn in $( ls -td "$1"/*);
    do
        declare -A ago;
        eval $( stat -s "$fn" );
        for t in {a,m,c,birth};
        do
            vn="st_${t}time";
            val="${!vn}";
            (( minutes = (( now - val ) / 60 ) % 60  ));
            (( hours   = ( now - val ) / 3600 ));
            ago[$t]=${!vn};
            ago[$t]=${hours};
        done;
        if (( ago[m] < 48 )); then
            printf '%-40s %3s\n' "$fn" $hours;
        fi;
    done
}
timestat () 
{ 
    now=$( date +"%s" );
    for dir in "$@";
    do
        for fn in $( ls -td "$dir"/*);
        do
            declare -A ago;
            eval $( stat -s "$fn" );
            for t in {a,m,c,birth};
            do
                vn="st_${t}time";
                val="${!vn}";
                (( minutes = (( now - val ) / 60 ) % 60  ));
                (( hours   = ( now - val ) / 3600 ));
                ago[$t]=${!vn};
                ago[$t]=${hours};
            done;
            if (( ago[m] < 48 )); then
                printf '%-40s %3s\n' "$fn" $hours;
            fi;
        done;
    done
}
