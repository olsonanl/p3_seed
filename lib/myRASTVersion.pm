# This is a SAS component.
package myRASTVersion;
use base 'Class::Accessor';
__PACKAGE__->mk_accessors(qw(release));
sub new
{
    my($class) = @_;
    my $self = {
	release => "1.018",
	package_date => 1496265774,
	package_date_str => "May 31, 2017 16:22:54",
    };
    return bless $self, $class;
}
1;
