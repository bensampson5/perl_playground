# Creating references
$hello = "hello";
$hello_ref = \$hello;
print "hello = $hello, hello_ref = $hello_ref\n";

# De-referencing
print "hello_ref de-referenced is $$hello_ref\n";

# variable types
$x = 10;
$x_ref = \$x;
@a = (1, 2, 3);
$a_ref = \@a;
%h = ('key1' => 10, 'key2' => 20);
$h_ref = \%h;
print "Reference type of x = ", ref($x_ref), "\n";
print "Reference type of hello = ", ref($hello_ref), "\n";
print "Reference type of a = ", ref($a_ref), "\n";
print "Reference type of h = ", ref($h_ref), "\n";