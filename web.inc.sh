# SAVEFNDOC
# functionName="web"
# requires=()
# shortDesc=""
# longDesc=<<'# EOD'
# EOD
web () 
{ 
    . include realpath;
    cwd=$( realpath -f "$PWD" );
    end=${cwd#/Volumes/cyrus};
    start="http://192.168.1.6/admin";
    echo "$start$end"
}
