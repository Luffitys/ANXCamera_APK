.class public Lcom/arcsoft/avatar2/recoder/MediaManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/arcsoft/avatar2/recoder/RecordingListener;


# static fields
.field public static final MUXER_AUDIO_ENCODER:I = 0x1

.field public static final MUXER_VIDEO_AND_AUDIO_ENCODER:I = 0x2

.field public static final MUXER_VIDEO_ENCODER:I = 0x1

.field private static final a:Ljava/lang/String; = "Arc_VideoEncoder"

.field private static final r:I = 0x2


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

.field private i:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

.field private j:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

.field private k:Z

.field private l:Lcom/arcsoft/avatar2/gl/GLRender;

.field private m:I

.field private n:I

.field private o:Ljava/lang/Object;

.field private p:Lcom/arcsoft/avatar2/recoder/RecordingListener;

.field private q:Lcom/arcsoft/avatar2/recoder/FrameQueue;

.field private s:I

.field private t:I

.field private u:[I


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;IIIZILcom/arcsoft/avatar2/recoder/RecordingListener;)V
    .locals 1
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p7, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->p:Lcom/arcsoft/avatar2/recoder/RecordingListener;

    iput p2, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->b:I

    iput p3, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->c:I

    const/16 p7, 0x5a

    if-eq p7, p4, :cond_0

    const/16 p7, 0x10e

    if-ne p7, p4, :cond_1

    :cond_0
    iget p7, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->b:I

    iget v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->c:I

    xor-int/2addr p7, v0

    iput p7, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->b:I

    xor-int/2addr v0, p7

    iput v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->c:I

    xor-int/2addr p7, v0

    iput p7, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->b:I

    :cond_1
    iput p4, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->d:I

    iput-boolean p5, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->e:Z

    const/4 p4, 0x0

    iput p4, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->m:I

    iput p4, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->n:I

    new-instance p5, Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    invoke-direct {p5, p1, p6, p0}, Lcom/arcsoft/avatar2/recoder/MuxerWrapper;-><init>(Ljava/io/FileDescriptor;ILcom/arcsoft/avatar2/recoder/RecordingListener;)V

    iput-object p5, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->j:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object p1

    const/16 p5, 0x305a

    invoke-static {p5}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object p5

    const/4 p6, 0x1

    new-array p7, p6, [I

    new-array p6, p6, [I

    const/16 v0, 0x3057

    invoke-static {p1, p5, v0, p7, p4}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    const/16 v0, 0x3056

    invoke-static {p1, p5, v0, p6, p4}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    aget p1, p7, p4

    iput p1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->s:I

    aget p1, p6, p4

    iput p1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->t:I

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->o:Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "MediaManager constructor mFrameWidth = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ,mFrameHeight = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Arc_VideoEncoder"

    invoke-static {p1, p0}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIZILcom/arcsoft/avatar2/recoder/RecordingListener;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p7, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->p:Lcom/arcsoft/avatar2/recoder/RecordingListener;

    iput p2, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->b:I

    iput p3, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->c:I

    const/16 p7, 0x5a

    if-eq p7, p4, :cond_0

    const/16 p7, 0x10e

    if-ne p7, p4, :cond_1

    :cond_0
    iget p7, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->b:I

    iget v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->c:I

    xor-int/2addr p7, v0

    iput p7, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->b:I

    xor-int/2addr v0, p7

    iput v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->c:I

    xor-int/2addr p7, v0

    iput p7, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->b:I

    :cond_1
    iput p4, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->d:I

    iput-boolean p5, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->e:Z

    const/4 p4, 0x0

    iput p4, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->m:I

    iput p4, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->n:I

    new-instance p5, Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    invoke-direct {p5, p1, p6, p0}, Lcom/arcsoft/avatar2/recoder/MuxerWrapper;-><init>(Ljava/lang/String;ILcom/arcsoft/avatar2/recoder/RecordingListener;)V

    iput-object p5, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->j:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object p1

    const/16 p5, 0x305a

    invoke-static {p5}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object p5

    const/4 p6, 0x1

    new-array p7, p6, [I

    new-array p6, p6, [I

    const/16 v0, 0x3057

    invoke-static {p1, p5, v0, p7, p4}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    const/16 v0, 0x3056

    invoke-static {p1, p5, v0, p6, p4}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    aget p1, p7, p4

    iput p1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->s:I

    aget p1, p6, p4

    iput p1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->t:I

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->o:Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "MediaManager constructor mFrameWidth = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ,mFrameHeight = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Arc_VideoEncoder"

    invoke-static {p1, p0}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/arcsoft/avatar2/recoder/MediaManager;)I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->b:I

    return p0
.end method

.method private a()V
    .locals 3

    iget v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->m:I

    iget v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->n:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x3

    if-ge v1, v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init encoder count great than need. need="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,but got="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->n:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic b(Lcom/arcsoft/avatar2/recoder/MediaManager;)I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->c:I

    return p0
.end method

.method private b()V
    .locals 8

    iget v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->b:I

    iget v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->c:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->b:I

    iget v4, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glReadPixels() glError = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Arc_VideoEncoder"

    invoke-static {v2, v1}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/arcsoft/avatar2/recoder/MediaManager$SaveThread;

    invoke-direct {v1, p0, v0}, Lcom/arcsoft/avatar2/recoder/MediaManager$SaveThread;-><init>(Lcom/arcsoft/avatar2/recoder/MediaManager;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public drawSurfaceWithTextureId(I)V
    .locals 6

    iget-boolean v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->f:Z

    const-string v1, "Arc_VideoEncoder"

    if-nez v0, :cond_0

    const-string p0, "drawSurfaceWithTextureId()-> MediaManager has not been initialized."

    invoke-static {v1, p0}, Lcom/arcsoft/avatar2/util/CodecLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-lez p1, :cond_7

    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->l:Lcom/arcsoft/avatar2/gl/GLRender;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->lock()V

    iget-object v4, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->q:Lcom/arcsoft/avatar2/recoder/FrameQueue;

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/recoder/FrameQueue;->isIsInited()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->q:Lcom/arcsoft/avatar2/recoder/FrameQueue;

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/recoder/FrameQueue;->getFrameForProducer()Lcom/arcsoft/avatar2/recoder/FrameItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v4, v0, Lcom/arcsoft/avatar2/recoder/FrameItem;->mIsInited:Z

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    const-string v4, "drawSurfaceWithTextureId()-> get a null frame item."

    invoke-static {v1, v4}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    invoke-virtual {p0}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->unLock()V

    return-void

    :cond_3
    move v1, v3

    :goto_1
    iget-object v4, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->unLock()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->unLock()V

    move v1, v3

    :goto_2
    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->u:[I

    if-nez v1, :cond_5

    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->u:[I

    const/16 v4, 0xba2

    invoke-static {v4, v1, v3}, Landroid/opengl/GLES30;->glGetIntegerv(I[II)V

    :cond_5
    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->q:Lcom/arcsoft/avatar2/recoder/FrameQueue;

    invoke-virtual {v1, v0}, Lcom/arcsoft/avatar2/recoder/FrameQueue;->deleteSync(Lcom/arcsoft/avatar2/recoder/FrameItem;)V

    iget-object v1, v0, Lcom/arcsoft/avatar2/recoder/FrameItem;->mFramebuffer:Lcom/arcsoft/avatar2/gl/GLFramebuffer;

    invoke-virtual {v1, v3, v3}, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->bind(ZZ)V

    iget v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->b:I

    iget v4, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->c:I

    invoke-static {v3, v3, v1, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->l:Lcom/arcsoft/avatar2/gl/GLRender;

    invoke-virtual {v1, p1}, Lcom/arcsoft/avatar2/gl/GLRender;->renderWithTextureId(I)V

    const p1, 0x9117

    invoke-static {p1, v3}, Landroid/opengl/GLES30;->glFenceSync(II)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/arcsoft/avatar2/recoder/FrameItem;->a:J

    iget-object p1, v0, Lcom/arcsoft/avatar2/recoder/FrameItem;->mFramebuffer:Lcom/arcsoft/avatar2/gl/GLFramebuffer;

    invoke-virtual {p1, v3, v3}, Lcom/arcsoft/avatar2/gl/GLFramebuffer;->unBind(ZZ)V

    iput-boolean v3, v0, Lcom/arcsoft/avatar2/recoder/FrameItem;->mIsEmpty:Z

    iget-object p1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->u:[I

    aget v0, p1, v3

    aget v1, p1, v2

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x3

    aget p1, p1, v3

    invoke-static {v0, v1, v2, p1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    :try_start_2
    iget-object p1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->lock()V

    iget-object p1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->q:Lcom/arcsoft/avatar2/recoder/FrameQueue;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/recoder/FrameQueue;->addFrameForProducer()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    iget-object p1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->sinalCondition()V

    iget-object p0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    invoke-virtual {p0}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->unLock()V

    return-void

    :goto_4
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->sinalCondition()V

    iget-object p0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    invoke-virtual {p0}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->unLock()V

    throw p1

    :goto_5
    iget-object p0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    invoke-virtual {p0}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->unLock()V

    throw p1

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Could not call drawSurfaceWithTextureId() in with a null GLRender."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "textureId must >0 , your textureId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getMuxerSizeRecorded()J
    .locals 2

    iget-object p0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->j:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/arcsoft/avatar2/recoder/MuxerWrapper;->getSizeRecordFile()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMuxerTimeElapsed()J
    .locals 2

    iget-object p0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->j:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/arcsoft/avatar2/recoder/MuxerWrapper;->getTimeElapse()J

    move-result-wide v0

    return-wide v0
.end method

.method public initAudioEncoder()V
    .locals 3

    new-instance v0, Lcom/arcsoft/avatar2/recoder/AudioEncoder;

    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->j:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    iget-object v2, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->o:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p0}, Lcom/arcsoft/avatar2/recoder/AudioEncoder;-><init>(Lcom/arcsoft/avatar2/recoder/MuxerWrapper;Ljava/lang/Object;Lcom/arcsoft/avatar2/recoder/RecordingListener;)V

    iput-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->i:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->prepare(Z)V

    iget v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->n:I

    invoke-direct {p0}, Lcom/arcsoft/avatar2/recoder/MediaManager;->a()V

    return-void
.end method

.method public initVideoEncoder(Ljava/lang/String;)V
    .locals 11

    const-string v0, "Arc_VideoEncoder"

    const-string v1, "MediaManager initVideoEncoder in"

    invoke-static {v0, v1}, Lcom/arcsoft/avatar2/util/CodecLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/arcsoft/avatar2/recoder/VideoEncoder;

    iget-object v3, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->j:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    iget v4, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->b:I

    iget v5, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->c:I

    iget-object v6, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->o:Ljava/lang/Object;

    sget-object v8, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const v9, 0x989680

    move-object v2, v1

    move-object v7, p0

    move-object v10, p1

    invoke-direct/range {v2 .. v10}, Lcom/arcsoft/avatar2/recoder/VideoEncoder;-><init>(Lcom/arcsoft/avatar2/recoder/MuxerWrapper;IILjava/lang/Object;Lcom/arcsoft/avatar2/recoder/RecordingListener;Landroid/opengl/EGLContext;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->prepare(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->f:Z

    iget v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->n:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->n:I

    invoke-direct {p0}, Lcom/arcsoft/avatar2/recoder/MediaManager;->a()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaManager initVideoEncoder out mInitedEncoderCount = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->n:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/arcsoft/avatar2/util/CodecLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initVideoEncoderWithSharedContext(Landroid/opengl/EGLContext;IZLjava/lang/String;)V
    .locals 10

    new-instance v9, Lcom/arcsoft/avatar2/recoder/VideoEncoder;

    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->j:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    iget v2, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->b:I

    iget v3, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->c:I

    iget-object v4, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->o:Ljava/lang/Object;

    move-object v0, v9

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/arcsoft/avatar2/recoder/VideoEncoder;-><init>(Lcom/arcsoft/avatar2/recoder/MuxerWrapper;IILjava/lang/Object;Lcom/arcsoft/avatar2/recoder/RecordingListener;Landroid/opengl/EGLContext;ILjava/lang/String;)V

    iput-object v9, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->k:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {v9}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->getInputSurface()Landroid/view/Surface;

    move-result-object p4

    if-eqz p4, :cond_0

    new-instance p4, Lcom/arcsoft/avatar2/gl/GLRender;

    iget v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->b:I

    iget v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->c:I

    iget v2, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->d:I

    iget-boolean v3, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->e:Z

    invoke-direct {p4, v0, v1, v2, v3}, Lcom/arcsoft/avatar2/gl/GLRender;-><init>(IIIZ)V

    iput-object p4, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->l:Lcom/arcsoft/avatar2/gl/GLRender;

    const/4 v0, 0x0

    invoke-virtual {p4, p3, v0}, Lcom/arcsoft/avatar2/gl/GLRender;->initRender(ZF)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->p:Lcom/arcsoft/avatar2/recoder/RecordingListener;

    if-eqz p3, :cond_1

    const/16 p4, 0x232

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, p4, v0}, Lcom/arcsoft/avatar2/recoder/RecordingListener;->onRecordingListener(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    new-instance p3, Lcom/arcsoft/avatar2/recoder/FrameQueue;

    invoke-direct {p3}, Lcom/arcsoft/avatar2/recoder/FrameQueue;-><init>()V

    iput-object p3, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->q:Lcom/arcsoft/avatar2/recoder/FrameQueue;

    const/4 p4, 0x2

    iget v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->b:I

    iget v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->c:I

    invoke-virtual {p3, p4, v0, v1, p2}, Lcom/arcsoft/avatar2/recoder/FrameQueue;->init(IIIZ)V

    iget-object p2, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    iget-object p3, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->q:Lcom/arcsoft/avatar2/recoder/FrameQueue;

    invoke-virtual {p2, p3}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->setFrameQueue(Lcom/arcsoft/avatar2/recoder/FrameQueue;)V

    iget p2, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->n:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->n:I

    invoke-direct {p0}, Lcom/arcsoft/avatar2/recoder/MediaManager;->a()V

    return-void
.end method

.method public onRecordingListener(ILjava/lang/Object;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecordingListener()->in msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Arc_VideoEncoder"

    invoke-static {v1, v0}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x270

    const/16 v2, 0x230

    const/16 v3, 0x220

    const/16 v4, 0x260

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    goto :goto_0

    :pswitch_0
    move p1, v0

    goto :goto_0

    :pswitch_1
    move p1, v4

    goto :goto_0

    :pswitch_2
    move p1, v2

    goto :goto_0

    :pswitch_3
    move p1, v3

    :goto_0
    iget-object p0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->p:Lcom/arcsoft/avatar2/recoder/RecordingListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/arcsoft/avatar2/recoder/RecordingListener;->onRecordingListener(ILjava/lang/Object;)V

    :cond_0
    const-string p0, "onRecordingListener()->out"

    invoke-static {v1, p0}, Lcom/arcsoft/avatar2/util/CodecLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x221
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x231
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x261
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x271
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public pauseRecording()I
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->i:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->pauseRecording()V

    :cond_0
    iget-object p0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->pauseRecording()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public releaseFrameQueue()V
    .locals 2

    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->l:Lcom/arcsoft/avatar2/gl/GLRender;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/gl/GLRender;->unInitRender()V

    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->l:Lcom/arcsoft/avatar2/gl/GLRender;

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->q:Lcom/arcsoft/avatar2/recoder/FrameQueue;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/recoder/FrameQueue;->unInit()V

    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->q:Lcom/arcsoft/avatar2/recoder/FrameQueue;

    :cond_1
    return-void
.end method

.method public resumeRecording()I
    .locals 2

    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->i:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->i:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->resumeRecording()V

    :cond_0
    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->resumeRecording()V

    :cond_1
    iget-object p0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->o:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setCropFactor(F)V
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->setCropFactor(F)V

    :cond_0
    return-void
.end method

.method public setEncoderCount(I)V
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->j:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/arcsoft/avatar2/recoder/MuxerWrapper;->setEncoderCount(I)V

    :cond_0
    iput p1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->m:I

    return-void
.end method

.method public startRecording()V
    .locals 3

    iget-boolean v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->j:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    const-string v1, "Arc_VideoEncoder"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->startRecording()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecording()-> VideoEncoder is null. maxEncoderCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->m:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/arcsoft/avatar2/util/CodecLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->i:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->startRecording()V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecording()-> AudioEncoder is null. maxEncoderCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->m:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/arcsoft/avatar2/util/CodecLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unit Encoder or Muxer is null."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stopRecording()V
    .locals 3

    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->o:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->stopRecording()V

    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->release(Z)V

    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->h:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->i:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->stopRecording()V

    iget-object v0, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->i:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/arcsoft/avatar2/recoder/BaseEncoder;->release(Z)V

    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->i:Lcom/arcsoft/avatar2/recoder/BaseEncoder;

    :cond_1
    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->j:Lcom/arcsoft/avatar2/recoder/MuxerWrapper;

    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->o:Ljava/lang/Object;

    iput-object v1, p0, Lcom/arcsoft/avatar2/recoder/MediaManager;->u:[I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
