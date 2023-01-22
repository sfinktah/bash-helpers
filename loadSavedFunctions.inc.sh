# SAVEFNDOC
# functionName="loadSavedFunctions"
# requires=()
# shortDesc="Loads functions saved by savefn"
# longDesc=<<'# EOD'
# EOD
loadSavedFunctions () 
{ 
    local saveTo=~/bin/saved;
    test -d "$saveTo" &&
    for fn in "$saveTo"/*.sh;
    do
        echo "Loading saved function '$fn'";
        source "$fn";
    done
}
