package Subroutines;
use strict;
use warnings;
use Exporter;

our @ISA = qw( Exporter );
our @EXPORT_OK = qw( preprocess find_word_after_the frequency_count );
our @EXPORT = qw( preprocess find_word_after_the frequency_count );

sub preprocess {

    my $filename = $_[0];

    open(my $fh, '<', $filename) or die "$filename cannot be opened.";

    local $/ = undef;
    my $file = <$fh>;

    close($fh);

    # Replace all non-space whitespace characters with a single space
    $file =~ s/[\t\n\f\r]/ /g;

    # Replace all multiple spaces with a single space
    $file =~ s/ \s+/ /g;

    # Remove anything that's not a non-word character but keep spaces and hyphens
    $file =~ s/[^(\w| |\-)]//g;

    return $file;
}

sub find_word_after_the {

    my $file_string = $_[0];

    # Find all words after the word 'the'
    my @post_the_matches = $file_string =~ m/the\s+(\S+)/g;

    # Convert all words to lower-case
    foreach (@post_the_matches) {
        $_ = lc $_;
    }

    return @post_the_matches;
}

sub frequency_count {
    my $a_ref = $_[0];
    my @a = @$a_ref;

    my %freq_count;

    foreach (@a) {
        if (exists $freq_count{$_}) {
            ++$freq_count{$_};
        }
        else {
            $freq_count{$_} = 1;
        }
    }

    return %freq_count;

}

1;