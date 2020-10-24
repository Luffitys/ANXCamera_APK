.class public Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "precision highp float;\nuniform sampler2D mainTexture;\nuniform sampler2D LutTexture;\nvarying vec2 vTextureCoord;\nfloat m1 = 2610.0 / 16384.0;\nfloat m2 = 2523.0 / 4096.0 * 128.0;\nfloat c1 = 3423.0 / 4096.0;\nfloat c2 = 2413.0 / 4096.0 * 32.0;\nfloat c3 = 2392.0 / 4096.0 * 32.0;\nfloat linearProc(float src) {    float A = max(pow(src, 1.0 / m2) - c1, 0.0);\n    float B = c2 - c3 * pow(src, 1.0 / m2);\n    return clamp(pow(A / B, (1.0 / m1)) * 10.0 ,0.0,1.0);\n}\nfloat linearProcSimple(float src) {    return clamp(pow(src, 3.2),0.0,1.0);\n}\nvec3 hsv2rgb(vec3 c) {\n  vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);\n  vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);\n  return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);\n}\nvec3 rgb2hsv(vec3 c)\n{\n vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);\n vec4 p = mix(vec4(c.bg, K.wz), vec4(c.gb, K.xy), step(c.b, c.g));\n vec4 q = mix(vec4(p.xyw, c.r), vec4(c.r, p.yzx), step(p.x, c.r));\n\n float d = q.x - min(q.w, q.y);\n float e = 1.0e-10;\n return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);\n}\nvec3 applyMat(vec3 incolor){\n   mat3 m = mat3(1.3436,- 0.2822,- 0.0614,-0.0653,1.07578,- 0.0105,-0.0028,- 0.0196,1.0168);\n   vec3 color = clamp(incolor.rgb * m,vec3(0.0),vec3(1.0));\n   return color;\n}\nfloat gammaProc(float src) {\n    return clamp(pow(src, 0.45), 0.0, 1.0);\n}\nfloat PQCurl(float src) {    return texture2D(LutTexture,vec2(src,0.5)).a;}void main(void) {\n   vec4 x, y, z, u, v;\n   vec2 uv = vTextureCoord;uv.x = 1.0 -uv.x;\n   vec4 result  = texture2D(mainTexture, uv);\n   result.r = PQCurl(result.r);\n   result.g = PQCurl(result.g);\n   result.b = PQCurl(result.b);\n   result.rgb = applyMat(result.rgb);\n   result.r = gammaProc(result.r);\n   result.g = gammaProc(result.g);\n   result.b = gammaProc(result.b);\n   //vec3 hsv = rgb2hsv(result.rgb);hsv.z += 0.0;\n   //result.rgb = hsv2rgb(hsv);\n   result.a = 1.0;\n   gl_FragColor = result;\n}\n"

.field private static final VERTEXT_SHADER:Ljava/lang/String; = "uniform mat4 uOrientationM;\nuniform mat4 uTransformM;\nattribute vec2 aPosition;\nvarying vec2 vTextureCoord;\nvoid main() {\ngl_Position = vec4(aPosition, 0.0, 1.0);\nvTextureCoord = (uTransformM * ((uOrientationM * gl_Position + 1.0) * 0.5)).xy;}"


# instance fields
.field private final FULL_QUAD_COORDINATES:[B

.field private fullQuadVertices:Ljava/nio/ByteBuffer;

.field private final orientationMatrix:[F

.field private shader:Lcom/android/camera/effect/framework/gles/ShaderProgram;

.field private final transformMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;->FULL_QUAD_COORDINATES:[B

    const/16 v1, 0x10

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;->orientationMatrix:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;->transformMatrix:[F

    iget-object v1, p0, Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;->shader:Lcom/android/camera/effect/framework/gles/ShaderProgram;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;->shader:Lcom/android/camera/effect/framework/gles/ShaderProgram;

    :cond_0
    new-instance v1, Lcom/android/camera/effect/framework/gles/ShaderProgram;

    invoke-direct {v1}, Lcom/android/camera/effect/framework/gles/ShaderProgram;-><init>()V

    iput-object v1, p0, Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;->shader:Lcom/android/camera/effect/framework/gles/ShaderProgram;

    const-string v2, "uniform mat4 uOrientationM;\nuniform mat4 uTransformM;\nattribute vec2 aPosition;\nvarying vec2 vTextureCoord;\nvoid main() {\ngl_Position = vec4(aPosition, 0.0, 1.0);\nvTextureCoord = (uTransformM * ((uOrientationM * gl_Position + 1.0) * 0.5)).xy;}"

    const-string v3, "precision highp float;\nuniform sampler2D mainTexture;\nuniform sampler2D LutTexture;\nvarying vec2 vTextureCoord;\nfloat m1 = 2610.0 / 16384.0;\nfloat m2 = 2523.0 / 4096.0 * 128.0;\nfloat c1 = 3423.0 / 4096.0;\nfloat c2 = 2413.0 / 4096.0 * 32.0;\nfloat c3 = 2392.0 / 4096.0 * 32.0;\nfloat linearProc(float src) {    float A = max(pow(src, 1.0 / m2) - c1, 0.0);\n    float B = c2 - c3 * pow(src, 1.0 / m2);\n    return clamp(pow(A / B, (1.0 / m1)) * 10.0 ,0.0,1.0);\n}\nfloat linearProcSimple(float src) {    return clamp(pow(src, 3.2),0.0,1.0);\n}\nvec3 hsv2rgb(vec3 c) {\n  vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);\n  vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);\n  return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);\n}\nvec3 rgb2hsv(vec3 c)\n{\n vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);\n vec4 p = mix(vec4(c.bg, K.wz), vec4(c.gb, K.xy), step(c.b, c.g));\n vec4 q = mix(vec4(p.xyw, c.r), vec4(c.r, p.yzx), step(p.x, c.r));\n\n float d = q.x - min(q.w, q.y);\n float e = 1.0e-10;\n return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);\n}\nvec3 applyMat(vec3 incolor){\n   mat3 m = mat3(1.3436,- 0.2822,- 0.0614,-0.0653,1.07578,- 0.0105,-0.0028,- 0.0196,1.0168);\n   vec3 color = clamp(incolor.rgb * m,vec3(0.0),vec3(1.0));\n   return color;\n}\nfloat gammaProc(float src) {\n    return clamp(pow(src, 0.45), 0.0, 1.0);\n}\nfloat PQCurl(float src) {    return texture2D(LutTexture,vec2(src,0.5)).a;}void main(void) {\n   vec4 x, y, z, u, v;\n   vec2 uv = vTextureCoord;uv.x = 1.0 -uv.x;\n   vec4 result  = texture2D(mainTexture, uv);\n   result.r = PQCurl(result.r);\n   result.g = PQCurl(result.g);\n   result.b = PQCurl(result.b);\n   result.rgb = applyMat(result.rgb);\n   result.r = gammaProc(result.r);\n   result.g = gammaProc(result.g);\n   result.b = gammaProc(result.b);\n   //vec3 hsv = rgb2hsv(result.rgb);hsv.z += 0.0;\n   //result.rgb = hsv2rgb(hsv);\n   result.a = 1.0;\n   gl_FragColor = result;\n}\n"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/effect/framework/gles/ShaderProgram;->create(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;->fullQuadVertices:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;->FULL_QUAD_COORDINATES:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;->orientationMatrix:[F

    const/4 v3, 0x0

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    iget-object p0, p0, Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;->transformMatrix:[F

    invoke-static {p0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        0x1t
        -0x1t
        -0x1t
        0x1t
        0x1t
        0x1t
        -0x1t
    .end array-data
.end method

.method private renderQuad(I)V
    .locals 6

    iget-object v5, p0, Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;->fullQuadVertices:Ljava/nio/ByteBuffer;

    const/4 v1, 0x2

    const/16 v2, 0x1400

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v0, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 p0, 0x5

    const/4 p1, 0x0

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;->shader:Lcom/android/camera/effect/framework/gles/ShaderProgram;

    invoke-virtual {v0}, Lcom/android/camera/effect/framework/gles/ShaderProgram;->use()V

    iget-object v0, p0, Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;->shader:Lcom/android/camera/effect/framework/gles/ShaderProgram;

    const-string v1, "mainTexture"

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/framework/gles/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;->shader:Lcom/android/camera/effect/framework/gles/ShaderProgram;

    const-string v2, "LutTexture"

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/framework/gles/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v1

    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v2, 0xde1

    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {v2, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 p2, 0x1

    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v0, p0, Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;->shader:Lcom/android/camera/effect/framework/gles/ShaderProgram;

    const-string v1, "uOrientationM"

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/framework/gles/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;->shader:Lcom/android/camera/effect/framework/gles/ShaderProgram;

    const-string v2, "uTransformM"

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/framework/gles/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;->orientationMatrix:[F

    invoke-static {v0, p2, p1, v2, p1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;->transformMatrix:[F

    invoke-static {v1, p2, p1, v0, p1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object p1, p0, Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;->shader:Lcom/android/camera/effect/framework/gles/ShaderProgram;

    const-string p2, "aPosition"

    invoke-virtual {p1, p2}, Lcom/android/camera/effect/framework/gles/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;->renderQuad(I)V

    iget-object p0, p0, Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;->shader:Lcom/android/camera/effect/framework/gles/ShaderProgram;

    invoke-virtual {p0}, Lcom/android/camera/effect/framework/gles/ShaderProgram;->unUse()V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;->shader:Lcom/android/camera/effect/framework/gles/ShaderProgram;

    iput-object v0, p0, Lcom/android/camera/storage/HDR10Thumbnail/gles/LutRenderX;->fullQuadVertices:Ljava/nio/ByteBuffer;

    return-void
.end method
