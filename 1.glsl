#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;

float plot(vec2 st){
  return smoothstep(0.02, 0.0, abs(st.y - st.x));
}

void main(){
  // 归一化（0.0 - 1.0）
  vec2 st = gl_FragCoord.xy / u_resolution;
  
  // 0-1
  float y = st.x;
  
  vec3 color = vec3(y);
  
  float pct = plot(st);
  color = (1.0 - pct)*color + pct*vec3(0.0, 1.0, 0.0);
  
  gl_FragColor = vec4(color, 1.0);
}

/**
 * 一、左上角 (0.0, 1.0)
 * st = vec2(0.0, 1.0);
 * y = st.x = 0.0;
 * color = vec3(0.0); 黑色
 */