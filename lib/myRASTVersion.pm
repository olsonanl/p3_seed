# This is a SAS component.
package myRASTVersion;
use base 'Class::Accessor';
__PACKAGE__->mk_accessors(qw(release));
sub new
{
    my($class) = @_;
    my $self = {
	release => "1.037",
	package_date => 1548786858,
	package_date_str => "Jan 29, 2019 12:34:18",
    };
    return bless $self, $class;
}
1;
