use warnings;
use strict;
use File::Basename;
use lib dirname (__FILE__);

# local packages
use Subroutines;

my $filename = "great_expectations.txt";
my $file_contents = Subroutines::preprocess($filename);

my @words_after_the = Subroutines::find_word_after_the($file_contents);

my $length = @words_after_the;
print ("Found $length matches for words after 'the'.\n");
print ("First ten matches are '@words_after_the[0 .. 10]'.\n");

my %freq_count = Subroutines::frequency_count(\@words_after_the);

my @keys = reverse sort { $freq_count{$a} <=> $freq_count{$b} } keys(%freq_count);
my @vals = @freq_count{@keys};

print ("Top ten matches are:\n");
for my $i ( 0..10 ) {
    print "$keys[$i] = $vals[$i]\n";
}
