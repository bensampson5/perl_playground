# Matching
$sport = "soccer";
if ($sport =~ m/Socc/) {
    print "Socc matches $sport\n";
}
else {
    print "Socc does not match $sport\n";
}
if ($sport =~ m/Socc/i) {
    print "Socc matches $sport (case-insensitive)\n";
}
else {
    print "Soccer does not match $sport (case-insensitive)\n";
}

# Replacing a matched string
$sentence = "The quick brown fox jumps over the lazy dog.";
$mod_sentence = $sentence;
$mod_sentence =~ s/brown/red/;
$mod_sentence =~ s/the/THE/gi;
print "Original sentence = $sentence\n";
print "Modified sentence = $mod_sentence\n";

# Backtracking
$fox_attributes = $sentence;
$dog_attributes = $sentence;
$fox_attributes =~ m/(\S+)\s+(\S+)\s+fox/;
print "The fox is $1 and $2.\n";
$dog_attributes =~ m/(\w+)\s+dog/;
print "The dog is $1.\n";

# Exercise
# Initialization
$my_text = "You should try to use regular expressions while drinking an Espresso";
# Matching text
$match_my_text = "express";
if ($my_text =~ m/$match_my_text/) {
	print "Match FOUND\n";
} else {
	print "Match NOT FOUND - Incorrect REGEXP\n";
}
