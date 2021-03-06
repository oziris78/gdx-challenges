varying vec4 v_color;
varying vec2 v_texCoord0;

uniform sampler2D u_sampler2D;

void main(){
    vec4 color = texture2D(u_sampler2D, v_texCoord0) * v_color;
    color.rgb = vec3(1.0f,1.0f,1.0f) - color.rgb;
    // rgb, grb, brg etc. everything can be written
    gl_FragColor = color;

}