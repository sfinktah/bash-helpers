# SAVEFNDOC
# functionName="yarn-add-repeat"
# requires=()
# shortDesc=""
# longDesc=<<'# EOD'
# EOD
yarn-add-repeat () 
{ 
    while :; do
        st=$( yarn dev | egrep "Cannot find module" );
        string_between "'" "'" "$st";
        test -n "$REPLY" || break;
        eval "yarn add --dev $REPLY";
    done
}
