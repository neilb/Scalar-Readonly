# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl Scalar-Readonly.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test;
BEGIN { plan tests => 4 };
use Scalar::Readonly ':all';
ok(1); # If we made it this far, we're ok.

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

my $foo = "foo";

readonly_on($foo);

eval {
	$foo = "bar";
};

ok($@);

ok(readonly($foo));

readonly_off($]);
eval { $] = "6" };

ok(!$@ && $] == "6");
