# This is a SAS component.
package myRASTVersion;
use base 'Class::Accessor';
__PACKAGE__->mk_accessors(qw(release));
sub new
{
    my($class) = @_;
    my $self = {
	release => "1.014",
	package_date => 1481669150,
	package_date_str => "Dec 13, 2016 16:45:50",
    };
    return bless $self, $class;
}
1;
