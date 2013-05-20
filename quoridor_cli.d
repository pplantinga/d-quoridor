import board;
import std.stdio;
import std.string;
import std.conv;

void main( string[] args )
{
	if ( args.length < 3 )
		throw new Exception( "Usage: ./quoridor {time for p1} {time for p2} {initial move 1}...\nUse 0 for human player" );

	if ( !isNumeric( args[1] ) || !isNumeric( args[2] ) )
		throw new Exception( "times must be numeric" );

	int times[2] = [ to!(int)( args[1] ), to!(int)( args[2] ) ];

	Board board = new Board();

	for ( int i = 3; i < args.length; i++ )
		board.move( args[i] );

	board.print_board();

	// Read moves from the command line
	string move;
	int winner;

	int turn = 0;

	while ( true )
	{
		if ( times[ turn ] == 0 )
		{
			move = strip( readln() );
			if ( move == null )
			{
				break;
			}
			else if ( move == "u" )
			{
				board.undo(2);
				turn = ( turn + 1 ) % 2;
			}
			else
			{
				try
				{
					winner = board.move( move );
					if ( winner )
					{
						board.print_board;
						writeln( "Player ", winner, " wins!" );
						break;
					}
				}
				catch ( Exception e )
				{
					writeln( "Illegal move" );
					continue;
				}
			}
		}
		else
		{
			move = board.ai_move( times[ turn ] );
			if ( move.length > 2 && move[2] == 'w' )
			{
				board.print_board;
				writeln( "Player ", turn + 1, " wins!" );
				break;
			}
		}

		board.print_board;
		turn = ( turn + 1 ) % 2;
	}
}
