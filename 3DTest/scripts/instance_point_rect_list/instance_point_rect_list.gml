/// instance_point_rect_list(x,y,obj)
//
//  Returns a list data structure populated with the ids of instances 
//  which would collide with the current instance if it were placed 
//  at a given position, or noone if no instances found.
//
//      x,y         placement of current instance, real
//      obj         object to check for collision (or all), real
//
/// @param x
/// @param y
/// @param object
{
    var xx,yy,x1,y1,x2,y2,xy,obj,dsid,this,that,i;
    xx = argument0;
    yy = argument1;
	x1 = argument2;
	y1 = argument3;
	x2 = argument4;
	y2 = argument5;
    obj = argument6;
    dsid = ds_list_create();

    with (obj) 
	{
        that = id;
        i = point_in_rectangle(xx,yy,x1,y1,x2,y2)
        if (i != noone) ds_list_add(dsid,i);
    }
    if (ds_list_empty(dsid)) {
        ds_list_destroy(dsid);
        dsid = noone;
    }
    return dsid;
}
