function b
    set -l bookmarks $BOOKMARKS_DIR

    if test (count $argv) -eq 0
      b --help
    else
        switch $argv[1]
            case -d
                if not test (count $argv) -ge 2
                    echo "b: No file specified" 1>&2
                    return 1
                end

                set -l bookmark $argv[2]
                if not test -L "$bookmarks/$bookmark"
                    echo "b: $bookmark: No such bookmark" 1>&2
                    return 1
                end

                rm $bookmarks/$bookmark

            case -l
                ls -ldn $BOOKMARKS_DIR/* | awk '{n=split($9, a, "/"); print a[n]" "$10" "$11}'
            
            case -h --help '-*'
                echo -e "Usage: b name\n       b -d bookmark\n       b -l" 1>&2
                return 1

            case '*'
                set -l name $argv[1]
                if test -L "$bookmarks/$name"
                    echo "b: $bookmark: Bookmark already exist"
                    return 1
                end
                ln -s $PWD "$bookmarks/$name" 2>/dev/null
        end
    end
end