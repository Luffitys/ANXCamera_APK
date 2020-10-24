.class public Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiVideoEditor;


# static fields
.field private static final TAG:Ljava/lang/String; = "MimojiVideoEditorImpl"


# instance fields
.field private composeTime:J

.field private mContext:Landroid/content/Context;

.field private mEncodeHeight:I

.field private mEncodeWidth:I

.field private mGifSourcePath:Ljava/lang/String;

.field private mIsComposing:Z

.field private mIsRelease:Z

.field private mMimojiChangeTimbreCallback:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;

.field private mMimojiMediaPlayerCallback:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;

.field private mMimojiVideo2GifCallback:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;

.field private mOrientation:I

.field private mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

.field private mVideoSavePath:Ljava/lang/String;

.field private mVoiceMap:Ljava/util/Map;

.field private mWaitingResultSurfaceTexture:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "vvc++_shared"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "mimoji_video2gif"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x780

    iput v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mEncodeWidth:I

    const/16 v0, 0x438

    iput v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mEncodeHeight:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mIsComposing:Z

    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mIsRelease:Z

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic OooO00o()V
    .locals 2

    sget-object v0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->VIDEO_NORMAL_CACHE_FILE:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->pausePlay()Z

    sget-object v0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->VIDEO_DEAL_CACHE_FILE:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    sget-object v0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->VIDEO_CACHE_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->makeNoMediaDir(Ljava/lang/String;)Z

    sget-object v0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->VIDEO_NORMAL_CACHE_FILE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->combineVideoAudio(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->startPlay(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mIsComposing:Z

    return p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->onSuccess(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->composeTime:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;)Lcom/android/camera/ui/TextureVideoView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->onFail()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mWaitingResultSurfaceTexture:Z

    return p0
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;
    .locals 1

    new-instance v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private declared-synchronized onFail()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->TAG:Ljava/lang/String;

    const-string v1, "mimoji void onFail[]"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->VIDEO_DEAL_CACHE_FILE:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf9

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;->onCombineError()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->TAG:Ljava/lang/String;

    const-string v1, "mimoji void onFail null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mIsComposing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onSuccess(Ljava/lang/String;I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf9

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;->concatResult(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :try_start_1
    const-string v2, "mimoji_normal"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "mimoji_deal"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MIMOJI_"

    const-string v3, "mp4"

    invoke-static {v2, v3}, Lcom/android/camera/module/impl/component/FileUtils;->createtFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p1}, Lcom/android/camera/module/impl/component/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->onFail()V

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    aput-object p2, p1, v1

    invoke-interface {v0, p1}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;->onCombineSuccess([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    sget-object p2, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mimoji void cnSuccess[savePath] Exception "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->onFail()V

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mIsComposing:Z

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->TAG:Ljava/lang/String;

    const-string p2, "mimoji void cnSuccess[savePath] null"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->onFail()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private release()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mIsRelease:Z

    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->cancelVideo2gif()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mGifSourcePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mMimojiVideo2GifCallback:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mMimojiVideo2GifCallback:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;

    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mMimojiChangeTimbreCallback:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mMimojiChangeTimbreCallback:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;

    :cond_1
    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/camera/ui/TextureVideoView;->stop()V

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mMimojiMediaPlayerCallback:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/TextureVideoView;->setMediaPlayerCallback(Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;)V

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    :cond_2
    return-void
.end method

.method private startPlay(Landroid/view/Surface;)V
    .locals 3

    sget-object v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->TAG:Ljava/lang/String;

    const-string v1, "mimoji void startPlay[surface]"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-static {v0}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->getViewIsVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mIsRelease:Z

    if-eqz p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mWaitingResultSurfaceTexture:Z

    iget v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mOrientation:I

    if-eqz v0, :cond_3

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TextureVideoView;->setScaleType(I)V

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    iget v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mOrientation:I

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/high16 v1, 0x43340000    # 180.0f

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TextureVideoView;->setScaleType(I)V

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    iget v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mOrientation:I

    int-to-float v1, v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setRotation(F)V

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TextureVideoView;->setLoop(Z)V

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/TextureVideoView;->setClearSurface(Z)V

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mVideoSavePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/TextureVideoView;->setVideoPath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    iget v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mEncodeWidth:I

    iget v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mEncodeHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/TextureVideoView;->setVideoSpecifiedSize(II)V

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {p0}, Lcom/android/camera/ui/TextureVideoView;->start()V

    return-void

    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->release()V

    return-void
.end method


# virtual methods
.method public synthetic OooO0O0()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->OooO00o()V

    return-void
.end method

.method public cancelVideo2gif()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mGifSourcePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->isComposing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mGifSourcePath:Ljava/lang/String;

    invoke-static {p0}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->CancelGifConvert(Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public changeTimbre()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/camera/features/mimoji2/module/impl/OooOOoo;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimoji2/module/impl/OooOOoo;-><init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public declared-synchronized combineVideoAudio(Ljava/lang/String;I)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p2

    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mimoji void combineVideoAudio[savePath]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->composeTime:J

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mIsComposing:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setMode(I)V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mIsRelease:Z

    :cond_0
    iget-object v2, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mMimojiChangeTimbreCallback:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;-><init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$1;)V

    iput-object v2, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mMimojiChangeTimbreCallback:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getCurrentMimojiTimbreInfo()Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->TAG:Ljava/lang/String;

    const-string v5, "mimoji void startPlay[surface]  timbre start"

    invoke-static {v3, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mVoiceMap:Ljava/util/Map;

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mVoiceMap:Ljava/util/Map;

    :cond_2
    iget-object v3, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mVoiceMap:Ljava/util/Map;

    const-string v5, "mode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getCurrentMimojiTimbreInfo()Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;->getTimbreId()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mVoiceMap:Ljava/util/Map;

    invoke-static {v2}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->AddVoiceChangeFilter(Ljava/util/Map;)I

    const/high16 v16, 0x3f800000    # 1.0f

    iget-object v2, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mMimojiChangeTimbreCallback:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;

    invoke-virtual {v2, v0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;->setStopRecordType(I)V

    const-wide/16 v6, 0x7d0

    sget-object v8, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->VIDEO_DEAL_CACHE_FILE:Ljava/lang/String;

    const/4 v9, 0x1

    const/16 v10, 0x1e

    const/16 v11, 0x5dc

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    iget-object v0, v1, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mMimojiChangeTimbreCallback:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;

    move-object/from16 v5, p1

    move-object/from16 v17, v0

    invoke-static/range {v5 .. v17}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->Convert(Ljava/lang/String;JLjava/lang/String;ZIIJJFLcom/xiaomi/Video2GifEditer/MediaProcess$Callback;)I

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->VIDEO_NORMAL_CACHE_FILE:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->onSuccess(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init(Lcom/android/camera/ui/TextureVideoView;Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mimoji videoeditor init videoUri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mWaitingResultSurfaceTexture:Z

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    iput-object p2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mVideoSavePath:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mGifSourcePath:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mMimojiChangeTimbreCallback:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;

    if-nez p2, :cond_0

    new-instance p2, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;-><init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$1;)V

    iput-object p2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mMimojiChangeTimbreCallback:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiChangeTimbreCallback;

    :cond_0
    iget-object p2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mMimojiVideo2GifCallback:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;

    if-nez p2, :cond_1

    new-instance p2, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;-><init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$1;)V

    iput-object p2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mMimojiVideo2GifCallback:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;

    :cond_1
    iget-object p2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mMimojiMediaPlayerCallback:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;

    if-nez p2, :cond_2

    new-instance p2, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;-><init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$1;)V

    iput-object p2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mMimojiMediaPlayerCallback:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;

    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    iget-object p2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mMimojiMediaPlayerCallback:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/TextureVideoView;->setMediaPlayerCallback(Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;)V

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/TextureVideoView;->setIsNeedAudio(Z)V

    return v0
.end method

.method public isAvaliable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-static {v0}, Lcom/android/camera/features/mimoji2/utils/MimojiViewUtil;->getViewIsVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->isComposing()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isComposing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mIsComposing:Z

    return p0
.end method

.method public isPlaying()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/TextureVideoView;->isPlaying()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onDestory()V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiPreviewPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setMode(I)V

    sget-object v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->TAG:Ljava/lang/String;

    const-string v1, "mimoji void onDestory[]"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mIsComposing:Z

    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->release()V

    return-void
.end method

.method public pausePlay()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->TAG:Ljava/lang/String;

    const-string v1, "mimoji void pausePlay[]"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {p0}, Lcom/android/camera/ui/TextureVideoView;->stop()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public registerProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xfc

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public resumePlay()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->TAG:Ljava/lang/String;

    const-string v1, "mimoji void resumePlay[]"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {p0}, Lcom/android/camera/ui/TextureVideoView;->resume()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setRecordParameter(III)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mOrientation:I

    sget-object p3, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRecordParameter:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mEncodeWidth:I

    iput p2, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mEncodeHeight:I

    return-void
.end method

.method public startPlay()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mVideoSavePath:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mWaitingResultSurfaceTexture:Z

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {p0}, Lcom/android/camera/ui/TextureVideoView;->start()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->startPlay(Landroid/view/Surface;)V

    :goto_0
    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xfc

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->release()V

    return-void
.end method

.method public video2gif(Ljava/util/List;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mGifSourcePath:Ljava/lang/String;

    const/16 v3, 0xfa

    if-eqz v1, :cond_4

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v4, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mMimojiVideo2GifCallback:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;

    if-nez v4, :cond_1

    new-instance v4, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;

    invoke-direct {v4, v0, v2}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;-><init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$1;)V

    iput-object v4, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mMimojiVideo2GifCallback:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;

    :cond_1
    iget-object v2, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mMimojiVideo2GifCallback:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;->setCount(I)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mIsComposing:Z

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->EMOTICON_MP4_CACHE_DIR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/arcsoft/avatar2/emoticon/EmoInfo;

    invoke-virtual {v6}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getEmoName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".mp4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->EMOTICON_GIF_CACHE_DIR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/arcsoft/avatar2/emoticon/EmoInfo;

    invoke-virtual {v6}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getEmoName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".gif"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v5, Lcom/android/camera/features/mimoji2/widget/helper/MimojiHelper2;->EMOTICON_GIF_CACHE_DIR:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/camera/module/impl/component/FileUtils;->makeDir(Ljava/lang/String;)Z

    sget-object v5, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " source :"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n target : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v7, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mGifSourcePath:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mMimojiVideo2GifCallback:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;

    invoke-virtual {v5, v4}, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;->setIndex(I)V

    const/16 v9, 0x14

    const v10, 0x5f5e100

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x1388

    iget-object v5, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mMimojiVideo2GifCallback:Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v16, v5

    invoke-static/range {v7 .. v16}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->ConvertGif(Ljava/lang/String;Ljava/lang/String;IIJJFLcom/xiaomi/Video2GifEditer/MediaProcess$Callback;)I

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->TAG:Ljava/lang/String;

    const-string v6, "mimoji void video2gif[] cover fail"

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v5

    check-cast v5, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2$MimojiEmoticon;

    if-eqz v5, :cond_2

    iput-boolean v2, v0, Lcom/android/camera/features/mimoji2/module/impl/MimojiVideoEditorImpl;->mIsComposing:Z

    invoke-interface {v5}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2$MimojiEmoticon;->coverEmoticonError()V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2$MimojiEmoticon;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2$MimojiEmoticon;->coverEmoticonSuccess()V

    :cond_5
    return-void
.end method
