# SAVEFNDOC
# functionName="git-wt"
# requires=()
# shortDesc="git worktree shortcut"
# longDesc=<<'# EOD'
# EOD
git-wt () 
{ 
    local new_branch=$1;
    shift;
    local old_branch=${2:-origin/master};
    shift;
    if test -n "$new_branch" -a -d "../vizicksui/.git" -a ! -e "../$new_branch"; then
        git fetch && git worktree add -b "$new_branch" ../"$new_branch" "$old_branch" && cd ../"$new_branch" && git push --set-upstream origin "$new_branch";
    else
        echo invalid branch name;
    fi
}
git-wt () 
{ 
    local new_branch=$1;
    shift;
    local old_branch=${1:-origin/master};
    shift;
    if test -n "$new_branch" -a -d "../vizicksui/.git" -a ! -e "../$new_branch"; then
        git fetch && git worktree add -b "$new_branch" ../"$new_branch" "$old_branch" && cdtrack ../"$new_branch" && git push --set-upstream origin "$new_branch";
    else
        echo invalid branch name;
    fi
}
git-wt () 
{ 
    local new_branch=$1;
    shift;
    local old_branch=${1:-origin/master};
    shift;
    if test -n "$new_branch" -a ! -e "../$new_branch"; then
        git fetch && git worktree add -b "$new_branch" ../"$new_branch" "$old_branch" && cdtrack ../"$new_branch" && git push --set-upstream origin "$new_branch";
    else
        echo invalid branch name;
    fi
}
