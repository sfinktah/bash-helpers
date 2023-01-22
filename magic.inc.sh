# SAVEFNDOC
# functionName="magic"
# requires=()
# shortDesc=""
# longDesc=<<'# EOD'
# EOD
magic () 
{ 
    local _safe_path;
    printf -v _safe_path "%q" "$1";
    eval "ln -sf ${_safe_path#\\} /tmp/realpath.$$";
    readlink /tmp/realpath.$$;
    rm -f /tmp/realpath.$$
}
