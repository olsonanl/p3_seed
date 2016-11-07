# This is a SAS component.
package myRASTVersion;
use base 'Class::Accessor';
__PACKAGE__->mk_accessors(qw(release));
sub new
{
    my($class) = @_;
    my $self = {
	release => "1.005",
	package_date => 1478555319,
	package_date_str => "Nov 07, 2016 15:48:39",
    };
    return bless $self, $class;
}
1;
