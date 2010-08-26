use Test::More tests => 1;

BEGIN {
    my $module_file = "t/lib/Foo/Mousse.pm";
    unlink($module_file) if -e $module_file;
    die if -e $module_file;
    system("(cd t; $^X Makefile.PL)");
}

use lib 't/lib';

use Foo;

my $f = Foo->new(
    this => 'ok',
);

is $f->this, 'ok', 'Everything is OK';
