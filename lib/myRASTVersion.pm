# This is a SAS component.
package myRASTVersion;
use base 'Class::Accessor';
__PACKAGE__->mk_accessors(qw(release));
sub new
{
    my($class) = @_;
    my $self = {
	release => "1.022",
	package_date => 1511994679,
	package_date_str => "Nov 29, 2017 16:31:19",
    };
    return bless $self, $class;
}
1;
