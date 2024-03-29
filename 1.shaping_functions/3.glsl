#ifdef GL_ES
precision mediump float;
#endif

// 定义一个宏，每当程序调用PI时就用这个数来替换它
#define PI 3.14159265359

uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;

float plot(vec2 st, float pct) {
  return smoothstep(pct - 0.02, pct, st.y) - smoothstep(pct, pct + 0.02, st.y);
}

void main() {
  vec2 st = gl_FragCoord.xy / u_resolution;
  
  // float y = 1.0 - pow(abs(st.x), 0.5);
  // float y = 1.0 - pow(abs(st.x), 1.0);
  float y = pow(cos(PI * st.x / 2.0), 0.5);
  
  vec3 color = vec3(y);
  
  float pct = plot(st, y);
  color = (1.0 - pct) * color + pct * vec3(0.0, 1.0, 0.0);
  
  gl_FragColor = vec4(color, 1.0);
}
