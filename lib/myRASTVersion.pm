# This is a SAS component.
package myRASTVersion;
use base 'Class::Accessor';
__PACKAGE__->mk_accessors(qw(release));
sub new
{
    my($class) = @_;
    my $self = {
	release => "1.020",
	package_date => 1502227617,
	package_date_str => "Aug 08, 2017 16:26:57",
    };
    return bless $self, $class;
}
1;
