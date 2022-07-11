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

my %words_after_the_freq_count = Subroutines::frequency_count(\@words_after_the);

while (my ($key, $value) = each %words_after_the_freq_count) {
    print "$key = $value\n";
}
