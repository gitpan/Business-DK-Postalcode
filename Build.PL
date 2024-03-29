# Build.PL for Business-DK-Postalcode

use strict;
use warnings;

use Module::Build;

my $build = Module::Build->new(
    dist_author       => 'Jonas B. Nielsen, (jonasbn) <jonasbn@cpan.org>',
    module_name       => 'Business::DK::Postalcode',
    dist_version_from => 'lib/Business/DK/Postalcode.pm',
    dist_abstract =>
        'Module contaning danish zipcodes for validation and deployment',
    license              => 'artistic_2',
    create_makefile_pl   => 'traditional',
    create_readme        => 1,
    recursive_test_files => 1,
    build_requires       => {
        'Test::More'          => '0',    #core
        'Test::Taint'         => '0',
        'Data::FormValidator' => '0',
        'Test::Exception'     => '0',
        'Test::Kwalitee'      => '0',
        'Test::Perl::Critic'  => '0',
        'Test::Prereq::Build' => '0',
        'Test::Class'         => '0',
        'Test::CPAN::Changes' => '0',
        'Data::Dumper'        => '0', #core
        'File::Spec'          => '0',
        'English'             => '0', #core
        'Env'                 => '0', #core
    },
    requires => {
        'Exporter'         => '0',       #core
        'Carp'             => '0',       #core
        'Tree::Simple'     => '0',
        'Params::Validate' => '0',
        'Scalar::Util'     => '0',
        'perl'             => '5.10.0',
    },
    meta_merge => {
        resources => {
            homepage => 'http://logicLAB.jira.com/browse/BDKPST',
            bugtracker =>
                'http://rt.cpan.org/NoAuth/Bugs.html?Dist=Business-DK-Postalcode',
            repository => 'https://github.com/jonasbn/bdkpst',
            ProjectChangelog =>
                'http://logiclab.jira.com/browse/BDKPST#selectedTab=com.atlassian.jira.plugin.system.project%3Achangelog-panel',
            ProjectSite => 'http://logicLAB.jira.com/browse/BDKPST',
            ProjectWiki => 'http://logiclab.jira.com/wiki/display/BDKPST/Home',
        }
    },
    add_to_cleanup => [ qw(MANIFEST MANIFEST.bak README *.gz META.*) ],
);

$build->create_build_script();
