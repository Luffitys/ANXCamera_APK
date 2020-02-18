.class public Lcom/ss/android/medialib/common/SharedContext;
.super Ljava/lang/Object;
.source "SharedContext.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# static fields
.field public static final EGL_RECORDABLE_ANDROID:I = 0x3142

.field public static final LOG_TAG:Ljava/lang/String; = "SharedContext"

.field private static mBitsA:I = 0x8

.field private static mBitsB:I = 0x8

.field private static mBitsG:I = 0x8

.field private static mBitsR:I = 0x8

.field private static mGLVersion:I = 0x3


# instance fields
.field private mConfig:Landroid/opengl/EGLConfig;

.field private mContext:Landroid/opengl/EGLContext;

.field private mDisplay:Landroid/opengl/EGLDisplay;

.field private volatile mInitialized:Z

.field private mSurface:Landroid/opengl/EGLSurface;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/medialib/common/SharedContext;->mInitialized:Z

    return-void
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p0

    const/16 v0, 0x3000

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/ss/android/medialib/common/SharedContext;->LOG_TAG:Ljava/lang/String;

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

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static create()Lcom/ss/android/medialib/common/SharedContext;
    .locals 4

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/16 v1, 0x40

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v1, v2, v3}, Lcom/ss/android/medialib/common/SharedContext;->create(Landroid/opengl/EGLContext;IIILjava/lang/Object;)Lcom/ss/android/medialib/common/SharedContext;

    move-result-object v0

    return-object v0
.end method

.method public static create(II)Lcom/ss/android/medialib/common/SharedContext;
    .locals 3

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p0, p1, v1, v2}, Lcom/ss/android/medialib/common/SharedContext;->create(Landroid/opengl/EGLContext;IIILjava/lang/Object;)Lcom/ss/android/medialib/common/SharedContext;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/opengl/EGLContext;II)Lcom/ss/android/medialib/common/SharedContext;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/ss/android/medialib/common/SharedContext;->create(Landroid/opengl/EGLContext;IIILjava/lang/Object;)Lcom/ss/android/medialib/common/SharedContext;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/opengl/EGLContext;IIILjava/lang/Object;)Lcom/ss/android/medialib/common/SharedContext;
    .locals 7

    new-instance v6, Lcom/ss/android/medialib/common/SharedContext;

    invoke-direct {v6}, Lcom/ss/android/medialib/common/SharedContext;-><init>()V

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/common/SharedContext;->initEGL(Landroid/opengl/EGLContext;IIILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v6}, Lcom/ss/android/medialib/common/SharedContext;->release()V

    const/4 v6, 0x0

    :cond_0
    return-object v6
.end method

.method public static create(Landroid/opengl/EGLContext;ILjava/lang/Object;)Lcom/ss/android/medialib/common/SharedContext;
    .locals 1

    const/16 v0, 0x40

    invoke-static {p0, v0, v0, p1, p2}, Lcom/ss/android/medialib/common/SharedContext;->create(Landroid/opengl/EGLContext;IIILjava/lang/Object;)Lcom/ss/android/medialib/common/SharedContext;

    move-result-object p0

    return-object p0
.end method

.method private initEGL(Landroid/opengl/EGLContext;IIILjava/lang/Object;)Z
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p4

    if-nez p1, :cond_0

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    const/4 v3, 0x3

    new-array v4, v3, [I

    const/16 v5, 0x3098

    const/4 v6, 0x0

    aput v5, v4, v6

    sget v7, Lcom/ss/android/medialib/common/SharedContext;->mGLVersion:I

    const/4 v8, 0x1

    aput v7, v4, v8

    const/16 v7, 0x3038

    const/4 v9, 0x2

    aput v7, v4, v9

    new-array v15, v8, [Landroid/opengl/EGLConfig;

    new-array v10, v9, [I

    const/4 v11, 0x5

    new-array v14, v11, [I

    const/16 v12, 0x3057

    aput v12, v14, v6

    aput p2, v14, v8

    const/16 v12, 0x3056

    aput v12, v14, v9

    aput p3, v14, v3

    const/4 v13, 0x4

    aput v7, v14, v13

    invoke-static {v6}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v12

    iput-object v12, v0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v12, v5, :cond_1

    sget-object v0, Lcom/ss/android/medialib/common/SharedContext;->LOG_TAG:Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "eglGetDisplay() returned error 0x%x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_1
    iget-object v5, v0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v5, v10, v6, v10, v8}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v0, Lcom/ss/android/medialib/common/SharedContext;->LOG_TAG:Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "eglInitialize() returned error 0x%x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_2
    sget v5, Lcom/ss/android/medialib/common/SharedContext;->mGLVersion:I

    if-lt v5, v3, :cond_3

    aget v5, v10, v8

    if-lt v5, v13, :cond_3

    const/16 v5, 0x40

    goto :goto_1

    :cond_3
    move v5, v13

    :goto_1
    const/16 v12, 0xd

    new-array v12, v12, [I

    const/16 v16, 0x3040

    aput v16, v12, v6

    aput v5, v12, v8

    const/16 v5, 0x3024

    aput v5, v12, v9

    const/16 v5, 0x8

    aput v5, v12, v3

    const/16 v16, 0x3023

    aput v16, v12, v13

    aput v5, v12, v11

    const/4 v11, 0x6

    const/16 v16, 0x3022

    aput v16, v12, v11

    const/4 v11, 0x7

    aput v5, v12, v11

    const/16 v11, 0x3021

    aput v11, v12, v5

    const/16 v11, 0x9

    aput v5, v12, v11

    const/16 v5, 0xa

    const/16 v11, 0x3033

    aput v11, v12, v5

    const/16 v5, 0xb

    aput v1, v12, v5

    const/16 v5, 0xc

    aput v7, v12, v5

    const/16 v5, 0x3142

    if-ne v1, v5, :cond_4

    array-length v11, v12

    sub-int/2addr v11, v3

    aput v5, v12, v11

    array-length v3, v12

    sub-int/2addr v3, v9

    aput v8, v12, v3

    :cond_4
    sget-object v3, Lcom/ss/android/medialib/common/SharedContext;->LOG_TAG:Ljava/lang/String;

    new-array v11, v9, [Ljava/lang/Object;

    aget v16, v10, v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v11, v6

    aget v10, v10, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v8

    const-string v10, "eglInitialize - major: %d, minor: %d"

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-array v3, v8, [I

    iget-object v10, v0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    const/16 v16, 0x0

    const/16 v17, 0x0

    array-length v11, v15

    const/16 v18, 0x0

    move/from16 v19, v11

    move-object v11, v12

    move/from16 v12, v16

    move v7, v13

    move-object v13, v15

    move-object/from16 v20, v14

    move/from16 v14, v17

    move-object/from16 v21, v15

    move/from16 v15, v19

    move-object/from16 v16, v3

    move/from16 v17, v18

    invoke-static/range {v10 .. v17}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v10

    if-nez v10, :cond_5

    sget-object v0, Lcom/ss/android/medialib/common/SharedContext;->LOG_TAG:Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "eglChooseConfig() returned error 0x%x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_5
    sget-object v10, Lcom/ss/android/medialib/common/SharedContext;->LOG_TAG:Ljava/lang/String;

    new-array v11, v9, [Ljava/lang/Object;

    aget v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v11, v6

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v2, v3, :cond_6

    const-string v3, "NO"

    goto :goto_2

    :cond_6
    const-string v3, "YES"

    :goto_2
    aput-object v3, v11, v8

    const-string v3, "Config num: %d, has sharedContext: %s"

    invoke-static {v3, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v3, v21, v6

    iput-object v3, v0, Lcom/ss/android/medialib/common/SharedContext;->mConfig:Landroid/opengl/EGLConfig;

    iget-object v3, v0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    iget-object v10, v0, Lcom/ss/android/medialib/common/SharedContext;->mConfig:Landroid/opengl/EGLConfig;

    invoke-static {v3, v10, v2, v4, v6}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v2

    iput-object v2, v0, Lcom/ss/android/medialib/common/SharedContext;->mContext:Landroid/opengl/EGLContext;

    iget-object v2, v0, Lcom/ss/android/medialib/common/SharedContext;->mContext:Landroid/opengl/EGLContext;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v2, v3, :cond_7

    sget-object v0, Lcom/ss/android/medialib/common/SharedContext;->LOG_TAG:Ljava/lang/String;

    const-string v1, "eglCreateContext Failed!"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_7
    if-eq v1, v9, :cond_a

    if-eq v1, v7, :cond_9

    if-eq v1, v5, :cond_8

    iget-object v1, v0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, v0, Lcom/ss/android/medialib/common/SharedContext;->mConfig:Landroid/opengl/EGLConfig;

    move-object/from16 v3, v20

    invoke-static {v1, v2, v3, v6}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v1

    iput-object v1, v0, Lcom/ss/android/medialib/common/SharedContext;->mSurface:Landroid/opengl/EGLSurface;

    goto :goto_4

    :cond_8
    move-object/from16 v3, v20

    const/16 v1, 0x3038

    aput v1, v3, v6

    aput v1, v3, v9

    goto :goto_3

    :cond_9
    move-object/from16 v3, v20

    :goto_3
    iget-object v1, v0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, v0, Lcom/ss/android/medialib/common/SharedContext;->mConfig:Landroid/opengl/EGLConfig;

    move-object/from16 v4, p5

    invoke-static {v1, v2, v4, v3, v6}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v1

    iput-object v1, v0, Lcom/ss/android/medialib/common/SharedContext;->mSurface:Landroid/opengl/EGLSurface;

    goto :goto_4

    :cond_a
    move-object/from16 v3, v20

    iget-object v1, v0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, v0, Lcom/ss/android/medialib/common/SharedContext;->mConfig:Landroid/opengl/EGLConfig;

    invoke-static {v1, v2, v6, v3, v6}, Landroid/opengl/EGL14;->eglCreatePixmapSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Landroid/opengl/EGLSurface;

    move-result-object v1

    iput-object v1, v0, Lcom/ss/android/medialib/common/SharedContext;->mSurface:Landroid/opengl/EGLSurface;

    :goto_4
    iget-object v1, v0, Lcom/ss/android/medialib/common/SharedContext;->mSurface:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v1, v2, :cond_b

    const-string v1, "eglCreateSurface"

    invoke-direct {v0, v1}, Lcom/ss/android/medialib/common/SharedContext;->checkEglError(Ljava/lang/String;)V

    sget-object v0, Lcom/ss/android/medialib/common/SharedContext;->LOG_TAG:Ljava/lang/String;

    const-string v1, "eglCreateSurface Failed!"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_b
    iget-object v2, v0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, v0, Lcom/ss/android/medialib/common/SharedContext;->mContext:Landroid/opengl/EGLContext;

    invoke-static {v2, v1, v1, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v0, Lcom/ss/android/medialib/common/SharedContext;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglMakeCurrent failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_c
    new-array v1, v8, [I

    iget-object v2, v0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, v0, Lcom/ss/android/medialib/common/SharedContext;->mContext:Landroid/opengl/EGLContext;

    const/16 v4, 0x3098

    invoke-static {v2, v3, v4, v1, v6}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    sget-object v2, Lcom/ss/android/medialib/common/SharedContext;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EGLContext created, client version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v1, v6

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v8, v0, Lcom/ss/android/medialib/common/SharedContext;->mInitialized:Z

    return v8
.end method

.method public static setContextColorBits(IIII)V
    .locals 0

    sput p0, Lcom/ss/android/medialib/common/SharedContext;->mBitsR:I

    sput p1, Lcom/ss/android/medialib/common/SharedContext;->mBitsG:I

    sput p2, Lcom/ss/android/medialib/common/SharedContext;->mBitsB:I

    sput p3, Lcom/ss/android/medialib/common/SharedContext;->mBitsA:I

    return-void
.end method

.method public static setGLVersion(I)V
    .locals 0

    sput p0, Lcom/ss/android/medialib/common/SharedContext;->mGLVersion:I

    return-void
.end method


# virtual methods
.method public getClientVersion()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/ss/android/medialib/common/SharedContext;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Not initialized"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    iget-object p0, p0, Lcom/ss/android/medialib/common/SharedContext;->mContext:Landroid/opengl/EGLContext;

    const/16 v2, 0x3098

    const/4 v3, 0x0

    invoke-static {v1, p0, v2, v0, v3}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    sget-object p0, Lcom/ss/android/medialib/common/SharedContext;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EGLContext created, client version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public getConfigAttrib(I)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/ss/android/medialib/common/SharedContext;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/medialib/common/SharedContext;->mConfig:Landroid/opengl/EGLConfig;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    iget-object p0, p0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    aget p0, v1, v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "Not initialized"

    return-object p0
.end method

.method public getContext()Landroid/opengl/EGLContext;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/medialib/common/SharedContext;->mContext:Landroid/opengl/EGLContext;

    return-object p0
.end method

.method public getDisplay()Landroid/opengl/EGLDisplay;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    return-object p0
.end method

.method public getSurface()Landroid/opengl/EGLSurface;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/medialib/common/SharedContext;->mSurface:Landroid/opengl/EGLSurface;

    return-object p0
.end method

.method public isInitialized()Z
    .locals 2

    iget-boolean v0, p0, Lcom/ss/android/medialib/common/SharedContext;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/medialib/common/SharedContext;->mContext:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public makeCurrent()V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/ss/android/medialib/common/SharedContext;->mSurface:Landroid/opengl/EGLSurface;

    iget-object p0, p0, Lcom/ss/android/medialib/common/SharedContext;->mContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, p0}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/ss/android/medialib/common/SharedContext;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglMakeCurrent failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public queryString(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/ss/android/medialib/common/SharedContext;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Not initialized"

    return-object p0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    iget-object p0, p0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {p0, p1}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public release()V
    .locals 3

    sget-object v0, Lcom/ss/android/medialib/common/SharedContext;->LOG_TAG:Ljava/lang/String;

    const-string v1, "#### CGESharedGLContext Destroying context... ####"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    iget-object v0, p0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/ss/android/medialib/common/SharedContext;->mContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    iget-object v0, p0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/ss/android/medialib/common/SharedContext;->mSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    iget-object v0, p0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/ss/android/medialib/common/SharedContext;->mSurface:Landroid/opengl/EGLSurface;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/ss/android/medialib/common/SharedContext;->mContext:Landroid/opengl/EGLContext;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/medialib/common/SharedContext;->mInitialized:Z

    return-void
.end method

.method public swapBuffers()Z
    .locals 1

    iget-object v0, p0, Lcom/ss/android/medialib/common/SharedContext;->mDisplay:Landroid/opengl/EGLDisplay;

    iget-object p0, p0, Lcom/ss/android/medialib/common/SharedContext;->mSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, p0}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result p0

    return p0
.end method
