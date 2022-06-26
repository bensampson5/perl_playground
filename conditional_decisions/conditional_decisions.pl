# if
if (2 + 2 == 4) {
    print "2 + 2 = 4.\n";
}

# if-else
$x = 4;
if ($x == 3) {
    print "x is 3.\n";
}
else {
    print "x is not 3.\n";
}

# if-elsif-else
$E = 36;
$m = 4;
$c = 3;
if ($E == $c**2) {
    print "if.\n";
} elsif ($m == $c) {
    print("elsif.\n");
} else {
    print("else.\n");
}

# ternary statement
$answer = ($c == 3) ? "c is 3." : "c is not 3.";
print "$answer\n";

# numeric values operators
$y = -100 <=> 11;
print ("-100 <=> 11 is $y.\n");

# string value operators
if ("aaaa" lt "zzz") {
    print "aaaa is less than zzz.\n";
} else {
    print "aaaa is not less than zzz.\n";
}