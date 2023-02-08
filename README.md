# SHADER DEMO

## 顶点着色器

## 片元着色器 fragment shaders

## 内置函数

- pow(x, y) 求x的y次幂 = x^y
- exp(x) 以自然常数e为底的指数函数 = e^x = pow(e, x)
- log() 对数函数
- sqrt() 平方根函数
- mod(x, y) 返回 x 对 y 取模的值
- fract(x) 返回小数部分
- ceil(x) 向正无穷取整
- floor(x) 向负无穷取整
- sign(x) 提取 x 的正负号（-1, 0, 1）
- abs(x) 返回 x 的绝对值
- clamp(x, a, b) 把 x 限制在 a 和 b 之间
- min(x, y) 最小值
- max(x, y) 最大值

- step(edge, x) 第一个参数是阈值，第二个是要检测的值，小于阈值返回0，大于阈值返回1
- smoothstep(edge0, edge1, x) 生成0-1的平滑过渡值。x越接近edge0，输出值越接近0；反之，x越接近edge1，输出值越接近1。

- sin(angle) 正弦[-1,1] y坐标
- cos(angle) 余弦[-1,1] x坐标
- atan() 反正切值

- mix(x, y, a) a取值[0-1]，返回值 x*(1−a)+y*a。以a的百分比混合x和y