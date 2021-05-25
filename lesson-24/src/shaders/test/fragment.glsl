uniform vec3 uColour;
uniform sampler2D uTexture;

varying vec2 vUv;
varying float vElavation;

void main() {
    vec4 textureColour = texture2D(uTexture, vUv);
    textureColour.rgb *= vElavation * 2.0 + 0.5;
    gl_FragColor = textureColour;
}
