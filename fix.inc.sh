# SAVEFNDOC
# functionName="fix"
# requires=()
# shortDesc="fixes directory for famous-reconstituted, run from src/famous-opt-2"
# longDesc=<<'# EOD'
# EOD
fix () 
{ 
    gfn=$1;
    gfn=${gfn##*/};
    echo Looking for "$gfn";
    fn=$( find lib/famous-reconstituted -name $gfn );
    dn=$( dirname "$1" );
    test -d "$dn" || mkdir -p "$dn";
    cp -v "$fn" "$1"
}
