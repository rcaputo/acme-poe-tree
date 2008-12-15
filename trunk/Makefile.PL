#!perl

use warnings;
use strict;

use ExtUtils::MakeMaker;
WriteMakefile(
	NAME          => 'Acme::POE::Tree',
	AUTHOR        => 'Rocco Caputo <rcaputo@cpan.org>',
	VERSION_FROM  => 'lib/Acme/POE/Tree.pm',
	LICENSE       => 'perl',
	ABSTRACT      => "Merry Christmas from the POE Team",
	dist          => {
		COMPRESS    => 'gzip -9f',
		SUFFIX      => 'gz',
		PREOP       => (
			'svn-log.perl | tee ./$(DISTNAME)-$(VERSION)/CHANGES > ./CHANGES ; ' .
			'perldoc lib/Acme/POE/Tree.pm | ' .
			'tee ./$(DISTNAME)-$(VERSION)/README > README'
		),
	},
	PREREQ_PM     => {
		'IO::Tty' => 1.07,
		'Curses'  => 1.15,
		'POE'     => 1.003,
	},
);
