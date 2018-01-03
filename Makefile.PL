use strict;
use warnings;

use lib 'inc';
use ExtUtils::MakeMaker::Dist::Zilla::Develop;

WriteMakefile(
    NAME => 'Ref::Util::XS',
    VERSION_FROM => 'lib/Ref/Util/XS.pm',
    INSTALLMAN1DIR => 'none',
    INSTALLMAN3DIR => 'none',
    NORECURS => 1,
);
