# fish-bookmarks
Bookmark directories in the [Fish shell](http://fishshell.com/) 
so you can open them from anywhere.

## Usage
Bookmarks are saved in `$BOOKMARKS_DIR` (`~/.bookmarks` by default).

### Commands
```fish
b -d bookmark # Deletes the bookmark
b -l          # Lists the bookmarks and their target
b name        # Save the current folder as a bookmark

o bookmark    # Open the bookmark
```

## See also
- [techwizrd/fishmarks](https://github.com/techwizrd/fishmarks/blob/master/marks.fish)
- [joehillen/to-fish](https://github.com/joehillen/to-fish)
- [gsamokovarov/jump](https://github.com/gsamokovarov/jump)