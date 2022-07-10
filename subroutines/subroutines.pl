# Subroutines
sub hypot {
    $a = $_[0];
    my $my_a = $a;
    $b = $_[1];

    return (($a ** 2 + $b ** 2) ** (0.5));
}

$h = hypot(3, 4);
print "hypot(3, 4) = $h\n";

# Variable scopes
print "a = $a\n";
print "my_a = $my_a\n";