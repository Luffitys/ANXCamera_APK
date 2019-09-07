.class public Lcom/arcsoft/avatar/RecordModule;
.super Ljava/lang/Object;
.source "RecordModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arcsoft/avatar/RecordModule$MediaResultCallback;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "RecordModule"

.field private static final b:I = 0x1

.field private static final c:I = 0x7d000


# instance fields
.field private A:Z

.field private B:I

.field private C:J

.field private final D:I

.field private E:J

.field private F:J

.field private G:Lcom/arcsoft/avatar/AvatarEngine;

.field private H:Lcom/arcsoft/avatar/recoder/MediaManager;

.field private volatile I:Z

.field private volatile J:Z

.field private K:Z

.field private L:Lcom/arcsoft/avatar/recoder/RecordingListener;

.field private M:Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;

.field private N:Lcom/arcsoft/avatar/RecordModule$MediaResultCallback;

.field private O:Z

.field private P:[Z

.field private Q:I

.field private R:Ljava/lang/Boolean;

.field private S:Landroid/graphics/Bitmap;

.field private T:Lcom/arcsoft/avatar/util/ASVLOFFSCREEN;

.field private volatile U:Z

.field private volatile V:Z

.field private d:Landroid/content/Context;

.field private e:Ljava/util/concurrent/locks/Lock;

.field private f:Ljava/util/concurrent/locks/Lock;

.field private volatile g:Z

.field private volatile h:Z

.field private volatile i:Z

.field private volatile j:Z

.field private k:Z

.field private l:Landroid/opengl/EGLDisplay;

.field private m:Landroid/opengl/EGLContext;

.field private n:Landroid/opengl/EGLSurface;

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/arcsoft/avatar/util/ASVLOFFSCREEN;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/arcsoft/avatar/gl/GLRenderEngine;

.field private w:Lcom/arcsoft/avatar/gl/GLRenderEngine;

.field private x:Lcom/arcsoft/avatar/gl/GLFramebuffer;

.field private y:Lcom/arcsoft/avatar/gl/TextureHelper;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/arcsoft/avatar/RecordModule$MediaResultCallback;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/avatar/RecordModule;->f:Ljava/util/concurrent/locks/Lock;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/arcsoft/avatar/RecordModule;->g:Z

    iput-boolean v0, p0, Lcom/arcsoft/avatar/RecordModule;->h:Z

    iput-boolean v0, p0, Lcom/arcsoft/avatar/RecordModule;->i:Z

    iput-boolean v0, p0, Lcom/arcsoft/avatar/RecordModule;->j:Z

    const/16 v1, 0x10e

    iput v1, p0, Lcom/arcsoft/avatar/RecordModule;->B:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/arcsoft/avatar/RecordModule;->C:J

    const v3, 0xf4240

    iput v3, p0, Lcom/arcsoft/avatar/RecordModule;->D:I

    iput-wide v1, p0, Lcom/arcsoft/avatar/RecordModule;->E:J

    iput-wide v1, p0, Lcom/arcsoft/avatar/RecordModule;->F:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/arcsoft/avatar/RecordModule;->L:Lcom/arcsoft/avatar/recoder/RecordingListener;

    iput-object v1, p0, Lcom/arcsoft/avatar/RecordModule;->M:Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;

    iput-object v1, p0, Lcom/arcsoft/avatar/RecordModule;->N:Lcom/arcsoft/avatar/RecordModule$MediaResultCallback;

    iput-boolean v0, p0, Lcom/arcsoft/avatar/RecordModule;->O:Z

    const/4 v1, 0x3

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/arcsoft/avatar/RecordModule;->P:[Z

    iput v0, p0, Lcom/arcsoft/avatar/RecordModule;->Q:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/arcsoft/avatar/RecordModule;->U:Z

    iput-boolean v0, p0, Lcom/arcsoft/avatar/RecordModule;->V:Z

    iput-object p1, p0, Lcom/arcsoft/avatar/RecordModule;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/arcsoft/avatar/RecordModule;->N:Lcom/arcsoft/avatar/RecordModule$MediaResultCallback;

    return-void
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

.method private a()V
    .locals 1

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/arcsoft/avatar/RecordModule;->m:Landroid/opengl/EGLContext;

    return-void
.end method

.method private a(I)V
    .locals 2

    if-gtz p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "recordingIfNeed textureId = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecordModule"

    invoke-static {p1, p0}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/arcsoft/avatar/RecordModule;->I:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/arcsoft/avatar/RecordModule;->H:Lcom/arcsoft/avatar/recoder/MediaManager;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/arcsoft/avatar/RecordModule;->K:Z

    if-eqz v0, :cond_2

    const-string v0, "video_test_log"

    const-string v1, "-- recordingIfNeed 1--"

    invoke-static {v0, v1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/avatar/RecordModule;->H:Lcom/arcsoft/avatar/recoder/MediaManager;

    invoke-virtual {v1, p1}, Lcom/arcsoft/avatar/recoder/MediaManager;->drawSurfaceWithTextureId(I)V

    invoke-direct {p0}, Lcom/arcsoft/avatar/RecordModule;->b()V

    const-string p0, "-- recordingIfNeed 2--"

    invoke-static {v0, p0}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(IIIZ)V
    .locals 7

    iget-boolean v0, p0, Lcom/arcsoft/avatar/RecordModule;->J:Z

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    iget-boolean p2, p0, Lcom/arcsoft/avatar/RecordModule;->J:Z

    if-eqz p2, :cond_1

    if-lez p1, :cond_1

    const-string p1, "video_test_log"

    const-string p2, "-- captureIfNeed 1--"

    invoke-static {p1, p2}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/arcsoft/avatar/RecordModule;->q:I

    iget p3, p0, Lcom/arcsoft/avatar/RecordModule;->r:I

    mul-int/2addr p2, p3

    mul-int/lit8 p2, p2, 0x4

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const-string p3, "-- captureIfNeed 2--"

    invoke-static {p1, p3}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/arcsoft/avatar/RecordModule;->s:I

    iget v1, p0, Lcom/arcsoft/avatar/RecordModule;->t:I

    iget v2, p0, Lcom/arcsoft/avatar/RecordModule;->q:I

    iget v3, p0, Lcom/arcsoft/avatar/RecordModule;->r:I

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/arcsoft/avatar/RecordModule;->J:Z

    const-string p3, "-- captureIfNeed 3--"

    invoke-static {p1, p3}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/arcsoft/avatar/RecordModule;->N:Lcom/arcsoft/avatar/RecordModule$MediaResultCallback;

    if-eqz p0, :cond_1

    invoke-interface {p0, p2}, Lcom/arcsoft/avatar/RecordModule$MediaResultCallback;->onCaptureResult(Ljava/nio/ByteBuffer;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/arcsoft/avatar/util/ASVLOFFSCREEN;)V
    .locals 4

    const-string v0, "Test_Arc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putPreviewInQueue  mPreviewQueue.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/arcsoft/avatar/RecordModule;->u:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CKK"

    invoke-static {v2, v1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/avatar/RecordModule;->u:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    const-string v1, "mPreviewQueue.poll()"

    invoke-static {v2, v1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/avatar/RecordModule;->u:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPreviewQueue.offer w = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/util/ASVLOFFSCREEN;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " h = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/util/ASVLOFFSCREEN;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " st = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar/util/ASVLOFFSCREEN;->getRowStride()[I

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/arcsoft/avatar/RecordModule;->u:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putPreviewInQueue  error3 = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putPreviewInQueue  error2 = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putPreviewInQueue  error1 = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/ClassCastException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private a(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/arcsoft/avatar/RecordModule;->s:I

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/arcsoft/avatar/RecordModule;->t:I

    :cond_1
    iget p1, p0, Lcom/arcsoft/avatar/RecordModule;->q:I

    iget p0, p0, Lcom/arcsoft/avatar/RecordModule;->r:I

    invoke-static {v1, v0, p1, p0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method private b()V
    .locals 14

    iget-object v0, p0, Lcom/arcsoft/avatar/RecordModule;->H:Lcom/arcsoft/avatar/recoder/MediaManager;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/recoder/MediaManager;->getMuxerTimeElapsed()J

    move-result-wide v0

    iget-object v2, p0, Lcom/arcsoft/avatar/RecordModule;->H:Lcom/arcsoft/avatar/recoder/MediaManager;

    invoke-virtual {v2}, Lcom/arcsoft/avatar/recoder/MediaManager;->getMuxerSizeRecorded()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/arcsoft/avatar/RecordModule;->C:J

    invoke-direct {p0, v4, v5}, Lcom/arcsoft/avatar/RecordModule;->a(J)J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long v6, v0, v6

    iget-wide v8, p0, Lcom/arcsoft/avatar/RecordModule;->E:J

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    iput-wide v6, p0, Lcom/arcsoft/avatar/RecordModule;->E:J

    iget-object v6, p0, Lcom/arcsoft/avatar/RecordModule;->L:Lcom/arcsoft/avatar/recoder/RecordingListener;

    if-eqz v6, :cond_0

    const/16 v7, 0x102

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/arcsoft/avatar/recoder/RecordingListener;->onRecordingListener(ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/arcsoft/avatar/RecordModule;->L:Lcom/arcsoft/avatar/recoder/RecordingListener;

    const/16 v7, 0x104

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/arcsoft/avatar/recoder/RecordingListener;->onRecordingListener(ILjava/lang/Object;)V

    :cond_0
    iget-wide v6, p0, Lcom/arcsoft/avatar/RecordModule;->F:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    const-string v11, "video_test_log"

    if-lez v10, :cond_1

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMaxRecordingDuration = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, p0, Lcom/arcsoft/avatar/RecordModule;->F:J

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ,timeElapsed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "-- controlRecordingProcess1 stopRecording--"

    invoke-static {v11, v6}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/arcsoft/avatar/RecordModule;->stopRecording()V

    iget-object v6, p0, Lcom/arcsoft/avatar/RecordModule;->L:Lcom/arcsoft/avatar/recoder/RecordingListener;

    if-eqz v6, :cond_1

    const/16 v7, 0x101

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v7, v0}, Lcom/arcsoft/avatar/recoder/RecordingListener;->onRecordingListener(ILjava/lang/Object;)V

    :cond_1
    cmp-long v0, v4, v8

    if-lez v0, :cond_2

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjuestedMaxSizle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ,sizeFile = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "-- controlRecordingProcess2 stopRecording--"

    invoke-static {v11, v0}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/arcsoft/avatar/RecordModule;->stopRecording()V

    iget-object p0, p0, Lcom/arcsoft/avatar/RecordModule;->L:Lcom/arcsoft/avatar/recoder/RecordingListener;

    if-eqz p0, :cond_2

    const/16 v0, 0x103

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/arcsoft/avatar/recoder/RecordingListener;->onRecordingListener(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private c()Z
    .locals 7

    iget-object v0, p0, Lcom/arcsoft/avatar/RecordModule;->M:Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;

    const-string v1, "CheckOutLine"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-static {v1, v0}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/arcsoft/avatar/RecordModule;->O:Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->shelterIsNull()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "shelterFlags == null"

    invoke-static {v1, v0}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/arcsoft/avatar/RecordModule;->O:Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "faceCount = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/arcsoft/avatar/RecordModule;->M:Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;

    invoke-virtual {v3}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getFaceCount()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/avatar/RecordModule;->M:Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->getFaceCount()I

    move-result v0

    if-gtz v0, :cond_2

    iput-boolean v2, p0, Lcom/arcsoft/avatar/RecordModule;->O:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/arcsoft/avatar/RecordModule;->M:Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;->checkFaceBlocking()Z

    move-result v0

    iget v3, p0, Lcom/arcsoft/avatar/RecordModule;->Q:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-le v3, v4, :cond_3

    iput v5, p0, Lcom/arcsoft/avatar/RecordModule;->Q:I

    :cond_3
    iget-object v3, p0, Lcom/arcsoft/avatar/RecordModule;->P:[Z

    iget v6, p0, Lcom/arcsoft/avatar/RecordModule;->Q:I

    aput-boolean v0, v3, v6

    add-int/2addr v6, v2

    iput v6, p0, Lcom/arcsoft/avatar/RecordModule;->Q:I

    aget-boolean v0, v3, v5

    if-eqz v0, :cond_4

    aget-boolean v0, v3, v2

    if-eqz v0, :cond_4

    aget-boolean v0, v3, v4

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lcom/arcsoft/avatar/RecordModule;->O:Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/arcsoft/avatar/RecordModule;->P:[Z

    aget-boolean v3, v0, v5

    if-nez v3, :cond_5

    aget-boolean v2, v0, v2

    if-nez v2, :cond_5

    aget-boolean v0, v0, v4

    if-nez v0, :cond_5

    iput-boolean v5, p0, Lcom/arcsoft/avatar/RecordModule;->O:Z

    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- > mBlockingFaces <---"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/arcsoft/avatar/RecordModule;->O:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/arcsoft/avatar/RecordModule;->O:Z

    return p0
.end method


# virtual methods
.method public capture()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-boolean v0, p0, Lcom/arcsoft/avatar/RecordModule;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/arcsoft/avatar/RecordModule;->J:Z

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public changeHumanTemplate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "test_log_c"

    const-string v1, "-- changeHumanTemplate in--"

    invoke-static {v0, v1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- templatePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- configPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/arcsoft/avatar/RecordModule;->V:Z

    iget-object v1, p0, Lcom/arcsoft/avatar/RecordModule;->G:Lcom/arcsoft/avatar/AvatarEngine;

    invoke-virtual {v1, p1}, Lcom/arcsoft/avatar/AvatarEngine;->setTemplatePath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/arcsoft/avatar/RecordModule;->G:Lcom/arcsoft/avatar/AvatarEngine;

    invoke-virtual {p1, p2}, Lcom/arcsoft/avatar/AvatarEngine;->loadConfig(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/arcsoft/avatar/RecordModule;->V:Z

    const-string p0, "-- changeHumanTemplate out--"

    invoke-static {v0, p0}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAvatarEngine()Lcom/arcsoft/avatar/AvatarEngine;
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar/RecordModule;->G:Lcom/arcsoft/avatar/AvatarEngine;

    return-object p0
.end method

.method public init(IIILcom/arcsoft/avatar/AvatarEngine;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/arcsoft/avatar/RecordModule;->g:Z

    iput-boolean v0, p0, Lcom/arcsoft/avatar/RecordModule;->h:Z

    iput-boolean v0, p0, Lcom/arcsoft/avatar/RecordModule;->i:Z

    iput-boolean v0, p0, Lcom/arcsoft/avatar/RecordModule;->j:Z

    iput-boolean v0, p0, Lcom/arcsoft/avatar/RecordModule;->z:Z

    iput-boolean v0, p0, Lcom/arcsoft/avatar/RecordModule;->K:Z

    iput-boolean v0, p0, Lcom/arcsoft/avatar/RecordModule;->I:Z

    iput p2, p0, Lcom/arcsoft/avatar/RecordModule;->o:I

    iput p3, p0, Lcom/arcsoft/avatar/RecordModule;->p:I

    iput-object p4, p0, Lcom/arcsoft/avatar/RecordModule;->G:Lcom/arcsoft/avatar/AvatarEngine;

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/arcsoft/avatar/RecordModule;->u:Ljava/util/Queue;

    iget-object p2, p0, Lcom/arcsoft/avatar/RecordModule;->u:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->clear()V

    iput-boolean p5, p0, Lcom/arcsoft/avatar/RecordModule;->A:Z

    iput p1, p0, Lcom/arcsoft/avatar/RecordModule;->B:I

    iput-boolean v0, p0, Lcom/arcsoft/avatar/RecordModule;->k:Z

    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object p1, p0, Lcom/arcsoft/avatar/RecordModule;->l:Landroid/opengl/EGLDisplay;

    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object p1, p0, Lcom/arcsoft/avatar/RecordModule;->m:Landroid/opengl/EGLContext;

    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object p1, p0, Lcom/arcsoft/avatar/RecordModule;->n:Landroid/opengl/EGLSurface;

    new-instance p1, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;

    invoke-direct {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;-><init>()V

    iput-object p1, p0, Lcom/arcsoft/avatar/RecordModule;->M:Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/arcsoft/avatar/RecordModule;->g:Z

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/avatar/RecordModule;->T:Lcom/arcsoft/avatar/util/ASVLOFFSCREEN;

    return-void
.end method

.method public pauseRecording()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-boolean v0, p0, Lcom/arcsoft/avatar/RecordModule;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v0, p0, Lcom/arcsoft/avatar/RecordModule;->H:Lcom/arcsoft/avatar/recoder/MediaManager;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/arcsoft/avatar/RecordModule;->K:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/arcsoft/avatar/RecordModule;->I:Z

    invoke-virtual {v0}, Lcom/arcsoft/avatar/recoder/MediaManager;->pauseRecording()I

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/arcsoft/avatar/RecordModule;->U:Z

    return-void
.end method

.method public resumeRecording()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-boolean v0, p0, Lcom/arcsoft/avatar/RecordModule;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v0, p0, Lcom/arcsoft/avatar/RecordModule;->H:Lcom/arcsoft/avatar/recoder/MediaManager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/arcsoft/avatar/RecordModule;->K:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/arcsoft/avatar/RecordModule;->I:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/arcsoft/avatar/RecordModule;->H:Lcom/arcsoft/avatar/recoder/MediaManager;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/recoder/MediaManager;->resumeRecording()I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/arcsoft/avatar/RecordModule;->I:Z

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public setAvatarEngine(Lcom/arcsoft/avatar/AvatarEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/avatar/RecordModule;->G:Lcom/arcsoft/avatar/AvatarEngine;

    return-void
.end method

.method public setDrawScope(IIII)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar/RecordModule;->s:I

    iput p2, p0, Lcom/arcsoft/avatar/RecordModule;->t:I

    iput p3, p0, Lcom/arcsoft/avatar/RecordModule;->q:I

    iput p4, p0, Lcom/arcsoft/avatar/RecordModule;->r:I

    return-void
.end method

.method public setMirror(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/arcsoft/avatar/RecordModule;->A:Z

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar/RecordModule;->o:I

    iput p2, p0, Lcom/arcsoft/avatar/RecordModule;->p:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/arcsoft/avatar/RecordModule;->U:Z

    return-void
.end method

.method public setmImageOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar/RecordModule;->B:I

    return-void
.end method

.method public startProcess(Lcom/arcsoft/avatar/util/ASVLOFFSCREEN;IZ)Z
    .locals 12
    .param p1    # Lcom/arcsoft/avatar/util/ASVLOFFSCREEN;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v9, "avatarProcessWithInfo"

    const-string v10, "performance"

    const-string v2, "buildNV21SingleBuffer"

    const-string v3, "lock -> process unlock"

    :try_start_0
    iget-object v4, p0, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-boolean v4, p0, Lcom/arcsoft/avatar/RecordModule;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v5, "RecordModule"

    const/4 v6, 0x1

    if-nez v4, :cond_0

    :try_start_1
    const-string v0, "startProcess_1() failed, engine is not inited. "

    invoke-static {v5, v0}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object v0, p0, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v6

    :cond_0
    iget-object v4, p0, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-nez p1, :cond_1

    return v6

    :cond_1
    const/4 v11, 0x0

    :try_start_2
    iput-boolean v6, p0, Lcom/arcsoft/avatar/RecordModule;->i:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v4, "lock -> process lock"

    invoke-static {v5, v4}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/arcsoft/avatar/RecordModule;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    invoke-static {v2}, Lcom/arcsoft/avatar/util/d;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/arcsoft/avatar/RecordModule;->T:Lcom/arcsoft/avatar/util/ASVLOFFSCREEN;

    invoke-static {v10, v2}, Lcom/arcsoft/avatar/util/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v2, p0, Lcom/arcsoft/avatar/RecordModule;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-static {v5, v3}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v6, p0, Lcom/arcsoft/avatar/RecordModule;->h:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez p3, :cond_2

    iput-boolean v11, p0, Lcom/arcsoft/avatar/RecordModule;->i:Z

    return v6

    :cond_2
    :try_start_5
    invoke-static {v9}, Lcom/arcsoft/avatar/util/d;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/arcsoft/avatar/RecordModule;->G:Lcom/arcsoft/avatar/AvatarEngine;

    const/16 v4, 0x5a

    iget-boolean v5, p0, Lcom/arcsoft/avatar/RecordModule;->A:Z

    iget-object v7, p0, Lcom/arcsoft/avatar/RecordModule;->M:Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;

    const/4 v8, 0x0

    move-object v3, p1

    move v6, p2

    invoke-virtual/range {v2 .. v8}, Lcom/arcsoft/avatar/AvatarEngine;->avatarProcessWithInfoEx(Lcom/arcsoft/avatar/util/ASVLOFFSCREEN;IZILcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;Z)I

    invoke-static {v10, v9}, Lcom/arcsoft/avatar/util/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/arcsoft/avatar/RecordModule;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/arcsoft/avatar/RecordModule;->U:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/arcsoft/avatar/RecordModule;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-static {v5, v3}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

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
    iput-boolean v11, p0, Lcom/arcsoft/avatar/RecordModule;->i:Z

    iget-boolean v0, p0, Lcom/arcsoft/avatar/RecordModule;->U:Z

    return v0

    :goto_1
    iput-boolean v11, p0, Lcom/arcsoft/avatar/RecordModule;->i:Z

    throw v0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

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
    iget-object v3, v1, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-boolean v3, v1, Lcom/arcsoft/avatar/RecordModule;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v4, "RecordModule"

    const/4 v7, 0x1

    if-nez v3, :cond_0

    :try_start_1
    const-string v0, "startProcess_1() failed, engine is not inited. "

    invoke-static {v4, v0}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object v0, v1, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v7

    :cond_0
    iget-object v3, v1, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

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
    iput-boolean v7, v1, Lcom/arcsoft/avatar/RecordModule;->i:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v3, "lock -> process lock"

    invoke-static {v4, v3}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/arcsoft/avatar/RecordModule;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    new-instance v3, Lcom/arcsoft/avatar/util/ASVLOFFSCREEN;

    invoke-direct {v3, p1, v6, v6, v5}, Lcom/arcsoft/avatar/util/ASVLOFFSCREEN;-><init>([BIII)V

    iput-object v3, v1, Lcom/arcsoft/avatar/RecordModule;->T:Lcom/arcsoft/avatar/util/ASVLOFFSCREEN;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v3, v1, Lcom/arcsoft/avatar/RecordModule;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-static {v4, v2}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v7, v1, Lcom/arcsoft/avatar/RecordModule;->h:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez p5, :cond_2

    iput-boolean v12, v1, Lcom/arcsoft/avatar/RecordModule;->i:Z

    return v7

    :cond_2
    :try_start_5
    invoke-static {v11}, Lcom/arcsoft/avatar/util/d;->a(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/arcsoft/avatar/RecordModule;->G:Lcom/arcsoft/avatar/AvatarEngine;

    const/16 v7, 0x5a

    iget-boolean v8, v1, Lcom/arcsoft/avatar/RecordModule;->A:Z

    iget-object v10, v1, Lcom/arcsoft/avatar/RecordModule;->M:Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;

    move-object v3, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p3

    move v9, p2

    invoke-virtual/range {v2 .. v10}, Lcom/arcsoft/avatar/AvatarEngine;->avatarProcessWithInfo([BIIIIZILcom/arcsoft/avatar/AvatarConfig$ASAvatarProcessInfo;)I

    const-string v0, "performance"

    invoke-static {v0, v11}, Lcom/arcsoft/avatar/util/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/arcsoft/avatar/RecordModule;->c()Z

    move-result v0

    iput-boolean v0, v1, Lcom/arcsoft/avatar/RecordModule;->U:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v3, v1, Lcom/arcsoft/avatar/RecordModule;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-static {v4, v2}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

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
    iput-boolean v12, v1, Lcom/arcsoft/avatar/RecordModule;->i:Z

    iget-boolean v0, v1, Lcom/arcsoft/avatar/RecordModule;->U:Z

    return v0

    :goto_1
    iput-boolean v12, v1, Lcom/arcsoft/avatar/RecordModule;->i:Z

    throw v0

    :cond_3
    :goto_2
    return v7

    :catchall_2
    move-exception v0

    iget-object v1, v1, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public startRecording(Ljava/io/FileDescriptor;Lcom/arcsoft/avatar/recoder/RecordingListener;IIIILjava/lang/String;)V
    .locals 12
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

    move v0, p3

    const-string v10, "video_test_log"

    const-string v2, "-- startRecording 1--"

    invoke-static {v10, v2}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, v1, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-boolean v2, v1, Lcom/arcsoft/avatar/RecordModule;->g:Z

    if-nez v2, :cond_0

    const-string v0, "RecordModule"

    const-string v2, "startRecording-> StickerApi is not init."

    invoke-static {v0, v2}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    iget-object v2, v1, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz p4, :cond_6

    if-eqz p5, :cond_6

    if-nez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v2, v1, Lcom/arcsoft/avatar/RecordModule;->H:Lcom/arcsoft/avatar/recoder/MediaManager;

    if-nez v2, :cond_5

    if-eqz v0, :cond_3

    const/16 v2, 0x5a

    if-eq v2, v0, :cond_3

    const/16 v2, 0xb4

    if-eq v2, v0, :cond_3

    const/16 v2, 0x10e

    if-ne v2, v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StickerApi-> startRecording(...) screenOrientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is invalid"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    move-object v9, p2

    iput-object v9, v1, Lcom/arcsoft/avatar/RecordModule;->L:Lcom/arcsoft/avatar/recoder/RecordingListener;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iget-object v3, v1, Lcom/arcsoft/avatar/RecordModule;->m:Landroid/opengl/EGLContext;

    if-ne v2, v3, :cond_4

    invoke-direct {p0}, Lcom/arcsoft/avatar/RecordModule;->a()V

    :cond_4
    new-instance v11, Lcom/arcsoft/avatar/recoder/MediaManager;

    iget v6, v1, Lcom/arcsoft/avatar/RecordModule;->B:I

    iget-boolean v7, v1, Lcom/arcsoft/avatar/RecordModule;->A:Z

    move-object v2, v11

    move-object v3, p1

    move/from16 v4, p4

    move/from16 v5, p5

    move v8, p3

    move-object v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/arcsoft/avatar/recoder/MediaManager;-><init>(Ljava/io/FileDescriptor;IIIZILcom/arcsoft/avatar/recoder/RecordingListener;)V

    iput-object v11, v1, Lcom/arcsoft/avatar/RecordModule;->H:Lcom/arcsoft/avatar/recoder/MediaManager;

    iget-object v0, v1, Lcom/arcsoft/avatar/RecordModule;->H:Lcom/arcsoft/avatar/recoder/MediaManager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/arcsoft/avatar/recoder/MediaManager;->setEncoderCount(I)V

    iget-object v0, v1, Lcom/arcsoft/avatar/RecordModule;->H:Lcom/arcsoft/avatar/recoder/MediaManager;

    iget-object v2, v1, Lcom/arcsoft/avatar/RecordModule;->m:Landroid/opengl/EGLContext;

    const/4 v3, 0x1

    move/from16 v4, p6

    move-object/from16 v5, p7

    invoke-virtual {v0, v2, v4, v3, v5}, Lcom/arcsoft/avatar/recoder/MediaManager;->initVideoEncoderWithSharedContext(Landroid/opengl/EGLContext;IZLjava/lang/String;)V

    iget-object v0, v1, Lcom/arcsoft/avatar/RecordModule;->H:Lcom/arcsoft/avatar/recoder/MediaManager;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/recoder/MediaManager;->initAudioEncoder()V

    iget-object v0, v1, Lcom/arcsoft/avatar/RecordModule;->H:Lcom/arcsoft/avatar/recoder/MediaManager;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/recoder/MediaManager;->startRecording()V

    iput-boolean v3, v1, Lcom/arcsoft/avatar/RecordModule;->K:Z

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/arcsoft/avatar/RecordModule;->I:Z

    const-string v0, "-- startRecording 2--"

    invoke-static {v10, v0}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Recording has been started already."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v1, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public startRecording(Ljava/lang/String;Lcom/arcsoft/avatar/recoder/RecordingListener;IIIILjava/lang/String;)V
    .locals 12
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

    move v0, p3

    const-string v10, "video_test_log"

    const-string v2, "-- startRecording 1--"

    invoke-static {v10, v2}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, v1, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-boolean v2, v1, Lcom/arcsoft/avatar/RecordModule;->g:Z

    if-nez v2, :cond_0

    const-string v0, "RecordModule"

    const-string v2, "startRecording-> StickerApi is not init."

    invoke-static {v0, v2}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    iget-object v2, v1, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz p4, :cond_6

    if-eqz p5, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v2, v1, Lcom/arcsoft/avatar/RecordModule;->H:Lcom/arcsoft/avatar/recoder/MediaManager;

    if-nez v2, :cond_5

    if-eqz v0, :cond_3

    const/16 v2, 0x5a

    if-eq v2, v0, :cond_3

    const/16 v2, 0xb4

    if-eq v2, v0, :cond_3

    const/16 v2, 0x10e

    if-ne v2, v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StickerApi-> startRecording(...) screenOrientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is invalid"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    move-object v9, p2

    iput-object v9, v1, Lcom/arcsoft/avatar/RecordModule;->L:Lcom/arcsoft/avatar/recoder/RecordingListener;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iget-object v3, v1, Lcom/arcsoft/avatar/RecordModule;->m:Landroid/opengl/EGLContext;

    if-ne v2, v3, :cond_4

    invoke-direct {p0}, Lcom/arcsoft/avatar/RecordModule;->a()V

    :cond_4
    new-instance v11, Lcom/arcsoft/avatar/recoder/MediaManager;

    iget v6, v1, Lcom/arcsoft/avatar/RecordModule;->B:I

    iget-boolean v7, v1, Lcom/arcsoft/avatar/RecordModule;->A:Z

    move-object v2, v11

    move-object v3, p1

    move/from16 v4, p4

    move/from16 v5, p5

    move v8, p3

    move-object v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/arcsoft/avatar/recoder/MediaManager;-><init>(Ljava/lang/String;IIIZILcom/arcsoft/avatar/recoder/RecordingListener;)V

    iput-object v11, v1, Lcom/arcsoft/avatar/RecordModule;->H:Lcom/arcsoft/avatar/recoder/MediaManager;

    iget-object v0, v1, Lcom/arcsoft/avatar/RecordModule;->H:Lcom/arcsoft/avatar/recoder/MediaManager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/arcsoft/avatar/recoder/MediaManager;->setEncoderCount(I)V

    iget-object v0, v1, Lcom/arcsoft/avatar/RecordModule;->H:Lcom/arcsoft/avatar/recoder/MediaManager;

    iget-object v2, v1, Lcom/arcsoft/avatar/RecordModule;->m:Landroid/opengl/EGLContext;

    const/4 v3, 0x1

    move/from16 v4, p6

    move-object/from16 v5, p7

    invoke-virtual {v0, v2, v4, v3, v5}, Lcom/arcsoft/avatar/recoder/MediaManager;->initVideoEncoderWithSharedContext(Landroid/opengl/EGLContext;IZLjava/lang/String;)V

    iget-object v0, v1, Lcom/arcsoft/avatar/RecordModule;->H:Lcom/arcsoft/avatar/recoder/MediaManager;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/recoder/MediaManager;->initAudioEncoder()V

    iget-object v0, v1, Lcom/arcsoft/avatar/RecordModule;->H:Lcom/arcsoft/avatar/recoder/MediaManager;

    invoke-virtual {v0}, Lcom/arcsoft/avatar/recoder/MediaManager;->startRecording()V

    iput-boolean v3, v1, Lcom/arcsoft/avatar/RecordModule;->K:Z

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/arcsoft/avatar/RecordModule;->I:Z

    const-string v0, "-- startRecording 2--"

    invoke-static {v10, v0}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Recording has been started already."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v1, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public startRender(IZ)V
    .locals 0

    return-void
.end method

.method public startRender(IZIIZ[I[BZ)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p6

    const-string v2, "lock -> startRender unlock"

    const-string v3, "times"

    const-string v4, "render lock"

    :try_start_0
    iget-object v5, v1, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-boolean v5, v1, Lcom/arcsoft/avatar/RecordModule;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v13, "RecordModule"

    if-eqz v5, :cond_8

    :try_start_1
    iget-boolean v5, v1, Lcom/arcsoft/avatar/RecordModule;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v5, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v5, v1, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v5, v1, Lcom/arcsoft/avatar/RecordModule;->T:Lcom/arcsoft/avatar/util/ASVLOFFSCREEN;

    if-nez v5, :cond_1

    const-string v0, "mBackgroundBuffer == null"

    invoke-static {v13, v0}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v14, 0x1

    const/4 v15, 0x0

    :try_start_2
    iput-boolean v14, v1, Lcom/arcsoft/avatar/RecordModule;->j:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v5, "lock -> startRender lock"

    invoke-static {v13, v5}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/arcsoft/avatar/util/d;->a(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/arcsoft/avatar/RecordModule;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v5, v1, Lcom/arcsoft/avatar/RecordModule;->T:Lcom/arcsoft/avatar/util/ASVLOFFSCREEN;

    invoke-virtual {v5}, Lcom/arcsoft/avatar/util/ASVLOFFSCREEN;->clone()Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lcom/arcsoft/avatar/util/ASVLOFFSCREEN;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v5, v1, Lcom/arcsoft/avatar/RecordModule;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-static {v3, v4}, Lcom/arcsoft/avatar/util/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v2}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lcom/arcsoft/avatar/util/ASVLOFFSCREEN;->getHeight()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {v12}, Lcom/arcsoft/avatar/util/ASVLOFFSCREEN;->getWidth()I

    move-result v2

    if-gtz v2, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v12}, Lcom/arcsoft/avatar/util/ASVLOFFSCREEN;->getHeight()I

    move-result v2

    invoke-virtual {v12}, Lcom/arcsoft/avatar/util/ASVLOFFSCREEN;->getWidth()I

    move-result v3

    if-eqz p8, :cond_5

    iget-boolean v4, v1, Lcom/arcsoft/avatar/RecordModule;->U:Z

    if-nez v4, :cond_5

    iget-boolean v4, v1, Lcom/arcsoft/avatar/RecordModule;->V:Z

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v4, v1, Lcom/arcsoft/avatar/RecordModule;->J:Z

    if-eqz v4, :cond_4

    invoke-virtual {v12}, Lcom/arcsoft/avatar/util/ASVLOFFSCREEN;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v12}, Lcom/arcsoft/avatar/util/ASVLOFFSCREEN;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    :cond_4
    move/from16 v16, v2

    move v8, v3

    iget-object v2, v1, Lcom/arcsoft/avatar/RecordModule;->G:Lcom/arcsoft/avatar/AvatarEngine;

    move-object v3, v12

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, v16

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object v14, v12

    move-object/from16 v12, p7

    invoke-virtual/range {v2 .. v12}, Lcom/arcsoft/avatar/AvatarEngine;->renderWithBackground(Lcom/arcsoft/avatar/util/ASVLOFFSCREEN;IZIIIIZ[I[B)I

    move/from16 v2, v16

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    :goto_0
    move-object v14, v12

    iget-object v3, v1, Lcom/arcsoft/avatar/RecordModule;->G:Lcom/arcsoft/avatar/AvatarEngine;

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual {v3, v14, v4, v5, v0}, Lcom/arcsoft/avatar/AvatarEngine;->renderBackgroundWithImageData(Lcom/arcsoft/avatar/util/ASVLOFFSCREEN;IZ[I)I

    move v3, v15

    :goto_1
    if-eqz v0, :cond_7

    iget-object v4, v1, Lcom/arcsoft/avatar/RecordModule;->G:Lcom/arcsoft/avatar/AvatarEngine;

    aget v5, v0, v15

    invoke-virtual {v4, v5, v15, v15}, Lcom/arcsoft/avatar/AvatarEngine;->renderBackgroundWithTexture(IIZ)I

    aget v4, v0, v15

    invoke-virtual {v14}, Lcom/arcsoft/avatar/util/ASVLOFFSCREEN;->getHeight()I

    move-result v5

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/arcsoft/avatar/RecordModule;->a(IIIZ)V

    aget v0, v0, v15

    invoke-direct {v1, v0}, Lcom/arcsoft/avatar/RecordModule;->a(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :cond_6
    :goto_2
    iput-boolean v15, v1, Lcom/arcsoft/avatar/RecordModule;->j:Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v5, v1, Lcom/arcsoft/avatar/RecordModule;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-static {v3, v4}, Lcom/arcsoft/avatar/util/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13, v2}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startRender meet error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_7
    :goto_3
    iput-boolean v15, v1, Lcom/arcsoft/avatar/RecordModule;->j:Z

    return-void

    :goto_4
    iput-boolean v15, v1, Lcom/arcsoft/avatar/RecordModule;->j:Z

    throw v0

    :cond_8
    :goto_5
    :try_start_7
    const-string v0, "startRender() failed, engine is not inited or startRender process not ready! "

    invoke-static {v13, v0}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    iget-object v0, v1, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_2
    move-exception v0

    iget-object v1, v1, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public stopRecording()V
    .locals 3

    const-string v0, "video_test_log"

    const-string v1, "-- stopRecording 1--"

    invoke-static {v0, v1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-boolean v1, p0, Lcom/arcsoft/avatar/RecordModule;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :catch_0
    :cond_0
    iget-object v1, p0, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-boolean v1, p0, Lcom/arcsoft/avatar/RecordModule;->K:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v1, "-- stopRecording 2--"

    invoke-static {v0, v1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/avatar/RecordModule;->H:Lcom/arcsoft/avatar/recoder/MediaManager;

    if-eqz v1, :cond_2

    const-string v1, "-- stopRecording 3--"

    invoke-static {v0, v1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/arcsoft/avatar/RecordModule;->resumeRecording()V

    const-string v1, "-- stopRecording 4--x"

    invoke-static {v0, v1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/arcsoft/avatar/RecordModule;->K:Z

    iget-object v2, p0, Lcom/arcsoft/avatar/RecordModule;->H:Lcom/arcsoft/avatar/recoder/MediaManager;

    invoke-virtual {v2}, Lcom/arcsoft/avatar/recoder/MediaManager;->stopRecording()V

    const-string v2, "-- stopRecording 5--"

    invoke-static {v0, v2}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/arcsoft/avatar/RecordModule;->H:Lcom/arcsoft/avatar/recoder/MediaManager;

    iput-boolean v1, p0, Lcom/arcsoft/avatar/RecordModule;->I:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/arcsoft/avatar/RecordModule;->F:J

    iput-wide v1, p0, Lcom/arcsoft/avatar/RecordModule;->E:J

    iput-wide v1, p0, Lcom/arcsoft/avatar/RecordModule;->C:J

    iget-object p0, p0, Lcom/arcsoft/avatar/RecordModule;->N:Lcom/arcsoft/avatar/RecordModule$MediaResultCallback;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/arcsoft/avatar/RecordModule$MediaResultCallback;->onVideoResult()V

    :cond_2
    const-string p0, "-- stopRecording 6--"

    invoke-static {v0, p0}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unInit()V
    .locals 5

    const-string v0, "video_test_log"

    const-string v1, "-- unInit 1--"

    invoke-static {v0, v1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/arcsoft/avatar/RecordModule;->stopRecording()V

    const-string v1, "-- unInit 2--"

    invoke-static {v0, v1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-boolean v1, p0, Lcom/arcsoft/avatar/RecordModule;->g:Z

    if-nez v1, :cond_0

    const-string v0, "RecordModule"

    const-string v1, "uninit () failed, engine is not inited. "

    invoke-static {v0, v1}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/arcsoft/avatar/RecordModule;->g:Z

    const/16 v2, 0x64

    :goto_0
    iget-boolean v3, p0, Lcom/arcsoft/avatar/RecordModule;->i:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/arcsoft/avatar/RecordModule;->j:Z

    if-eqz v3, :cond_2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_8

    :cond_2
    iput-boolean v1, p0, Lcom/arcsoft/avatar/RecordModule;->k:Z

    iput-boolean v1, p0, Lcom/arcsoft/avatar/RecordModule;->J:Z

    iget-object v2, p0, Lcom/arcsoft/avatar/RecordModule;->u:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/arcsoft/avatar/RecordModule;->u:Ljava/util/Queue;

    iget-object v3, p0, Lcom/arcsoft/avatar/RecordModule;->S:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/arcsoft/avatar/RecordModule;->S:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/arcsoft/avatar/RecordModule;->S:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    iput-object v2, p0, Lcom/arcsoft/avatar/RecordModule;->S:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v3, p0, Lcom/arcsoft/avatar/RecordModule;->y:Lcom/arcsoft/avatar/gl/TextureHelper;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/arcsoft/avatar/RecordModule;->y:Lcom/arcsoft/avatar/gl/TextureHelper;

    invoke-virtual {v3}, Lcom/arcsoft/avatar/gl/TextureHelper;->deleteTexture()V

    iput-object v2, p0, Lcom/arcsoft/avatar/RecordModule;->y:Lcom/arcsoft/avatar/gl/TextureHelper;

    :cond_4
    iget-object v3, p0, Lcom/arcsoft/avatar/RecordModule;->x:Lcom/arcsoft/avatar/gl/GLFramebuffer;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/arcsoft/avatar/RecordModule;->x:Lcom/arcsoft/avatar/gl/GLFramebuffer;

    invoke-virtual {v3}, Lcom/arcsoft/avatar/gl/GLFramebuffer;->unInit()V

    iput-object v2, p0, Lcom/arcsoft/avatar/RecordModule;->x:Lcom/arcsoft/avatar/gl/GLFramebuffer;

    :cond_5
    iget-object v3, p0, Lcom/arcsoft/avatar/RecordModule;->v:Lcom/arcsoft/avatar/gl/GLRenderEngine;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/arcsoft/avatar/RecordModule;->v:Lcom/arcsoft/avatar/gl/GLRenderEngine;

    invoke-virtual {v3}, Lcom/arcsoft/avatar/gl/GLRenderEngine;->unInit()V

    iput-object v2, p0, Lcom/arcsoft/avatar/RecordModule;->v:Lcom/arcsoft/avatar/gl/GLRenderEngine;

    :cond_6
    iget-object v3, p0, Lcom/arcsoft/avatar/RecordModule;->w:Lcom/arcsoft/avatar/gl/GLRenderEngine;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/arcsoft/avatar/RecordModule;->w:Lcom/arcsoft/avatar/gl/GLRenderEngine;

    invoke-virtual {v3}, Lcom/arcsoft/avatar/gl/GLRenderEngine;->unInit()V

    iput-object v2, p0, Lcom/arcsoft/avatar/RecordModule;->w:Lcom/arcsoft/avatar/gl/GLRenderEngine;

    :cond_7
    iput-object v2, p0, Lcom/arcsoft/avatar/RecordModule;->T:Lcom/arcsoft/avatar/util/ASVLOFFSCREEN;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v2, p0, Lcom/arcsoft/avatar/RecordModule;->m:Landroid/opengl/EGLContext;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v2, p0, Lcom/arcsoft/avatar/RecordModule;->n:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v2, p0, Lcom/arcsoft/avatar/RecordModule;->l:Landroid/opengl/EGLDisplay;

    iput v1, p0, Lcom/arcsoft/avatar/RecordModule;->q:I

    iput v1, p0, Lcom/arcsoft/avatar/RecordModule;->r:I

    iput-boolean v1, p0, Lcom/arcsoft/avatar/RecordModule;->i:Z

    iput-boolean v1, p0, Lcom/arcsoft/avatar/RecordModule;->j:Z

    iput-boolean v1, p0, Lcom/arcsoft/avatar/RecordModule;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-string p0, "-- unInit 3--"

    invoke-static {v0, p0}, Lcom/arcsoft/avatar/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    const-wide/16 v3, 0x1

    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/arcsoft/avatar/RecordModule;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
