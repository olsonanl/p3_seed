# This is a SAS component.
package myRASTVersion;
use base 'Class::Accessor';
__PACKAGE__->mk_accessors(qw(release));
sub new
{
    my($class) = @_;
    my $self = {
	release => "1.024",
	package_date => 1521061461,
	package_date_str => "Mar 14, 2018 16:04:21",
    };
    return bless $self, $class;
}
1;
