# SAVEFNDOC
# functionName="vimhist"
# requires=()
# shortDesc=""
# longDesc=<<'# EOD'
# EOD
vimhist () 
{ 
    local el;
    sed "/^# Command Line History/a :@@marker@@$$" ~/.viminfo > ~/.viminfo.$$;
    vim -i ~/.viminfo.$$ "$@";
    sed -n "/# Command Line History/,/:@@marker@@$$/p" ~/.viminfo.$$ >> ~/viminfo.history;
    egrep '^:' ~/.viminfo.$$ | tail -a ~/viminfo.history
}
vimhist () 
{ 
    local el;
    sed "/^# Command Line History/a :@@marker@@$$ '$*'" ~/.viminfo > ~/.viminfo.$$;
    vim -i ~/.viminfo.$$ "$@";
    sed -n "/# Command Line History/,/:@@marker@@$$/p" ~/.viminfo.$$ | tee -a ~/viminfo.history
}
vimhist () 
{ 
    local el;
    sed "/^# Command Line History/a :@@marker@@$$ '$*'" ~/.viminfo > ~/.viminfo.$$;
    vim -i ~/.viminfo.$$ "$@";
    sed -n "/# Command Line History/,/:@@marker@@$$/p" ~/.viminfo.$$ | tee -a ~/.viminfo.history;
    rm -f ~/.viminfo.$$
}
vimhist () 
{ 
    # https://stackoverflow.com/questions/17988756/how-to-select-lines-between-two-marker-patterns-which-may-occur-multiple-times-w
    # awk '/^# Command Line History/{flag=1;next}/Search String History/{flag=0}flag' ~/.viminfo
    vim "$@"
    return
    local el;
    sed "/^# Command Line History/a :@@marker@@$$ '$*'" ~/.viminfo > ~/.viminfo.$$;
    vim -i ~/.viminfo.$$ "$@";
    sed -n "/# Command Line History/,/:@@marker@@$$/p" ~/.viminfo.$$ | tee -a ~/.viminfo.history;
    rm -f ~/.viminfo.$$
}
vimhist () 
{ 
    vim "$@";
    local el;
    sed "/^# Command Line History/a :@@marker@@$$ '$*'" ~/.viminfo > ~/.viminfo.$$;
    vim -i ~/.viminfo.$$ "$@";
    sed -n "/# Command Line History/,/:@@marker@@$$/p" ~/.viminfo.$$ | tee -a ~/.viminfo.history;
    rm -f ~/.viminfo.$$
}
vimhist () 
{ 
    # Replace this later with an intelligent gathering of history
    cp ~/.viminfo ~/.viminfo.$$
    local el;
    vim -i ~/.viminfo.$$ "$@";
    el=$?;
    sed -n "/# Command Line History/,/:@@marker@@$$/p" ~/.viminfo.$$ | tee -a ~/.viminfo.history;
    rm -f ~/.viminfo.$$
}
