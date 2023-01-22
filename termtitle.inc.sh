# SAVEFNDOC
# functionName="termtitle"
# requires=()
# shortDesc="put tty into terminal ansi"
# longDesc=<<'# EOD'
# EOD
termtitle () 
{ 
    term_title_start="\033]0;";
    term_title_end="\a";
    term_title="\\u@\\h";
    screen_insert="$screen_title_start$screen_title$screen_title_end";
    local -i term_tty
    term_tty=$( tty | sed -e 's/[^0-9]//g' -e 's/^0*//' )
    term_title="-$term_tty";
    term_insert="$term_title_start$term_title$term_title_end";
    echo -e "$term_insert"
}
termtitle
