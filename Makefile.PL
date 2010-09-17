use lib 'lib';

use inc::Module::Install;

name 'Mousse';

perl_version '5.008003';


# NOTE Set this to 1 to build Mousse then set back to zero!
my $build_new_mousse = 0;
if ($build_new_mousse) {
    warn "\n\n*** WARNING *** Makefile.PL set to build new Mousse!\n\n";
    use_mousse_dev 'Mousse';
}
else {
    use_mousse 'Mousse';
}


{
    local $SIG{__WARN__} = sub {1};
    all_from 'lib/Mousse/Maker.pm';
    all_from 'lib/Mousse.pod';
}
manifest_skip;
readme_from 'lib/Mousse.pod';

clean_files 't/lib/Foo/Mousse.pm', 't/inc', 'MANIFEST';

WriteAll;
