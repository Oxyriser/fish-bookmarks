function o
    set -l bookmarks $BOOKMARKS_DIR

    if test (count $argv) -eq 0
        b -l
    else
        set -l bookmark $argv[1]
        if not test -L "$bookmarks/$bookmark"
            echo "o: $bookmark: No such bookmark" 1>&2
            return 1
        end
        cd (realpath "$bookmarks/$bookmark")
    end
end