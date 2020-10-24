.class public Lcom/android/camera/AudioMonitorPlayer;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiAudioMonitor"


# instance fields
.field private bufferSize:I

.field final channelConfig:I

.field final encoding:I

.field private mPlayBuffer:[S

.field private mPlayThreadRunning:Z

.field private mPlayer:Landroid/media/AudioTrack;

.field playbackRunnable:Ljava/lang/Runnable;

.field private playbackThread:Ljava/lang/Thread;

.field final sampleRateInHz:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xbb80

    iput v0, p0, Lcom/android/camera/AudioMonitorPlayer;->sampleRateInHz:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/camera/AudioMonitorPlayer;->channelConfig:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/camera/AudioMonitorPlayer;->encoding:I

    new-instance v3, Lcom/android/camera/AudioMonitorPlayer$1;

    invoke-direct {v3, p0}, Lcom/android/camera/AudioMonitorPlayer$1;-><init>(Lcom/android/camera/AudioMonitorPlayer;)V

    iput-object v3, p0, Lcom/android/camera/AudioMonitorPlayer;->playbackRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlayer:Landroid/media/AudioTrack;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlayThreadRunning:Z

    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/android/camera/AudioMonitorPlayer;->bufferSize:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlayBuffer:[S

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([SS)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/AudioMonitorPlayer;)Landroid/media/AudioTrack;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlayer:Landroid/media/AudioTrack;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/camera/AudioMonitorPlayer;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlayer:Landroid/media/AudioTrack;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/AudioMonitorPlayer;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/AudioMonitorPlayer;->bufferSize:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/camera/AudioMonitorPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlayThreadRunning:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera/AudioMonitorPlayer;)[S
    .locals 0

    iget-object p0, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlayBuffer:[S

    return-object p0
.end method

.method private destroyThread()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/AudioMonitorPlayer;->playbackThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    if-ne v1, v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/camera/AudioMonitorPlayer;->playbackThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private startThread()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/AudioMonitorPlayer;->destroyThread()V

    iget-object v0, p0, Lcom/android/camera/AudioMonitorPlayer;->playbackThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/camera/AudioMonitorPlayer;->playbackRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/AudioMonitorPlayer;->playbackThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public startPlay()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlayThreadRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlayThreadRunning:Z

    :try_start_0
    const-string v0, "MiuiAudioMonitor"

    const-string v1, "startThread ..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/AudioMonitorPlayer;->startThread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public stopPlay()V
    .locals 3

    const-string v0, "MiuiAudioMonitor"

    iget-boolean v1, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlayThreadRunning:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlayThreadRunning:Z

    :try_start_0
    const-string v1, "destroyThread ..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/AudioMonitorPlayer;->destroyThread()V

    iget-object v1, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlayer:Landroid/media/AudioTrack;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    :cond_0
    const-string v1, "RELEASE AUDIO TRACK ..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/AudioMonitorPlayer;->mPlayer:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "exception when stop audio :"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
