use Test::More tests => 1;

BEGIN {
    $SIG{__DIE__}   = sub {
        warn @_;
        BAIL_OUT( q[Couldn't use module; can't continue.] );    
        
    };
}   

BEGIN {
use Game::KSP;                  # Interact with Kerbal Space Program files
    
}

pass( 'Load modules.' );
diag( "Testing Game::KSP $Game::KSP::VERSION" );
