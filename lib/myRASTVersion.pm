# This is a SAS component.
package myRASTVersion;
use base 'Class::Accessor';
__PACKAGE__->mk_accessors(qw(release));
sub new
{
    my($class) = @_;
    my $self = {
	release => "1.016",
	package_date => 1484328623,
	package_date_str => "Jan 13, 2017 11:30:23",
    };
    return bless $self, $class;
}
1;
