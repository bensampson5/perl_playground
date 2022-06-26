# while loop
$count = 15;
while ($count > 0) {
    print "Count is $count.\n";
    $count -= 2;
}

# until loop
$x = 0;
until ($x**2 > 100) {
    print "x = $x.\n";
    ++$x;
}

# for loop
for ($ten = 0; $ten < 10; ++$ten) {
    for ($one = 0; $one < 10; ++$one) {
        print "Digit = $ten$one.\n";
    }
}

# for each loop
@rainbow = ("red", "orange", "yellow", "green", "blue", "indigo", "violet");
foreach $color (@rainbow) {
    print "$color\n";
}

# do-while loop
$count = 10;
do {
    print "Countdown is: $count\n";
    $count--;
} while ($count > 0);

# next/last
foreach $color (@rainbow) {
    if ($color eq "red") {
        next;  # skip red
    }
    print "color = $color.\n";
    if ($color eq "green") {
        last;  # end at green
    }
}