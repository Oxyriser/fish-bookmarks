if set -q $BOOKMARKS_DIR
    set -U BOOKMARKS_DIR "$HOME/.bookmarks"
end

mkdir -p $BOOKMARKS_DIR

if set -qx $CDPATH
    set -gx CDPATH "."
end

if not contains $BOOKMARKS_DIR $CDPATH
    set -a CDPATH $BOOKMARKS_DIR
end
