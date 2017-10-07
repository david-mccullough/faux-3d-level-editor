///@description constraint: a>0 and b>0
///@param a
///@param b

var a,b;
a = argument0;
b = argument1;
while true {
    a = a mod b;
    if a=0 then return b;
    b = b mod a;
    if b=0 then return a;
}