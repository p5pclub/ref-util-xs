package Ref::Util::XS;
# ABSTRACT: XS implementation for Ref::Util

use strict;
use warnings;
use XSLoader;

use Exporter 5.57 'import';

our %EXPORT_TAGS = ( 'all' => [qw<
    is_ref
    is_scalarref
    is_arrayref
    is_hashref
    is_coderef
    is_regexpref
    is_globref
    is_formatref
    is_ioref
    is_refref

    is_plain_ref
    is_plain_scalarref
    is_plain_arrayref
    is_plain_hashref
    is_plain_coderef
    is_plain_globref
    is_plain_formatref
    is_plain_refref

    is_blessed_ref
    is_blessed_scalarref
    is_blessed_arrayref
    is_blessed_hashref
    is_blessed_coderef
    is_blessed_globref
    is_blessed_formatref
    is_blessed_refref
>] );

our @EXPORT_OK   = ( @{ $EXPORT_TAGS{'all'} } );

XSLoader::load('Ref::Util::XS', $Ref::Util::XS::{VERSION} ? ${ $Ref::Util::XS::{VERSION} } : ());

1;

__END__

=pod

=encoding utf8

=head1 SYNOPSIS

    use Ref::Util;
    # Don't use Ref::Util::XS directly!

    if (is_arrayref($something) {
        print for @$something;
    }
    elsif (is_hashref($something)) {
        print for sort values %$something;
    }

=head1 DESCRIPTION

Ref::Util::XS is the XS implementation of Ref::Util, which provides several
functions to help identify references in a more convenient way than the
usual approach of examining the return value of C<ref>.

You should use Ref::Util::XS by installing Ref::Util itself: if the system
you install it on has a C compiler available, Ref::Util::XS will be
installed and used automatically, providing a significant speed boost to
everything that uses Ref::Util.

See L<Ref::Util> for full documentation of the available functions.

=head1 THANKS

The following people have been invaluable in their feedback and support.

=over 4

=item * Yves Orton

=item * Steffen Müller

=item * Jarkko Hietaniemi

=item * Mattia Barbon

=item * Zefram

=item * Tony Cook

=item * Sergey Aleynikov

=back

=head1 AUTHORS

=over 4

=item * Aaron Crane

=item * Vikentiy Fesunov

=item * Sawyer X

=item * Gonzalo Diethelm

=item * p5pclub

=back

=head1 LICENSE

This software is made available under the MIT Licence as stated in the
accompanying LICENSE file.
