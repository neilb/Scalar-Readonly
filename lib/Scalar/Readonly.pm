package Scalar::Readonly;

use 5.006;
use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use Scalar::Readonly ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 'all' => [ qw(
readonly readonly_on readonly_off	
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
	
);

our $VERSION = '0.01';

require XSLoader;
XSLoader::load('Scalar::Readonly', $VERSION);

# Preloaded methods go here.

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Scalar::Readonly - Perl extension to the SvREADONLY scalar flag

=head1 SYNOPSIS

  use Scalar::Readonly ':all';
  my $foo = "foo";
  readonly_on($foo);
  $foo = "bar";  #ERROR!

  if(readonly($foo)) {
    readonly_off($foo);
  }

  readonly_off($]);
  $] = "6.0";

  print "This is Perl v$]";

=head1 DESCRIPTION

This simple modules can make scalars read-only. Usefull to protect configuration variables, for example.

This module can also be used to subvert Perl's many read-only variables to potential evil trickery.

=head2 EXPORT

':all' => readonly, readonly_on, readonly_off

=head1 SEE ALSO

L<Scalar::Util>

=head1 AUTHOR

Philippe M. Chiasson, E<lt>gozer@cpan.orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2004 by Philippe M. Chiasson

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.3 or,
at your option, any later version of Perl 5 you may have available.


=cut
