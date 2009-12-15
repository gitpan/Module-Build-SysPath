use strict;
use warnings;

use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Module::Build::SysPath',
    license             => 'perl',
    dist_author         => 'Jozef Kutej <jkutej@cpan.org>',
    dist_version_from   => 'lib/Module/Build/SysPath.pm',
    requires => {
        'Sys::Path'       => 0.09,
        'List::MoreUtils' => 0,
        'Digest::MD5'     => 0,
        'Text::Diff'      => 0,
        'File::Spec'      => 0,
        'File::Basename'  => 0,
    },
    build_requires => {
        'Test::More'    => 0,
        'Test::Compile' => 0.08,
    },
    add_to_cleanup      => [ 'Module-Build-SysPath-*' ],
    create_readme       => 1,
    sign                => 1,
    meta_merge => {
        resources => {
            repository => 'git://github.com/jozef/Module-Build-SysPath.git',
            bugtracker => 'http://github.com/jozef/Module-Build-SysPath/issues',
        },
        keywords => [ qw/ system paths instalation deployment applications / ],
    },
);
$builder->create_build_script();