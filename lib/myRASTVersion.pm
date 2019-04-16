# This is a SAS component.
package myRASTVersion;
use base 'Class::Accessor';
__PACKAGE__->mk_accessors(qw(release));
sub new
{
    my($class) = @_;
    my $self = {
	release => "1.038",
	package_date => 1555440461,
	package_date_str => "Apr 16, 2019 13:47:41",
    };
    return bless $self, $class;
}
1;
