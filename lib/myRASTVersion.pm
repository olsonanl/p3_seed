# This is a SAS component.
package myRASTVersion;
use base 'Class::Accessor';
__PACKAGE__->mk_accessors(qw(release));
sub new
{
    my($class) = @_;
    my $self = {
	release => "1.017",
	package_date => 1495674780,
	package_date_str => "May 24, 2017 20:13:00",
    };
    return bless $self, $class;
}
1;
