# This is a SAS component.
package myRASTVersion;
use base 'Class::Accessor';
__PACKAGE__->mk_accessors(qw(release));
sub new
{
    my($class) = @_;
    my $self = {
	release => "1.008",
	package_date => 1478632120,
	package_date_str => "Nov 08, 2016 13:08:40",
    };
    return bless $self, $class;
}
1;
