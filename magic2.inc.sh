# SAVEFNDOC
# functionName="magic"
# requires=()
# shortDesc=""
# longDesc=<<'# EOD'
# EOD
magic2 () 
{ 
    local _safe_path 
    printf -v _safe_path "%q" "$1";
    local _unesc=${_safe_path#\\~}
    [[ $_unesc != $_safe_path ]] && { 
       _unesc="~$_unesc"
       ( eval "cd -P $_unesc" && pwd )
    }
    # readlink /tmp/realpath.$$;
    # rm -f /tmp/realpath.$$
}
