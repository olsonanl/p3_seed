=head1 Return All Genomes in PATRIC

    p3-all-genomes [options]

This script returns the IDs of all the genomes in the PATRIC database. It supports standard filtering
parameters and the specification of additional columns if desired.

=head2 Parameters

There are no positional parameters.

The command-line options are those given in L<P3Utils/data_options>.

=cut

use strict;
use P3DataAPI;
use P3Utils;

# Get the command-line options.
my $opt = P3Utils::script_opts('', P3Utils::data_options());
# Get access to PATRIC.
my $p3 = P3DataAPI->new();
# Compute the output columns. Note we configure this as an ID-centric method.
my ($selectList, $newHeaders) = P3Utils::select_clause(genome => $opt, 1);
# Compute the filter.
my $filterList = P3Utils::form_filter($opt);
# Add a safety check to remove null genomes.
push @$filterList, ['ne', 'genome_id', 0];
# Write the headers.
P3Utils::print_cols($newHeaders);
# Process the query.
my $results = P3Utils::get_data($p3, genome => $filterList, $selectList);
# Print the results.
for my $result (@$results) {
    P3Utils::print_cols($result);
}