Quoridor in D
=============

This is a command line interface to the board game Quoridor

With an AI that is actually pretty good, best I've found on teh internetz

To compile, you'll need a [D compiler](http://dlang.org/download.html)

Then just run ```make``` and the Makefile should take care of the rest. If it doesn't work, try ```dmd quoridor_cli.d board.d```

Once compiled you can run the program:

```./quoridor {time for player 1} {time for player 2} {initial move 1} ...```

Use ```0``` for a human player.
