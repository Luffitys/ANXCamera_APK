.class public Lnet/majorkernelpanic/streaming/SessionBuilder;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final AUDIO_AAC:I = 0x5

.field public static final AUDIO_AMRNB:I = 0x3

.field public static final AUDIO_NONE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SessionBuilder"

.field public static final VIDEO_H263:I = 0x2

.field public static final VIDEO_H264:I = 0x1

.field public static final VIDEO_NONE:I

.field private static volatile sInstance:Lnet/majorkernelpanic/streaming/SessionBuilder;


# instance fields
.field private mAudioEncoder:I

.field private mAudioQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

.field private mCallback:Lnet/majorkernelpanic/streaming/Session$Callback;

.field private mCamera:I

.field private mContext:Landroid/content/Context;

.field private mDestination:Ljava/lang/String;

.field private mFlash:Z

.field private mOrientation:I

.field private mOrigin:Ljava/lang/String;

.field private mSurfaceView:Lnet/majorkernelpanic/streaming/gl/SurfaceView;

.field private mTimeToLive:I

.field private mVideoEncoder:I

.field private mVideoQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->DEFAULT_VIDEO_QUALITY:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mVideoQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    sget-object v0, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->DEFAULT_AUDIO_QUALITY:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mAudioQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    const/4 v0, 0x2

    iput v0, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mVideoEncoder:I

    const/4 v0, 0x3

    iput v0, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mAudioEncoder:I

    const/4 v0, 0x0

    iput v0, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mCamera:I

    const/16 v1, 0x40

    iput v1, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mTimeToLive:I

    iput v0, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mOrientation:I

    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mFlash:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mSurfaceView:Lnet/majorkernelpanic/streaming/gl/SurfaceView;

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mOrigin:Ljava/lang/String;

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mDestination:Ljava/lang/String;

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mCallback:Lnet/majorkernelpanic/streaming/Session$Callback;

    return-void
.end method

.method public static copyOf(Lnet/majorkernelpanic/streaming/SessionBuilder;)Lnet/majorkernelpanic/streaming/SessionBuilder;
    .locals 2

    new-instance v0, Lnet/majorkernelpanic/streaming/SessionBuilder;

    invoke-direct {v0}, Lnet/majorkernelpanic/streaming/SessionBuilder;-><init>()V

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mDestination:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setDestination(Ljava/lang/String;)Lnet/majorkernelpanic/streaming/SessionBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mOrigin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setOrigin(Ljava/lang/String;)Lnet/majorkernelpanic/streaming/SessionBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mSurfaceView:Lnet/majorkernelpanic/streaming/gl/SurfaceView;

    invoke-virtual {v0, v1}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setSurfaceView(Lnet/majorkernelpanic/streaming/gl/SurfaceView;)Lnet/majorkernelpanic/streaming/SessionBuilder;

    move-result-object v0

    iget v1, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mOrientation:I

    invoke-virtual {v0, v1}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setPreviewOrientation(I)Lnet/majorkernelpanic/streaming/SessionBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mVideoQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    invoke-virtual {v0, v1}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setVideoQuality(Lnet/majorkernelpanic/streaming/video/VideoQuality;)Lnet/majorkernelpanic/streaming/SessionBuilder;

    move-result-object v0

    iget v1, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mVideoEncoder:I

    invoke-virtual {v0, v1}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setVideoEncoder(I)Lnet/majorkernelpanic/streaming/SessionBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mFlash:Z

    invoke-virtual {v0, v1}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setFlashEnabled(Z)Lnet/majorkernelpanic/streaming/SessionBuilder;

    move-result-object v0

    iget v1, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mCamera:I

    invoke-virtual {v0, v1}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setCamera(I)Lnet/majorkernelpanic/streaming/SessionBuilder;

    move-result-object v0

    iget v1, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mTimeToLive:I

    invoke-virtual {v0, v1}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setTimeToLive(I)Lnet/majorkernelpanic/streaming/SessionBuilder;

    move-result-object v0

    iget v1, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mAudioEncoder:I

    invoke-virtual {v0, v1}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setAudioEncoder(I)Lnet/majorkernelpanic/streaming/SessionBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mAudioQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    invoke-virtual {v0, v1}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setAudioQuality(Lnet/majorkernelpanic/streaming/audio/AudioQuality;)Lnet/majorkernelpanic/streaming/SessionBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setContext(Landroid/content/Context;)Lnet/majorkernelpanic/streaming/SessionBuilder;

    move-result-object v0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mCallback:Lnet/majorkernelpanic/streaming/Session$Callback;

    invoke-virtual {v0, p0}, Lnet/majorkernelpanic/streaming/SessionBuilder;->setCallback(Lnet/majorkernelpanic/streaming/Session$Callback;)Lnet/majorkernelpanic/streaming/SessionBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance()Lnet/majorkernelpanic/streaming/SessionBuilder;
    .locals 2

    sget-object v0, Lnet/majorkernelpanic/streaming/SessionBuilder;->sInstance:Lnet/majorkernelpanic/streaming/SessionBuilder;

    if-nez v0, :cond_1

    const-class v0, Lnet/majorkernelpanic/streaming/SessionBuilder;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lnet/majorkernelpanic/streaming/SessionBuilder;->sInstance:Lnet/majorkernelpanic/streaming/SessionBuilder;

    if-nez v1, :cond_0

    new-instance v1, Lnet/majorkernelpanic/streaming/SessionBuilder;

    invoke-direct {v1}, Lnet/majorkernelpanic/streaming/SessionBuilder;-><init>()V

    sput-object v1, Lnet/majorkernelpanic/streaming/SessionBuilder;->sInstance:Lnet/majorkernelpanic/streaming/SessionBuilder;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lnet/majorkernelpanic/streaming/SessionBuilder;->sInstance:Lnet/majorkernelpanic/streaming/SessionBuilder;

    return-object v0
.end method


# virtual methods
.method public build()Lnet/majorkernelpanic/streaming/Session;
    .locals 3

    new-instance v0, Lnet/majorkernelpanic/streaming/Session;

    invoke-direct {v0}, Lnet/majorkernelpanic/streaming/Session;-><init>()V

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mOrigin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/majorkernelpanic/streaming/Session;->setOrigin(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mDestination:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/majorkernelpanic/streaming/Session;->setDestination(Ljava/lang/String;)V

    iget v1, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mTimeToLive:I

    invoke-virtual {v0, v1}, Lnet/majorkernelpanic/streaming/Session;->setTimeToLive(I)V

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mCallback:Lnet/majorkernelpanic/streaming/Session$Callback;

    invoke-virtual {v0, v1}, Lnet/majorkernelpanic/streaming/Session;->setCallback(Lnet/majorkernelpanic/streaming/Session$Callback;)V

    iget v1, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mAudioEncoder:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/majorkernelpanic/streaming/audio/AACStream;

    invoke-direct {v1}, Lnet/majorkernelpanic/streaming/audio/AACStream;-><init>()V

    invoke-virtual {v0, v1}, Lnet/majorkernelpanic/streaming/Session;->addAudioTrack(Lnet/majorkernelpanic/streaming/audio/AudioStream;)V

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/majorkernelpanic/streaming/audio/AACStream;->setPreferences(Landroid/content/SharedPreferences;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lnet/majorkernelpanic/streaming/audio/AMRNBStream;

    invoke-direct {v1}, Lnet/majorkernelpanic/streaming/audio/AMRNBStream;-><init>()V

    invoke-virtual {v0, v1}, Lnet/majorkernelpanic/streaming/Session;->addAudioTrack(Lnet/majorkernelpanic/streaming/audio/AudioStream;)V

    :cond_2
    :goto_0
    iget v1, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mVideoEncoder:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Lnet/majorkernelpanic/streaming/video/H263Stream;

    iget v2, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mCamera:I

    invoke-direct {v1, v2}, Lnet/majorkernelpanic/streaming/video/H263Stream;-><init>(I)V

    :cond_4
    :goto_1
    invoke-virtual {v0, v1}, Lnet/majorkernelpanic/streaming/Session;->addVideoTrack(Lnet/majorkernelpanic/streaming/video/VideoStream;)V

    goto :goto_2

    :cond_5
    new-instance v1, Lnet/majorkernelpanic/streaming/video/H264Stream;

    iget v2, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mCamera:I

    invoke-direct {v1, v2}, Lnet/majorkernelpanic/streaming/video/H264Stream;-><init>(I)V

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_4

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/majorkernelpanic/streaming/video/VideoStream;->setPreferences(Landroid/content/SharedPreferences;)V

    goto :goto_1

    :goto_2
    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/Session;->getVideoTrack()Lnet/majorkernelpanic/streaming/video/VideoStream;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/Session;->getVideoTrack()Lnet/majorkernelpanic/streaming/video/VideoStream;

    move-result-object v1

    iget-boolean v2, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mFlash:Z

    invoke-virtual {v1, v2}, Lnet/majorkernelpanic/streaming/video/VideoStream;->setFlashState(Z)V

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mVideoQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    invoke-virtual {v1, v2}, Lnet/majorkernelpanic/streaming/video/VideoStream;->setVideoQuality(Lnet/majorkernelpanic/streaming/video/VideoQuality;)V

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mSurfaceView:Lnet/majorkernelpanic/streaming/gl/SurfaceView;

    invoke-virtual {v1, v2}, Lnet/majorkernelpanic/streaming/video/VideoStream;->setSurfaceView(Lnet/majorkernelpanic/streaming/gl/SurfaceView;)V

    iget v2, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mOrientation:I

    invoke-virtual {v1, v2}, Lnet/majorkernelpanic/streaming/video/VideoStream;->setPreviewOrientation(I)V

    const/16 v2, 0x138e

    invoke-virtual {v1, v2}, Lnet/majorkernelpanic/streaming/MediaStream;->setDestinationPorts(I)V

    :cond_6
    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/Session;->getAudioTrack()Lnet/majorkernelpanic/streaming/audio/AudioStream;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/Session;->getAudioTrack()Lnet/majorkernelpanic/streaming/audio/AudioStream;

    move-result-object v1

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mAudioQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    invoke-virtual {v1, p0}, Lnet/majorkernelpanic/streaming/audio/AudioStream;->setAudioQuality(Lnet/majorkernelpanic/streaming/audio/AudioQuality;)V

    const/16 p0, 0x138c

    invoke-virtual {v1, p0}, Lnet/majorkernelpanic/streaming/MediaStream;->setDestinationPorts(I)V

    :cond_7
    return-object v0
.end method

.method public getAudioEncoder()I
    .locals 0

    iget p0, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mAudioEncoder:I

    return p0
.end method

.method public getAudioQuality()Lnet/majorkernelpanic/streaming/audio/AudioQuality;
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mAudioQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    return-object p0
.end method

.method public getCamera()I
    .locals 0

    iget p0, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mCamera:I

    return p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDestination()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mDestination:Ljava/lang/String;

    return-object p0
.end method

.method public getFlashState()Z
    .locals 0

    iget-boolean p0, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mFlash:Z

    return p0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mOrigin:Ljava/lang/String;

    return-object p0
.end method

.method public getSurfaceView()Lnet/majorkernelpanic/streaming/gl/SurfaceView;
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mSurfaceView:Lnet/majorkernelpanic/streaming/gl/SurfaceView;

    return-object p0
.end method

.method public getTimeToLive()I
    .locals 0

    iget p0, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mTimeToLive:I

    return p0
.end method

.method public getVideoEncoder()I
    .locals 0

    iget p0, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mVideoEncoder:I

    return p0
.end method

.method public getVideoQuality()Lnet/majorkernelpanic/streaming/video/VideoQuality;
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mVideoQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    return-object p0
.end method

.method public setAudioEncoder(I)Lnet/majorkernelpanic/streaming/SessionBuilder;
    .locals 0

    iput p1, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mAudioEncoder:I

    return-object p0
.end method

.method public setAudioQuality(Lnet/majorkernelpanic/streaming/audio/AudioQuality;)Lnet/majorkernelpanic/streaming/SessionBuilder;
    .locals 0

    invoke-static {p1}, Lnet/majorkernelpanic/streaming/audio/AudioQuality;->copyOf(Lnet/majorkernelpanic/streaming/audio/AudioQuality;)Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    move-result-object p1

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mAudioQuality:Lnet/majorkernelpanic/streaming/audio/AudioQuality;

    return-object p0
.end method

.method public setCallback(Lnet/majorkernelpanic/streaming/Session$Callback;)Lnet/majorkernelpanic/streaming/SessionBuilder;
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mCallback:Lnet/majorkernelpanic/streaming/Session$Callback;

    return-object p0
.end method

.method public setCamera(I)Lnet/majorkernelpanic/streaming/SessionBuilder;
    .locals 0

    iput p1, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mCamera:I

    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Lnet/majorkernelpanic/streaming/SessionBuilder;
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public setDestination(Ljava/lang/String;)Lnet/majorkernelpanic/streaming/SessionBuilder;
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mDestination:Ljava/lang/String;

    return-object p0
.end method

.method public setFlashEnabled(Z)Lnet/majorkernelpanic/streaming/SessionBuilder;
    .locals 0

    iput-boolean p1, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mFlash:Z

    return-object p0
.end method

.method public setOrigin(Ljava/lang/String;)Lnet/majorkernelpanic/streaming/SessionBuilder;
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mOrigin:Ljava/lang/String;

    return-object p0
.end method

.method public setPreviewOrientation(I)Lnet/majorkernelpanic/streaming/SessionBuilder;
    .locals 0

    iput p1, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mOrientation:I

    return-object p0
.end method

.method public setSurfaceView(Lnet/majorkernelpanic/streaming/gl/SurfaceView;)Lnet/majorkernelpanic/streaming/SessionBuilder;
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mSurfaceView:Lnet/majorkernelpanic/streaming/gl/SurfaceView;

    return-object p0
.end method

.method public setTimeToLive(I)Lnet/majorkernelpanic/streaming/SessionBuilder;
    .locals 0

    iput p1, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mTimeToLive:I

    return-object p0
.end method

.method public setVideoEncoder(I)Lnet/majorkernelpanic/streaming/SessionBuilder;
    .locals 0

    iput p1, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mVideoEncoder:I

    return-object p0
.end method

.method public setVideoQuality(Lnet/majorkernelpanic/streaming/video/VideoQuality;)Lnet/majorkernelpanic/streaming/SessionBuilder;
    .locals 0

    invoke-static {p1}, Lnet/majorkernelpanic/streaming/video/VideoQuality;->copyOf(Lnet/majorkernelpanic/streaming/video/VideoQuality;)Lnet/majorkernelpanic/streaming/video/VideoQuality;

    move-result-object p1

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/SessionBuilder;->mVideoQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    return-object p0
.end method
