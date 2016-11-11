# This is a SAS component.
package myRASTVersion;
use base 'Class::Accessor';
__PACKAGE__->mk_accessors(qw(release));
sub new
{
    my($class) = @_;
    my $self = {
	release => "1.011",
	package_date => 1478895270,
	package_date_str => "Nov 11, 2016 14:14:30",
    };
    return bless $self, $class;
}
1;
