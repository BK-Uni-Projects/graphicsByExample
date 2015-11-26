#version 330
in vec4 fragmentColor;
in vec2 fragmentUV;
out vec4 outputColor;
uniform sampler2D textureSampler;

void main()
{
	 outputColor = texture(textureSampler, fragmentUV);
	 if (outputColor.a <= 0.1) discard;
	 //outputColor = vec4(0.0, fragmentUV, 1.0);

}
