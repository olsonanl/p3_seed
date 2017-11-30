# This is a SAS component.
package myRASTVersion;
use base 'Class::Accessor';
__PACKAGE__->mk_accessors(qw(release));
sub new
{
    my($class) = @_;
    my $self = {
	release => "1.023",
	package_date => 1512079645,
	package_date_str => "Nov 30, 2017 16:07:25",
    };
    return bless $self, $class;
}
1;
