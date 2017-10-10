///@param x
///@param y
///@param identity
///@param angle
var iden = argument2;

var inst = instance_create_depth(argument0,argument1,0,IdentityGetObject(iden));
inst.identity = iden;
inst.sprite_index = IdentityGetSprite(iden);
inst.angle = argument3;

return inst;