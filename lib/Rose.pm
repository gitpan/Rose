package Rose;

use strict;

our $VERSION = '0.012';

sub version { $VERSION }

1;

__END__

=head1 NAME

Rose - A complete web application construction kit.

=head1 SYNOPSIS

    use Rose;

    print "This is Rose version ", Rose->version, "\n";

=head1 DESCRIPTION

Rose is a work in progress, but it will eventually be a suite of modules
used to build web applications in the mod_perl environment.  Support for Apache
1 and 2 is planned.

The Rose suite is broken up into several components.  This module (Rose.pm)
lists all the other Rose components as prerequisites in order to facilitate
CPAN shell downloading of the entire suite.  It also carries the Rose suite
version number.

=head1 CLASS METHODS

=over 4

=item B<version>

Returns the version number of the Rose suite.

=back

=head1 COMPONENTS

Rose is made up of the following components:

=over 4

=item B<Rose::Object>

A simple object base class and method maker.

=item B<Rose::URI>

A URI object built for easy and efficient manipulation.

=item B<Rose::DateTime>

Central location for all Rose-related C<DateTime> utility functions and
wrapper objects.

=item B<Rose::HTML::Objects>

Object representations of HTML tags, particularly HTML forms and fields.

=item B<Rose::DB>

DBI abstraction layer. (Unreleased)

=item B<Rose::DB::Object>

Base class for database-backed objects.  (Unreleased)

=item B<Rose::SQL>

SQL manipulation and generation library.  (Unreleased)

=item B<Rose::Conf>

Perl module configuration system.  (Unreleased)

=item B<Rose::BuildConf>

Simple Perl build system for web applications.  (Unreleased)

=item B<Rose::WebApp>

Web application framework.  (Unreleased)

=back

As you can see, a lot of these components have not yet been released. I've
decided to release what I have so far because I think C<Rose::HTML::Objects>
may be useful immediately, even without any of the unreleased web application
code.

=head1 DEVELOPMENT POLICY

Here are the ground rules for the Rose suite:

=over 4

=item * B<All APIs are subject to change until version 1.0.>  I will try to
avoid breaking things unnecessarily before then, but I make no promises.

=item * B<If it is not documented, it doesn't exist.>  The Rose suite is
filled with classes that exist solely to factor out common functionality in
the public Rose modules.  Although these modules may look useful, I reserve
the right to change or eliminate them at any time in any version I<unless>
they have POD documentation.  If a module has no POD, do not try to use it.

Similarly, if a function or method is in a public module but is I<not>
documented in the POD for that module, don't just assume that I forgot to add
it.  Undocumented methods are undocumented for a reason, and are subject to
change or removal at any time, in any version.  If you feel like you need to
use the method, email me and I'll consider making it part of thee public API.

=back

=head1 BUGS

I'm sure this suite is rife with bugs.  It's only version 0.011, after all. In
particular, I'd appreciate it if people would email me with documentation
corrections.  I'm an awful typist...

=head1 AUTHOR

John C. Siracusa (siracusa@mindspring.com)

=head1 COPYRIGHT

Copyright (c) 2004 by John C. Siracusa.  All rights reserved.  This program is
free software; you can redistribute it and/or modify it under the same terms
as Perl itself.
