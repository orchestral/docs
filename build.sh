#!/bin/bash

source config.conf;

function copy_changes() {
    if [ -f $1/changes.md ]; then
        cp $1/changes.md $2/changes.md;
        echo "Sync changes file";
    fi
}

function set_branch() {
    echo "git checkout $BRANCH";
    git checkout $BRANCH;
}

function build_platform {
    cd ../platform;
    echo '-------';
    pwd;
    echo "git checkout $BRANCH";
    git checkout $BRANCH;
    copy_changes docs ../docs/src;
    echo "Documentation copied";
}

function build_theme_installer {
    cd ../theme-installer
    echo '-------';
    pwd;
    echo "git checkout master";
    git checkout master;
    copy_changes docs ../docs/src/components/theme-installer;
    echo "Documentation copied";
}

function build_docs {
    echo "git checkout $BRANCH";
    git checkout $BRANCH;
    copy_changes docs ../docs/src/components/$DIR;
    echo "Documentation copied";
}

set_branch;
build_platform;
build_theme_installer;

for DIR in "${COMPONENTS[@]}"
do
    cd ../;
    cd $DIR;
    echo '-------';
    pwd;
    build_docs;
done

