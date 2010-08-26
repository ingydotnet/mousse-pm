use inc::Module::Install;

name 'Mousse';

perl_version '5.008003';

use_mousse 'Mousse';

all_from 'lib/Mousse/Maker.pm';

WriteAll;
