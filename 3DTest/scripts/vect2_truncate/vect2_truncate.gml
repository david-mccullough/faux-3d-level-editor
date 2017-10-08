/// @description if the vector exceeds the given length, it will be returned truncated to max length.
/// @param vector
/// @param max_length
var _vec=argument[0];
var _len=argument[1];

if(vect2_length(_vec) > _len)
    _vec=vect2_scale(_vec,_len);
return _vec;