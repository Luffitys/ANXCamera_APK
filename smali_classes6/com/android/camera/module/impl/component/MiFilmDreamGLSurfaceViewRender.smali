.class public Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "MiFilmDreamGLSurfaceViewRender"

.field private static final cameraFragmentShaderString:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;uniform samplerExternalOES tex_rgb;varying vec2 textureOut;uniform bool isFrontCamera;void main() {vec2 uv = textureOut;if(isFrontCamera) { uv.y = 1.0 - textureOut.y;}gl_FragColor = texture2D(tex_rgb, uv);}"

.field private static final dispalyFragmentShaderString:Ljava/lang/String; = "precision mediump float;uniform sampler2D tex_rgb;varying vec2 textureOut;void main() {vec4 res = texture2D(tex_rgb, textureOut);gl_FragColor = vec4(res.rgb, 1.0);}"

.field private static final previewShaderString:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_rgb;uniform sampler2D  filter_rgb;\nuniform bool extraVideoFilter;\nvarying vec2 textureOut;\nuniform bool isFrontCamera;uniform int rotate_angle;uniform bool enable_film_picture;vec4 InceptionTransition(vec2 uv) { \n    if(enable_film_picture) { \n        float half_y = (1.0 - 1920.0 /2.39 /1080.0)/2.0; \n        if(uv.y < half_y || uv.y > (1.0 - half_y)) { \n            return vec4(0.0,0.0,0.0,1.0); \n        } \n    } \n    if(rotate_angle == 0 || rotate_angle == 90 || rotate_angle == 270 || rotate_angle == 180) { \n        if(isFrontCamera) { \n            if(uv.y > 0.5) { \n                uv.y = 1.0 - uv.y; \n            } \n        } else { \n            if(uv.y < 0.5) { \n                uv.y = 1.0 - uv.y; \n            } \n        } \n    } else { \n        if(isFrontCamera) { \n            if(uv.y < 0.5) { \n                uv.y =  1.0 - uv.y; \n            } \n        } else { \n            if(uv.y > 0.5) { \n                uv.y =  1.0 - uv.y; \n            } \n        }  \n    } \n    vec4 res = texture2D(tex_rgb, uv); \n    if (extraVideoFilter) { \n        float quadx, quady, x, y; \n        float bi = floor(res.b * 63.0); \n        float mixratio = res.b * 63.0 - floor(res.b * 63.0); \n        quady = floor(bi / 8.0); \n        quadx = bi - quady * 8.0; \n        x = quadx * 64.0 + clamp(res.r * 63.0, 1.0, 63.0); \n        y = quady * 64.0 + clamp(res.g * 63.0, 1.0, 63.0); \n        vec2 poss1 = vec2(x / 512.0, y / 512.0); \n        bi = bi + 1.0; \n        quady = floor(bi / 8.0); \n        quadx = bi - quady * 8.0; \n        x = quadx * 64.0 + clamp(res.r * 63.0, 1.0, 63.0); \n        y = quady * 64.0 + clamp(res.g * 63.0, 1.0, 63.0); \n        vec2 poss2 = vec2(x / 512.0, y / 512.0); \n        vec4 color1 = texture2D(filter_rgb, poss1); \n        vec4 color2 = texture2D(filter_rgb, poss2); \n        res = mix(color1, color2, mixratio); \n    } \n    return res; \n} \nvoid main() {\n    vec2 uv = vec2(textureOut.x, textureOut.y);\n gl_FragColor = InceptionTransition(uv);\n}"

.field private static textureVertices:[F = null

.field private static final vertexShaderString:Ljava/lang/String; = "attribute vec4 vertexIn;attribute vec2 textureIn;varying vec2 textureOut;uniform mat4 modelViewProjectionMatrix;void main() {gl_Position = modelViewProjectionMatrix*vertexIn ;textureOut = (vec4(textureIn.x ,  textureIn.y , 0.0, 1.0)).xy;}"

.field private static vertexVertices:[F


# instance fields
.field public ATTRIB_TEXTURE:I

.field public ATTRIB_TEXTURE2:I

.field public ATTRIB_VERTEX:I

.field public ATTRIB_VERTEX2:I

.field RGBColor:Ljava/nio/ByteBuffer;

.field private final TABLESIZE:I

.field private backcamera:I

.field private camera_texture_id:[I

.field private currentCamera:Z

.field private enable_film_picture:Z

.field private enable_film_picture_id:I

.field private extraVideoFilter:I

.field private fbobackcamera:I

.field private filter_rgb:I

.field private isFrontCamera:Z

.field private mFbo:I

.field private mFboTexture:[I

.field private mFragshaderRgb:I

.field private mFramebufferTexture:I

.field private mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mNeedDrawFrame:Z

.field private mOpenGlRender:Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;

.field private mProgramID:I

.field private mProgramID2:I

.field private mRgbTexture:[I

.field private mTargetSurface:Landroid/opengl/GLSurfaceView;

.field private final mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private mWindowHeight:I

.field private mWindowWidth:I

.field private mcamera_fragshader_texture:I

.field private mcamera_texture:I

.field private mmodelMatrix:I

.field private mmodelMatrixPreviewFilter:I

.field private mpreviewFilterProgramID:I

.field private mrotate_angle:I

.field private mtransformMatrix:[F

.field private rotate_angle_id:I

.field textureVertices_buffer:Ljava/nio/ByteBuffer;

.field vertexVertices_buffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->vertexVertices:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->textureVertices:[F

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

.method public constructor <init>(Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->ATTRIB_VERTEX:I

    iput v0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->ATTRIB_TEXTURE:I

    iput v0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->ATTRIB_VERTEX2:I

    iput v0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->ATTRIB_TEXTURE2:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->vertexVertices_buffer:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->textureVertices_buffer:Ljava/nio/ByteBuffer;

    const/16 v2, 0x10

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mtransformMatrix:[F

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->isFrontCamera:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->currentCamera:Z

    iput-object v1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->RGBColor:Ljava/nio/ByteBuffer;

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mNeedDrawFrame:Z

    const/16 v1, 0x200

    iput v1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->TABLESIZE:I

    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mRgbTexture:[I

    iput v0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mrotate_angle:I

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->enable_film_picture:Z

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->camera_texture_id:[I

    new-instance v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender$1;-><init>(Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;)V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mOpenGlRender:Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;

    return-void
.end method

.method private TransferExternalImagetoFbo()V
    .locals 9

    const/4 v0, 0x0

    const/16 v1, 0xf00

    const/16 v2, 0x870

    invoke-static {v0, v0, v1, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget v1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mFbo:I

    const v2, 0x8d40

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget v1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mProgramID:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mcamera_texture:I

    const v3, 0x8d65

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    iget v1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mcamera_fragshader_texture:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    iget v1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->fbobackcamera:I

    iget-boolean v3, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->isFrontCamera:Z

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mtransformMatrix:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-boolean v1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->isFrontCamera:Z

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mtransformMatrix:[F

    const/4 v4, 0x0

    const/high16 v5, 0x43340000    # 180.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :cond_0
    iget v1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mmodelMatrix:I

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mtransformMatrix:[F

    invoke-static {v1, v3, v0, v4, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    iget v1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->ATTRIB_VERTEX:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    iget v3, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->ATTRIB_VERTEX:I

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->vertexVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    iget v1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->ATTRIB_TEXTURE:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    iget v3, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->ATTRIB_TEXTURE:I

    iget-object v8, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->textureVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    const/4 v1, 0x5

    const/4 v3, 0x4

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    iget v1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->ATTRIB_VERTEX:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget p0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->ATTRIB_TEXTURE:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    return-void
.end method

.method private static abortUnless(ZLjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;)Landroid/opengl/GLSurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mTargetSurface:Landroid/opengl/GLSurfaceView;

    return-object p0
.end method

.method private static checkNoGLES2Error()V
    .locals 4

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLES20 error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiFilmDreamGLSurfaceViewRender"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLES20 error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->abortUnless(ZLjava/lang/String;)V

    return-void
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

    const-string v0, "MiFilmDreamGLSurfaceViewRender"

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
.method public DrawCameraPreview(IIII)V
    .locals 9

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->TransferExternalImagetoFbo()V

    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget p1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mpreviewFilterProgramID:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const p1, 0x84c0

    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget p1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mcamera_texture:I

    const p2, 0x8d65

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    const p1, 0x84c1

    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mRgbTexture:[I

    const/4 p2, 0x0

    aget p1, p1, p2

    const/16 p3, 0xde1

    invoke-static {p3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p1, 0x2800

    const/16 p4, 0x2601

    invoke-static {p3, p1, p4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2801

    invoke-static {p3, p1, p4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2802

    const p4, 0x812f

    invoke-static {p3, p1, p4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2803

    invoke-static {p3, p1, p4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    iget p1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->filter_rgb:I

    const/4 p3, 0x1

    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v8, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->RGBColor:Ljava/nio/ByteBuffer;

    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v2, 0x1908

    const/16 v3, 0x200

    const/16 v4, 0x200

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    iget p1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->extraVideoFilter:I

    iget-object p4, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->RGBColor:Ljava/nio/ByteBuffer;

    if-eqz p4, :cond_0

    move p4, p3

    goto :goto_0

    :cond_0
    move p4, p2

    :goto_0
    invoke-static {p1, p4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    iget p1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->rotate_angle_id:I

    iget p4, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mrotate_angle:I

    invoke-static {p1, p4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    iget p1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->enable_film_picture_id:I

    iget-boolean p4, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->enable_film_picture:Z

    if-ne p4, p3, :cond_1

    move p4, p3

    goto :goto_1

    :cond_1
    move p4, p2

    :goto_1
    invoke-static {p1, p4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget p1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mpreviewFilterProgramID:I

    const-string p4, "tex_rgb"

    invoke-static {p1, p4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    iget-boolean p1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->currentCamera:Z

    iget-boolean p4, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->isFrontCamera:Z

    if-eq p1, p4, :cond_2

    iput-boolean p4, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->currentCamera:Z

    goto :goto_3

    :cond_2
    iget p1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->backcamera:I

    invoke-static {p1, p4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    iget-boolean p1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->isFrontCamera:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mtransformMatrix:[F

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mtransformMatrix:[F

    const/4 v1, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget p1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mmodelMatrix:I

    iget-object p4, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mtransformMatrix:[F

    invoke-static {p1, p3, p2, p4, p2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mtransformMatrix:[F

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mtransformMatrix:[F

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget p1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mmodelMatrix:I

    iget-object p4, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mtransformMatrix:[F

    invoke-static {p1, p3, p2, p4, p2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    :goto_2
    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    :goto_3
    iget p1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mpreviewFilterProgramID:I

    const-string p3, "vertexIn"

    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->vertexVertices_buffer:Ljava/nio/ByteBuffer;

    move v0, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    iget p3, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mpreviewFilterProgramID:I

    const-string p4, "textureIn"

    invoke-static {p3, p4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p3

    invoke-static {p3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    iget-object v5, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->textureVertices_buffer:Ljava/nio/ByteBuffer;

    move v0, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    const/4 p0, 0x5

    const/4 p4, 0x4

    invoke-static {p0, p2, p4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {p3}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    return-void
.end method

.method public EnableFilmPicture(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->enable_film_picture:Z

    return-void
.end method

.method InitShaders()V
    .locals 25

    move-object/from16 v0, p0

    sget-object v1, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->vertexVertices:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->vertexVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->vertexVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    sget-object v2, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->vertexVertices:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v1, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->vertexVertices_buffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v1, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->textureVertices:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->textureVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->textureVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    sget-object v3, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->textureVertices:[F

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v1, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->textureVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const-string v1, "attribute vec4 vertexIn;attribute vec2 textureIn;varying vec2 textureOut;uniform mat4 modelViewProjectionMatrix;void main() {gl_Position = modelViewProjectionMatrix*vertexIn ;textureOut = (vec4(textureIn.x ,  textureIn.y , 0.0, 1.0)).xy;}"

    const-string v3, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;uniform samplerExternalOES tex_rgb;varying vec2 textureOut;uniform bool isFrontCamera;void main() {vec2 uv = textureOut;if(isFrontCamera) { uv.y = 1.0 - textureOut.y;}gl_FragColor = texture2D(tex_rgb, uv);}"

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mProgramID:I

    const-string v4, "vertexIn"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->ATTRIB_VERTEX:I

    const-string v5, "glGetAttribLocation error "

    const/4 v6, -0x1

    const-string v7, "MiFilmDreamGLSurfaceViewRender"

    if-ne v3, v6, :cond_0

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v3, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mProgramID:I

    const-string v8, "textureIn"

    invoke-static {v3, v8}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->ATTRIB_TEXTURE:I

    if-ne v3, v6, :cond_1

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v3, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mProgramID:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v3, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mProgramID:I

    const-string v5, "tex_rgb"

    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mcamera_fragshader_texture:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "glGetAttribLocation mcamera_fragshader_texture: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mcamera_fragshader_texture:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mProgramID:I

    const-string v6, "modelViewProjectionMatrix"

    invoke-static {v3, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mmodelMatrix:I

    iget v3, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mProgramID:I

    const-string v9, "isFrontCamera"

    invoke-static {v3, v9}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->fbobackcamera:I

    const/4 v3, 0x1

    new-array v10, v3, [I

    invoke-static {v3, v10, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v10, v10, v2

    iput v10, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mcamera_texture:I

    const v11, 0x8d65

    invoke-static {v11, v10}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v10, 0x2800

    const/16 v12, 0x2601

    invoke-static {v11, v10, v12}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v13, 0x2801

    invoke-static {v11, v13, v12}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v14, 0x2802

    const v15, 0x812f

    invoke-static {v11, v14, v15}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v12, 0x2803

    invoke-static {v11, v12, v15}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "glGetAttribLocation mcamera_texture: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mcamera_texture:I

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "precision mediump float;uniform sampler2D tex_rgb;varying vec2 textureOut;void main() {vec4 res = texture2D(tex_rgb, textureOut);gl_FragColor = vec4(res.rgb, 1.0);}"

    invoke-virtual {v0, v1, v11}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    iput v11, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mProgramID2:I

    invoke-static {v11, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->ATTRIB_VERTEX2:I

    if-gez v4, :cond_2

    const-string v4, "programID_2 glGet vertex Location error "

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v4, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mProgramID2:I

    invoke-static {v4, v8}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->ATTRIB_TEXTURE2:I

    if-gez v4, :cond_3

    const-string v4, "programID_2 glGet texture bLocation error "

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v4, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mProgramID2:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    iget v4, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mProgramID2:I

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mFragshaderRgb:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "programID_2 param ATTRIB_VERTEX2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->ATTRIB_VERTEX2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ATTRIB_TEXTURE2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->ATTRIB_TEXTURE2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " textuer2d samp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mFragshaderRgb:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v4, v3, [I

    iput-object v4, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mFboTexture:[I

    invoke-static {v3, v4, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    iget-object v4, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mFboTexture:[I

    aget v4, v4, v2

    iput v4, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mFbo:I

    const v5, 0x8d40

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    iget-object v4, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mFboTexture:[I

    invoke-static {v3, v4, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    iget-object v4, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mFboTexture:[I

    aget v4, v4, v2

    iput v4, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mFramebufferTexture:I

    const/16 v8, 0xde1

    invoke-static {v8, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    const/16 v16, 0xde1

    const/16 v17, 0x0

    const/16 v18, 0x1908

    const/16 v19, 0xf00

    const/16 v20, 0x870

    const/16 v21, 0x0

    const/16 v22, 0x1908

    const/16 v23, 0x1401

    const/16 v24, 0x0

    invoke-static/range {v16 .. v24}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    const v4, 0x46180400    # 9729.0f

    invoke-static {v8, v10, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    invoke-static {v8, v13, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    const v4, 0x47012f00    # 33071.0f

    invoke-static {v8, v14, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    invoke-static {v8, v12, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    const v4, 0x8ce0

    iget v11, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mFramebufferTexture:I

    invoke-static {v5, v4, v8, v11, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    const/4 v4, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v15, 0x3f000000    # 0.5f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v4, v11, v15, v12}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    invoke-static {v8, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fbo id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mFbo:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mFramebufferTexture:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mFramebufferTexture:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_rgb;uniform sampler2D  filter_rgb;\nuniform bool extraVideoFilter;\nvarying vec2 textureOut;\nuniform bool isFrontCamera;uniform int rotate_angle;uniform bool enable_film_picture;vec4 InceptionTransition(vec2 uv) { \n    if(enable_film_picture) { \n        float half_y = (1.0 - 1920.0 /2.39 /1080.0)/2.0; \n        if(uv.y < half_y || uv.y > (1.0 - half_y)) { \n            return vec4(0.0,0.0,0.0,1.0); \n        } \n    } \n    if(rotate_angle == 0 || rotate_angle == 90 || rotate_angle == 270 || rotate_angle == 180) { \n        if(isFrontCamera) { \n            if(uv.y > 0.5) { \n                uv.y = 1.0 - uv.y; \n            } \n        } else { \n            if(uv.y < 0.5) { \n                uv.y = 1.0 - uv.y; \n            } \n        } \n    } else { \n        if(isFrontCamera) { \n            if(uv.y < 0.5) { \n                uv.y =  1.0 - uv.y; \n            } \n        } else { \n            if(uv.y > 0.5) { \n                uv.y =  1.0 - uv.y; \n            } \n        }  \n    } \n    vec4 res = texture2D(tex_rgb, uv); \n    if (extraVideoFilter) { \n        float quadx, quady, x, y; \n        float bi = floor(res.b * 63.0); \n        float mixratio = res.b * 63.0 - floor(res.b * 63.0); \n        quady = floor(bi / 8.0); \n        quadx = bi - quady * 8.0; \n        x = quadx * 64.0 + clamp(res.r * 63.0, 1.0, 63.0); \n        y = quady * 64.0 + clamp(res.g * 63.0, 1.0, 63.0); \n        vec2 poss1 = vec2(x / 512.0, y / 512.0); \n        bi = bi + 1.0; \n        quady = floor(bi / 8.0); \n        quadx = bi - quady * 8.0; \n        x = quadx * 64.0 + clamp(res.r * 63.0, 1.0, 63.0); \n        y = quady * 64.0 + clamp(res.g * 63.0, 1.0, 63.0); \n        vec2 poss2 = vec2(x / 512.0, y / 512.0); \n        vec4 color1 = texture2D(filter_rgb, poss1); \n        vec4 color2 = texture2D(filter_rgb, poss2); \n        res = mix(color1, color2, mixratio); \n    } \n    return res; \n} \nvoid main() {\n    vec2 uv = vec2(textureOut.x, textureOut.y);\n gl_FragColor = InceptionTransition(uv);\n}"

    invoke-virtual {v0, v1, v4}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mpreviewFilterProgramID:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v1, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mpreviewFilterProgramID:I

    const-string v4, "filter_rgb"

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->filter_rgb:I

    iget v1, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mpreviewFilterProgramID:I

    const-string v4, "extraVideoFilter"

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->extraVideoFilter:I

    iget v1, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mpreviewFilterProgramID:I

    invoke-static {v1, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mmodelMatrixPreviewFilter:I

    iget v1, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mpreviewFilterProgramID:I

    invoke-static {v1, v9}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->backcamera:I

    iget v1, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mpreviewFilterProgramID:I

    const-string v4, "enable_film_picture"

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->enable_film_picture_id:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "glGetAttribLocation filter rgb id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->filter_rgb:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " extraVideoFilter id:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->extraVideoFilter:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mRgbTexture:[I

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generate texture rgb id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mRgbTexture:[I

    aget v4, v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x84c1

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v1, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mRgbTexture:[I

    aget v1, v1, v2

    invoke-static {v8, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2601

    invoke-static {v8, v10, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {v8, v13, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const v1, 0x812f

    invoke-static {v8, v14, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v4, 0x2803

    invoke-static {v8, v4, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    iget v1, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->filter_rgb:I

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x200

    const/16 v8, 0x200

    const/4 v9, 0x0

    const/16 v10, 0x1908

    const/16 v11, 0x1401

    iget-object v12, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->RGBColor:Ljava/nio/ByteBuffer;

    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    iget v1, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->extraVideoFilter:I

    iget-object v4, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->RGBColor:Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    move v3, v2

    :goto_0
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    iget v1, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mpreviewFilterProgramID:I

    const-string v3, "rotate_angle"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->rotate_angle_id:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-static {}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->checkNoGLES2Error()V

    return-void
.end method

.method public SetColorFilter(Ljava/lang/String;)V
    .locals 10

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x200

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v2, "MiFilmDreamGLSurfaceViewRender"

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Construct SetColorFilter path error: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/high16 v3, 0x40000

    new-array v3, v3, [I

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v1, :cond_3

    move v6, v4

    :goto_2
    if-ge v6, v1, :cond_2

    invoke-virtual {v0, v6, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    goto :goto_3

    :cond_1
    const/16 v8, 0xff

    :goto_3
    mul-int/lit16 v8, v8, 0x100

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    add-int/2addr v8, v9

    mul-int/lit16 v8, v8, 0x100

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v9

    add-int/2addr v8, v9

    mul-int/lit16 v8, v8, 0x100

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v7

    add-int/2addr v8, v7

    mul-int/lit16 v7, v5, 0x200

    add-int/2addr v7, v6

    aput v8, v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/high16 v0, 0x800000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->RGBColor:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->RGBColor:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->RGBColor:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Construct SetColorFilter path :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "RGBColor:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->RGBColor:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public SetFrontCamera(Z)V
    .locals 0

    return-void
.end method

.method public SetRotateAngle(I)V
    .locals 1

    iput p1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mrotate_angle:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mrotate_angle"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mrotate_angle:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiFilmDreamGLSurfaceViewRender"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bind(Landroid/graphics/Rect;II)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->TransferExternalImagetoFbo()V

    return-void
.end method

.method public createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const v0, 0x8b31

    invoke-direct {p0, v0, p1}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->loadShader(ILjava/lang/String;)I

    move-result v0

    const v1, 0x8b30

    invoke-direct {p0, v1, p2}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->loadShader(ILjava/lang/String;)I

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

    const-string v2, "MiFilmDreamGLSurfaceViewRender"

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

    const/4 p2, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    move v3, p2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const-string v4, "Create OpenGL program failed."

    invoke-static {v3, v4}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->abortUnless(ZLjava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "program: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {p1, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array p0, p2, [I

    const v0, 0x8b82

    invoke-static {p1, v0, p0, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget p0, p0, v1

    if-eq p0, p2, :cond_1

    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    move p1, v1

    :cond_1
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

.method public init(Landroid/graphics/SurfaceTexture;)V
    .locals 9

    const-string v0, "MiFilmDreamGLSurfaceViewRender"

    const-string v1, "init :"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->InitShaders()V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->vertexVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v7, v0, [B

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->vertexVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->vertexVertices_buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->textureVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v8, v0, [B

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->textureVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->textureVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mOpenGlRender:Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;

    iget v2, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mProgramID2:I

    iget v3, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mFramebufferTexture:I

    iget v4, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mFragshaderRgb:I

    iget v5, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->ATTRIB_VERTEX2:I

    iget v6, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->ATTRIB_TEXTURE2:I

    invoke-virtual/range {v1 .. v8}, Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;->SetOpengGlRenderParams(IIIII[B[B)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mOpenGlRender:Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;

    iget v1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mFramebufferTexture:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;->SetCurrentGLContext(I)V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget p0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mcamera_texture:I

    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    return-void
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->camera_texture_id:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mRgbTexture:[I

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mRgbTexture:[I

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mFboTexture:[I

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iget v0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mProgramID:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    iget v0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mProgramID2:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    iget p0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mpreviewFilterProgramID:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return-void
.end method

.method public updateTexImage()V
    .locals 8

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mtransformMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mtransformMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->mtransformMatrix:[F

    const/4 v3, 0x0

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    return-void
.end method
