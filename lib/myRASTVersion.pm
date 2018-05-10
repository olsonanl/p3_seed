# This is a SAS component.
package myRASTVersion;
use base 'Class::Accessor';
__PACKAGE__->mk_accessors(qw(release));
sub new
{
    my($class) = @_;
    my $self = {
	release => "1.028",
	package_date => 1525986252,
	package_date_str => "May 10, 2018 16:04:12",
    };
    return bless $self, $class;
}
1;
