use strict;
use warnings;
use Data::Monad::List;
use Test::More;

ok eq_set(
    [scalar_list(1 ,2, 3)->flat_map(sub {
        scalar_list($_[0] + 1, $_[0] - 1)
    })->scalars],
    [0, 2, 1, 3, 2, 4]
);

done_testing;
