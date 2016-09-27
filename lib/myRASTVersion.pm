# This is a SAS component.
package myRASTVersion;
use base 'Class::Accessor';
__PACKAGE__->mk_accessors(qw(release));
sub new
{
    my($class) = @_;
    my $self = {
	release => "1.003",
	package_date => 1475011254,
	package_date_str => "Sep 27, 2016 16:20:54",
    };
    return bless $self, $class;
}
1;
