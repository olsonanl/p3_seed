=head1 Return Data From Protein Families in PATRIC

    p3-get-family-data [options]

This script returns the IDs of all the genomes in the PATRIC database. It supports standard filtering
parameters and the specification of additional columns if desired.

=head2 Parameters

There are no positional parameters.

The standard input can be overwritten using the options in L<P3Utils/ih_options>.

Additional command-line options are those given in L<P3Utils/data_options> and L<P3Utils/col_options>.

=cut

use strict;
use P3DataAPI;
use P3Utils;

# Get the command-line options.
my $opt = P3Utils::script_opts('', P3Utils::data_options(), P3Utils::col_options(), P3Utils::ih_options());
# Get access to PATRIC.
my $p3 = P3DataAPI->new();
# Compute the output columns.
my ($selectList, $newHeaders) = P3Utils::select_clause(family => $opt);
# Compute the filter.
my $filterList = P3Utils::form_filter($opt);
# Open the input file.
my $ih = P3Utils::ih($opt);
# Read the incoming headers.
my ($outHeaders, $keyCol) = P3Utils::process_headers($ih, $opt);
# Form the full header set and write it out.
push @$outHeaders, @$newHeaders;
P3Utils::print_cols($outHeaders);
# Loop through the input.
while (! eof $ih) {
    my $couplets = P3Utils::get_couplets($ih, $keyCol, $opt);
    # Get the output rows for these input couplets.
    my $resultList = P3Utils::get_data_batch($p3, family => $filterList, $selectList, $couplets);
    # Print them.
    for my $result (@$resultList) {
        P3Utils::print_cols($result);
    }
}
