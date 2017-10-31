vec3 HexTo01Color(float redAmount,float greenAmount,float yellowAmount){
    vec3 color = vec3(redAmount/255.,greenAmount/255.,yellowAmount/255.);
    return color;
}

void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    vec2 uv = (2.*fragCoord-iResolution.xy)/min(iResolution.x,iResolution.y);//将屏幕空间映射至[-1.xx,1.xx]x[-1,1]（width大于height）
    vec3 color_1 = HexTo01Color(22.,147.,165.);
    vec3 color_2 = HexTo01Color(173.,216.,199.);
    vec3 color_3 = HexTo01Color(251.,184.,41.);
    vec3 BGcolor = vec3(1.);
    vec3 color=BGcolor;

    vec2 circlePosition = vec2(0.2,0.2);
    float angle = atan(uv.x,uv.y);//range -π, π
    float range = sin(angle*10.)*0.1 + 0.5;
    float len = length(uv);
    if(len<range && len>0.1) color = color_3;

       
     fragColor = vec4(color,1.);    
}