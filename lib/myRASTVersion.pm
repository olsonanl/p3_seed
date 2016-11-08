# This is a SAS component.
package myRASTVersion;
use base 'Class::Accessor';
__PACKAGE__->mk_accessors(qw(release));
sub new
{
    my($class) = @_;
    my $self = {
	release => "1.006",
	package_date => 1478624703,
	package_date_str => "Nov 08, 2016 11:05:03",
    };
    return bless $self, $class;
}
1;
