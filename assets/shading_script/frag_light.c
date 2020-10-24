/**
* 光效渲染片段着色程序
* Created by wgs on 20-07-16.
*/

precision mediump float;

//参数介绍
uniform float videoFilterIntensity; //滤镜强度
uniform sampler2D text_filter; //2D滤镜纹理

uniform sampler2D text_light; //炫光素材纹理
uniform sampler2D text_noise; //噪声素材纹理
uniform sampler2D text_dark; //亮度滤镜调节,整体调暗一些

uniform bool needFilter; //是否需要添加滤镜
uniform bool needNoise; //是否需要添加噪声
uniform bool needBlur; //是否需要模糊
uniform bool needColorSeparation; //是否需要RGB分色
uniform bool verticalScreen; //竖屏or横屏

varying vec2 vTexCoord; //纹理坐标(更新在顶点着色器)

//函数介绍
//图层滤色融合
float SCREEN(float x, float a, float b) {
   return 1.0 - x * ((1.0 -a)*(1.0 -b));
}

float screen(float a, float b) {
  return SCREEN(1.0, a, b);
}

//图像整体调暗，对亮度滤镜处理
vec4 adjustBrightness(vec4 rgbdata, float percent) {
    float r = texture2D(text_dark, vec2(0.0, rgbdata.r), 0.0).r;
    float g = texture2D(text_dark, vec2(0.0, rgbdata.g), 0.0).g;
    float b = texture2D(text_dark, vec2(0.0, rgbdata.b), 0.0).b;

    vec4 res = vec4(r, g, b, 1.0);
    return vec4(mix(rgbdata.rgb, res.rgb, percent), 1.0);
    //return rgbdata;
}

//获取照片纹理rgba
vec4 getFromColor(vec2 uv) {
    vec4 rgbdata = texture2D(text_filter, uv);
    return adjustBrightness(rgbdata, 0.2);
}

//边缘镜像
vec2 edgeMirror(vec2 uv){
  if(uv.y > 1.0 || uv.y < 0.0){
    uv.y = ceil(uv.y) - uv.y;
  }
  if(uv.x > 1.0 || uv.x < 0.0){
    uv.x = ceil(uv.x) - uv.x;
  }
  return uv;
}

//根据横屏竖屏，对rgb进行分色处理
vec4 colorSeparation(vec2 uv) {
    /*float r, g;
    if (verticalScreen) {
        float offset = 6.0 / height;
        r = clamp(getFromColor(edgeMirror(uv + vec2(0.0, offset))).r, 0.0, 1.0);
        g = clamp(getFromColor(edgeMirror(uv - vec2(0.0, offset))).g, 0.0, 1.0);
    } else {
        float offset = 6.0 / width;
        r = clamp(getFromColor(edgeMirror(uv + vec2(offset, 0.0))).r, 0.0, 1.0);
        g = clamp(getFromColor(edgeMirror(uv - vec2(offset, 0.0))).g, 0.0, 1.0);
    }
    float b = clamp(getFromColor(uv).b, 0.0, 1.0);

    vec4 rgbdata = vec4(r, g, b, 1.0);*/
    vec4 rgbdata = vec4(0, 0, 0, 0);
    return rgbdata;
}

//2D滤镜的实现方式
vec4 addVideoFilter1(vec4 color) {
    float r  = color.r;
    float g = color.g;
    float b = color.b;

    float quadx, quady, x, y;
    float bi = floor(b * 63.0);
    float mixratio = b * 63.0 - floor(b * 63.0);

    quady = floor(bi / 8.0);
    quadx = bi - quady * 8.0;
    x = quadx * 64.0 + clamp(r * 63.0, 1.0, 63.0);
    y = quady * 64.0 + clamp(g * 63.0, 1.0, 63.0);
    vec2 poss1 = vec2(x / 512.0, y / 512.0);

    bi = bi + 1.0;
    quady = floor(bi / 8.0);
    quadx = bi - quady * 8.0;
    x = quadx * 64.0 + clamp(r * 63.0, 1.0, 63.0);
    y = quady * 64.0 + clamp(g * 63.0, 1.0, 63.0);
    vec2 poss2 = vec2(x / 512.0, y / 512.0);

    vec4 color1 = texture2D(text_filter, poss1, 0.0);
    vec4 color2 = texture2D(text_filter, poss2, 0.0);

    r = mix(r, mix(color1.r, color2.r, mixratio), videoFilterIntensity);
    g = mix(g, mix(color1.g, color2.g, mixratio), videoFilterIntensity);
    b = mix(b, mix(color1.b, color2.b, mixratio), videoFilterIntensity);

    vec4 rgbdata = vec4(r,g,b,1.0);
    return rgbdata;
}

// 5 x 5 高斯模糊
vec4 guassianBlur5(vec2 uv) {
   //float offset = 2.0 / width;
   float offset = 2.0;

   vec4 color = getFromColor(uv + vec2(-2.0*offset, -2.0*offset)) * 0.0030;
   color += getFromColor(uv + vec2(-1.0*offset, -2.0*offset)) * 0.0133;
   color += getFromColor(uv + vec2(0.0, -2.0*offset)) * 0.0219;
   color += getFromColor(uv + vec2(1.0*offset, -2.0*offset)) * 0.0133;
   color += getFromColor(uv + vec2(2.0*offset, -2.0*offset)) * 0.0030;

   color += getFromColor(uv + vec2(-2.0*offset, -1.0*offset)) * 0.0133;
   color += getFromColor(uv + vec2(-1.0*offset, -1.0*offset)) * 0.0596;
   color += getFromColor(uv + vec2(0.0, -1.0*offset)) * 0.0983;
   color += getFromColor(uv + vec2(1.0*offset, -1.0*offset)) * 0.0596;
   color += getFromColor(uv + vec2(2.0*offset, -1.0*offset)) * 0.0133;

   color += getFromColor(uv + vec2(-2.0*offset, 0.0)) * 0.0219;
   color += getFromColor(uv + vec2(-1.0*offset, 0.0)) * 0.0983;
   color += getFromColor(uv + vec2(0.0, 0.0)) * 0.1621;
   color += getFromColor(uv + vec2(1.0*offset, 0.0)) * 0.0983;
   color += getFromColor(uv + vec2(2.0*offset, 0.0)) * 0.0219;

   color += getFromColor(uv + vec2(-2.0*offset, 1.0*offset)) * 0.0133;
   color += getFromColor(uv + vec2(-1.0*offset, 1.0*offset)) * 0.0596;
   color += getFromColor(uv + vec2(0.0, 1.0*offset)) * 0.0983;
   color += getFromColor(uv + vec2(1.0*offset, 1.0*offset)) * 0.0596;
   color += getFromColor(uv + vec2(2.0*offset, 1.0*offset)) * 0.0133;

   color += getFromColor(uv + vec2(-2.0*offset, 2.0*offset)) * 0.0030;
   color += getFromColor(uv + vec2(-1.0*offset, 2.0*offset)) * 0.0133;
   color += getFromColor(uv + vec2(0.0, 2.0*offset)) * 0.0219;
   color += getFromColor(uv + vec2(1.0*offset, 2.0*offset)) * 0.0133;
   color += getFromColor(uv + vec2(2.0*offset, 2.0*offset)) * 0.0030;

   return clamp(color, 0.0, 1.0);
}

//获取炫光素材的纹理rgba
vec4 lightColor(vec2 uv) {
    vec4 light_color = texture2D(text_light, uv, 0.0);
    return light_color;
}

//获取噪声素材的纹理rgba
vec4 noiseColor(vec2 uv) {
    vec4 noise_color = texture2D(text_noise, uv, 0.0);
    return noise_color;
}

//通过滤色模式实现图像融合
vec4 blendSource(vec4 source, vec4 light) {
    float r, g, b;
    r = screen(source.r, light.r);
    g = screen(source.g, light.g);
    b = screen(source.b, light.b);
    return vec4(r, g, b, 1.0);
}

//根据各特效需求，进行图像
vec4 photoColor(vec2 uv) {
    vec4 rgbdata;

    if (needColorSeparation) {
        rgbdata = colorSeparation(uv);
    } else {
        rgbdata = getFromColor(uv);
    }

    if (needBlur) {
        vec4 blur = guassianBlur5(uv);
        rgbdata = mix(rgbdata, blur, 0.5);
    }

    if (needFilter) {
        rgbdata = addVideoFilter1(rgbdata);
    }

    if (needNoise) {
       rgbdata = blendSource(rgbdata, noiseColor(vTexCoord));
    }

    return blendSource(rgbdata, lightColor(vTexCoord));
}

void main()
{
    vec4 finalColor = photoColor(vTexCoord);
    gl_FragColor = finalColor;
}