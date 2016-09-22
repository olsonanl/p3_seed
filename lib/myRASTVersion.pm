# This is a SAS component.
package myRASTVersion;
use base 'Class::Accessor';
__PACKAGE__->mk_accessors(qw(release));
sub new
{
    my($class) = @_;
    my $self = {
	release => "1.002",
	package_date => 1474574697,
	package_date_str => "Sep 22, 2016 15:04:57",
    };
    return bless $self, $class;
}
1;
