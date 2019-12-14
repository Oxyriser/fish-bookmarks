# fish-bookmarks
Bookmark directories in the [Fish shell](http://fishshell.com/) 
so you can open them from anywhere.

## Usage
Bookmarks are saved in `$BOOKMARKS_DIR` (`~/.bookmarks` by default).

### Commands
```fish
b -d bookmark # Delete the bookmark
b -l          # List the bookmarks and their target
b name        # Save the current folder as a bookmark

# Then you can cd in your bookmark
cd name
```
### Resolving symlink
As of fish >= 3.0 fish no longer resolve symlink (the cwd is virtual).
To retrieve the old behavior you can edit (`funced` then `funcsaved`) the `cd` function:
```fish
function cd --description 'Change directory'
    ...
    # Resolve the symlinks
    if test (pwd -P) != (pwd -L)
        builtin cd (realpath $PWD)
    end
    ...
end
```
To keep both behaviors you can write your own function:
```fish
function cdr
    builtin cd (realpath $argv)
end
```

## See also
- [techwizrd/fishmarks](https://github.com/techwizrd/fishmarks/blob/master/marks.fish)
- [joehillen/to-fish](https://github.com/joehillen/to-fish)
- [gsamokovarov/jump](https://github.com/gsamokovarov/jump)
