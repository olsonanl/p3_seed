# This is a SAS component.
package myRASTVersion;
use base 'Class::Accessor';
__PACKAGE__->mk_accessors(qw(release));
sub new
{
    my($class) = @_;
    my $self = {
	release => "1.026",
	package_date => 1521837056,
	package_date_str => "Mar 23, 2018 15:30:56",
    };
    return bless $self, $class;
}
1;
