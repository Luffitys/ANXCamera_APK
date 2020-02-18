.class public Lcom/xiaomi/recordplayer/Player;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/recordplayer/Player$SurfaceGravity;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "Player"


# instance fields
.field private pc:Lcom/xiaomi/recordplayer/callback/PlayerCallback;

.field private playerInst:J

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/recordplayer/Player;->playerInst:J

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/recordplayer/Player;->url:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/recordplayer/Player;->pc:Lcom/xiaomi/recordplayer/callback/PlayerCallback;

    return-void
.end method

.method private native GetCurrentStreamPositionJni()J
.end method

.method private native addFlashFilterJni(I)V
.end method

.method private native addGrayscaleFilterJni()V
.end method

.method private native addMotionFlowFilterJni()V
.end method

.method private native addPngMixFilterJni(Ljava/lang/String;FFFF)V
.end method

.method private native addRecordingSessionJni(J)V
.end method

.method private native addShakeFilterJni()V
.end method

.method private native addSlowDownFilterJni()V
.end method

.method private native addSobelEdgeDetectionFilterJni()V
.end method

.method private native addSoulFilterJni()V
.end method

.method private native addVideoMapFilterJni(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native bufferTimeMaxJni()J
.end method

.method public static cancelCompressingMP4File(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/xiaomi/recordplayer/Player;->TAG:Ljava/lang/String;

    const-string v1, "cancel compressing MP4 files"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/xiaomi/recordplayer/Player;->cancelCompressingMP4FileJni(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static native cancelCompressingMP4FileJni(Ljava/lang/String;)I
.end method

.method public static compressMP4File(Ljava/lang/String;Ljava/lang/String;J)I
    .locals 2

    sget-object v0, Lcom/xiaomi/recordplayer/Player;->TAG:Ljava/lang/String;

    const-string v1, "compress MP4 files"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/recordplayer/Player;->compressMP4FileJni(Ljava/lang/String;Ljava/lang/String;J)I

    move-result p0

    return p0
.end method

.method private static native compressMP4FileJni(Ljava/lang/String;Ljava/lang/String;J)I
.end method

.method private native constructPlayerJni(Ljava/lang/String;IJ)J
.end method

.method private native currentPlaybackTimeJni()J
.end method

.method private native debugReportJni()Ljava/lang/String;
.end method

.method private native destructPlayerJni()V
.end method

.method private native durationJni()J
.end method

.method private native enableVideoFilterJni(Z)V
.end method

.method private native getAudioTransferJni()J
.end method

.method private native getCurrentAudioTimestampJni()J
.end method

.method private native getCurrentCachePositionJni()J
.end method

.method private native getStreamIdJni()J
.end method

.method private native getTimestampOfCurrentVideoFrameJni()J
.end method

.method private native isPausedJni()Z
.end method

.method private native muteAudioJni()V
.end method

.method private native pauseCacheThreadOtherJni(Ljava/lang/String;)V
.end method

.method private native pauseCacheThreadUriAllJni()V
.end method

.method private native pauseCacheThreadUriJni(Ljava/lang/String;)V
.end method

.method private native pauseJni()V
.end method

.method private native playbackStateJni()I
.end method

.method private native redrawJni()V
.end method

.method private native reloadJni(Ljava/lang/String;Z)Z
.end method

.method private native removeRecordingSessionJni(J)V
.end method

.method private native resumeJni()Z
.end method

.method private native seekToJni(JI)Z
.end method

.method private native setAllFileSizeJni(J)V
.end method

.method private native setBufferTimeMaxJni(J)V
.end method

.method private native setCachePathJni(Ljava/lang/String;)V
.end method

.method private native setCacheSizeJni(J)V
.end method

.method private native setCacheSpeedJni(J)V
.end method

.method private native setEnableCacheTypeJni(I)V
.end method

.method private native setFrameLoopJni(Z)V
.end method

.method private native setGravityJni(III)V
.end method

.method private native setIpListJni([Ljava/lang/String;)V
.end method

.method private native setLocalCacheJni(Ljava/lang/String;J)V
.end method

.method private native setResolveDnsJni(Z)V
.end method

.method private native setSpeakerJni(Z)V
.end method

.method private native setSpeakerVolumeJni(F)V
.end method

.method private native setSpeedRatioJni(D)Z
.end method

.method private native setUserIdandClienIpJni(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native setVideoFilterIntensityJni(F)V
.end method

.method private native setVideoFilterJni(Ljava/lang/String;)V
.end method

.method private native setVideoSurfaceJni(Landroid/view/Surface;)V
.end method

.method private native setWifiStatusJni(Z)V
.end method

.method private native shiftUpJni(FFFFF)V
.end method

.method private native startCacheUriAllJni()V
.end method

.method private native startCacheUriJni(Ljava/lang/String;)V
.end method

.method private native startCacheUriOtherJni(Ljava/lang/String;)V
.end method

.method private native startJni(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method private native startRecordingJni()V
.end method

.method private native startWithTimeJni(Ljava/lang/String;Ljava/lang/String;ZJ)Z
.end method

.method private native stopJni()V
.end method

.method private native stopRecordingJni()V
.end method

.method private native unMuteAudioJni()V
.end method

.method private native updateCacheUriJni([Ljava/lang/String;)V
.end method

.method public static version()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/xiaomi/recordplayer/Player;->versionJni()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native versionJni()Ljava/lang/String;
.end method

.method private native videoSizeJni()Lcom/xiaomi/recordplayer/datastruct/VideoSize;
.end method


# virtual methods
.method public GetCurrentStreamPosition()J
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/recordplayer/Player;->GetCurrentStreamPositionJni()J

    move-result-wide v0

    return-wide v0
.end method

.method public addFlashFilter(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/recordplayer/Player;->addFlashFilterJni(I)V

    return-void
.end method

.method public addGrayscaleFilter()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/recordplayer/Player;->addGrayscaleFilterJni()V

    return-void
.end method

.method public addMotionFlowFilter()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/recordplayer/Player;->addMotionFlowFilterJni()V

    return-void
.end method

.method public addPngMixFilter(Ljava/lang/String;FFFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/recordplayer/Player;->addPngMixFilterJni(Ljava/lang/String;FFFF)V

    return-void
.end method

.method public addRecordingSession(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/recordplayer/Player;->addRecordingSessionJni(J)V

    return-void
.end method

.method public addShakeFilter()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/recordplayer/Player;->addShakeFilterJni()V

    return-void
.end method

.method public addSlowDownFilter()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/recordplayer/Player;->addSlowDownFilterJni()V

    return-void
.end method

.method public addSobelEdgeDetectionFilter()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/recordplayer/Player;->addSobelEdgeDetectionFilterJni()V

    return-void
.end method

.method public addSoulFilter()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/recordplayer/Player;->addSoulFilterJni()V

    return-void
.end method

.method public addVideoMapFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/recordplayer/Player;->addVideoMapFilterJni(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bufferTimeMax()J
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/recordplayer/Player;->bufferTimeMaxJni()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructPlayer(Ljava/lang/String;Lcom/xiaomi/recordplayer/callback/PlayerCallback;Lcom/xiaomi/recordplayer/enums/PlayerWorkingMode;J)V
    .locals 2

    sget-object v0, Lcom/xiaomi/recordplayer/Player;->TAG:Ljava/lang/String;

    const-string v1, "constructPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/xiaomi/recordplayer/Player;->pc:Lcom/xiaomi/recordplayer/callback/PlayerCallback;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/xiaomi/recordplayer/Player;->constructPlayerJni(Ljava/lang/String;IJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/xiaomi/recordplayer/Player;->playerInst:J

    return-void
.end method

.method public currentPlaybackTime()J
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/recordplayer/Player;->currentPlaybackTimeJni()J

    move-result-wide v0

    return-wide v0
.end method

.method public debugReport()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/recordplayer/Player;->debugReportJni()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public destructPlayer()V
    .locals 2

    sget-object v0, Lcom/xiaomi/recordplayer/Player;->TAG:Ljava/lang/String;

    const-string v1, "destructPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/recordplayer/Player;->setVideoSurface(Landroid/view/Surface;)V

    invoke-direct {p0}, Lcom/xiaomi/recordplayer/Player;->destructPlayerJni()V

    iput-object v0, p0, Lcom/xiaomi/recordplayer/Player;->pc:Lcom/xiaomi/recordplayer/callback/PlayerCallback;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/recordplayer/Player;->playerInst:J

    return-void
.end method

.method public duration()J
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/recordplayer/Player;->durationJni()J

    move-result-wide v0

    return-wide v0
.end method

.method public editorPlayerSetInnerVolume(F)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/recordplayer/Player;->editorPlayerSetVolumeInnerJni(F)Z

    move-result p0

    return p0
.end method

.method public editorPlayerSetMP3Volume(F)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/recordplayer/Player;->editorPlayerSetVolumeExternalMp3Jni(F)Z

    move-result p0

    return p0
.end method

.method public native editorPlayerSetVolumeExternalMp3Jni(F)Z
.end method

.method public native editorPlayerSetVolumeInnerJni(F)Z
.end method

.method public editorPlayerStart(Ljava/lang/String;Ljava/lang/String;JJ)Z
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/recordplayer/Player;->url:Ljava/lang/String;

    invoke-virtual/range {p0 .. p6}, Lcom/xiaomi/recordplayer/Player;->editorPlayerStartJni(Ljava/lang/String;Ljava/lang/String;JJ)Z

    move-result p0

    return p0
.end method

.method public native editorPlayerStartJni(Ljava/lang/String;Ljava/lang/String;JJ)Z
.end method

.method public enableEqWithMode(ZI)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/recordplayer/Player;->enableEqWithModeJni(ZI)V

    return-void
.end method

.method public native enableEqWithModeJni(ZI)V
.end method

.method public enableExtremeLargeVolume(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/recordplayer/Player;->enableExtremeLargeVolumeJni(Z)V

    return-void
.end method

.method public native enableExtremeLargeVolumeJni(Z)V
.end method

.method public enableFixedVolume(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/recordplayer/Player;->enableFixedVolumeJni(Z)V

    return-void
.end method

.method public native enableFixedVolumeJni(Z)V
.end method

.method public enableVideoFilter(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/recordplayer/Player;->enableVideoFilterJni(Z)V

    return-void
.end method

.method public getAudioTransfer()J
    .locals 2

    sget-object v0, Lcom/xiaomi/recordplayer/Player;->TAG:Ljava/lang/String;

    const-string v1, "get audio transfer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/recordplayer/Player;->getAudioTransferJni()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAudioTimestamp()J
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/recordplayer/Player;->getCurrentAudioTimestampJni()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentCachePosition()J
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/recordplayer/Player;->getCurrentCachePositionJni()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStreamId()J
    .locals 2

    sget-object v0, Lcom/xiaomi/recordplayer/Player;->TAG:Ljava/lang/String;

    const-string v1, "get stream ID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/xiaomi/recordplayer/Player;->getStreamIdJni()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimestampOfCurrentVideoFrame()J
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/recordplayer/Player;->getTimestampOfCurrentVideoFrameJni()J

    move-result-wide v0

    return-wide v0
.end method

.method public isPaused()Z
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/recordplayer/Player;->isPausedJni()Z

    move-result p0

    return p0
.end method

.method public muteAudio()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/recordplayer/Player;->muteAudioJni()V

    return-void
.end method

.method public onAudioRenderingStart()V
    .locals 2

    sget-object v0, Lcom/xiaomi/recordplayer/Player;->TAG:Ljava/lang/String;

    const-string v1, "callback:onAudioRenderingStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/xiaomi/recordplayer/Player;->pc:Lcom/xiaomi/recordplayer/callback/PlayerCallback;

    invoke-interface {p0}, Lcom/xiaomi/recordplayer/callback/PlayerCallback;->onAudioRenderingStart()V

    return-void
.end method

.method public onFirstPacketRecved()V
    .locals 2

    sget-object v0, Lcom/xiaomi/recordplayer/Player;->TAG:Ljava/lang/String;

    const-string v1, "callback:onFirstPacketRecved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/xiaomi/recordplayer/Player;->pc:Lcom/xiaomi/recordplayer/callback/PlayerCallback;

    invoke-interface {p0}, Lcom/xiaomi/recordplayer/callback/PlayerCallback;->onFirstPacketRecved()V

    return-void
.end method

.method public onOpenStreamFailed(I)V
    .locals 3

    sget-object v0, Lcom/xiaomi/recordplayer/Player;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callback:onOpenStreamFailed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/xiaomi/recordplayer/Player;->pc:Lcom/xiaomi/recordplayer/callback/PlayerCallback;

    invoke-static {p1}, Lcom/xiaomi/recordplayer/enums/AVErrorState;->int2enum(I)Lcom/xiaomi/recordplayer/enums/AVErrorState;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/xiaomi/recordplayer/callback/PlayerCallback;->onOpenStreamFailed(Lcom/xiaomi/recordplayer/enums/AVErrorState;)V

    return-void
.end method

.method public onPlayerPaused()V
    .locals 2

    sget-object v0, Lcom/xiaomi/recordplayer/Player;->TAG:Ljava/lang/String;

    const-string v1, "callback:onPlayerPaused"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/xiaomi/recordplayer/Player;->pc:Lcom/xiaomi/recordplayer/callback/PlayerCallback;

    invoke-interface {p0}, Lcom/xiaomi/recordplayer/callback/PlayerCallback;->onPlayerPaused()V

    return-void
.end method

.method public onPlayerResumed()V
    .locals 2

    sget-object v0, Lcom/xiaomi/recordplayer/Player;->TAG:Ljava/lang/String;

    const-string v1, "callback:onPlayerResumed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/xiaomi/recordplayer/Player;->pc:Lcom/xiaomi/recordplayer/callback/PlayerCallback;

    invoke-interface {p0}, Lcom/xiaomi/recordplayer/callback/PlayerCallback;->onPlayerResumed()V

    return-void
.end method

.method public onPlayerStarted()V
    .locals 2

    sget-object v0, Lcom/xiaomi/recordplayer/Player;->TAG:Ljava/lang/String;

    const-string v1, "callback:onPlayerStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/xiaomi/recordplayer/Player;->pc:Lcom/xiaomi/recordplayer/callback/PlayerCallback;

    invoke-interface {p0}, Lcom/xiaomi/recordplayer/callback/PlayerCallback;->onPlayerStarted()V

    return-void
.end method

.method public onPlayerStoped()V
    .locals 2

    sget-object v0, Lcom/xiaomi/recordplayer/Player;->TAG:Ljava/lang/String;

    const-string v1, "callback:onPlayerStoped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/xiaomi/recordplayer/Player;->pc:Lcom/xiaomi/recordplayer/callback/PlayerCallback;

    invoke-interface {p0}, Lcom/xiaomi/recordplayer/callback/PlayerCallback;->onPlayerStoped()V

    return-void
.end method

.method public onSeekCompleted()V
    .locals 2

    sget-object v0, Lcom/xiaomi/recordplayer/Player;->TAG:Ljava/lang/String;

    const-string v1, "callback:onSeekCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/xiaomi/recordplayer/Player;->pc:Lcom/xiaomi/recordplayer/callback/PlayerCallback;

    invoke-interface {p0}, Lcom/xiaomi/recordplayer/callback/PlayerCallback;->onSeekCompleted()V

    return-void
.end method

.method public onStartBuffering()V
    .locals 2

    sget-object v0, Lcom/xiaomi/recordplayer/Player;->TAG:Ljava/lang/String;

    const-string v1, "callback:onStartBuffering"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/xiaomi/recordplayer/Player;->pc:Lcom/xiaomi/recordplayer/callback/PlayerCallback;

    invoke-interface {p0}, Lcom/xiaomi/recordplayer/callback/PlayerCallback;->onStartBuffering()V

    return-void
.end method

.method public onStartPlaying()V
    .locals 2

    sget-object v0, Lcom/xiaomi/recordplayer/Player;->TAG:Ljava/lang/String;

    const-string v1, "callback:onStartPlaying"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/xiaomi/recordplayer/Player;->pc:Lcom/xiaomi/recordplayer/callback/PlayerCallback;

    invoke-interface {p0}, Lcom/xiaomi/recordplayer/callback/PlayerCallback;->onStartPlaying()V

    return-void
.end method

.method public onStartWithTimeInvalid(J)V
    .locals 3

    sget-object v0, Lcom/xiaomi/recordplayer/Player;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "debug::onStartWithTimeInvalid, the file duration is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/xiaomi/recordplayer/Player;->pc:Lcom/xiaomi/recordplayer/callback/PlayerCallback;

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/recordplayer/callback/PlayerCallback;->onStartWithTimeInvalid(J)V

    return-void
.end method

.method public onStreamEOF()V
    .locals 2

    sget-object v0, Lcom/xiaomi/recordplayer/Player;->TAG:Ljava/lang/String;

    const-string v1, "callback:onStreamEOF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/xiaomi/recordplayer/Player;->pc:Lcom/xiaomi/recordplayer/callback/PlayerCallback;

    invoke-interface {p0}, Lcom/xiaomi/recordplayer/callback/PlayerCallback;->onStreamEOF()V

    return-void
.end method

.method public onVideoRenderingStart()V
    .locals 2

    sget-object v0, Lcom/xiaomi/recordplayer/Player;->TAG:Ljava/lang/String;

    const-string v1, "callback:onVideoRenderingStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/xiaomi/recordplayer/Player;->pc:Lcom/xiaomi/recordplayer/callback/PlayerCallback;

    invoke-interface {p0}, Lcom/xiaomi/recordplayer/callback/PlayerCallback;->onVideoRenderingStart()V

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 2

    sget-object v0, Lcom/xiaomi/recordplayer/Player;->TAG:Ljava/lang/String;

    const-string v1, "callback:onVideoSizeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xiaomi/recordplayer/datastruct/VideoSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/xiaomi/recordplayer/datastruct/VideoSize;-><init>(FF)V

    int-to-float p1, p1

    iput p1, v0, Lcom/xiaomi/recordplayer/datastruct/VideoSize;->video_width:F

    int-to-float p1, p2

    iput p1, v0, Lcom/xiaomi/recordplayer/datastruct/VideoSize;->video_height:F

    iget-object p0, p0, Lcom/xiaomi/recordplayer/Player;->pc:Lcom/xiaomi/recordplayer/callback/PlayerCallback;

    invoke-interface {p0, v0}, Lcom/xiaomi/recordplayer/callback/PlayerCallback;->onVideoSizeChanged(Lcom/xiaomi/recordplayer/datastruct/VideoSize;)V

    return-void
.end method

.method public pause()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/recordplayer/Player;->pauseJni()V

    return-void
.end method

.method public pauseCacheThreadOther(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/recordplayer/Player;->pauseCacheThreadOtherJni(Ljava/lang/String;)V

    return-void
.end method

.method public pauseCacheThreadUri(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/recordplayer/Player;->pauseCacheThreadUriJni(Ljava/lang/String;)V

    return-void
.end method

.method public pauseCacheThreadUriAll()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/recordplayer/Player;->pauseCacheThreadUriAllJni()V

    return-void
.end method

.method public playbackState()Lcom/xiaomi/recordplayer/enums/PlayerPlaybackState;
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/recordplayer/Player;->playbackStateJni()I

    move-result p0

    invoke-static {p0}, Lcom/xiaomi/recordplayer/enums/PlayerPlaybackState;->int2enum(I)Lcom/xiaomi/recordplayer/enums/PlayerPlaybackState;

    move-result-object p0

    return-object p0
.end method

.method public redraw()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/recordplayer/Player;->redrawJni()V

    return-void
.end method

.method public reload(Ljava/lang/String;Z)Z
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/recordplayer/Player;->url:Ljava/lang/String;

    iget-object p1, p0, Lcom/xiaomi/recordplayer/Player;->url:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/recordplayer/Player;->reloadJni(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public removeRecordingSession(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/recordplayer/Player;->removeRecordingSessionJni(J)V

    return-void
.end method

.method public resume()Z
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/recordplayer/Player;->resumeJni()Z

    move-result p0

    return p0
.end method

.method public seekTo(JLcom/xiaomi/recordplayer/enums/PlayerSeekingMode;)Z
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/recordplayer/Player;->seekToJni(JI)Z

    move-result p0

    return p0
.end method

.method public setAllFileSize(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/recordplayer/Player;->setAllFileSizeJni(J)V

    return-void
.end method

.method public setBufferTimeMax(J)V
    .locals 2

    const-wide/16 v0, 0x78

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/recordplayer/Player;->setBufferTimeMaxJni(J)V

    return-void
.end method

.method public setCachePath(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/recordplayer/Player;->setCachePathJni(Ljava/lang/String;)V

    return-void
.end method

.method public setCacheSize(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/recordplayer/Player;->setCacheSizeJni(J)V

    return-void
.end method

.method public setCacheSpeed(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/recordplayer/Player;->setCacheSpeedJni(J)V

    return-void
.end method

.method public setEnableCacheType(Lcom/xiaomi/recordplayer/enums/PlayerCacheType;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaomi/recordplayer/Player;->setEnableCacheTypeJni(I)V

    return-void
.end method

.method public setFrameLoop(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/recordplayer/Player;->setFrameLoopJni(Z)V

    return-void
.end method

.method public setGravity(Lcom/xiaomi/recordplayer/Player$SurfaceGravity;II)V
    .locals 0

    invoke-virtual {p1}, Lcom/xiaomi/recordplayer/Player$SurfaceGravity;->toInt()I

    move-result p1

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/recordplayer/Player;->setGravityJni(III)V

    return-void
.end method

.method public setIpList([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/recordplayer/Player;->setIpListJni([Ljava/lang/String;)V

    return-void
.end method

.method public setMaxDownloadBufferTime(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/recordplayer/Player;->setMaxDownloadBufferTimeJni(J)V

    return-void
.end method

.method public native setMaxDownloadBufferTimeJni(J)V
.end method

.method public setResolveDns(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/recordplayer/Player;->setResolveDnsJni(Z)V

    return-void
.end method

.method public setSpeaker(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/recordplayer/Player;->setSpeakerJni(Z)V

    return-void
.end method

.method public setSpeakerVolume(F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/recordplayer/Player;->setSpeakerVolumeJni(F)V

    return-void
.end method

.method public setSpeedRatio(D)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/recordplayer/Player;->setSpeedRatioJni(D)Z

    move-result p0

    return p0
.end method

.method public setSpeedUpThreshold(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/recordplayer/Player;->setSpeedUpThresholdJni(J)V

    return-void
.end method

.method public native setSpeedUpThresholdJni(J)V
.end method

.method public setUserIdandClienIp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/recordplayer/Player;->setUserIdandClienIpJni(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVideoFilter(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/recordplayer/Player;->setVideoFilterJni(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoFilterIntensity(F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/recordplayer/Player;->setVideoFilterIntensityJni(F)V

    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/recordplayer/Player;->setVideoSurfaceJni(Landroid/view/Surface;)V

    return-void
.end method

.method public setWifiStatus(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/recordplayer/Player;->setWifiStatusJni(Z)V

    return-void
.end method

.method public shiftUp(FFFFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/recordplayer/Player;->shiftUpJni(FFFFF)V

    return-void
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/recordplayer/Player;->url:Ljava/lang/String;

    iget-object p1, p0, Lcom/xiaomi/recordplayer/Player;->url:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/recordplayer/Player;->startJni(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;ZJ)Z
    .locals 6

    iput-object p1, p0, Lcom/xiaomi/recordplayer/Player;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/recordplayer/Player;->url:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/recordplayer/Player;->startWithTimeJni(Ljava/lang/String;Ljava/lang/String;ZJ)Z

    move-result p0

    return p0
.end method

.method public startCacheUri(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/recordplayer/Player;->startCacheUriJni(Ljava/lang/String;)V

    return-void
.end method

.method public startCacheUriAll()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/recordplayer/Player;->startCacheUriAllJni()V

    return-void
.end method

.method public startCacheUriOther(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/recordplayer/Player;->startCacheUriOtherJni(Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/recordplayer/Player;->stopJni()V

    return-void
.end method

.method public unMuteAudio()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/recordplayer/Player;->unMuteAudioJni()V

    return-void
.end method

.method public updateCacheUri([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/recordplayer/Player;->updateCacheUriJni([Ljava/lang/String;)V

    return-void
.end method

.method public videoSize()Lcom/xiaomi/recordplayer/datastruct/VideoSize;
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/recordplayer/Player;->videoSizeJni()Lcom/xiaomi/recordplayer/datastruct/VideoSize;

    move-result-object p0

    return-object p0
.end method
