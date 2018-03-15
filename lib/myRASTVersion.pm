# This is a SAS component.
package myRASTVersion;
use base 'Class::Accessor';
__PACKAGE__->mk_accessors(qw(release));
sub new
{
    my($class) = @_;
    my $self = {
	release => "1.025",
	package_date => 1521133318,
	package_date_str => "Mar 15, 2018 12:01:58",
    };
    return bless $self, $class;
}
1;
