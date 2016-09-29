//position
attribute vec4 vPosition;
attribute vec2 vTexCoord;
varying vec2 texCoord;

void main()
{
    gl_Position= vPosition;
    texCoord = vTexCoord;
    //gl_Position = vec4 ( vPosition.x, vPosition.y, 0.0, 1.0 );
    //gl_Position=vPosition;
}
