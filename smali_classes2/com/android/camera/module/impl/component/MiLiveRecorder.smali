.class public Lcom/android/camera/module/impl/component/MiLiveRecorder;
.super Ljava/lang/Object;
.source "MiLiveRecorder.java"

# interfaces
.implements Lcom/android/camera/module/impl/component/ILive$ILiveRecorder;
.implements Lcom/android/camera/SurfaceTextureScreenNail$SurfaceTextureScreenNailCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;,
        Lcom/android/camera/module/impl/component/MiLiveRecorder$MiLiveItem;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivity:Lcom/android/camera/ActivityBase;

.field private mAudioPath:Ljava/lang/String;

.field private mBitrate:I

.field private mCameraNotifier:Lcom/xiaomi/recordmediaprocess/EffectCameraNotifier;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mCurSpeed:F

.field private mDebugFrameBuffer:[I

.field private mDump:Z

.field private mFilterBitmapPath:Ljava/lang/String;

.field private mFps:I

.field private mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field private mFreq:I

.field private mFullFrameTexture:Lcom/android/camera/effect/framework/gles/FrameTexture;

.field private mHandler:Landroid/os/Handler;

.field private mIndex:I

.field private mLiveState:I

.field private mMaxDuration:J

.field private mMediaEffectCamera:Lcom/xiaomi/recordmediaprocess/MediaEffectCamera;

.field private mOpenGlRender:Lcom/xiaomi/recordmediaprocess/OpenGlRender;

.field private mRecordingTimeListener:Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;

.field private mSegments:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTime:J

.field private mStateListener:Lcom/android/camera/module/impl/component/ILive$ILiveRecorderStateListener;

.field private final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mVideoHeight:I

.field private mVideoSaveDirPath:Ljava/lang/String;

.field private mVideoWidth:I


# direct methods
.method private constructor <init>(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/camera/module/impl/component/MiLiveRecorder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v1, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/impl/component/MiLiveRecorder$1;-><init>(Lcom/android/camera/module/impl/component/MiLiveRecorder;)V

    iput-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mCameraNotifier:Lcom/xiaomi/recordmediaprocess/EffectCameraNotifier;

    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mDebugFrameBuffer:[I

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mDump:Z

    iput v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mIndex:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFreq:I

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->access$000(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;)Lcom/android/camera/ActivityBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->access$100(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mBitrate:I

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->access$200(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFps:I

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->access$300(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoSaveDirPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->access$400(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMaxDuration:J

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->access$500(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;)Lcom/android/camera/module/impl/component/ILive$ILiveRecorderStateListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mStateListener:Lcom/android/camera/module/impl/component/ILive$ILiveRecorderStateListener;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->access$600(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;)Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mRecordingTimeListener:Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->access$700(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->access$800(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;->access$800(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MiLiveRecorder mSegments"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->loadLibs()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;Lcom/android/camera/module/impl/component/MiLiveRecorder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder;-><init>(Lcom/android/camera/module/impl/component/MiLiveRecorder$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/module/impl/component/MiLiveRecorder;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mCurSpeed:F

    return p0
.end method

.method static synthetic access$1100(Lcom/android/camera/module/impl/component/MiLiveRecorder;)Ljava/util/Stack;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/camera/module/impl/component/MiLiveRecorder;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    return p0
.end method

.method static synthetic access$1300(Lcom/android/camera/module/impl/component/MiLiveRecorder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->setLiveState(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/module/impl/component/MiLiveRecorder;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/camera/module/impl/component/MiLiveRecorder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private clearAllSegments()V
    .locals 2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;

    invoke-interface {v0}, Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dump(IIJII)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-boolean v2, v0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mDump:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget v2, v0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mIndex:I

    iget v2, v0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mIndex:I

    iget v4, v0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFreq:I

    rem-int/2addr v2, v4

    iput v2, v0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mIndex:I

    iget v2, v0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mIndex:I

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dump  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xde1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    const v5, 0x8d65

    if-eq v1, v5, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFullFrameTexture:Lcom/android/camera/effect/framework/gles/FrameTexture;

    instance-of v1, v1, Lcom/android/camera/effect/framework/gles/FullFramenOESTexture;

    if-nez v1, :cond_3

    new-instance v1, Lcom/android/camera/effect/framework/gles/FullFramenOESTexture;

    invoke-direct {v1}, Lcom/android/camera/effect/framework/gles/FullFramenOESTexture;-><init>()V

    iput-object v1, v0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFullFrameTexture:Lcom/android/camera/effect/framework/gles/FrameTexture;

    move/from16 v6, p5

    move/from16 v5, p6

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFullFrameTexture:Lcom/android/camera/effect/framework/gles/FrameTexture;

    instance-of v1, v1, Lcom/android/camera/effect/framework/gles/FullFrameTexture;

    if-nez v1, :cond_3

    new-instance v1, Lcom/android/camera/effect/framework/gles/FullFrameTexture;

    invoke-direct {v1}, Lcom/android/camera/effect/framework/gles/FullFrameTexture;-><init>()V

    iput-object v1, v0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFullFrameTexture:Lcom/android/camera/effect/framework/gles/FrameTexture;

    move/from16 v5, p5

    move/from16 v6, p6

    :goto_0
    move v1, v4

    goto :goto_1

    :cond_3
    move/from16 v5, p5

    move/from16 v6, p6

    move v1, v3

    :goto_1
    const v7, 0x8d40

    if-nez v1, :cond_4

    new-array v1, v3, [I

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v8, v1, v4

    invoke-static {v2, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v9, 0xde1

    const/4 v10, 0x0

    const/16 v11, 0x1908

    const/4 v14, 0x0

    const/16 v15, 0x1908

    const/16 v16, 0x1401

    const/16 v17, 0x0

    move/from16 v12, p5

    move/from16 v13, p6

    invoke-static/range {v9 .. v17}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    iget-object v8, v0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mDebugFrameBuffer:[I

    invoke-static {v3, v8, v4}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    iget-object v3, v0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mDebugFrameBuffer:[I

    aget v3, v3, v4

    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v3, 0x8ce0

    aget v1, v1, v4

    invoke-static {v7, v3, v2, v1, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    invoke-static {v7, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    :cond_4
    sget-object v1, Lcom/android/camera/module/impl/component/FileUtils;->VIDEO_DUMP:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->hasDir(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/android/camera/module/impl/component/FileUtils;->VIDEO_DUMP:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    :cond_5
    iget-object v1, v0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mDebugFrameBuffer:[I

    aget v1, v1, v4

    invoke-static {v7, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-static {v4, v4, v5, v6}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v0, v0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFullFrameTexture:Lcom/android/camera/effect/framework/gles/FrameTexture;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/framework/gles/FrameTexture;->draw(I)V

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/module/impl/component/FileUtils;->VIDEO_DUMP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "dump.jpg"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v4, v5, v6, v0}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->dumpToJpg(IIIILjava/lang/String;)Ljava/nio/ByteBuffer;

    invoke-static {v7, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    :cond_6
    return-void
.end method

.method private getNextAudioPos()J
    .locals 2

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;->getNextPos()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private getStateString(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "RECORDING_ERROR"

    return-object p0

    :pswitch_1
    const-string p0, "RECORDING_DONE"

    return-object p0

    :pswitch_2
    const-string p0, "PENDING_RESUME_RECORDING"

    return-object p0

    :pswitch_3
    const-string p0, "PENDING_PAUSE_RECORDING"

    return-object p0

    :pswitch_4
    const-string p0, "PENDING_STOP_RECORDING"

    return-object p0

    :pswitch_5
    const-string p0, "PENDING_START_RECORDING"

    return-object p0

    :pswitch_6
    const-string p0, "RECORDING_PAUSED"

    return-object p0

    :pswitch_7
    const-string p0, "RECORDING"

    return-object p0

    :pswitch_8
    const-string p0, "PREVIEWING"

    return-object p0

    :pswitch_9
    const-string p0, "IDLE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initMediaCamera()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoHeight:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoWidth:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMediaEffectCamera:Lcom/xiaomi/recordmediaprocess/MediaEffectCamera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMediaEffectCamera:Lcom/xiaomi/recordmediaprocess/MediaEffectCamera;

    invoke-virtual {v0}, Lcom/xiaomi/recordmediaprocess/MediaEffectCamera;->DestructMediaEffectCamera()V

    :cond_1
    new-instance v0, Lcom/xiaomi/recordmediaprocess/MediaEffectCamera;

    invoke-direct {v0}, Lcom/xiaomi/recordmediaprocess/MediaEffectCamera;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMediaEffectCamera:Lcom/xiaomi/recordmediaprocess/MediaEffectCamera;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMediaEffectCamera:Lcom/xiaomi/recordmediaprocess/MediaEffectCamera;

    iget v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoWidth:I

    iget v3, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoHeight:I

    iget v4, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mBitrate:I

    iget v5, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFps:I

    iget-object v6, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mCameraNotifier:Lcom/xiaomi/recordmediaprocess/EffectCameraNotifier;

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/recordmediaprocess/MediaEffectCamera;->ConstructMediaEffectCamera(IIIILcom/xiaomi/recordmediaprocess/EffectCameraNotifier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_2
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    const-string v1, "invalid video size."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private loadLibs()V
    .locals 1

    const-string v0, "vvc++_shared"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "ffmpeg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "record_video"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0xc35b

    invoke-static {p0, v0}, Lcom/xiaomi/recordmediaprocess/SystemUtil;->Init(Landroid/content/Context;I)V

    return-void
.end method

.method private releaseBuffer()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->recycle()V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->delete()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    :cond_0
    return-void
.end method

.method private setLiveState(I)V
    .locals 3

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "live state change from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->getStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->getStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mStateListener:Lcom/android/camera/module/impl/component/ILive$ILiveRecorderStateListener;

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    invoke-interface {p1, p0}, Lcom/android/camera/module/impl/component/ILive$ILiveRecorderStateListener;->onStateChange(I)V

    :cond_0
    return-void
.end method

.method private startRecordingTime(Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;)V
    .locals 11

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    iget-wide v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMaxDuration:J

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-static {v2}, Lcom/android/camera/module/impl/component/ILive;->getTotolDuration(Ljava/util/List;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mCurSpeed:F

    mul-float/2addr v0, v1

    float-to-long v9, v0

    new-instance v0, Lcom/android/camera/module/impl/component/MiLiveRecorder$2;

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    float-to-long v6, v1

    move-object v2, v0

    move-object v3, p0

    move-wide v4, v9

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/camera/module/impl/component/MiLiveRecorder$2;-><init>(Lcom/android/camera/module/impl/component/MiLiveRecorder;JJLcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;)V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mStartTime:J

    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startRecordingTime "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private unloadLibs()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/recordmediaprocess/SystemUtil;->UnInit()V

    return-void
.end method


# virtual methods
.method public deletePreSegment()V
    .locals 6

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/ILive;->getTotolDuration(Ljava/util/List;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mRecordingTimeListener:Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;

    if-eqz v3, :cond_2

    iget-wide v4, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMaxDuration:J

    sub-long/2addr v4, v1

    const-wide/16 v1, 0x3c28

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {v3, v1, v2, v4}, Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;->onRecordingTimeUpdate(JF)V

    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deletePreSegment = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Ljava/io/File;

    invoke-interface {v0}, Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_4
    return-void
.end method

.method public genInputSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->setLiveState(I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAudioPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mAudioPath:Ljava/lang/String;

    return-object p0
.end method

.method public getLiveSegments()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    return-object p0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mStartTime:J

    return-wide v0
.end method

.method public init(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPreview size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoWidth:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoHeight:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoWidth:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoHeight:I

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->initMediaCamera()V

    :cond_1
    return-void
.end method

.method public onSurfaceTextureCreated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureReleased()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->releaseBuffer()V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFullFrameTexture:Lcom/android/camera/effect/framework/gles/FrameTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/effect/framework/gles/FrameTexture;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFullFrameTexture:Lcom/android/camera/effect/framework/gles/FrameTexture;

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mOpenGlRender:Lcom/xiaomi/recordmediaprocess/OpenGlRender;

    if-nez v0, :cond_1

    new-instance v0, Lcom/xiaomi/recordmediaprocess/OpenGlRender;

    invoke-direct {v0}, Lcom/xiaomi/recordmediaprocess/OpenGlRender;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mOpenGlRender:Lcom/xiaomi/recordmediaprocess/OpenGlRender;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/camera/effect/FrameBuffer;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getGLCanvas()Lcom/android/gallery3d/ui/GLCanvasImpl;

    move-result-object v1

    iget v2, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mHeight:I

    iget v3, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mWidth:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;III)V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mOpenGlRender:Lcom/xiaomi/recordmediaprocess/OpenGlRender;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v1}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/recordmediaprocess/OpenGlRender;->SetCurrentGLContext(I)V

    :cond_2
    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->setLiveState(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->setLiveState(I)V

    :cond_4
    :goto_0
    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getGLCanvas()Lcom/android/gallery3d/ui/GLCanvasImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    iget v2, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4, v2, v4}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v5, v4}, Lcom/android/camera/effect/GLCanvasState;->rotate(FFFF)V

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    iget v2, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mHeight:I

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget v4, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mWidth:I

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    iget v2, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mX:I

    int-to-float v2, v2

    iget v3, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mY:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->endBindFrameBuffer()V

    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMediaEffectCamera:Lcom/xiaomi/recordmediaprocess/MediaEffectCamera;

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iget v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoWidth:I

    iget v3, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoHeight:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/xiaomi/recordmediaprocess/MediaEffectCamera;->NeedProcessTexture(JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public pauseRecording()V
    .locals 2

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    const-string v1, "pauseRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->setLiveState(I)V

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMediaEffectCamera:Lcom/xiaomi/recordmediaprocess/MediaEffectCamera;

    invoke-virtual {p0}, Lcom/xiaomi/recordmediaprocess/MediaEffectCamera;->StopRecording()V

    return-void
.end method

.method public release()V
    .locals 2

    sget-object v0, Lcom/android/camera/constant/GlobalConstant;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    new-instance v1, Lcom/android/camera/module/impl/component/z;

    invoke-direct {v1, p0}, Lcom/android/camera/module/impl/component/z;-><init>(Lcom/android/camera/module/impl/component/MiLiveRecorder;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public resumeRecording()V
    .locals 14

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoSaveDirPath:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFilterBitmapPath:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mAudioPath:Ljava/lang/String;

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeRecording path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoSaveDirPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mFilterBitmapPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFilterBitmapPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mAudioPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mAudioPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mCurSpeed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mCurSpeed:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->setLiveState(I)V

    iget-wide v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMaxDuration:J

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-static {v2}, Lcom/android/camera/module/impl/component/ILive;->getTotolDuration(Ljava/util/List;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumeRecording error,last duration : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    move-wide v12, v2

    goto :goto_0

    :cond_3
    move-wide v12, v0

    :goto_0
    iget-object v5, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMediaEffectCamera:Lcom/xiaomi/recordmediaprocess/MediaEffectCamera;

    iget-object v6, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoSaveDirPath:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFilterBitmapPath:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mAudioPath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->getNextAudioPos()J

    move-result-wide v9

    iget v11, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mCurSpeed:F

    invoke-virtual/range {v5 .. v13}, Lcom/xiaomi/recordmediaprocess/MediaEffectCamera;->StartRecording(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JFJ)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->setLiveState(I)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mRecordingTimeListener:Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->startRecordingTime(Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setAudioPath(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mAudioPath:Ljava/lang/String;

    return-void
.end method

.method public setFilterPath(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFilterPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFilterBitmapPath:Ljava/lang/String;

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMediaEffectCamera:Lcom/xiaomi/recordmediaprocess/MediaEffectCamera;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/xiaomi/recordmediaprocess/MediaEffectCamera;->SetOrientation(I)V

    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpeed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mCurSpeed:F

    return-void
.end method

.method public startRecording()V
    .locals 10

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoSaveDirPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFilterBitmapPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mAudioPath:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecording path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoSaveDirPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mFilterBitmapPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFilterBitmapPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mAudioPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mAudioPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mCurSpeed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mCurSpeed:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/extra/DataItemLive;->setMiLiveSegmentData(Ljava/util/List;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->setLiveState(I)V

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMediaEffectCamera:Lcom/xiaomi/recordmediaprocess/MediaEffectCamera;

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mVideoSaveDirPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mFilterBitmapPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mAudioPath:Ljava/lang/String;

    const-wide/16 v5, 0x0

    iget v7, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mCurSpeed:F

    iget-wide v8, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMaxDuration:J

    invoke-virtual/range {v1 .. v9}, Lcom/xiaomi/recordmediaprocess/MediaEffectCamera;->StartRecording(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JFJ)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->setLiveState(I)V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mRecordingTimeListener:Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->startRecordingTime(Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public stopRecording()V
    .locals 3

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    const-string v2, "stopRecording"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    iget v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mLiveState:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->setLiveState(I)V

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMediaEffectCamera:Lcom/xiaomi/recordmediaprocess/MediaEffectCamera;

    invoke-virtual {p0}, Lcom/xiaomi/recordmediaprocess/MediaEffectCamera;->StopRecording()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSegments:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->setLiveState(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->setLiveState(I)V

    :goto_0
    return-void
.end method

.method public synthetic tf()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->TAG:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMediaEffectCamera:Lcom/xiaomi/recordmediaprocess/MediaEffectCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMediaEffectCamera:Lcom/xiaomi/recordmediaprocess/MediaEffectCamera;

    invoke-virtual {v0}, Lcom/xiaomi/recordmediaprocess/MediaEffectCamera;->DestructMediaEffectCamera()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mMediaEffectCamera:Lcom/xiaomi/recordmediaprocess/MediaEffectCamera;

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->setLiveState(I)V

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MiLiveRecorder;->unloadLibs()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLiveRecorder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
