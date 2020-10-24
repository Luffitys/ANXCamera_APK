.class public Lcom/arcsoft/avatar2/RecordModule;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String; = "RecordModule"

.field private static final ae:I = 0x32

.field private static final ag:Ljava/lang/String; = "arcsoft_enable_log"

.field private static final ah:Ljava/lang/String; = "arcsoft_performance"

.field private static final ai:Ljava/lang/String; = "arcsoft_version"

.field private static final al:Ljava/lang/String; = "Arcsoft_AvatarJar_V.2.0.0.12"

.field private static final b:I = 0x1

.field private static final c:I = 0x7d000


# instance fields
.field private A:Z

.field private B:Z

.field private C:I

.field private D:J

.field private final E:I

.field private F:J

.field private G:J

.field private H:Lcom/arcsoft/avatar2/AvatarEngine;

.field private I:Lcom/arcsoft/avatar2/recoder/MediaManager;

.field private volatile J:Z

.field private volatile K:Z

.field private L:Z

.field private M:Lcom/arcsoft/avatar2/recoder/RecordingListener;

.field private N:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

.field private O:Lcom/arcsoft/avatar2/RecordModule$MediaResultCallback;

.field private P:Z

.field private Q:[Z

.field private R:I

.field private S:Ljava/lang/Boolean;

.field private T:Landroid/graphics/Bitmap;

.field private U:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

.field private V:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

.field private volatile W:Z

.field private volatile X:Z

.field private volatile Y:Z

.field private volatile Z:Z

.field private aa:I

.field private ab:I

.field private ac:I

.field private ad:J

.field private af:Z

.field private aj:Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;

.field private volatile ak:Z

.field private am:[F

.field private d:Landroid/content/Context;

.field private e:Ljava/util/concurrent/locks/Lock;

.field private f:Ljava/util/concurrent/locks/Lock;

.field private g:Ljava/util/concurrent/locks/Lock;

.field private volatile h:Z

.field private volatile i:Z

.field private volatile j:Z

.field private volatile k:Z

.field private l:Z

.field private m:Landroid/opengl/EGLDisplay;

.field private n:Landroid/opengl/EGLContext;

.field private o:Landroid/opengl/EGLSurface;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Ljava/util/Queue;

.field private w:Lcom/arcsoft/avatar2/gl/GLRenderEngine;

.field private x:Lcom/arcsoft/avatar2/gl/GLRenderEngine;

.field private y:Lcom/arcsoft/avatar2/gl/GLFramebuffer;

.field private z:Lcom/arcsoft/avatar2/gl/TextureHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/arcsoft/avatar2/RecordModule$MediaResultCallback;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->f:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->g:Ljava/util/concurrent/locks/Lock;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->h:Z

    iput-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->i:Z

    iput-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->j:Z

    iput-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->k:Z

    const/16 v1, 0x10e

    iput v1, p0, Lcom/arcsoft/avatar2/RecordModule;->C:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/arcsoft/avatar2/RecordModule;->D:J

    const v3, 0xf4240

    iput v3, p0, Lcom/arcsoft/avatar2/RecordModule;->E:I

    iput-wide v1, p0, Lcom/arcsoft/avatar2/RecordModule;->F:J

    iput-wide v1, p0, Lcom/arcsoft/avatar2/RecordModule;->G:J

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/arcsoft/avatar2/RecordModule;->M:Lcom/arcsoft/avatar2/recoder/RecordingListener;

    iput-object v3, p0, Lcom/arcsoft/avatar2/RecordModule;->N:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    iput-object v3, p0, Lcom/arcsoft/avatar2/RecordModule;->O:Lcom/arcsoft/avatar2/RecordModule$MediaResultCallback;

    iput-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->P:Z

    const/4 v4, 0x3

    new-array v4, v4, [Z

    iput-object v4, p0, Lcom/arcsoft/avatar2/RecordModule;->Q:[Z

    iput v0, p0, Lcom/arcsoft/avatar2/RecordModule;->R:I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/arcsoft/avatar2/RecordModule;->W:Z

    iput-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->X:Z

    iput-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->Y:Z

    iput-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->Z:Z

    iput v0, p0, Lcom/arcsoft/avatar2/RecordModule;->aa:I

    iput v0, p0, Lcom/arcsoft/avatar2/RecordModule;->ab:I

    iput v0, p0, Lcom/arcsoft/avatar2/RecordModule;->ac:I

    iput-wide v1, p0, Lcom/arcsoft/avatar2/RecordModule;->ad:J

    iput-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->af:Z

    iput-object v3, p0, Lcom/arcsoft/avatar2/RecordModule;->aj:Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;

    iput-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->ak:Z

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->am:[F

    iput-object p1, p0, Lcom/arcsoft/avatar2/RecordModule;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/arcsoft/avatar2/RecordModule;->O:Lcom/arcsoft/avatar2/RecordModule$MediaResultCallback;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(J)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-gtz p0, :cond_0

    return-wide v0

    :cond_0
    const-wide/32 v2, 0x7d000

    sub-long/2addr p1, v2

    cmp-long p0, p1, v0

    if-gtz p0, :cond_1

    const-wide/16 p1, 0x1

    :cond_1
    return-wide p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-class p0, Ljava/lang/String;

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v5, 0x1

    aput-object p0, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, p0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p2
.end method

.method private a()V
    .locals 11

    iget-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->I:Lcom/arcsoft/avatar2/recoder/MediaManager;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/recoder/MediaManager;->getMuxerTimeElapsed()J

    move-result-wide v0

    iget-object v2, p0, Lcom/arcsoft/avatar2/RecordModule;->I:Lcom/arcsoft/avatar2/recoder/MediaManager;

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/recoder/MediaManager;->getMuxerSizeRecorded()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/arcsoft/avatar2/RecordModule;->D:J

    invoke-direct {p0, v4, v5}, Lcom/arcsoft/avatar2/RecordModule;->a(J)J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long v6, v0, v6

    iget-wide v8, p0, Lcom/arcsoft/avatar2/RecordModule;->F:J

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    iput-wide v6, p0, Lcom/arcsoft/avatar2/RecordModule;->F:J

    iget-object v6, p0, Lcom/arcsoft/avatar2/RecordModule;->M:Lcom/arcsoft/avatar2/recoder/RecordingListener;

    if-eqz v6, :cond_0

    const/16 v7, 0x102

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/arcsoft/avatar2/recoder/RecordingListener;->onRecordingListener(ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/arcsoft/avatar2/RecordModule;->M:Lcom/arcsoft/avatar2/recoder/RecordingListener;

    const/16 v7, 0x104

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/arcsoft/avatar2/recoder/RecordingListener;->onRecordingListener(ILjava/lang/Object;)V

    :cond_0
    iget-wide v6, p0, Lcom/arcsoft/avatar2/RecordModule;->G:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_1

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    invoke-virtual {p0}, Lcom/arcsoft/avatar2/RecordModule;->stopRecording()Z

    iget-object v6, p0, Lcom/arcsoft/avatar2/RecordModule;->M:Lcom/arcsoft/avatar2/recoder/RecordingListener;

    if-eqz v6, :cond_1

    const/16 v7, 0x101

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v7, v0}, Lcom/arcsoft/avatar2/recoder/RecordingListener;->onRecordingListener(ILjava/lang/Object;)V

    :cond_1
    cmp-long v0, v4, v8

    if-lez v0, :cond_2

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/arcsoft/avatar2/RecordModule;->stopRecording()Z

    iget-object p0, p0, Lcom/arcsoft/avatar2/RecordModule;->M:Lcom/arcsoft/avatar2/recoder/RecordingListener;

    if-eqz p0, :cond_2

    const/16 v0, 0x103

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/arcsoft/avatar2/recoder/RecordingListener;->onRecordingListener(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private a(I)V
    .locals 1

    if-gtz p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "recordingIfNeed textureId = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecordModule"

    invoke-static {p1, p0}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->J:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->I:Lcom/arcsoft/avatar2/recoder/MediaManager;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->L:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->af:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/arcsoft/avatar2/RecordModule;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->I:Lcom/arcsoft/avatar2/recoder/MediaManager;

    invoke-virtual {v0, p1}, Lcom/arcsoft/avatar2/recoder/MediaManager;->drawSurfaceWithTextureId(I)V

    invoke-direct {p0}, Lcom/arcsoft/avatar2/RecordModule;->a()V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(IIIIZ)V
    .locals 7

    iget-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->K:Z

    if-eqz v0, :cond_1

    if-eqz p5, :cond_1

    if-eq p2, p3, :cond_0

    if-ne p2, p4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean p2, p0, Lcom/arcsoft/avatar2/RecordModule;->K:Z

    if-eqz p2, :cond_2

    if-lez p1, :cond_2

    iget p1, p0, Lcom/arcsoft/avatar2/RecordModule;->r:I

    iget p2, p0, Lcom/arcsoft/avatar2/RecordModule;->s:I

    mul-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/arcsoft/avatar2/RecordModule;->t:I

    iget v1, p0, Lcom/arcsoft/avatar2/RecordModule;->u:I

    iget v2, p0, Lcom/arcsoft/avatar2/RecordModule;->r:I

    iget v3, p0, Lcom/arcsoft/avatar2/RecordModule;->s:I

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/arcsoft/avatar2/RecordModule;->K:Z

    iget-object p0, p0, Lcom/arcsoft/avatar2/RecordModule;->O:Lcom/arcsoft/avatar2/RecordModule$MediaResultCallback;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcom/arcsoft/avatar2/RecordModule$MediaResultCallback;->onCaptureResult(Ljava/nio/ByteBuffer;)V

    :cond_2
    return-void
.end method

.method private a(Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;)V
    .locals 2

    iget-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->v:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const-string v0, "CKK"

    const-string v1, "mPreviewQueue.poll()"

    invoke-static {v0, v1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->v:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/arcsoft/avatar2/RecordModule;->v:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ClassCastException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private a(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/arcsoft/avatar2/RecordModule;->t:I

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/arcsoft/avatar2/RecordModule;->u:I

    :cond_1
    iget p1, p0, Lcom/arcsoft/avatar2/RecordModule;->r:I

    iget p0, p0, Lcom/arcsoft/avatar2/RecordModule;->s:I

    invoke-static {v1, v0, p1, p0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method private a([BIIIIII)[B
    .locals 6

    const-string p0, "cropNV21"

    invoke-static {p0}, Lcom/arcsoft/avatar2/util/TimeConsumingUtil;->startTheTimer(Ljava/lang/String;)V

    if-gt p4, p2, :cond_3

    if-le p5, p3, :cond_0

    goto :goto_1

    :cond_0
    div-int/lit8 p4, p4, 0x2

    mul-int/lit8 p4, p4, 0x2

    div-int/lit8 p5, p5, 0x2

    mul-int/lit8 p5, p5, 0x2

    div-int/lit8 p6, p6, 0x2

    mul-int/lit8 p6, p6, 0x2

    div-int/lit8 p7, p7, 0x2

    mul-int/lit8 p7, p7, 0x2

    mul-int v0, p6, p7

    mul-int/lit8 v1, v0, 0x3

    shr-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    div-int/lit8 v2, p5, 0x2

    mul-int/2addr v2, p6

    sub-int/2addr v0, v2

    mul-int/2addr p3, p2

    add-int/2addr p3, p4

    mul-int v2, p5, p2

    const/4 v3, 0x0

    move v4, p5

    :goto_0
    add-int v5, p5, p7

    if-ge v4, v5, :cond_2

    add-int v5, v2, p4

    invoke-static {p1, v5, v1, v3, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, p2

    add-int/2addr v3, p6

    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_1

    invoke-static {p1, p3, v1, v0, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p3, p2

    add-int/2addr v0, p6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "performance"

    invoke-static {p1, p0}, Lcom/arcsoft/avatar2/util/TimeConsumingUtil;->stopTiming(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private b(Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;)V
    .locals 10

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getPixelFormat()I

    move-result v0

    const/16 v1, 0x802

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getHeight()I

    move-result v8

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getRowStride()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v1, v2

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getYData()[B

    move-result-object v2

    sub-int/2addr v0, v8

    div-int/lit8 v5, v0, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    move v4, v8

    move v7, v8

    invoke-direct/range {v1 .. v8}, Lcom/arcsoft/avatar2/RecordModule;->a([BIIIIII)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->setYData([B)V

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getHeight()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->setWidth(I)V

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getHeight()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->setRowStride(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getPixelFormat()I

    move-result v0

    const/16 v1, 0x305

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getRGBA8888()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v6, v0, 0x2

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getHeight()I

    move-result v8

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getHeight()I

    move-result v9

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/arcsoft/avatar2/RecordModule;->b([BIIIIII)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->setRGBA8888([B)V

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getHeight()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->setWidth(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getRGBA8888()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getWidth()I

    move-result v5

    sub-int/2addr v0, v5

    div-int/lit8 v5, v0, 0x2

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getWidth()I

    move-result v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/arcsoft/avatar2/RecordModule;->b([BIIIIII)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->setRGBA8888([B)V

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getWidth()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->setHeight(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private b()Z
    .locals 7

    iget-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->N:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    const-string v1, "CheckOutLine"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-static {v1, v0}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iput-boolean v2, p0, Lcom/arcsoft/avatar2/RecordModule;->P:Z

    goto :goto_3

    :cond_0
    invoke-virtual {v0}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->shelterIsNull()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "shelterFlags == null"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "faceCount = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/arcsoft/avatar2/RecordModule;->N:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-virtual {v3}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getFaceCount()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->N:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getFaceCount()I

    move-result v0

    if-gtz v0, :cond_2

    :goto_2
    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->N:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->checkFaceBlocking()Z

    move-result v0

    iget v3, p0, Lcom/arcsoft/avatar2/RecordModule;->R:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-le v3, v4, :cond_3

    iput v5, p0, Lcom/arcsoft/avatar2/RecordModule;->R:I

    :cond_3
    iget-object v3, p0, Lcom/arcsoft/avatar2/RecordModule;->Q:[Z

    iget v6, p0, Lcom/arcsoft/avatar2/RecordModule;->R:I

    aput-boolean v0, v3, v6

    add-int/2addr v6, v2

    iput v6, p0, Lcom/arcsoft/avatar2/RecordModule;->R:I

    aget-boolean v0, v3, v5

    if-eqz v0, :cond_4

    aget-boolean v0, v3, v2

    if-eqz v0, :cond_4

    aget-boolean v0, v3, v4

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->Q:[Z

    aget-boolean v3, v0, v5

    if-nez v3, :cond_5

    aget-boolean v2, v0, v2

    if-nez v2, :cond_5

    aget-boolean v0, v0, v4

    if-nez v0, :cond_5

    iput-boolean v5, p0, Lcom/arcsoft/avatar2/RecordModule;->P:Z

    :cond_5
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- > mBlockingFaces <---"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/arcsoft/avatar2/RecordModule;->P:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/arcsoft/avatar2/RecordModule;->P:Z

    return p0
.end method

.method private b([BIIIIII)[B
    .locals 5

    const-string p0, "cropRGBA"

    invoke-static {p0}, Lcom/arcsoft/avatar2/util/TimeConsumingUtil;->startTheTimer(Ljava/lang/String;)V

    if-gt p4, p2, :cond_3

    if-le p5, p3, :cond_0

    goto :goto_1

    :cond_0
    div-int/lit8 p4, p4, 0x2

    mul-int/lit8 p4, p4, 0x2

    div-int/lit8 p5, p5, 0x2

    mul-int/lit8 p5, p5, 0x2

    div-int/lit8 p6, p6, 0x2

    mul-int/lit8 p6, p6, 0x2

    div-int/lit8 p7, p7, 0x2

    mul-int/lit8 p7, p7, 0x2

    mul-int v0, p6, p7

    mul-int/lit8 v0, v0, 0x4

    new-array v1, v0, [B

    mul-int v2, p5, p2

    mul-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    if-le p2, p3, :cond_1

    move p3, p5

    :goto_0
    add-int v0, p5, p7

    if-ge p3, v0, :cond_2

    mul-int/lit8 v0, p4, 0x4

    add-int/2addr v0, v2

    mul-int/lit8 v4, p6, 0x4

    invoke-static {p1, v0, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int/lit8 v0, p2, 0x4

    add-int/2addr v2, v0

    add-int/2addr v3, v4

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    mul-int/lit8 p4, p4, 0x4

    add-int/2addr v2, p4

    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    const-string p1, "performance"

    invoke-static {p1, p0}, Lcom/arcsoft/avatar2/util/TimeConsumingUtil;->stopTiming(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private c()Z
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/arcsoft/avatar2/RecordModule;->ad:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iput-wide v0, p0, Lcom/arcsoft/avatar2/RecordModule;->ad:J

    :cond_0
    iget v2, p0, Lcom/arcsoft/avatar2/RecordModule;->ac:I

    mul-int/lit8 v2, v2, 0x32

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/arcsoft/avatar2/RecordModule;->ad:J

    sub-long v4, v0, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mFrameCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/arcsoft/avatar2/RecordModule;->ac:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "RecordModule"

    invoke-static {v7, v6}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v6, p0, Lcom/arcsoft/avatar2/RecordModule;->ac:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, p0, Lcom/arcsoft/avatar2/RecordModule;->ac:I

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x32

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    iput v7, p0, Lcom/arcsoft/avatar2/RecordModule;->ac:I

    iput-wide v0, p0, Lcom/arcsoft/avatar2/RecordModule;->ad:J

    return v7

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private d()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBmpRenderScene -> path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/arcsoft/avatar2/RecordModule;->H:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/AvatarEngine;->getTemplatePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordModule"

    invoke-static {v1, v0}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->Z:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->H:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/AvatarEngine;->getTemplatePath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "cartoon_xiaomi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v3, 0x1

    const/high16 v4, -0x3f200000    # -7.0f

    aput v4, v0, v3

    iget-object p0, p0, Lcom/arcsoft/avatar2/RecordModule;->H:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {p0, v2, v1, v0}, Lcom/arcsoft/avatar2/AvatarEngine;->setRenderScene3F(ZF[F)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/arcsoft/avatar2/RecordModule;->H:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {p0, v2, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->setRenderScene(ZF)V

    :goto_0
    return-void
.end method

.method private e()[F
    .locals 4

    iget-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->Z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->U:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/arcsoft/avatar2/RecordModule;->U:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/arcsoft/avatar2/RecordModule;->U:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget-object p0, p0, Lcom/arcsoft/avatar2/RecordModule;->am:[F

    const/4 v2, 0x1

    const/4 v3, 0x5

    aput v0, p0, v3

    aput v0, p0, v2

    const/4 v2, 0x3

    const/4 v3, 0x7

    sub-float/2addr v1, v0

    aput v1, p0, v3

    aput v1, p0, v2

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public capture()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->K:Z

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public changeHumanTemplate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->X:Z

    iget-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->H:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v0, p1}, Lcom/arcsoft/avatar2/AvatarEngine;->setTemplatePath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/arcsoft/avatar2/RecordModule;->H:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {p1, p2}, Lcom/arcsoft/avatar2/AvatarEngine;->loadConfig(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/arcsoft/avatar2/RecordModule;->X:Z

    return-void
.end method

.method public getAvatarEngine()Lcom/arcsoft/avatar2/AvatarEngine;
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar2/RecordModule;->H:Lcom/arcsoft/avatar2/AvatarEngine;

    return-object p0
.end method

.method public getBackgroundBmpInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10

    const-string p0, "RecordModule"

    const-string v0, "/"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBgXmlInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/arcsoft/avatar2/BackgroundInfo;->getXMLName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    move-object v5, v1

    move-object v6, v5

    :goto_0
    const/4 v7, 0x1

    if-eq v3, v7, :cond_a

    const/4 v7, 0x2

    if-eq v3, v7, :cond_8

    const/4 v7, 0x3

    if-eq v3, v7, :cond_5

    const/4 v7, 0x4

    if-eq v3, v7, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lcom/arcsoft/avatar2/BackgroundInfo;->getXMLNameTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/arcsoft/avatar2/BackgroundInfo;->setName(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    invoke-static {}, Lcom/arcsoft/avatar2/BackgroundInfo;->getXMLCountTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/arcsoft/avatar2/BackgroundInfo;->setCount(I)V

    goto/16 :goto_2

    :cond_2
    invoke-static {}, Lcom/arcsoft/avatar2/BackgroundInfo;->getXMLDelayTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/arcsoft/avatar2/BackgroundInfo;->setDelayMillis(I)V

    goto/16 :goto_2

    :cond_3
    invoke-static {}, Lcom/arcsoft/avatar2/BackgroundInfo;->getXMLCrop4_3_XY()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/arcsoft/avatar2/BackgroundInfo;->setCrop4_3_XY(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    invoke-static {}, Lcom/arcsoft/avatar2/BackgroundInfo;->getXMLCrop16_9_XY()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/arcsoft/avatar2/BackgroundInfo;->setCrop16_9_XY(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/arcsoft/avatar2/BackgroundInfo;->getXMLInfoTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v6}, Lcom/arcsoft/avatar2/BackgroundInfo;->getCount()I

    move-result v7

    if-ge v5, v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/arcsoft/avatar2/BackgroundInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/arcsoft/avatar2/BackgroundInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bmpPath = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v6, v3}, Lcom/arcsoft/avatar2/BackgroundInfo;->setResolution_FullSize_PathList(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string v5, ""

    goto :goto_2

    :cond_8
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/arcsoft/avatar2/BackgroundInfo;->getXMLInfoTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v6, Lcom/arcsoft/avatar2/BackgroundInfo;

    invoke-direct {v6}, Lcom/arcsoft/avatar2/BackgroundInfo;-><init>()V

    :cond_9
    :goto_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_a
    return-object v2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :goto_3
    return-object v1
.end method

.method public getPreHumanConfigInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7

    const-string p0, "/"

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "RecordModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreXmlInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "preconfig.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    move-object v4, v0

    :goto_0
    const/4 v5, 0x1

    if-eq v2, v5, :cond_4

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    const/4 v5, 0x4

    if-eq v2, v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "name"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/arcsoft/avatar2/PreHumanConfigInfo;

    invoke-direct {v2}, Lcom/arcsoft/avatar2/PreHumanConfigInfo;-><init>()V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/arcsoft/avatar2/PreHumanConfigInfo;->setPreHumanName(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/arcsoft/avatar2/PreHumanConfigInfo;->setPreHumanThumbnailPath(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/arcsoft/avatar2/PreHumanConfigInfo;->setPreHumanConfigPath(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v4, ""

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    return-object v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method public init(IIILcom/arcsoft/avatar2/AvatarEngine;Z)V
    .locals 2

    const-string v0, "0"

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/arcsoft/avatar2/RecordModule;->h:Z

    iput-boolean v1, p0, Lcom/arcsoft/avatar2/RecordModule;->i:Z

    iput-boolean v1, p0, Lcom/arcsoft/avatar2/RecordModule;->j:Z

    iput-boolean v1, p0, Lcom/arcsoft/avatar2/RecordModule;->k:Z

    iput-boolean v1, p0, Lcom/arcsoft/avatar2/RecordModule;->A:Z

    iput-boolean v1, p0, Lcom/arcsoft/avatar2/RecordModule;->L:Z

    iput-boolean v1, p0, Lcom/arcsoft/avatar2/RecordModule;->J:Z

    iput p2, p0, Lcom/arcsoft/avatar2/RecordModule;->p:I

    iput p3, p0, Lcom/arcsoft/avatar2/RecordModule;->q:I

    iput-object p4, p0, Lcom/arcsoft/avatar2/RecordModule;->H:Lcom/arcsoft/avatar2/AvatarEngine;

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/arcsoft/avatar2/RecordModule;->v:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->clear()V

    iput-boolean p5, p0, Lcom/arcsoft/avatar2/RecordModule;->B:Z

    iput p1, p0, Lcom/arcsoft/avatar2/RecordModule;->C:I

    iput-boolean v1, p0, Lcom/arcsoft/avatar2/RecordModule;->l:Z

    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object p1, p0, Lcom/arcsoft/avatar2/RecordModule;->m:Landroid/opengl/EGLDisplay;

    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object p1, p0, Lcom/arcsoft/avatar2/RecordModule;->n:Landroid/opengl/EGLContext;

    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object p1, p0, Lcom/arcsoft/avatar2/RecordModule;->o:Landroid/opengl/EGLSurface;

    new-instance p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-direct {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;-><init>()V

    iput-object p1, p0, Lcom/arcsoft/avatar2/RecordModule;->N:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/arcsoft/avatar2/RecordModule;->h:Z

    :try_start_0
    const-string p2, "arcsoft_enable_log"

    invoke-direct {p0, p2, v0}, Lcom/arcsoft/avatar2/RecordModule;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p1, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    sput-boolean p2, Lcom/arcsoft/avatar2/util/LOG;->DEBUG:Z

    const-string p2, "arcsoft_performance"

    invoke-direct {p0, p2, v0}, Lcom/arcsoft/avatar2/RecordModule;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p1, :cond_1

    move v1, p1

    :cond_1
    sput-boolean v1, Lcom/arcsoft/avatar2/util/TimeConsumingUtil;->DEBUG:Z

    const-string p2, "arcsoft_version"

    invoke-direct {p0, p2, v0}, Lcom/arcsoft/avatar2/RecordModule;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p1, :cond_2

    const-string p1, "avatar_version"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Arcsoft_AvatarJar_V.2.0.0.12\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/arcsoft/avatar2/RecordModule;->H:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {p0}, Lcom/arcsoft/avatar2/AvatarEngine;->getVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public isRequestPause()Z
    .locals 0

    iget-boolean p0, p0, Lcom/arcsoft/avatar2/RecordModule;->J:Z

    return p0
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->U:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    return-void
.end method

.method public pauseRecording()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->I:Lcom/arcsoft/avatar2/recoder/MediaManager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->L:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->J:Z

    iget-object p0, p0, Lcom/arcsoft/avatar2/RecordModule;->I:Lcom/arcsoft/avatar2/recoder/MediaManager;

    invoke-virtual {p0}, Lcom/arcsoft/avatar2/recoder/MediaManager;->pauseRecording()I

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public releaseRecordGLInfo()V
    .locals 2

    iget-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->I:Lcom/arcsoft/avatar2/recoder/MediaManager;

    if-eqz v0, :cond_0

    const-string v0, "stopRecording"

    const-string v1, "-- releaseFrameQueue --"

    invoke-static {v0, v1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->I:Lcom/arcsoft/avatar2/recoder/MediaManager;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/recoder/MediaManager;->releaseFrameQueue()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->I:Lcom/arcsoft/avatar2/recoder/MediaManager;

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->W:Z

    return-void
.end method

.method public resetExtraScene()V
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar2/RecordModule;->aj:Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->resetExtraScene()V

    return-void
.end method

.method public resumeRecording()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->I:Lcom/arcsoft/avatar2/recoder/MediaManager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->L:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->J:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->I:Lcom/arcsoft/avatar2/recoder/MediaManager;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/recoder/MediaManager;->resumeRecording()I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->J:Z

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public setAvatarEngine(Lcom/arcsoft/avatar2/AvatarEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/avatar2/RecordModule;->H:Lcom/arcsoft/avatar2/AvatarEngine;

    return-void
.end method

.method public setBackground(Landroid/graphics/Bitmap;Lcom/arcsoft/avatar2/BackgroundInfo;)V
    .locals 16

    move-object/from16 v9, p0

    const-string v0, "setBackground"

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    const/4 v10, 0x1

    :try_start_0
    iget-object v2, v9, Lcom/arcsoft/avatar2/RecordModule;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    invoke-static/range {p1 .. p1}, Lcom/arcsoft/avatar2/util/AsvloffscreenUtil;->buildRGBA(Landroid/graphics/Bitmap;)Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    move-result-object v2

    iput-object v2, v9, Lcom/arcsoft/avatar2/RecordModule;->V:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    invoke-static {v0}, Lcom/arcsoft/avatar2/util/TimeConsumingUtil;->startTheTimer(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/arcsoft/avatar2/BackgroundInfo;->getResolutionMode()I

    move-result v11

    iget-object v2, v9, Lcom/arcsoft/avatar2/RecordModule;->V:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getWidth()I

    move-result v12

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne v11, v3, :cond_0

    mul-int/lit8 v4, v12, 0x10

    div-int/lit8 v4, v4, 0x9

    div-int/2addr v4, v3

    mul-int/2addr v4, v3

    invoke-virtual/range {p2 .. p2}, Lcom/arcsoft/avatar2/BackgroundInfo;->getCrop16_9_XY()[I

    move-result-object v3

    aget v3, v3, v1

    invoke-virtual/range {p2 .. p2}, Lcom/arcsoft/avatar2/BackgroundInfo;->getCrop16_9_XY()[I

    move-result-object v5

    aget v5, v5, v10

    :goto_0
    move v13, v4

    goto :goto_1

    :cond_0
    if-ne v11, v10, :cond_1

    mul-int/lit8 v4, v12, 0x4

    div-int/2addr v4, v2

    div-int/2addr v4, v3

    mul-int/2addr v4, v3

    invoke-virtual/range {p2 .. p2}, Lcom/arcsoft/avatar2/BackgroundInfo;->getCrop4_3_XY()[I

    move-result-object v3

    aget v3, v3, v1

    invoke-virtual/range {p2 .. p2}, Lcom/arcsoft/avatar2/BackgroundInfo;->getCrop4_3_XY()[I

    move-result-object v5

    aget v5, v5, v10

    goto :goto_0

    :cond_1
    move v3, v1

    move v5, v3

    move v13, v5

    :goto_1
    if-eq v11, v2, :cond_4

    add-int v2, v3, v12

    iget-object v4, v9, Lcom/arcsoft/avatar2/RecordModule;->V:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getWidth()I

    move-result v4

    if-le v2, v4, :cond_2

    move v14, v1

    goto :goto_2

    :cond_2
    move v14, v3

    :goto_2
    add-int v2, v5, v13

    iget-object v3, v9, Lcom/arcsoft/avatar2/RecordModule;->V:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    invoke-virtual {v3}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_3

    move v15, v1

    goto :goto_3

    :cond_3
    move v15, v5

    :goto_3
    iget-object v1, v9, Lcom/arcsoft/avatar2/RecordModule;->V:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getRGBA8888()[B

    move-result-object v2

    iget-object v1, v9, Lcom/arcsoft/avatar2/RecordModule;->V:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getWidth()I

    move-result v3

    iget-object v1, v9, Lcom/arcsoft/avatar2/RecordModule;->V:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getHeight()I

    move-result v4

    move-object/from16 v1, p0

    move v5, v14

    move v6, v15

    move v7, v12

    move v8, v13

    invoke-direct/range {v1 .. v8}, Lcom/arcsoft/avatar2/RecordModule;->b([BIIIIII)[B

    move-result-object v1

    iget-object v2, v9, Lcom/arcsoft/avatar2/RecordModule;->V:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    invoke-virtual {v2, v13}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->setHeight(I)V

    iget-object v2, v9, Lcom/arcsoft/avatar2/RecordModule;->V:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    invoke-virtual {v2, v1}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->setRGBA8888([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cropX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cropY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", w = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", h = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/arcsoft/avatar2/RecordModule;->d()V

    const-string v1, "zhangs0997"

    invoke-static {v1, v0}, Lcom/arcsoft/avatar2/util/TimeConsumingUtil;->stopTiming(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v9, Lcom/arcsoft/avatar2/RecordModule;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iput-boolean v10, v9, Lcom/arcsoft/avatar2/RecordModule;->Y:Z

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v9, Lcom/arcsoft/avatar2/RecordModule;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iput-boolean v10, v9, Lcom/arcsoft/avatar2/RecordModule;->Y:Z

    throw v0

    :cond_5
    iput-boolean v1, v9, Lcom/arcsoft/avatar2/RecordModule;->Y:Z

    return-void
.end method

.method public setBackgroundToSquare(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/arcsoft/avatar2/RecordModule;->Z:Z

    iput-boolean p1, p0, Lcom/arcsoft/avatar2/RecordModule;->af:Z

    return-void
.end method

.method public setDrawScope(IIII)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar2/RecordModule;->t:I

    iput p2, p0, Lcom/arcsoft/avatar2/RecordModule;->u:I

    iput p3, p0, Lcom/arcsoft/avatar2/RecordModule;->r:I

    iput p4, p0, Lcom/arcsoft/avatar2/RecordModule;->s:I

    return-void
.end method

.method public setExtraSceneTemplatePath(Ljava/lang/String;Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;

    invoke-direct {v0, p1, p2}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;-><init>(Ljava/lang/String;Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;)V

    iput-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->aj:Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;

    return-void
.end method

.method public setMirror(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/arcsoft/avatar2/RecordModule;->B:Z

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar2/RecordModule;->p:I

    iput p2, p0, Lcom/arcsoft/avatar2/RecordModule;->q:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/arcsoft/avatar2/RecordModule;->W:Z

    return-void
.end method

.method public setmImageOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar2/RecordModule;->C:I

    return-void
.end method

.method public startProcess(Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;IZ)Z
    .locals 12
    .param p1    # Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v9, "avatarProcessWithInfo"

    const-string v2, "lock -> process unlock"

    :try_start_0
    iget-object v3, p0, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-boolean v3, p0, Lcom/arcsoft/avatar2/RecordModule;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v4, 0x1

    const-string v10, "RecordModule"

    if-nez v3, :cond_0

    :try_start_1
    const-string v0, "startProcess_1() failed, engine is not inited. "

    invoke-static {v10, v0}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v4

    :cond_0
    iget-object v3, p0, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-nez p1, :cond_1

    return v4

    :cond_1
    const/4 v11, 0x0

    :try_start_2
    iput-boolean v4, p0, Lcom/arcsoft/avatar2/RecordModule;->j:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v3, "lock -> process lock"

    invoke-static {v10, v3}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/arcsoft/avatar2/RecordModule;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    iput-object p1, p0, Lcom/arcsoft/avatar2/RecordModule;->U:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v3, p0, Lcom/arcsoft/avatar2/RecordModule;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-static {v10, v2}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/arcsoft/avatar2/RecordModule;->i:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez p3, :cond_2

    iput-boolean v11, p0, Lcom/arcsoft/avatar2/RecordModule;->j:Z

    return v4

    :cond_2
    :try_start_5
    invoke-static {v9}, Lcom/arcsoft/avatar2/util/TimeConsumingUtil;->startTheTimer(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/arcsoft/avatar2/RecordModule;->H:Lcom/arcsoft/avatar2/AvatarEngine;

    const/16 v4, 0x5a

    iget-boolean v5, p0, Lcom/arcsoft/avatar2/RecordModule;->B:Z

    iget-object v7, p0, Lcom/arcsoft/avatar2/RecordModule;->N:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    iget-boolean v8, p0, Lcom/arcsoft/avatar2/RecordModule;->Y:Z

    move-object v3, p1

    move v6, p2

    invoke-virtual/range {v2 .. v8}, Lcom/arcsoft/avatar2/AvatarEngine;->nativeProcessWithInfoToPreview(Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;IZILcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->aj:Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->aj:Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;

    iget-object v2, p0, Lcom/arcsoft/avatar2/RecordModule;->N:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-virtual {v0, v2}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->checkExtraScene(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)V

    :cond_3
    iget-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->H:Lcom/arcsoft/avatar2/AvatarEngine;

    iget-object v2, p0, Lcom/arcsoft/avatar2/RecordModule;->N:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    invoke-virtual {v0, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->setProcessInfo(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)I

    :cond_4
    const-string v0, "performance"

    invoke-static {v0, v9}, Lcom/arcsoft/avatar2/util/TimeConsumingUtil;->stopTiming(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->Y:Z

    if-eqz v0, :cond_5

    move v0, v11

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/arcsoft/avatar2/RecordModule;->b()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->W:Z

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v3, p0, Lcom/arcsoft/avatar2/RecordModule;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-static {v10, v2}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_1
    iput-boolean v11, p0, Lcom/arcsoft/avatar2/RecordModule;->j:Z

    iget-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->W:Z

    return v0

    :goto_2
    iput-boolean v11, p0, Lcom/arcsoft/avatar2/RecordModule;->j:Z

    throw v0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public startProcess([BIIIZ)Z
    .locals 13
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    move-object v1, p0

    move-object v0, p1

    move/from16 v6, p3

    move/from16 v5, p4

    const-string v11, "avatarProcessWithInfo"

    const-string v2, "lock -> process unlock"

    :try_start_0
    iget-object v3, v1, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-boolean v3, v1, Lcom/arcsoft/avatar2/RecordModule;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v4, "RecordModule"

    const/4 v7, 0x1

    if-nez v3, :cond_0

    :try_start_1
    const-string v0, "startProcess_1() failed, engine is not inited. "

    invoke-static {v4, v0}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object v0, v1, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v7

    :cond_0
    iget-object v3, v1, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v0, :cond_3

    array-length v3, v0

    if-lez v3, :cond_3

    if-lez v6, :cond_3

    if-gtz v5, :cond_1

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    :try_start_2
    iput-boolean v7, v1, Lcom/arcsoft/avatar2/RecordModule;->j:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v3, "lock -> process lock"

    invoke-static {v4, v3}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/arcsoft/avatar2/RecordModule;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    new-instance v3, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    invoke-direct {v3, p1, v6, v6, v5}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;-><init>([BIII)V

    iput-object v3, v1, Lcom/arcsoft/avatar2/RecordModule;->U:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v3, v1, Lcom/arcsoft/avatar2/RecordModule;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-static {v4, v2}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v7, v1, Lcom/arcsoft/avatar2/RecordModule;->i:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez p5, :cond_2

    iput-boolean v12, v1, Lcom/arcsoft/avatar2/RecordModule;->j:Z

    return v7

    :cond_2
    :try_start_5
    invoke-static {v11}, Lcom/arcsoft/avatar2/util/TimeConsumingUtil;->startTheTimer(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/arcsoft/avatar2/RecordModule;->H:Lcom/arcsoft/avatar2/AvatarEngine;

    const/16 v7, 0x5a

    iget-boolean v8, v1, Lcom/arcsoft/avatar2/RecordModule;->B:Z

    iget-object v10, v1, Lcom/arcsoft/avatar2/RecordModule;->N:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;

    move-object v3, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p3

    move v9, p2

    invoke-virtual/range {v2 .. v10}, Lcom/arcsoft/avatar2/AvatarEngine;->avatarProcessWithInfo([BIIIIZILcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)I

    const-string v0, "performance"

    invoke-static {v0, v11}, Lcom/arcsoft/avatar2/util/TimeConsumingUtil;->stopTiming(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/arcsoft/avatar2/RecordModule;->b()Z

    move-result v0

    iput-boolean v0, v1, Lcom/arcsoft/avatar2/RecordModule;->W:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v3, v1, Lcom/arcsoft/avatar2/RecordModule;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-static {v4, v2}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_0
    iput-boolean v12, v1, Lcom/arcsoft/avatar2/RecordModule;->j:Z

    iget-boolean v0, v1, Lcom/arcsoft/avatar2/RecordModule;->W:Z

    return v0

    :goto_1
    iput-boolean v12, v1, Lcom/arcsoft/avatar2/RecordModule;->j:Z

    throw v0

    :cond_3
    :goto_2
    return v7

    :catchall_2
    move-exception v0

    iget-object v1, v1, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public startRecording(Ljava/io/FileDescriptor;Lcom/arcsoft/avatar2/recoder/RecordingListener;IIIILjava/lang/String;)Z
    .locals 13
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    move-object v1, p0

    move/from16 v0, p3

    move/from16 v4, p4

    move/from16 v5, p5

    :try_start_0
    iget-object v2, v1, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-boolean v2, v1, Lcom/arcsoft/avatar2/RecordModule;->h:Z

    const/4 v10, 0x0

    if-nez v2, :cond_0

    const-string v0, "RecordModule"

    const-string v2, "startRecording-> StickerApi is not init."

    invoke-static {v0, v2}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v10

    :cond_0
    iget-object v2, v1, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v2, v1, Lcom/arcsoft/avatar2/RecordModule;->I:Lcom/arcsoft/avatar2/recoder/MediaManager;

    if-eqz v2, :cond_2

    return v10

    :cond_2
    if-eqz v0, :cond_3

    const/16 v2, 0x5a

    if-eq v2, v0, :cond_3

    const/16 v2, 0xb4

    if-eq v2, v0, :cond_3

    const/16 v2, 0x10e

    if-eq v2, v0, :cond_3

    return v10

    :cond_3
    iput-boolean v10, v1, Lcom/arcsoft/avatar2/RecordModule;->ak:Z

    move-object v9, p2

    iput-object v9, v1, Lcom/arcsoft/avatar2/RecordModule;->M:Lcom/arcsoft/avatar2/recoder/RecordingListener;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iget-object v3, v1, Lcom/arcsoft/avatar2/RecordModule;->n:Landroid/opengl/EGLContext;

    if-ne v2, v3, :cond_4

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v2

    iput-object v2, v1, Lcom/arcsoft/avatar2/RecordModule;->n:Landroid/opengl/EGLContext;

    :cond_4
    const/4 v2, 0x0

    if-ne v4, v5, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, v1, Lcom/arcsoft/avatar2/RecordModule;->U:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    invoke-virtual {v3}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getWidth()I

    move-result v3

    iget-object v6, v1, Lcom/arcsoft/avatar2/RecordModule;->U:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    invoke-virtual {v6}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getHeight()I

    move-result v6

    sub-int/2addr v3, v6

    int-to-float v3, v3

    mul-float/2addr v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v3, v2

    iget-object v2, v1, Lcom/arcsoft/avatar2/RecordModule;->U:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v3, v2

    :cond_5
    move v11, v2

    new-instance v12, Lcom/arcsoft/avatar2/recoder/MediaManager;

    iget v6, v1, Lcom/arcsoft/avatar2/RecordModule;->C:I

    iget-boolean v7, v1, Lcom/arcsoft/avatar2/RecordModule;->B:Z

    move-object v2, v12

    move-object v3, p1

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v8, p3

    move-object v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/arcsoft/avatar2/recoder/MediaManager;-><init>(Ljava/io/FileDescriptor;IIIZILcom/arcsoft/avatar2/recoder/RecordingListener;)V

    iput-object v12, v1, Lcom/arcsoft/avatar2/RecordModule;->I:Lcom/arcsoft/avatar2/recoder/MediaManager;

    const/4 v0, 0x2

    invoke-virtual {v12, v0}, Lcom/arcsoft/avatar2/recoder/MediaManager;->setEncoderCount(I)V

    iget-object v0, v1, Lcom/arcsoft/avatar2/RecordModule;->I:Lcom/arcsoft/avatar2/recoder/MediaManager;

    iget-object v2, v1, Lcom/arcsoft/avatar2/RecordModule;->n:Landroid/opengl/EGLContext;

    const/4 v3, 0x1

    move/from16 v4, p6

    move-object/from16 v5, p7

    invoke-virtual {v0, v2, v4, v3, v5}, Lcom/arcsoft/avatar2/recoder/MediaManager;->initVideoEncoderWithSharedContext(Landroid/opengl/EGLContext;IZLjava/lang/String;)V

    iget-object v0, v1, Lcom/arcsoft/avatar2/RecordModule;->I:Lcom/arcsoft/avatar2/recoder/MediaManager;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/recoder/MediaManager;->initAudioEncoder()V

    iget-object v0, v1, Lcom/arcsoft/avatar2/RecordModule;->I:Lcom/arcsoft/avatar2/recoder/MediaManager;

    invoke-virtual {v0, v11}, Lcom/arcsoft/avatar2/recoder/MediaManager;->setCropFactor(F)V

    iget-object v0, v1, Lcom/arcsoft/avatar2/RecordModule;->I:Lcom/arcsoft/avatar2/recoder/MediaManager;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/recoder/MediaManager;->startRecording()V

    iput-boolean v3, v1, Lcom/arcsoft/avatar2/RecordModule;->L:Z

    iput-boolean v10, v1, Lcom/arcsoft/avatar2/RecordModule;->J:Z

    return v3

    :cond_6
    :goto_0
    return v10

    :catchall_0
    move-exception v0

    iget-object v1, v1, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public startRecording(Ljava/lang/String;Lcom/arcsoft/avatar2/recoder/RecordingListener;IIIILjava/lang/String;)Z
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    move-object v1, p0

    move/from16 v0, p3

    move/from16 v4, p4

    move/from16 v5, p5

    :try_start_0
    iget-object v2, v1, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-boolean v2, v1, Lcom/arcsoft/avatar2/RecordModule;->h:Z

    const/4 v10, 0x0

    if-nez v2, :cond_0

    const-string v0, "RecordModule"

    const-string v2, "startRecording-> StickerApi is not init."

    invoke-static {v0, v2}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v10

    :cond_0
    iget-object v2, v1, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v2, v1, Lcom/arcsoft/avatar2/RecordModule;->I:Lcom/arcsoft/avatar2/recoder/MediaManager;

    if-eqz v2, :cond_2

    return v10

    :cond_2
    if-eqz v0, :cond_3

    const/16 v2, 0x5a

    if-eq v2, v0, :cond_3

    const/16 v2, 0xb4

    if-eq v2, v0, :cond_3

    const/16 v2, 0x10e

    if-eq v2, v0, :cond_3

    return v10

    :cond_3
    iput-boolean v10, v1, Lcom/arcsoft/avatar2/RecordModule;->ak:Z

    move-object v9, p2

    iput-object v9, v1, Lcom/arcsoft/avatar2/RecordModule;->M:Lcom/arcsoft/avatar2/recoder/RecordingListener;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iget-object v3, v1, Lcom/arcsoft/avatar2/RecordModule;->n:Landroid/opengl/EGLContext;

    if-ne v2, v3, :cond_4

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v2

    iput-object v2, v1, Lcom/arcsoft/avatar2/RecordModule;->n:Landroid/opengl/EGLContext;

    :cond_4
    const/4 v2, 0x0

    if-ne v4, v5, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, v1, Lcom/arcsoft/avatar2/RecordModule;->U:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    invoke-virtual {v3}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getWidth()I

    move-result v3

    iget-object v6, v1, Lcom/arcsoft/avatar2/RecordModule;->U:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    invoke-virtual {v6}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getHeight()I

    move-result v6

    sub-int/2addr v3, v6

    int-to-float v3, v3

    mul-float/2addr v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v3, v2

    iget-object v2, v1, Lcom/arcsoft/avatar2/RecordModule;->U:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v3, v2

    :cond_5
    move v11, v2

    new-instance v12, Lcom/arcsoft/avatar2/recoder/MediaManager;

    iget v6, v1, Lcom/arcsoft/avatar2/RecordModule;->C:I

    iget-boolean v7, v1, Lcom/arcsoft/avatar2/RecordModule;->B:Z

    move-object v2, v12

    move-object v3, p1

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v8, p3

    move-object v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/arcsoft/avatar2/recoder/MediaManager;-><init>(Ljava/lang/String;IIIZILcom/arcsoft/avatar2/recoder/RecordingListener;)V

    iput-object v12, v1, Lcom/arcsoft/avatar2/RecordModule;->I:Lcom/arcsoft/avatar2/recoder/MediaManager;

    const/4 v0, 0x2

    invoke-virtual {v12, v0}, Lcom/arcsoft/avatar2/recoder/MediaManager;->setEncoderCount(I)V

    iget-object v0, v1, Lcom/arcsoft/avatar2/RecordModule;->I:Lcom/arcsoft/avatar2/recoder/MediaManager;

    iget-object v2, v1, Lcom/arcsoft/avatar2/RecordModule;->n:Landroid/opengl/EGLContext;

    const/4 v3, 0x1

    move/from16 v4, p6

    move-object/from16 v5, p7

    invoke-virtual {v0, v2, v4, v3, v5}, Lcom/arcsoft/avatar2/recoder/MediaManager;->initVideoEncoderWithSharedContext(Landroid/opengl/EGLContext;IZLjava/lang/String;)V

    iget-object v0, v1, Lcom/arcsoft/avatar2/RecordModule;->I:Lcom/arcsoft/avatar2/recoder/MediaManager;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/recoder/MediaManager;->initAudioEncoder()V

    iget-object v0, v1, Lcom/arcsoft/avatar2/RecordModule;->I:Lcom/arcsoft/avatar2/recoder/MediaManager;

    invoke-virtual {v0, v11}, Lcom/arcsoft/avatar2/recoder/MediaManager;->setCropFactor(F)V

    iget-object v0, v1, Lcom/arcsoft/avatar2/RecordModule;->I:Lcom/arcsoft/avatar2/recoder/MediaManager;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/recoder/MediaManager;->startRecording()V

    iput-boolean v3, v1, Lcom/arcsoft/avatar2/RecordModule;->L:Z

    iput-boolean v10, v1, Lcom/arcsoft/avatar2/RecordModule;->J:Z

    return v3

    :cond_6
    :goto_0
    return v10

    :catchall_0
    move-exception v0

    iget-object v1, v1, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public startRender(IZIIZ[I[BZ)V
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v0, p6

    :try_start_0
    iget-object v1, v7, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-boolean v1, v7, Lcom/arcsoft/avatar2/RecordModule;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-string v2, "RecordModule"

    if-eqz v1, :cond_b

    :try_start_1
    iget-boolean v1, v7, Lcom/arcsoft/avatar2/RecordModule;->i:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v1, v7, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v1, v7, Lcom/arcsoft/avatar2/RecordModule;->U:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    if-nez v1, :cond_1

    const-string v0, "mBackgroundBuffer == null"

    invoke-static {v2, v0}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    const/4 v6, 0x0

    :try_start_2
    iput-boolean v1, v7, Lcom/arcsoft/avatar2/RecordModule;->k:Z

    iget-boolean v2, v7, Lcom/arcsoft/avatar2/RecordModule;->Y:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_2

    :try_start_3
    iget-object v2, v7, Lcom/arcsoft/avatar2/RecordModule;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v2, v7, Lcom/arcsoft/avatar2/RecordModule;->V:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v3, v7, Lcom/arcsoft/avatar2/RecordModule;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v11, v6

    move v12, v11

    move v13, v12

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, v7, Lcom/arcsoft/avatar2/RecordModule;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_2
    :try_start_5
    iget-object v2, v7, Lcom/arcsoft/avatar2/RecordModule;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v2, v7, Lcom/arcsoft/avatar2/RecordModule;->U:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v3, v7, Lcom/arcsoft/avatar2/RecordModule;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    :goto_0
    iget-object v3, v7, Lcom/arcsoft/avatar2/RecordModule;->U:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    invoke-virtual {v3}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getHeight()I

    move-result v3

    iput v3, v7, Lcom/arcsoft/avatar2/RecordModule;->aa:I

    iget-object v3, v7, Lcom/arcsoft/avatar2/RecordModule;->U:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    invoke-virtual {v3}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getWidth()I

    move-result v3

    iput v3, v7, Lcom/arcsoft/avatar2/RecordModule;->ab:I

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getHeight()I

    move-result v3

    if-lez v3, :cond_a

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getWidth()I

    move-result v3

    if-gtz v3, :cond_3

    goto/16 :goto_3

    :cond_3
    iget v3, v7, Lcom/arcsoft/avatar2/RecordModule;->ab:I

    if-eqz v3, :cond_4

    iget v3, v7, Lcom/arcsoft/avatar2/RecordModule;->aa:I

    if-nez v3, :cond_5

    :cond_4
    iget-object v3, v7, Lcom/arcsoft/avatar2/RecordModule;->U:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    invoke-virtual {v3}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getHeight()I

    move-result v3

    iput v3, v7, Lcom/arcsoft/avatar2/RecordModule;->aa:I

    iget-object v3, v7, Lcom/arcsoft/avatar2/RecordModule;->U:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    invoke-virtual {v3}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getWidth()I

    move-result v3

    iput v3, v7, Lcom/arcsoft/avatar2/RecordModule;->ab:I

    :cond_5
    if-eqz p8, :cond_8

    iget-boolean v3, v7, Lcom/arcsoft/avatar2/RecordModule;->W:Z

    if-nez v3, :cond_8

    iget-boolean v3, v7, Lcom/arcsoft/avatar2/RecordModule;->X:Z

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    iget-boolean v3, v7, Lcom/arcsoft/avatar2/RecordModule;->K:Z

    if-eqz v3, :cond_7

    iget-object v3, v7, Lcom/arcsoft/avatar2/RecordModule;->U:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    invoke-virtual {v3}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iput v3, v7, Lcom/arcsoft/avatar2/RecordModule;->aa:I

    iget-object v3, v7, Lcom/arcsoft/avatar2/RecordModule;->U:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    invoke-virtual {v3}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iput v3, v7, Lcom/arcsoft/avatar2/RecordModule;->ab:I

    :cond_7
    iput-boolean v1, v7, Lcom/arcsoft/avatar2/RecordModule;->ak:Z

    iget-object v8, v7, Lcom/arcsoft/avatar2/RecordModule;->H:Lcom/arcsoft/avatar2/AvatarEngine;

    const/4 v9, 0x0

    iget v14, v7, Lcom/arcsoft/avatar2/RecordModule;->aa:I

    iget v15, v7, Lcom/arcsoft/avatar2/RecordModule;->ab:I

    iget-boolean v3, v7, Lcom/arcsoft/avatar2/RecordModule;->Y:Z

    move-object v10, v2

    move/from16 v16, p4

    move/from16 v17, p5

    move-object/from16 v18, p6

    move-object/from16 v19, p7

    move/from16 v20, v3

    invoke-virtual/range {v8 .. v20}, Lcom/arcsoft/avatar2/AvatarEngine;->renderWithBackground(Ljava/lang/String;Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;IZIIIIZ[I[BZ)I

    move v8, v1

    goto :goto_2

    :cond_8
    :goto_1
    iget-object v1, v7, Lcom/arcsoft/avatar2/RecordModule;->H:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v1, v2, v11, v12, v0}, Lcom/arcsoft/avatar2/AvatarEngine;->renderBackgroundWithImageData(Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;IZ[I)I

    move v8, v6

    :goto_2
    if-eqz v0, :cond_9

    iget-object v1, v7, Lcom/arcsoft/avatar2/RecordModule;->H:Lcom/arcsoft/avatar2/AvatarEngine;

    aget v3, v0, v6

    invoke-direct/range {p0 .. p0}, Lcom/arcsoft/avatar2/RecordModule;->e()[F

    move-result-object v4

    invoke-virtual {v1, v3, v6, v6, v4}, Lcom/arcsoft/avatar2/AvatarEngine;->renderBackgroundWithTexture(IIZ[F)I

    aget v3, v0, v6

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;->getHeight()I

    move-result v4

    iget v5, v7, Lcom/arcsoft/avatar2/RecordModule;->aa:I

    iget v9, v7, Lcom/arcsoft/avatar2/RecordModule;->ab:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v1, p0

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v9

    move v9, v6

    move v6, v8

    :try_start_7
    invoke-direct/range {v1 .. v6}, Lcom/arcsoft/avatar2/RecordModule;->a(IIIIZ)V

    aget v0, v0, v9

    invoke-direct {v7, v0}, Lcom/arcsoft/avatar2/RecordModule;->a(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :cond_9
    move v9, v6

    goto :goto_5

    :cond_a
    :goto_3
    move v9, v6

    iput-boolean v9, v7, Lcom/arcsoft/avatar2/RecordModule;->k:Z

    return-void

    :catchall_1
    move-exception v0

    move v9, v6

    :try_start_8
    iget-object v1, v7, Lcom/arcsoft/avatar2/RecordModule;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catch_0
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move v9, v6

    goto :goto_6

    :catch_1
    move-exception v0

    move v9, v6

    :goto_4
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_5
    iput-boolean v9, v7, Lcom/arcsoft/avatar2/RecordModule;->k:Z

    return-void

    :catchall_3
    move-exception v0

    :goto_6
    iput-boolean v9, v7, Lcom/arcsoft/avatar2/RecordModule;->k:Z

    throw v0

    :cond_b
    :goto_7
    :try_start_a
    const-string v0, "startRender() failed, engine is not inited or startRender process not ready! "

    invoke-static {v2, v0}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    iget-object v0, v7, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_4
    move-exception v0

    iget-object v1, v7, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public stopRecording()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-boolean v1, p0, Lcom/arcsoft/avatar2/RecordModule;->h:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    iget-object v1, p0, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-boolean v1, p0, Lcom/arcsoft/avatar2/RecordModule;->L:Z

    if-nez v1, :cond_1

    return v0

    :cond_1
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/arcsoft/avatar2/RecordModule;->ad:J

    iput v0, p0, Lcom/arcsoft/avatar2/RecordModule;->ac:I

    iget-object v3, p0, Lcom/arcsoft/avatar2/RecordModule;->I:Lcom/arcsoft/avatar2/recoder/MediaManager;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/arcsoft/avatar2/RecordModule;->resumeRecording()V

    iput-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->L:Z

    const-string v3, "stopRecording"

    const-string v4, "-- stopRecording --"

    invoke-static {v3, v4}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/arcsoft/avatar2/RecordModule;->I:Lcom/arcsoft/avatar2/recoder/MediaManager;

    invoke-virtual {v3}, Lcom/arcsoft/avatar2/recoder/MediaManager;->stopRecording()V

    iput-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->J:Z

    iput-wide v1, p0, Lcom/arcsoft/avatar2/RecordModule;->G:J

    iput-wide v1, p0, Lcom/arcsoft/avatar2/RecordModule;->F:J

    iput-wide v1, p0, Lcom/arcsoft/avatar2/RecordModule;->D:J

    iget-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->O:Lcom/arcsoft/avatar2/RecordModule$MediaResultCallback;

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/arcsoft/avatar2/RecordModule;->ak:Z

    invoke-interface {v0, p0}, Lcom/arcsoft/avatar2/RecordModule$MediaResultCallback;->onVideoResult(Z)V

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0

    :goto_0
    iget-object p0, p0, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public unInit()V
    .locals 4

    invoke-virtual {p0}, Lcom/arcsoft/avatar2/RecordModule;->stopRecording()Z

    :try_start_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->h:Z

    if-nez v0, :cond_0

    const-string v0, "RecordModule"

    const-string v1, "uninit () failed, engine is not inited. "

    invoke-static {v0, v1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->h:Z

    const/16 v1, 0x64

    :goto_0
    iget-boolean v2, p0, Lcom/arcsoft/avatar2/RecordModule;->j:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/arcsoft/avatar2/RecordModule;->k:Z

    if-eqz v2, :cond_2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_8

    :cond_2
    iput-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->l:Z

    iput-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->K:Z

    iget-object v1, p0, Lcom/arcsoft/avatar2/RecordModule;->v:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/arcsoft/avatar2/RecordModule;->v:Ljava/util/Queue;

    iget-object v2, p0, Lcom/arcsoft/avatar2/RecordModule;->T:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/arcsoft/avatar2/RecordModule;->T:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/arcsoft/avatar2/RecordModule;->T:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    iput-object v1, p0, Lcom/arcsoft/avatar2/RecordModule;->T:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v2, p0, Lcom/arcsoft/avatar2/RecordModule;->z:Lcom/arcsoft/avatar2/gl/TextureHelper;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/arcsoft/avatar2/RecordModule;->z:Lcom/arcsoft/avatar2/gl/TextureHelper;

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/gl/TextureHelper;->deleteTexture()V

    iput-object v1, p0, Lcom/arcsoft/avatar2/RecordModule;->z:Lcom/arcsoft/avatar2/gl/TextureHelper;

    :cond_4
    iget-object v2, p0, Lcom/arcsoft/avatar2/RecordModule;->y:Lcom/arcsoft/avatar2/gl/GLFramebuffer;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/arcsoft/avatar2/RecordModule;->y:Lcom/arcsoft/avatar2/gl/GLFramebuffer;

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->unInit()V

    iput-object v1, p0, Lcom/arcsoft/avatar2/RecordModule;->y:Lcom/arcsoft/avatar2/gl/GLFramebuffer;

    :cond_5
    iget-object v2, p0, Lcom/arcsoft/avatar2/RecordModule;->w:Lcom/arcsoft/avatar2/gl/GLRenderEngine;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/arcsoft/avatar2/RecordModule;->w:Lcom/arcsoft/avatar2/gl/GLRenderEngine;

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->unInit()V

    iput-object v1, p0, Lcom/arcsoft/avatar2/RecordModule;->w:Lcom/arcsoft/avatar2/gl/GLRenderEngine;

    :cond_6
    iget-object v2, p0, Lcom/arcsoft/avatar2/RecordModule;->x:Lcom/arcsoft/avatar2/gl/GLRenderEngine;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/arcsoft/avatar2/RecordModule;->x:Lcom/arcsoft/avatar2/gl/GLRenderEngine;

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/gl/GLRenderEngine;->unInit()V

    iput-object v1, p0, Lcom/arcsoft/avatar2/RecordModule;->x:Lcom/arcsoft/avatar2/gl/GLRenderEngine;

    :cond_7
    iput-object v1, p0, Lcom/arcsoft/avatar2/RecordModule;->U:Lcom/arcsoft/avatar2/util/ASVLOFFSCREEN;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v1, p0, Lcom/arcsoft/avatar2/RecordModule;->n:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v1, p0, Lcom/arcsoft/avatar2/RecordModule;->o:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v1, p0, Lcom/arcsoft/avatar2/RecordModule;->m:Landroid/opengl/EGLDisplay;

    iput v0, p0, Lcom/arcsoft/avatar2/RecordModule;->r:I

    iput v0, p0, Lcom/arcsoft/avatar2/RecordModule;->s:I

    iput-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->j:Z

    iput-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->k:Z

    iput-boolean v0, p0, Lcom/arcsoft/avatar2/RecordModule;->i:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_8
    const-wide/16 v2, 0x1

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/arcsoft/avatar2/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public updateAvatarConfigInfo(Lcom/arcsoft/avatar2/AvatarEngine;)V
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar2/RecordModule;->aj:Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->setAvatarEngine(Lcom/arcsoft/avatar2/AvatarEngine;)V

    :cond_0
    return-void
.end method
