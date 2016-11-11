# This is a SAS component.
package myRASTVersion;
use base 'Class::Accessor';
__PACKAGE__->mk_accessors(qw(release));
sub new
{
    my($class) = @_;
    my $self = {
	release => "1.010",
	package_date => 1478885879,
	package_date_str => "Nov 11, 2016 11:37:59",
    };
    return bless $self, $class;
}
1;
