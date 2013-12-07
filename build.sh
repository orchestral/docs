if [ "$1" == "master" ]; then TARGET="2.1"; else TARGET=$1; fi
BRANCH=$1;

function copy_changes() {
    if [ -f $1/changes.md ]; then
        cp $1/changes.md $2/changes.md;
        echo "Sync changes file";
    fi
    if [ -f $1/upgrading.md ]; then
        cp $1/upgrading.md $2/upgrading.md;
        echo "Sync upgrade file";
    fi
}

function build_platform {
    cd ../platform;
    echo '-------';
    pwd;
    echo "git checkout $BRANCH";
    git checkout $BRANCH;
    copy_changes docs ../docs/$TARGET;
    echo "Documentation copied";
}

function build_docs {
    echo "git checkout $BRANCH";
    git checkout $BRANCH;
    copy_changes docs ../docs/$TARGET/components/$DIR;
    echo "Documentation copied";
}

build_platform;

for DIR in asset auth debug extension facile foundation html memory model optimize resources support translation testbench view widget
do
    cd ../;
    cd $DIR;
    echo '-------';
    pwd;
    build_docs;
done
