# SAVEFNDOC
# functionName="pngzip"
# requires=()
# shortDesc=""
# longDesc=<<'# EOD'
# EOD
pngzip () 
{ 
    for fn in "$@";
    do
        pngquant "$fn" "$fn.quant";
        optipng "$fn" "$fn.opti";
        pngcrush "$fn" "$fn.crush";
        optipng "$fn.quant" "$fn.quant.opti";
        pngcrush "$fn.quant.opti" "$fn.quant.opti.crush";
    done
}
pngzip () 
{ 
    for fn in "$@";
    do
        pngquant "$fn" "$fn.quant";
        optipng "$fn" "$fn.opti";
        pngcrush "$fn" "$fn.crush";
        pngquant "$fn.opti" "$fn.opti.quant";
        pngcrush "$fn.opti.quant" "$fn.opti.quant.crush";
        pngquant "$fn.crush" "$fn.crush.quant";
        pngcrush "$fn.crush.quant" "$fn.crush.quant.crush";
        optipng "$fn.quant" "$fn.quant.opti";
        pngcrush "$fn.quant.opti" "$fn.quant.opti.crush";
    done
}
pngzip () 
{ 
    (( PNGZIP_RECURSE ++ > 3 )) && return;
    for fn in "$@";
    do
        test -e "$fn.quant" || pngquant "$fn" "$fn.quant";
        test -e "$fn.opti" || optipng "$fn" "$fn.opti";
        test -e "$fn.crush" || pngcrush "$fn" "$fn.crush";
        pngzip "$fn.*";
    done
}
pngzip () 
{ 
    (( ( PNGZIP_RECURSE ++ ) > 3 )) && return
    for fn in "$@";
    do
        test -e "$fn.quant" || pngquant "$fn" "$fn.quant";
        test -e "$fn.opti"  || optipng  "$fn" "$fn.opti";
        test -e "$fn.crush" || pngcrush "$fn" "$fn.crush";
        pngzip "$fn".*

        # pngcrush "$fn.opti"        "$fn.opti.crush";
        # pngquant "$fn.opti"        "$fn.opti.quant";
        # pngcrush "$fn.opti.quant"  "$fn.opti.quant.crush";
        # pngquant "$fn.crush"       "$fn.crush.quant";
        # pngcrush "$fn.crush.quant" "$fn.crush.quant.crush";
        # optipng  "$fn.quant"       "$fn.quant.opti";
        # pngcrush "$fn.quant.opti"  "$fn.quant.opti.crush";
    done
# 2096  unpacking.transparent.png.opti.crush
# 2182  unpacking.transparent.png.opti
# 2185  unpacking.transparent.png.crush.quant
# 2189  unpacking.transparent.png.quant.opti.crush
# 2189  unpacking.transparent.png.opti.quant.crush
# 2189  unpacking.transparent.png.crush.quant.crush
# 2270  unpacking.transparent.png.quant.opti
# 2272  unpacking.transparent.png.quant
# 2272  unpacking.transparent.png.opti.quant
# 3247  unpacking.transparent.png.crush
# 3720  unpacking.transparent.png
# 3865  unpacking.transparent.gif
# vim: set ts=4 sts=0 sw=0 et:
}
