# This is a SAS component.
package myRASTVersion;
use base 'Class::Accessor';
__PACKAGE__->mk_accessors(qw(release));
sub new
{
    my($class) = @_;
    my $self = {
	release => "1.027",
	package_date => 1522206732,
	package_date_str => "Mar 27, 2018 22:12:12",
    };
    return bless $self, $class;
}
1;
