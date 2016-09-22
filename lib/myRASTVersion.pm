# This is a SAS component.
package myRASTVersion;
use base 'Class::Accessor';
__PACKAGE__->mk_accessors(qw(release));
sub new
{
    my($class) = @_;
    my $self = {
	release => "1.000",
	package_date => 1474573368,
	package_date_str => "Sep 22, 2016 14:42:48",
    };
    return bless $self, $class;
}
1;
