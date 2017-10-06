/// @description draw objects via depth grid

if ds_exists(global.depthGrid, ds_type_grid)
{
	///  Add all instances to grid ///
	/*	[ depth ][ ypos ]
	[0]	[		][		]
	[1]	[		][		]
		new objects each row*/

	// resize height to fit
	var height = instance_number(objObject);
	ds_grid_resize(global.depthGrid,2,height);
	
	var yy = 0;
	with(objObject)
	{
		// add id and y value to grid
		global.depthGrid[# 0, yy] = self;
		global.depthGrid[# 1, yy] = self.y + yDepthOrigin;
		++yy;
		
		//ground items
		if !sortDepth
		{
			DrawObject();
		}
	}
	
	/// Sort the grid and draw instances in order ///
	ds_grid_sort(global.depthGrid, 1, true);
	
	yy = 0;
	repeat(height)
	{
		// draw instance and set depth
		var instanceID = global.depthGrid[# 0, yy];
		with instanceID {
			if sortDepth
			{
				myDepth = yy;
				DrawObject();
			}
		}
		
		++yy;
	}
	
	ds_grid_clear(global.depthGrid, 0);
}