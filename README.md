Quoridor in D
=============

This is a command line interface to the board game Quoridor, with an AI that is actually pretty good, better than any I've found on teh internetz. It regularly beats me with only 5 seconds to think.

To compile, you'll need a [D compiler](http://dlang.org/download.html). Then just run ```dmd quoridor_cli.d board.d``` and it should spit out an executable called ```quoridor_cli```.

Once compiled you can run the program:

```./quoridor_cli {time for player 1} {time for player 2} {initial move 1} ...```

Where ```{time for player 1/2}``` is the amount of time (in seconds) you want a computer to have to think. Use ```0``` for a human player.

All moves are in the notation that is used in the [quoridor wikipedia article](http://en.wikipedia.org/wiki/Quoridor) (edited by me, not surprisingly). When placing a wall the numbers and letters refer to the intersection below and to the right of the corresponding square.
