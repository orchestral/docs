BRANCH=2.1;

function copy_changes() {
    if [ -f $1/changes.md ]; then
        cp $1/changes.md $2/changes.md;
        echo "Sync changes file";
    fi

    # Upgrading command.
    # if [ -f $1/upgrading.md ]; then
    #   cp $1/upgrading.md $2/upgrading.md;
    #   echo "Sync upgrade file";
    # fi
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

function build_docs {
    echo "git checkout $BRANCH";
    git checkout $BRANCH;
    copy_changes docs ../docs/src/components/$DIR;
    echo "Documentation copied";
}

set_branch;
build_platform;

for DIR in avatar asset imagine auth debug extension facile foundation html memory model notifier publisher optimize resources support translation testbench view warden widget
do
    cd ../;
    cd $DIR;
    echo '-------';
    pwd;
    build_docs;
done
