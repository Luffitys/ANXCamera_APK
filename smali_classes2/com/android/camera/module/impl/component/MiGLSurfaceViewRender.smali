.class public Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;
.super Ljava/lang/Object;
.source "MiGLSurfaceViewRender.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiGLSurfaceViewRender"

.field private static textureVertices:[F = null

.field private static final vertexShaderString:Ljava/lang/String; = "attribute vec4 vertexIn;attribute vec2 textureIn;varying vec2 textureOut;void main() {gl_Position = vertexIn;textureOut = textureIn;}"

.field private static vertexVertices:[F = null

.field private static final yuvFragmentShaderString:Ljava/lang/String; = "precision mediump float;uniform sampler2D tex_y;uniform sampler2D tex_u;uniform sampler2D tex_v;varying vec2 textureOut;void main() {vec4 c = vec4((texture2D(tex_y, textureOut).r - 16./255.) * 1.164);vec4 U = vec4(texture2D(tex_u, textureOut).r - 128./255.);vec4 V = vec4(texture2D(tex_v, textureOut).r - 128./255.);c += V * vec4(1.596, -0.813, 0, 0);c += U * vec4(0, -0.392, 2.017, 0);c.a = 1.0;gl_FragColor = c;}"


# instance fields
.field public ATTRIB_TEXTURE:I

.field public ATTRIB_VERTEX:I

.field private mOpenGlRender:Lcom/xiaomi/mediaprocess/OpenGlRender;

.field private mProgramId:I

.field public m_textureUniformU:I

.field public m_textureUniformV:I

.field public m_textureUniformY:I

.field public m_textureid_u:I

.field public m_textureid_v:I

.field public m_textureid_y:I

.field textureVertices_buffer:Ljava/nio/ByteBuffer;

.field vertexVertices_buffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->vertexVertices:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->textureVertices:[F

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/xiaomi/mediaprocess/OpenGlRender;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->ATTRIB_VERTEX:I

    iput v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->ATTRIB_TEXTURE:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->vertexVertices_buffer:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->textureVertices_buffer:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mOpenGlRender:Lcom/xiaomi/mediaprocess/OpenGlRender;

    return-void
.end method

.method private InitShaders()V
    .locals 6

    sget-object v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->vertexVertices:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->vertexVertices_buffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->vertexVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/16 v1, 0x8

    new-array v1, v1, [F

    sget-object v2, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->vertexVertices:[F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->vertexVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->vertexVertices_buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->textureVertices:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->textureVertices_buffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->textureVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->textureVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    sget-object v2, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->textureVertices:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->textureVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const-string v0, "attribute vec4 vertexIn;attribute vec2 textureIn;varying vec2 textureOut;void main() {gl_Position = vertexIn;textureOut = textureIn;}"

    const-string v2, "precision mediump float;uniform sampler2D tex_y;uniform sampler2D tex_u;uniform sampler2D tex_v;varying vec2 textureOut;void main() {vec4 c = vec4((texture2D(tex_y, textureOut).r - 16./255.) * 1.164);vec4 U = vec4(texture2D(tex_u, textureOut).r - 128./255.);vec4 V = vec4(texture2D(tex_v, textureOut).r - 128./255.);c += V * vec4(1.596, -0.813, 0, 0);c += U * vec4(0, -0.392, 2.017, 0);c.a = 1.0;gl_FragColor = c;}"

    invoke-direct {p0, v0, v2}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mProgramId:I

    iget v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mProgramId:I

    const-string v2, "vertexIn"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->ATTRIB_VERTEX:I

    iget v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->ATTRIB_VERTEX:I

    const-string v2, "glGetAttribLocation error "

    const-string v3, "MiGLSurfaceViewRender"

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mProgramId:I

    const-string v5, "textureIn"

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->ATTRIB_TEXTURE:I

    iget v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->ATTRIB_TEXTURE:I

    if-ne v0, v4, :cond_1

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mProgramId:I

    const-string v2, "tex_y"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->m_textureUniformY:I

    iget v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mProgramId:I

    const-string v2, "tex_u"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->m_textureUniformU:I

    iget v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mProgramId:I

    const-string v2, "tex_v"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->m_textureUniformV:I

    const/4 v0, 0x1

    new-array v2, v0, [I

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v2, v2, v1

    iput v2, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->m_textureid_y:I

    new-array v2, v0, [I

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v2, v2, v1

    iput v2, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->m_textureid_u:I

    new-array v2, v0, [I

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v2, v1

    iput v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->m_textureid_v:I

    return-void
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const v0, 0x8b31

    invoke-direct {p0, v0, p1}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->loadShader(ILjava/lang/String;)I

    move-result v0

    const v1, 0x8b30

    invoke-direct {p0, v1, p2}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->loadShader(ILjava/lang/String;)I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vertex shader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -- "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiGLSurfaceViewRender"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fragment shader: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "program: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {p1, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p0, 0x1

    new-array v0, p0, [I

    const v1, 0x8b82

    invoke-static {p1, v1, v0, p2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v0, v0, p2

    if-eq v0, p0, :cond_0

    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    move p1, p2

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " end if program: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 2

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "shader: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiGLSurfaceViewRender"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p2, 0x1

    new-array p2, p2, [I

    const v1, 0x8b81

    invoke-static {p0, v1, p2, p1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget p2, p2, p1

    if-nez p2, :cond_0

    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move p0, p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "end shader: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method


# virtual methods
.method public bind(Landroid/graphics/Rect;II)V
    .locals 5

    iget p2, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mProgramId:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    sget p2, Lcom/android/camera/Util;->sWindowHeight:I

    iget p3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p3

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p1

    const/4 p1, 0x0

    invoke-static {p1, p2, v0, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget p1, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->m_textureid_y:I

    const/16 p2, 0xde1

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p1, 0x2800

    const/16 p3, 0x2601

    invoke-static {p2, p1, p3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2801

    invoke-static {p2, v0, p3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2802

    const v2, 0x812f

    invoke-static {p2, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2803

    invoke-static {p2, v3, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    iget v4, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->m_textureid_u:I

    invoke-static {p2, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {p2, p1, p3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {p2, v0, p3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {p2, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {p2, v3, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    iget p0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->m_textureid_v:I

    invoke-static {p2, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {p2, p1, p3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {p2, v0, p3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {p2, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {p2, v3, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    return-void
.end method

.method public init()V
    .locals 12

    const-string v0, "MiGLSurfaceViewRender"

    const-string v1, "init :"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->InitShaders()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceCreated: y "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->m_textureid_y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", u "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->m_textureid_u:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", v "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->m_textureid_v:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Y "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->m_textureUniformY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", U "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->m_textureUniformU:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", V "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->m_textureUniformV:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ATTRIB_VERTEX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->ATTRIB_VERTEX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ATTRIB_TEXTURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->ATTRIB_TEXTURE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", vertexVertices: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->vertexVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", textureVertices "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->textureVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->vertexVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v10, v0, [B

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->vertexVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->textureVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v11, v0, [B

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->textureVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mOpenGlRender:Lcom/xiaomi/mediaprocess/OpenGlRender;

    iget v2, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->m_textureid_y:I

    iget v3, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->m_textureid_u:I

    iget v4, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->m_textureid_v:I

    iget v5, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->m_textureUniformY:I

    iget v6, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->m_textureUniformU:I

    iget v7, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->m_textureUniformV:I

    iget v8, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->ATTRIB_VERTEX:I

    iget v9, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->ATTRIB_TEXTURE:I

    invoke-virtual/range {v1 .. v11}, Lcom/xiaomi/mediaprocess/OpenGlRender;->SetOpengGlRenderParams(IIIIIIII[B[B)V

    return-void
.end method
