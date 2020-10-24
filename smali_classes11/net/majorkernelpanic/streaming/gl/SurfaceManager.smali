.class public Lnet/majorkernelpanic/streaming/gl/SurfaceManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final EGL_RECORDABLE_ANDROID:I = 0x3142

.field public static final TAG:Ljava/lang/String; = "TextureManager"


# instance fields
.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mEGLSharedContext:Landroid/opengl/EGLContext;

.field private mEGLSurface:Landroid/opengl/EGLSurface;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLContext:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLSharedContext:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLSurface:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mSurface:Landroid/view/Surface;

    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->eglSetup()V

    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;Lnet/majorkernelpanic/streaming/gl/SurfaceManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLContext:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLSharedContext:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLSurface:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mSurface:Landroid/view/Surface;

    iget-object p1, p2, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLContext:Landroid/opengl/EGLContext;

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLSharedContext:Landroid/opengl/EGLContext;

    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->eglSetup()V

    return-void
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p0

    const/16 v0, 0x3000

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": EGL error: 0x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private eglSetup()V
    .locals 12

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v2, v3}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLSharedContext:Landroid/opengl/EGLContext;

    if-nez v1, :cond_0

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xb

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    :goto_0
    move-object v5, v1

    new-array v1, v3, [Landroid/opengl/EGLConfig;

    new-array v10, v3, [I

    iget-object v4, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x1

    move-object v7, v1

    invoke-static/range {v4 .. v11}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    const-string v2, "eglCreateContext RGB888+recordable ES2"

    invoke-direct {p0, v2}, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->checkEglError(Ljava/lang/String;)V

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    iget-object v4, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLSharedContext:Landroid/opengl/EGLContext;

    if-nez v4, :cond_1

    iget-object v4, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v5, v1, v0

    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v4, v5, v6, v2, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v6, v1, v0

    invoke-static {v5, v6, v4, v2, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLContext:Landroid/opengl/EGLContext;

    const-string v2, "eglCreateContext"

    invoke-direct {p0, v2}, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->checkEglError(Ljava/lang/String;)V

    new-array v2, v3, [I

    const/16 v3, 0x3038

    aput v3, v2, v0

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v1, v1, v0

    iget-object v4, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mSurface:Landroid/view/Surface;

    invoke-static {v3, v1, v4, v2, v0}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLSurface:Landroid/opengl/EGLSurface;

    const-string v0, "eglCreateWindowSurface"

    invoke-direct {p0, v0}, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->checkEglError(Ljava/lang/String;)V

    const/16 p0, 0xb71

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 p0, 0xb44

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisable(I)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "unable to initialize EGL14"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "unable to get EGL14 display"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3142
        0x1
        0x3038
    .end array-data

    :array_2
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method


# virtual methods
.method public makeCurrent()V
    .locals 2

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, p0}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "eglMakeCurrent failed"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLContext:Landroid/opengl/EGLContext;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    return-void
.end method

.method public setPresentationTime(J)V
    .locals 2

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    const-string p1, "eglPresentationTimeANDROID"

    invoke-direct {p0, p1}, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->checkEglError(Ljava/lang/String;)V

    return-void
.end method

.method public swapBuffer()V
    .locals 1

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/gl/SurfaceManager;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, p0}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    return-void
.end method
