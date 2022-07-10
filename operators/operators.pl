# Arithmetic operators
$x = 10;
$y = 30;
$z = 3;
print "x = $x, y = $y, z = $z\n";

$result = $x + $y;
print "x + y = $result\n";

$result = $x - $z;
print "x - z = $result\n";

$result = $x % $z;
print "x % z = $result\n";

$result = $z ** $z;
print "z ** z = $result\n";

# Assignment operators
$z /= $z;
print "z /= z = $z\n";

$z_pre = ++$z;
print "z = $z, z_pre = $z_pre\n";
$z_post = $z++;
print "z = $z, z_post = $z_post\n";

# Bitwise operators
$b1 = 0b01010001;
$b2 = 0x22;
printf ("b1 = %08b\n", $b1);
printf ("b2 = %08b\n", $b2);

$result = $b1 & $b2;
printf ("b1 & b2 = %08b\n", $result);

$result = $b1 | $b2;
printf ("b1 | b2 = %08b\n", $result);

$result = $b1 ^ $b2;
printf ("b1 ^ b2 = %08b\n", $result);

# Logical operators
$l0 = 1 > 0;
if ($l0) {
    print "l0 is True\n";
}
else {
    print "l0 is False\n";
}

$l1 = (1 > 0) && (10 < 5);
if ($l1) {
    print "l1 is True\n";
}
else {
    print "l1 is False\n";
}

$l2 = !(1 > 0) || (10 < 5 || 1 == 1);
if ($l2) {
    print "l2 is True\n";
}
else {
    print "l2 is False\n";
}

# String operators
$str1 = "fox";
$str2 = "brown";
$str3 = "dog";
print "The quick " . $str2 . " " . $str1 . " jumps " . "over the lazy " . $str3 x 3 . ".\n";

# Miscellaneous operators
@alphabet = ("a".."z");
print "@alphabet\n";
