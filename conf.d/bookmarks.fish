# Set up bookmarks' dir path
set -q $BOOKMARKS_DIR && set -U BOOKMARKS_DIR "$HOME/.bookmarks"

# Create bookmarks' dir
test -d $BOOKMARKS_DIR || mkdir -p $BOOKMARKS_DIR

# Set up CDPATH
set -qx $CDPATH && set -gx CDPATH "."

# Add bookmarks' dir to CAPTH
contains $BOOKMARKS_DIR $CDPATH || set -a CDPATH $BOOKMARKS_DIR
