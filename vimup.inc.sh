# SAVEFNDOC
# functionName="vimup"
# requires=()
# shortDesc=""
# longDesc=<<'# EOD'
# EOD
vimup () 
{ 
    local pattern=$1;
    shift;
    local choices=();
    local vimhist=();
    local -i len=0;
    local -i found=0;
    if test -n "$pattern"; then
        mapfile -t vimhist_t < <( egrep "$pattern" ~/.vimhistory | uniq );
        len=${#vimhist_t[@]};
        for ((i=len-1; i>=0; i-- ))
        do
            found=0;
            for existing in "${vimhist[@]}";
            do
                if [[ $existing == ${vimhist_t[$i]} ]]; then
                    found=1;
                fi;
            done;
            (( !found )) && vimhist+=("${vimhist_t[$i]}");
        done;
    else
        local -i n=20;
        local -i s=0;
        for ((n=20; n<200 && s<20 ; n+=10 ))
        do
            vimhist=();
            s=0;
            while IFS= read vim; do
                vimhist+=("$vim");
                (( s++ ));
            done < <( tail -n$n ~/.vimhistory | awk '!a[$0]++' | tail -r -n20);
        done;
    fi;
    for key in "${!vimhist[@]}";
    do
        printf -v value "%q" "${vimhist[$key]}";
        choices+=("$key" "$value");
    done;
    result=$( Menu.Show '( [backtitle]="Backtitle"
                          [title]="Title"
                          [question]="Please choose:" )'                                "${choices[@]}"  3>&2 2>&1 1>&3-    );
    test -n "$result" && vimtrack "${vimhist[$result]}"
}
vimup () 
{ 
    local pattern=$1;
    shift;
    local choices=();
    local vimhist=();
    local -i len=0;
    local -i found=0;
    if test -n "$pattern"; then
        mapfile -t vimhist_t < <( egrep "$pattern" ~/.vimhistory | uniq );
        len=${#vimhist_t[@]};
        for ((i=len-1; i>=0; i-- ))
        do
            found=0;
            for existing in "${vimhist[@]}";
            do
                if [[ $existing == ${vimhist_t[$i]} ]]; then
                    found=1;
                fi;
            done;
            (( !found )) && vimhist+=("${vimhist_t[$i]}");
        done;
    else
        local -i n=20;
        local -i s=0;
        for ((n=20; n<200 && s<20 ; n+=10 ))
        do
            vimhist=();
            s=0;
            while IFS= read vim; do
                vimhist+=("$vim");
                (( s++ ));
            done < <( tail -n$n ~/.vimhistory | awk '!a[$0]++' | tail -r -n20);
        done;
    fi;
    for key in "${!vimhist[@]}";
    do
        printf -v value "%q" "${vimhist[$key]}";
        choices+=("$key" "$value");
    done;
    result=$( Menu.Show '( [backtitle]="Backtitle"
                          [title]="Title"
                          [question]="Please choose:" )'                                "${choices[@]}"  3>&2 2>&1 1>&3-    );
    test -n "$result" && vim "${vimhist[$result]}"
}
