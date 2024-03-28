//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 base_col = texture2D( gm_BaseTexture, v_vTexcoord );
	
	gl_FragColor = v_vColour * vec4(base_col.r,base_col.g,base_col.b,1.0-base_col.a);
}
