use Test::More;

BEGIN {
    @INC = grep { not /[\\\/]inc$/ } @INC;
    eval 'require Module::Install; 1' or do {
        plan skip_all => 'This test requires Module::Install';
        return;
    };

    my $module_file = "t/lib/Foo/Mousse.pm";
    unlink($module_file) if -e $module_file;
    die if -e $module_file;
    system("(cd t; $^X Makefile.PL)");
    plan tests => 1;
}

use lib 't/lib';

use Foo;

my $f = Foo->new(
    this => 'ok',
);

is $f->this, 'ok', 'Everything is OK';
