/*global.aspectRatios = 0;
//4:3
global.aspectRatios[0,0]=4;
global.aspectRatios[0,1]=3;
//16x9
global.aspectRatios[1,0]=16;
global.aspectRatios[1,1]=9;
//16x10
global.aspectRatios[2,0]=16;
global.aspectRatios[2,1]=10;
*/
enum displaySizes
{
	d50 = 50,
	d80 = 80,
	d100 = 100,
	d120 = 120
}

global.displaySize = displaySizes.d100;
global.isFullScreen = false;

//TODO Load Resolution Preferences

WindowSetup();

room_goto_next();