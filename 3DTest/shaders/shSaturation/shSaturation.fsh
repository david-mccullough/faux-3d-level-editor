varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float sat;

void main()
{
    vec4 Colour = texture2D( gm_BaseTexture, v_vTexcoord ); // get colour of pixel
    // add brightness to pixel that depends on Position uniform
    Colour.r += sat; // for red channel
    Colour.g += sat; // for green channel
    Colour.b += sat; // for blue channel
    gl_FragColor = v_vColour * Colour;
}
