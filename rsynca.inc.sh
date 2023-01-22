# SAVEFNDOC
# functionName="rsynca"
# requires=()
# shortDesc=""
# longDesc=<<'# EOD'
# EOD
rsynca () 
{ 
    rsync --append-verify -lriP -e "ssh $3 $4 -T -c arcfour -o Compression=no -x" $1 $2
}
rsynca () 
{ 
    rsync --append-verify -lriP -e "ssh -T -c arcfour -o Compression=no -x" "$@"
}
