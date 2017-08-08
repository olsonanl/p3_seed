=head1 Convert a Table of Sets to a Relation Table

    p3-set-to-relation.pl [options]

This script will look at an input file that has sets in a single column. Each set is represented by a list of items
separated by a a double-colon delimiter (C<::>). Each set is given a number, and the output file puts
one set element on each line along with its set number, thus improving readability.

=head2 Parameters

There are no positional parameters.

The standard input can be overriddn using the options in L<P3Utils/ih_options>.

Additional command-line options are those given in L<P3Utils/col_options> which specifies the input
column and the following.

=over 4

=item idCol

The index (1-based) or name of the column containing the cluster ID. If omitted, the cluster IDs are generated internally.

=cut

use strict;
use P3DataAPI;
use P3Utils;


# Get the command-line options.
my $opt = P3Utils::script_opts('', P3Utils::ih_options(), P3Utils::col_options(),
        ['idCol=s', 'index (1-based) or name of cluster ID column']
        );
# Open the input file.
my $ih = P3Utils::ih($opt);
# Read the incoming headers.
my ($outHeaders, $keyCol) = P3Utils::process_headers($ih, $opt);
# Find the ID column.
my $idCol = $opt->idcol;
if (defined $idCol) {
    $idCol = P3Utils::find_column($idCol, $outHeaders);
}
# Write the output headers.
print "id\telement\n";
# Initialize the ID.
my $id = 0;
# Loop through the input.
while (! eof $ih) {
    my $couplets = P3Utils::get_couplets($ih, $keyCol, $opt);
    for my $couplet (@$couplets) {
        my $cluster = $couplet->[0];
        # Compute this cluster's ID.
        if (defined $idCol) {
            $id = $couplet->[1][$idCol];
        } else {
            $id++;
        }
        my @items = split /::/, $cluster;
        for my $item (sort @items) {
            P3Utils::print_cols([$id, $item]);
        }
    }
}
