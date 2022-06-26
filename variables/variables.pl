$x = 2;  # single variable
print "The value of x = $x.\n";

@simple_array = (1, 2, 3);  # all the same types
print "simple_array[0] = $simple_array[0].\n";
print "simple_array[1] = $simple_array[1].\n";
print "simple_array[2] = $simple_array[2].\n";

@complex_array = (1, "two", 3.0);  # can be multiple types
print "complex_array[0] = $complex_array[0].\n";
print "complex_array[1] = $complex_array[1].\n";
print "complex_array[2] = $complex_array[2].\n";

# hash variables
%some_items = ("A" => 1, "M" => 13, "N" => 14);
print "M is the $some_items{\"M\"}th letter in the alphabet.\n";
$item = "N";
print "$item is the $some_items{$item}th letter in the alphabet.\n";