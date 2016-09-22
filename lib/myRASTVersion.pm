# This is a SAS component.
package myRASTVersion;
use base 'Class::Accessor';
__PACKAGE__->mk_accessors(qw(release));
sub new
{
    my($class) = @_;
    my $self = {
	release => "1.001",
	package_date => 1474574304,
	package_date_str => "Sep 22, 2016 14:58:24",
    };
    return bless $self, $class;
}
1;
