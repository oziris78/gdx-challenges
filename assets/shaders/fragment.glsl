#ifdef GL_ES
precision highp float;
#endif

uniform sampler2D sceneTex; // 0
uniform vec2 center; // Mouse position
uniform float time; // effect elapsed time
//uniform vec3 shockParams; // 10.0, 0.8, 0.1
 
varying vec2 v_texCoords;
 
void main() 
{
	// get pixel coordinates
	vec2 l_texCoords = v_texCoords;
	//vec2 center = vec2(0.5, 0.5);
	vec3 shockParams = vec3(10.0, 0.8, 0.1);

    float offset = (time- floor(time))/time;
	float CurrentTime = (time)*(offset);


	//get distance from center
	float distance = distance(v_texCoords, center);
	
	if ( (distance <= (CurrentTime + shockParams.z)) && (distance >= (CurrentTime - shockParams.z)) ) {
    	float diff = (distance - CurrentTime);
        float powDiff = 0.0;
    	if(distance>0.05){
    	 powDiff = 1.0 - pow(abs(diff*shockParams.x), shockParams.y);
        }
    	float diffTime = diff  * powDiff; 
    	vec2 diffUV = normalize(v_texCoords-center);
    	//Perform the distortion and reduce the effect over time
    	l_texCoords = v_texCoords + ((diffUV * diffTime)/(CurrentTime * distance * 40.0));
	}
	gl_FragColor = texture2D(sceneTex, l_texCoords);

}