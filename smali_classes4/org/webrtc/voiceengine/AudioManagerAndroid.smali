.class Lorg/webrtc/voiceengine/AudioManagerAndroid;
.super Ljava/lang/Object;
.source "AudioManagerAndroid.java"

# interfaces
.implements Lorg/webrtc/voiceengine/HeadsetPlugHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;
    }
.end annotation


# static fields
.field private static final DEFAULT_FRAMES_PER_BUFFER:I = 0x100

.field private static final DEFAULT_SAMPLING_RATE:I = 0xac44


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private final context:Landroid/content/Context;

.field private headsetPlugReceiver:Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;

.field private mAudioLowLatencyOutputFrameSize:I

.field private mAudioLowLatencySupported:Z

.field private mNativeOutputSampleRate:I

.field private native_manager:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->context:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const v1, 0xac44

    iput v1, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->mNativeOutputSampleRate:I

    const/16 v1, 0x100

    iput v1, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->mAudioLowLatencyOutputFrameSize:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    const-string v1, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->mNativeOutputSampleRate:I

    :cond_0
    const-string v1, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->mAudioLowLatencyOutputFrameSize:I

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.audio.low_latency"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->mAudioLowLatencySupported:Z

    invoke-direct {p0, p1}, Lorg/webrtc/voiceengine/AudioManagerAndroid;->registerHeadsetPlugReceiver(Landroid/content/Context;)V

    return-void
.end method

.method private native bluetoothHeadsetPlugStateChanged(ZJ)V
.end method

.method private getAudioLowLatencyOutputFrameSize()I
    .locals 0

    iget p0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->mAudioLowLatencyOutputFrameSize:I

    return p0
.end method

.method private getNativeOutputSampleRate()I
    .locals 0

    iget p0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->mNativeOutputSampleRate:I

    return p0
.end method

.method private native headsetPlugStateChanged(ZJ)V
.end method

.method private isAudioLowLatencySupported()Z
    .locals 0

    iget-boolean p0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->mAudioLowLatencySupported:Z

    return p0
.end method

.method private registerHeadsetPlugReceiver(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;

    invoke-direct {v0, p0, p0, p1}, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;-><init>(Lorg/webrtc/voiceengine/AudioManagerAndroid;Lorg/webrtc/voiceengine/HeadsetPlugHandler;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->headsetPlugReceiver:Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;

    return-void
.end method


# virtual methods
.method public declared-synchronized bindNativeObjectNativeManager(J)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->native_manager:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected finalize()V
    .locals 2

    :try_start_0
    const-string v0, "AudioManagerAndroid"

    const-string v1, "Unregister the plugin event receiver."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->headsetPlugReceiver:Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;

    invoke-virtual {p0}, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public declared-synchronized onBluetoothHeadsetPlugChange(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->native_manager:J

    invoke-direct {p0, p1, v0, v1}, Lorg/webrtc/voiceengine/AudioManagerAndroid;->bluetoothHeadsetPlugStateChanged(ZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onHeadsetPlugChange(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->native_manager:J

    invoke-direct {p0, p1, v0, v1}, Lorg/webrtc/voiceengine/AudioManagerAndroid;->headsetPlugStateChanged(ZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLoudspeakerStatus(Z)V
    .locals 3

    iget-object p0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->context:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    invoke-virtual {p0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    const-string v2, "AudioManagerAndroid"

    if-eqz p1, :cond_0

    if-nez v1, :cond_1

    const-string p1, "setSpeakerphoneOn true"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const-string p1, "setSpeakerphoneOn false"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSpeakerVolume(I)I
    .locals 2

    iget-object p0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->context:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set volume level:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "set speaker volume:"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-virtual {p0, v0, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 p0, 0x0

    return p0
.end method
