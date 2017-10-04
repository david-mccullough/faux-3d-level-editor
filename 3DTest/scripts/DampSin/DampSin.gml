///@param x
///@param a 2.7
///@param b 1
///@param c 2.5
///@param d 0

t = argument[0]
a = argument[1]
b = argument[2]
c = argument[3]
d = argument[4]

var term1 = (a/(b+t))
var term2 = cos(t*(2*pi/c))
var term3 = d

return (term1 * term2 + term3)