//Original code by Pixel Eater, Edited by Malingo, inspired by Doom Indinite's
const vec3 LumWt = vec3( 0.2125862307855955516, 0.7151703037034108499, 0.07220049864333622685 );
const float pi = 3.1415926535897932384626433832795;
//uniform vec3 regebe;
void main()
{
	vec3 C = texture( InputTexture, TexCoord ).rgb ;
	float G = dot( C, LumWt );
	//FragColor = vec4( G*regebe.x, G, G*regebe.y, G*regebe.z );

    float distx=0.5-TexCoord.x;
    distx*=.75;
    float disty=0.5-TexCoord.y;
    float dist=sqrt(distx*distx + disty*disty);
    dist*=dist*dist;
    dist=min(1.0,dist*8);
    //dist=sqrt(dist);

    vec3 rgb=vec3( mix(regebe2.x,regebe.x,G),
               mix(regebe2.y,regebe.y,G),
               mix(regebe2.z,regebe.z,G) );
    vec3 final=vec3( mix(C.x,rgb.x,dist),
                     mix(C.y,rgb.y,dist),
                     mix(C.z,rgb.z,dist));
	FragColor = vec4(final.xyz,1.0);
}