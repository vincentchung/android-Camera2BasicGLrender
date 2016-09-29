#extension GL_OES_EGL_image_external : require
precision mediump float;
uniform samplerExternalOES sTexture;
varying vec2 texCoord;

void main ()
{
    vec3 rgb;
    rgb = texture2D(sTexture, texCoord).rgb;
    //gl_FragColor = texture2D(sTexture,texCoord);
    //float res = dot(rgb, vec3(0.299, 0.587, 0.114));
    //gl_FragColor = vec4(res, res, res, 1.0);
    gl_FragColor.r = dot(rgb, vec3(.393, .769, .189));
    gl_FragColor.g = dot(rgb, vec3(.349, .686, .168));
    gl_FragColor.b = dot(rgb, vec3(.272, .534, .131));
    gl_FragColor.a = 1.0;
}