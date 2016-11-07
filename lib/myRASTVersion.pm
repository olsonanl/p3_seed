# This is a SAS component.
package myRASTVersion;
use base 'Class::Accessor';
__PACKAGE__->mk_accessors(qw(release));
sub new
{
    my($class) = @_;
    my $self = {
	release => "1.004",
	package_date => 1478550493,
	package_date_str => "Nov 07, 2016 14:28:13",
    };
    return bless $self, $class;
}
1;
