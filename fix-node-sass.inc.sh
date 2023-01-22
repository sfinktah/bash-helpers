# SAVEFNDOC
# functionName="fix-node-sass"
# requires=()
# shortDesc=""
# longDesc=<<'# EOD'
# EOD
fix-node-sass () 
{ 
    jqi -i package.json '.resolutions += {"node-sass": "6.0.1"}' '| .devDependencies += {"node-sass": "6.0.1"}'
}
fix-node-sass () 
{ 
    jqi -i package.json '.resolutions += {"node-sass": "6.0.1"}' '| .devDependencies += {"node-sass": "6.0.1"}';
    jqi -i package.json '.resolutions += {"sass-loader": "6.0.7"}' '| .devDependencies += {"sass-loader": "6.0.7"}';
    jqi -i package.json '.resolutions += {"webpack": "4.46.0"}' '| .devDependencies += {"webpack": "4.46.0"}'
}
fix-node-sass () 
{ 
    local -A checkboxes;
    checkboxes["foo"]=off;
    checkboxes["bar"]=on;
    checkboxes["eric"]=on;
    backtitle="Backtitle";
    title="Title";
    question="Please choose:";
    choices=();
    for key in "${!checkboxes[@]}";
    do
        choices+=("$key" "" "${checkboxes[$key]}");
    done;
    result=$(
        whiptail --backtitle "$backtitle"                  --title "$title"                          --checklist "$text"                       0 0 0 "${choices[@]}"                     3>&2 2>&1 1>&3-
    );
    echo "$result";
    jqi -i package.json '.resolutions += {"node-sass": "6.0.1"}' '| .devDependencies += {"node-sass": "6.0.1"}';
    jqi -i package.json '.resolutions += {"sass-loader": "6.0.7"}' '| .devDependencies += {"sass-loader": "6.0.7"}';
    jqi -i package.json '.resolutions += {"webpack": "4.46.0"}' '| .devDependencies += {"webpack": "4.46.0"}'
}
fix-node-sass () 
{ 
    local -A checkboxes;
    checkboxes[node-sass]=on;
    checkboxes[sass-loader]=off;
    checkboxes[webpack]=off;
    backtitle="Backtitle";
    title="Title";
    question="Please choose:";
    choices=();
    for key in "${!checkboxes[@]}";
    do
        choices+=("$key" "" "${checkboxes[$key]}");
    done;
    result=$(
        whiptail --backtitle "$backtitle"                  --title "$title"                          --checklist "$text"                       0 0 0 "${choices[@]}"                     3>&2 2>&1 1>&3-
    );
    unset a;
    a=($( echo $result ));
    for i in "${a[@]}";
    do
        case "$i" in 
            *node-sass*)
                jqi -i package.json '.resolutions += {"node-sass": "6.0.1"}' '| .devDependencies += {"node-sass": "6.0.1"}'
            ;;
            *sass-loader*)
                jqi -i package.json '.resolutions += {"sass-loader": "6.0.7"}' '| .devDependencies += {"sass-loader": "6.0.7"}'
            ;;
            *webpack*)
                jqi -i package.json '.resolutions += {"webpack": "4.46.0"}' '| .devDependencies += {"webpack": "4.46.0"}'
            ;;
        esac;
    done
}
fix-node-sass () 
{ 
    local -A packages;
    local -A checkboxes;
    local package version;
    while read -r package version; do
        package=$( strip "$package" '":' );
        version=$( strip "$version" '",' );
        printf "package:%-24s    version:%s\n" "$package" "$version";
        packages["$package"]=$version;
        checkboxes["$package"]=off;
    done <<END
        "laravel-mix": "^6.0.39",
        "node-sass": "6.0.1"
        "sass-loader": "^6.0.7",
        "sass-loader": "^12.3.0",
        "webpack": "^5.64.0",
        "webpack": "^4.46.0",
        "webpack-cli": "^4.9.1"
        "mix-tailwindcss": "^1.3.0",
        "postcss": "^8.3.11",
        "postcss-loader": "^6.2.0",
        "resolve-url-loader": "^4.0.0",
END

    checkboxes[node-sass]=on;
    backtitle="Backtitle";
    title="Title";
    question="Please choose:";
    choices=();
    for key in "${!checkboxes[@]}";
    do
        choices+=("$key" "" "${checkboxes[$key]}");
    done;
    result=$(
        whiptail --backtitle "$backtitle" --title "$title" --checklist "$text" 0 0 0 "${choices[@]}" 3>&2 2>&1 1>&3-
    );
    unset a;
    a=($( echo $result ));
    for i in "${a[@]}";
    do
        package=$i;
        version=${packages[$package]};
        if [[ ${version[0]} != '^' ]]; then
            jqi -i package.json '.resolutions += {"'"$package"'": "'"$version"'"}' '| .devDependencies += {"'"$package"'": "'"$version"'"}';
        else
            yarn add --dev "$package:$version";
        fi;
    done
}
fix-node-sass () 
{ 
    local -A packages;
    local -A checkboxes;
    local -A current;
    local package version;
    while read -r package version; do
        package=$( strip "$package" '":' );
        version=$( strip "$version" '",' );
        printf "package:%-24s    version:%s\n" "$package" "$version";
        packages[$package]=$version;
        checkboxes[$package]=off;
    done <<END
        "laravel-mix": "^6.0.39",
        "node-sass": "6.0.1"
        "sass-loader": "^6.0.7",
        "sass-loader": "^12.3.0",
        "mix-tailwindcss": "^1.3.0",
        "postcss": "^8.3.11",
        "postcss-loader": "^6.2.0",
        "resolve-url-loader": "^4.0.0",
        "webpack": "^4.46.0",
        "tailwindcss": "^2.2.19",
        webpack: 5.64.4
        webpack-cli: 4.9.1
        webpack-dev-server 4.4.0
END

    checkboxes[node-sass]=on;
    echo;
    echo 'Current Packages:';
    while read -r package version; do
        package=$( strip "$package" '":' );
        version=$( strip "$version" '",' );
        printf "package:%-24s    version:%s\n" "$package" "$version";
        test -z "$version" && continue;
        test -z "$package" && continue;
        current[$package]=$version;
        local old_version new_version el;
        test -z "${packages[$package]}" && continue;
        new_version=$( strip "$version" '^' );
        old_version=$( strip "${packages[$package]}" '^' );
        printf "old-ver:%-24s    new-ver:%s\n" "$old_version" "$new_version";
        if [ -n "$old_version" ]; then
            versioncmp "$old_version" "$new_version";
            el=$?;
            if (( el < 2 )); then
                checkboxes[$package]=on;
            fi;
        fi;
    done < <( jq '.devDependencies' package.json );
    backtitle="Backtitle";
    title="Title";
    question="Please choose:";
    choices=();
    for key in "${!checkboxes[@]}";
    do
        choices+=("$key" "${packages[$key]}" "${checkboxes[$key]}");
    done;
    result=$(
        whiptail --backtitle "$backtitle" --title "$title" --checklist "$text" 0 0 0 "${choices[@]}" 3>&2 2>&1 1>&3-
    );
    unset a;
    a=($( echo $result ));
    for i in "${a[@]}";
    do
        package=$( strip "$i" '"' );
        version=${packages[$package]};
        if [[ ${version:0:1} != '^' ]]; then
            jqi -i package.json '.resolutions += {"'"$package"'": "'"$version"'"}' '| .devDependencies += {"'"$package"'": "'"$version"'"}';
        else
            yarn add --dev "$package:$version";
        fi;
    done
}
fix-node-sass () 
{ 
    local -A packages;
    local -A checkboxes;
    local -A current;
    local package version;
    while read -r package version; do
        package=$( strip "$package" '":' );
        version=$( strip "$version" '",' );
        printf "package:%-24s    version:%s\n" "$package" "$version";
        packages[$package]=$version;
        checkboxes[$package]=off;
    done <<END
        "laravel-mix": "^6.0.39",
        "node-sass": "6.0.1"
        "sass-loader": "^6.0.7",
        "sass-loader": "^12.3.0",
        "mix-tailwindcss": "^1.3.0",
        "postcss": "^8.3.11",
        "postcss-loader": "^6.2.0",
        "resolve-url-loader": "^4.0.0",
        "webpack": "^4.46.0",
        "tailwindcss": "^2.2.19",
        "@babel/core": "^7.15.8",
        "@babel/plugin-proposal-object-rest-spread": "^7.15.6",
        "@babel/plugin-syntax-dynamic-import": "^7.8.3",
        "@babel/plugin-transform-runtime": "^7.15.8",
        "@babel/preset-env": "^7.15.8",
        "postcss": "^8.3.11",
        "webpack": "^5.60.0",
        "webpack-cli": "^4.9.1"
        webpack: 5.64.4
        webpack-cli: 4.9.1
        webpack-dev-server 4.4.0
END

    checkboxes[node-sass]=on;
    echo;
    echo 'Current Packages:';
    while read -r package version; do
        package=$( strip "$package" '":' );
        version=$( strip "$version" '",' );
        printf "package:%-24s    version:%s\n" "$package" "$version";
        test -z "$version" && continue;
        test -z "$package" && continue;
        current[$package]=$version;
        local old_version new_version el;
        test -z "${packages[$package]}" && continue;
        new_version=$( strip "$version" '^' );
        old_version=$( strip "${packages[$package]}" '^' );
        printf "old-ver:%-24s    new-ver:%s\n" "$old_version" "$new_version";
        if [ -n "$old_version" ]; then
            versioncmp "$old_version" "$new_version";
            el=$?;
            if (( el < 2 )); then
                checkboxes[$package]=on;
            fi;
        fi;
    done < <( jq '.devDependencies' package.json );
    backtitle="Backtitle";
    title="Title";
    question="Please choose:";
    choices=();
    for key in "${!checkboxes[@]}";
    do
        choices+=("$key" "${packages[$key]}" "${checkboxes[$key]}");
    done;
    result=$(
        whiptail --backtitle "$backtitle" --title "$title" --checklist "$text" 0 0 0 "${choices[@]}" 3>&2 2>&1 1>&3-
    );
    unset a;
    a=($( echo $result ));
    for i in "${a[@]}";
    do
        package=$( strip "$i" '"' );
        version=${packages[$package]};
        if [[ ${version:0:1} != '^' ]]; then
            jqi -i package.json '.resolutions += {"'"$package"'": "'"$version"'"}' '| .devDependencies += {"'"$package"'": "'"$version"'"}';
        else
            yarn add --dev "$package@$version";
        fi;
    done
}
fix-node-sass () 
{ 
    local -A packages;
    local -A checkboxes;
    local -A current;
    local package version;
    while read -r package version; do
        package=$( strip "$package" '":' );
        version=$( strip "$version" '",' );
        printf "package:%-24s    version:%s\n" "$package" "$version";
        packages[$package]=$version;
        checkboxes[$package]=off;
    done <<END
        "laravel-mix": "^6.0.39",
        "node-sass": "6.0.1"
        "sass-loader": "^6.0.7",
        "sass-loader": "^12.3.0",
        "mix-tailwindcss": "^1.3.0",
        "postcss": "^8.3.11",
        "postcss-loader": "^6.2.0",
        "resolve-url-loader": "^4.0.0",
        "webpack": "^4.46.0",
        "tailwindcss": "^2.2.19",
        "@babel/core": "^7.15.8",
        "@babel/plugin-proposal-object-rest-spread": "^7.15.6",
        "@babel/plugin-syntax-dynamic-import": "^7.8.3",
        "@babel/plugin-transform-runtime": "^7.15.8",
        "@babel/preset-env": "^7.15.8",
        "postcss": "^8.3.11",
        "webpack": "^5.60.0",
        "webpack-cli": "^4.9.1"
        webpack: 5.64.4
        webpack-cli: 4.9.1
        webpack-dev-server 4.4.0
END

    checkboxes[node-sass]=on;
    echo;
    echo 'Current Packages:';
    while read -r package version; do
        package=$( strip "$package" '":' );
        version=$( strip "$version" '",' );
        printf "package:%-24s    version:%s\n" "$package" "$version";
        test -z "$version" && continue;
        test -z "$package" && continue;
        current[$package]=$version;
        local old_version new_version el;
        test -z "${packages[$package]}" && continue;
        old_version=$( strip "$version" '^' );
        new_version=$( strip "${packages[$package]}" '^' );
        printf "old-ver:%-24s    new-ver:%s\n" "$old_version" "$new_version";
        if [ -n "$old_version" ]; then
            versioncmp "$old_version" "$new_version";
            el=$?;
            if (( el < 2 )); then
                checkboxes[$package]=on;
            fi;
        fi;
    done < <( jq '.devDependencies' package.json );
    backtitle="Backtitle";
    title="Title";
    question="Please choose:";
    choices=();
    for key in "${!checkboxes[@]}";
    do
        choices+=("$key" "${packages[$key]}" "${checkboxes[$key]}");
    done;
    result=$(
        whiptail --backtitle "$backtitle" --title "$title" --checklist "$text" 0 0 0 "${choices[@]}" 3>&2 2>&1 1>&3-
    );
    unset a;
    a=($( echo $result ));
    for i in "${a[@]}";
    do
        package=$( strip "$i" '"' );
        version=${packages[$package]};
        if [[ ${version:0:1} != '^' ]]; then
            jqi -i package.json '.resolutions += {"'"$package"'": "'"$version"'"}' '| .devDependencies += {"'"$package"'": "'"$version"'"}';
        else
            yarn add --dev "$package@$version";
        fi;
    done
}
fix-node-sass () 
{ 
    local -A packages;
    local -A checkboxes;
    local -A current;
    local package version;
    while read -r package version; do
        package=$( strip "$package" '":' );
        version=$( strip "$version" '",' );
        printf "package:%-24s    version:%s\n" "$package" "$version";
        packages[$package]=$version;
        checkboxes[$package]=off;
    done <<END
        "laravel-mix": "^6.0.39",
        "node-sass": "6.0.1"
        "sass-loader": "^6.0.7",
        "sass-loader": "^12.3.0",
        "mix-tailwindcss": "^1.3.0",
        "postcss": "^8.3.11",
        "postcss-loader": "^6.2.0",
        "resolve-url-loader": "^4.0.0",
        "webpack": "^4.46.0",
        "tailwindcss": "^2.2.19",
        "@babel/core": "^7.15.8",
        "@babel/plugin-proposal-object-rest-spread": "^7.15.6",
        "@babel/plugin-syntax-dynamic-import": "^7.8.3",
        "@babel/plugin-transform-runtime": "^7.15.8",
        "@babel/preset-env": "^7.15.8",
        "postcss": "^8.3.11",
        "webpack": "^5.60.0",
        "webpack-cli": "^4.9.1"
        webpack: 5.64.4
        webpack-cli: 4.9.1
        webpack-dev-server 4.4.0
END

    checkboxes[node-sass]=on;
    echo;
    echo 'Current Packages:';
    while read -r package version; do
        package=$( strip "$package" '":' );
        version=$( strip "$version" '",' );
        printf "package:%-24s    version:%s\n" "$package" "$version";
        test -z "$version" && continue;
        test -z "$package" && continue;
        current[$package]=$version;
        local old_version new_version el;
        test -z "${packages[$package]}" && continue;
        old_version=$( strip "$version" '^' );
        new_version=$( strip "${packages[$package]}" '^' );
        printf "old-ver:%-24s    new-ver:%s\n" "$old_version" "$new_version";
        if [ -n "$old_version" ]; then
            versioncmp "$old_version" "$new_version";
            el=$?;
            if (( el < 2 )); then
                checkboxes[$package]=on;
            fi;
        fi;
    done < <( jq '.devDependencies' package.json );
    backtitle="Backtitle";
    title="Title";
    question="Please choose:";
    choices=();
    for key in "${!checkboxes[@]}";
    do
        choices+=("$key" "${packages[$key]}" "${checkboxes[$key]}");
    done;
    result=$(
        whiptail --backtitle "$backtitle" --title "$title" --checklist "$text" 0 0 0 "${choices[@]}" 3>&2 2>&1 1>&3-
    );
    unset a;
    a=($( echo $result ));
    for i in "${a[@]}";
    do
        package=$( strip "$i" '"' );
        version=${packages[$package]};
        if [[ ${version:0:1} != '^' ]]; then
            jqi -i package.json '.resolutions += {"'"$package"'": "'"$version"'"}' '| .devDependencies += {"'"$package"'": "'"$version"'"}';
        else
            yarn add --dev "$package@$version";
        fi;
    done
}
fix-node-sass () 
{ 
    cat > /dev/null <<END
#include strip
#include versioncmp
END

    local -A packages
    local -A checkboxes;
    local -A current;
    local package version;
    while read -r package version; do
        package=$( strip "$package" '":' );
        version=$( strip "$version" '",' );
        printf "package:%-24s    version:%s\n" "$package" "$version";
        packages[$package]=$version;
        checkboxes[$package]=off;
    done <<END
        "laravel-mix": "^6.0.39",
        "node-sass": "6.0.1"
        "sass-loader": "^6.0.7",
        "sass-loader": "^12.3.0",
        "mix-tailwindcss": "^1.3.0",
        "postcss": "^8.3.11",
        "postcss-loader": "^6.2.0",
        "resolve-url-loader": "^4.0.0",
        "webpack": "^4.46.0",
        "tailwindcss": "^2.2.19",
        "@babel/core": "^7.15.8",
        "@babel/plugin-proposal-object-rest-spread": "^7.15.6",
        "@babel/plugin-syntax-dynamic-import": "^7.8.3",
        "@babel/plugin-transform-runtime": "^7.15.8",
        "@babel/preset-env": "^7.15.8",
        "postcss": "^8.3.11",
        "webpack": "^5.60.0",
        "webpack-cli": "^4.9.1"
        webpack: 5.64.4
        webpack-cli: 4.9.1
        webpack-dev-server 4.4.0
END

    checkboxes[node-sass]=on;
    echo;
    echo 'Current Packages:';
    while read -r package version; do
        package=$( strip "$package" '":' );
        version=$( strip "$version" '",' );
        printf "package:%-24s    version:%s\n" "$package" "$version";
        test -z "$version" && continue;
        test -z "$package" && continue;
        current[$package]=$version;
        local old_version new_version el;
        test -z "${packages[$package]}" && continue;
        old_version=$( strip "$version" '^' );
        new_version=$( strip "${packages[$package]}" '^' );
        printf "old-ver:%-24s    new-ver:%s\n" "$old_version" "$new_version";
        if [ -n "$old_version" ]; then
            versioncmp "$old_version" "$new_version";
            el=$?;
            if (( el < 2 )); then
                checkboxes[$package]=on;
            fi;
        fi;
    done < <( jq '.devDependencies' package.json );
    backtitle="Backtitle";
    title="Title";
    question="Please choose:";
    choices=();
    for key in "${!checkboxes[@]}";
    do
        choices+=("$key" "${packages[$key]}" "${checkboxes[$key]}");
    done;
    result=$(
        whiptail --backtitle "$backtitle" --title "$title" --checklist "$text" 0 0 0 "${choices[@]}" 3>&2 2>&1 1>&3-
    );
    unset a;
    a=($( echo $result ));
    for i in "${a[@]}";
    do
        package=$( strip "$i" '"' );
        version=${packages[$package]};
        if [[ ${version:0:1} != '^' ]]; then
            jqi -i package.json '.resolutions += {"'"$package"'": "'"$version"'"}' '| .devDependencies += {"'"$package"'": "'"$version"'"}';
        else
            yarn add --dev "$package@$version";
        fi;
    done
}
fix-node-sass () 
{ 
    requires=(strip versioncmp);

    local -A packages;
    local -A checkboxes;
    local -A current;
    local package version;
    while read -r package version; do
        package=$( strip "$package" '":' );
        version=$( strip "$version" '",' );
        printf "package:%-24s    version:%s\n" "$package" "$version";
        packages[$package]=$version;
        checkboxes[$package]=off;
    done <<END
        "laravel-mix": "^6.0.39",
        "node-sass": "6.0.1"
        "sass-loader": "^6.0.7",
        "sass-loader": "^12.3.0",
        "mix-tailwindcss": "^1.3.0",
        "postcss": "^8.3.11",
        "postcss-loader": "^6.2.0",
        "resolve-url-loader": "^4.0.0",
        "webpack": "^4.46.0",
        "tailwindcss": "^2.2.19",
        "@babel/core": "^7.15.8",
        "@babel/plugin-proposal-object-rest-spread": "^7.15.6",
        "@babel/plugin-syntax-dynamic-import": "^7.8.3",
        "@babel/plugin-transform-runtime": "^7.15.8",
        "@babel/preset-env": "^7.15.8",
        "postcss": "^8.3.11",
        "webpack": "^5.60.0",
        "webpack-cli": "^4.9.1"
        webpack: 5.64.4
        webpack-cli: 4.9.1
        webpack-dev-server 4.4.0
END

    checkboxes[node-sass]=on;
    echo;
    echo 'Current Packages:';
    while read -r package version; do
        package=$( strip "$package" '":' );
        version=$( strip "$version" '",' );
        printf "package:%-24s    version:%s\n" "$package" "$version";
        test -z "$version" && continue;
        test -z "$package" && continue;
        current[$package]=$version;
        local old_version new_version el;
        test -z "${packages[$package]}" && continue;
        old_version=$( strip "$version" '^' );
        new_version=$( strip "${packages[$package]}" '^' );
        printf "old-ver:%-24s    new-ver:%s\n" "$old_version" "$new_version";
        if [ -n "$old_version" ]; then
            versioncmp "$old_version" "$new_version";
            el=$?;
            if (( el < 2 )); then
                checkboxes[$package]=on;
            fi;
        fi;
    done < <( jq '.devDependencies' package.json );
    backtitle="Backtitle";
    title="Title";
    question="Please choose:";
    choices=();
    for key in "${!checkboxes[@]}";
    do
        choices+=("$key" "${packages[$key]}" "${checkboxes[$key]}");
    done;
    result=$(
        whiptail --backtitle "$backtitle" --title "$title" --checklist "$text" 0 0 0 "${choices[@]}" 3>&2 2>&1 1>&3-
    );
    unset a;
    a=($( echo $result ));
    for i in "${a[@]}";
    do
        package=$( strip "$i" '"' );
        version=${packages[$package]};
        if [[ ${version:0:1} != '^' ]]; then
            jqi -i package.json '.resolutions += {"'"$package"'": "'"$version"'"}' '| .devDependencies += {"'"$package"'": "'"$version"'"}';
        else
            yarn add --dev "$package@$version";
        fi;
    done
}
