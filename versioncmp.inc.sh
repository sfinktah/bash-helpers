# SAVEFNDOC
# functionName="versioncmp"
# requires=()
# shortDesc=""
# longDesc=<<'# EOD'
# EOD
versioncmp () 
{ 
    if [[ $1 == $2 ]]; then
        return 0;
    fi;
    local IFS=.;
    local i ver1=($1) ver2=($2);
    for ((i=${#ver1[@]}; i<${#ver2[@]}; i++))
    do
        ver1[i]=0;
    done;
    for ((i=0; i<${#ver1[@]}; i++))
    do
        if [[ -z ${ver2[i]} ]]; then
            ver2[i]=0;
        fi;
        if ((10#${ver1[i]} > 10#${ver2[i]})); then
            return 1;
        fi;
        if ((10#${ver1[i]} < 10#${ver2[i]})); then
            return 2;
        fi;
    done;
    return 0
}
