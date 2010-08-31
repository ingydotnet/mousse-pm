use lib 'lib';

use inc::Module::Install;

name 'Mousse';

perl_version '5.008003';

use_mousse 'Mousse';

# Don't distribute with this one!
# use_mousse_dev 'Mousse';

{
    local $SIG{__WARN__} = sub {1};
    all_from 'lib/Mousse/Maker.pm';
    all_from 'lib/Mousse.pod';
}

clean_files 't/lib/Foo/Mousse.pm', 't/inc', 'MANIFEST';

WriteAll;
