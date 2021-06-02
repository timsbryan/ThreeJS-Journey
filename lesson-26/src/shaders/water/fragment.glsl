uniform vec3 uDepthColour;
uniform vec3 uSurfaceColour;
uniform float uColourOffset;
uniform float uColourMultiplier;

varying float vElevation;

void main () {
  float mixStrength = (vElevation + uColourOffset) * uColourMultiplier;
  vec3 colour = mix(uDepthColour, uSurfaceColour, mixStrength);
  gl_FragColor = vec4(colour, 1.0);
}
