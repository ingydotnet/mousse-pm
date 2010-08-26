use inc::Module::Install;

name 'Mousse';

perl_version '5.008003';

use_mousse_dev 'Mousse';

all_from 'lib/Mousse/Maker.pm';

clean_files 't/lib/Foo/Mousse.pm', 't/inc', 'MANIFEST';

WriteAll;
