//Original code by Pixel Eater, Edited by Malingo, inspired by Doom Infinite's
const vec3 LumWt = vec3( 0.2125862307855955516, 0.7151703037034108499, 0.07220049864333622685 );
const float pi = 3.1415926535897932384626433832795;
const vec3 regebe = vec3(-1.5,-1.5,-1.5);
const vec3 regebe2 = vec3(1,1,1);
void main()
{
	vec3 C = texture( InputTexture, TexCoord ).rgb ;
	float G = dot( C, LumWt );

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

               vec3 plus=C.rgb*5;
               plus.x=1-max(0,min(1,plus.x));
               plus.y=1-max(0,min(1,plus.y));
               plus.z=1-max(0,min(1,plus.z));
               plus=plus*plus*plus*plus;
               rgb+=plus;
                   //FragColor=vec4(plus.xyz,1.0);
    vec3 final=vec3( mix(C.x,rgb.x,dist),
                     mix(C.y,rgb.y,dist),
                     mix(C.z,rgb.z,dist));
	FragColor = vec4(final.xyz,1.0);


    //FragColor = vec4(1-C.r,1-C.g,1-C.b,1.0);
}