.class public Lcom/miui/extravideo/watermark/render/YuvToRgbRender;
.super Ljava/lang/Object;
.source "YuvToRgbRender.java"


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "precision highp float; \nvarying vec2 vTexCoord; \nuniform sampler2D uYTexture;\nuniform sampler2D uUvTexture;\nvoid main (void){ \n   float r, g, b, y, u, v; \n   y = texture2D(uYTexture, vTexCoord).r; \n   v = texture2D(uUvTexture, vTexCoord).a - 0.5; \n   u = texture2D(uUvTexture, vTexCoord).r - 0.5; \n   r = y + 1.402 * v;\n   g = y - 0.34414 * u - 0.71414 * v;\n   b = y + 1.772 * u;\n   gl_FragColor = vec4(r , g , b ,1.0);\n} \n"

.field private static final VERTEXT_SHADER:Ljava/lang/String; = "uniform mat4 uOrientationM;\nuniform mat4 uTransformM;\nattribute vec2 aPosition;\nvarying vec2 vTexCoord;\nvoid main() {\ngl_Position = vec4(aPosition, 0.0, 1.0);\nvTexCoord = (uTransformM * ((uOrientationM * gl_Position + 1.0) * 0.5)).xy;}"


# instance fields
.field private final FULL_QUAD_COORDINATES:[B

.field private fullQuadVertices:Ljava/nio/ByteBuffer;

.field private mTextureUV:I

.field private mTextureY:I

.field private final orientationMatrix:[F

.field private shader:Lcom/miui/extravideo/watermark/gles/ShaderProgram;

.field private final transformMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/miui/extravideo/watermark/render/YuvToRgbRender;->FULL_QUAD_COORDINATES:[B

    const/16 v1, 0x10

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/miui/extravideo/watermark/render/YuvToRgbRender;->orientationMatrix:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/miui/extravideo/watermark/render/YuvToRgbRender;->transformMatrix:[F

    iget-object v1, p0, Lcom/miui/extravideo/watermark/render/YuvToRgbRender;->shader:Lcom/miui/extravideo/watermark/gles/ShaderProgram;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/extravideo/watermark/render/YuvToRgbRender;->shader:Lcom/miui/extravideo/watermark/gles/ShaderProgram;

    :cond_0
    new-instance v1, Lcom/miui/extravideo/watermark/gles/ShaderProgram;

    invoke-direct {v1}, Lcom/miui/extravideo/watermark/gles/ShaderProgram;-><init>()V

    iput-object v1, p0, Lcom/miui/extravideo/watermark/render/YuvToRgbRender;->shader:Lcom/miui/extravideo/watermark/gles/ShaderProgram;

    iget-object v1, p0, Lcom/miui/extravideo/watermark/render/YuvToRgbRender;->shader:Lcom/miui/extravideo/watermark/gles/ShaderProgram;

    const-string v2, "uniform mat4 uOrientationM;\nuniform mat4 uTransformM;\nattribute vec2 aPosition;\nvarying vec2 vTexCoord;\nvoid main() {\ngl_Position = vec4(aPosition, 0.0, 1.0);\nvTexCoord = (uTransformM * ((uOrientationM * gl_Position + 1.0) * 0.5)).xy;}"

    const-string v3, "precision highp float; \nvarying vec2 vTexCoord; \nuniform sampler2D uYTexture;\nuniform sampler2D uUvTexture;\nvoid main (void){ \n   float r, g, b, y, u, v; \n   y = texture2D(uYTexture, vTexCoord).r; \n   v = texture2D(uUvTexture, vTexCoord).a - 0.5; \n   u = texture2D(uUvTexture, vTexCoord).r - 0.5; \n   r = y + 1.402 * v;\n   g = y - 0.34414 * u - 0.71414 * v;\n   b = y + 1.772 * u;\n   gl_FragColor = vec4(r , g , b ,1.0);\n} \n"

    invoke-virtual {v1, v2, v3}, Lcom/miui/extravideo/watermark/gles/ShaderProgram;->create(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/extravideo/watermark/render/YuvToRgbRender;->fullQuadVertices:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/miui/extravideo/watermark/render/YuvToRgbRender;->fullQuadVertices:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/miui/extravideo/watermark/render/YuvToRgbRender;->FULL_QUAD_COORDINATES:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/miui/extravideo/watermark/render/YuvToRgbRender;->orientationMatrix:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    iget-object v0, p0, Lcom/miui/extravideo/watermark/render/YuvToRgbRender;->transformMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-static {}, Lcom/miui/extravideo/watermark/gles/OpenGlUtils;->genTexture()I

    move-result v0

    iput v0, p0, Lcom/miui/extravideo/watermark/render/YuvToRgbRender;->mTextureY:I

    invoke-static {}, Lcom/miui/extravideo/watermark/gles/OpenGlUtils;->genTexture()I

    move-result v0

    iput v0, p0, Lcom/miui/extravideo/watermark/render/YuvToRgbRender;->mTextureUV:I

    return-void

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

    iget-object v5, p0, Lcom/miui/extravideo/watermark/render/YuvToRgbRender;->fullQuadVertices:Ljava/nio/ByteBuffer;

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
.method public draw([BII[I)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lcom/miui/extravideo/watermark/render/YuvToRgbRender;->shader:Lcom/miui/extravideo/watermark/gles/ShaderProgram;

    invoke-virtual {v1}, Lcom/miui/extravideo/watermark/gles/ShaderProgram;->use()V

    iget-object v1, v0, Lcom/miui/extravideo/watermark/render/YuvToRgbRender;->shader:Lcom/miui/extravideo/watermark/gles/ShaderProgram;

    const-string v2, "uYTexture"

    invoke-virtual {v1, v2}, Lcom/miui/extravideo/watermark/gles/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v10

    iget-object v1, v0, Lcom/miui/extravideo/watermark/render/YuvToRgbRender;->shader:Lcom/miui/extravideo/watermark/gles/ShaderProgram;

    const-string v2, "uUvTexture"

    invoke-virtual {v1, v2}, Lcom/miui/extravideo/watermark/gles/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v11

    iget-object v1, v0, Lcom/miui/extravideo/watermark/render/YuvToRgbRender;->shader:Lcom/miui/extravideo/watermark/gles/ShaderProgram;

    const-string v2, "uOrientationM"

    invoke-virtual {v1, v2}, Lcom/miui/extravideo/watermark/gles/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v1

    iget-object v2, v0, Lcom/miui/extravideo/watermark/render/YuvToRgbRender;->shader:Lcom/miui/extravideo/watermark/gles/ShaderProgram;

    const-string v3, "uTransformM"

    invoke-virtual {v2, v3}, Lcom/miui/extravideo/watermark/gles/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v2

    iget-object v3, v0, Lcom/miui/extravideo/watermark/render/YuvToRgbRender;->orientationMatrix:[F

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v1, v7, v8, v3, v8}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v1, v0, Lcom/miui/extravideo/watermark/render/YuvToRgbRender;->transformMatrix:[F

    invoke-static {v2, v7, v8, v1, v8}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v3, 0x1

    const/4 v4, 0x2

    move v1, p2

    move v2, p3

    move v5, p2

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/miui/extravideo/watermark/render/YuvTextureJNI;->setup(IIIIII)V

    aget v1, p4, v7

    mul-int/2addr v1, p2

    aget v2, p4, v8

    add-int v4, v1, v2

    aget v1, p4, v7

    shr-int/2addr v1, v7

    mul-int/2addr v1, p2

    aget v2, p4, v8

    add-int v5, v1, v2

    const/4 v1, 0x2

    aget v6, p4, v1

    const/4 v1, 0x3

    aget v7, p4, v1

    iget v8, v0, Lcom/miui/extravideo/watermark/render/YuvToRgbRender;->mTextureY:I

    iget v9, v0, Lcom/miui/extravideo/watermark/render/YuvToRgbRender;->mTextureUV:I

    move-object v3, p1

    invoke-static/range {v3 .. v11}, Lcom/miui/extravideo/watermark/render/YuvTextureJNI;->texture([BIIIIIIII)V

    iget-object v1, v0, Lcom/miui/extravideo/watermark/render/YuvToRgbRender;->shader:Lcom/miui/extravideo/watermark/gles/ShaderProgram;

    const-string v2, "aPosition"

    invoke-virtual {v1, v2}, Lcom/miui/extravideo/watermark/gles/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/extravideo/watermark/render/YuvToRgbRender;->renderQuad(I)V

    iget-object v0, v0, Lcom/miui/extravideo/watermark/render/YuvToRgbRender;->shader:Lcom/miui/extravideo/watermark/gles/ShaderProgram;

    invoke-virtual {v0}, Lcom/miui/extravideo/watermark/gles/ShaderProgram;->unUse()V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/extravideo/watermark/render/YuvToRgbRender;->shader:Lcom/miui/extravideo/watermark/gles/ShaderProgram;

    iput-object v0, p0, Lcom/miui/extravideo/watermark/render/YuvToRgbRender;->fullQuadVertices:Ljava/nio/ByteBuffer;

    return-void
.end method
