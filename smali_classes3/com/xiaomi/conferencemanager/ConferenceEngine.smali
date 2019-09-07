.class public Lcom/xiaomi/conferencemanager/ConferenceEngine;
.super Ljava/lang/Object;
.source "ConferenceEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;,
        Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConferenceEngine"

.field private static instance:Lcom/xiaomi/conferencemanager/ConferenceEngine;


# instance fields
.field private address:J

.field private cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native WriteSettings(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native getEngineVersion()Ljava/lang/String;
.end method

.method public static native getEngineVersionInt()I
.end method

.method public static getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;
    .locals 2

    sget-object v0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->instance:Lcom/xiaomi/conferencemanager/ConferenceEngine;

    if-nez v0, :cond_1

    const-class v0, Lcom/xiaomi/conferencemanager/ConferenceEngine;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/conferencemanager/ConferenceEngine;->instance:Lcom/xiaomi/conferencemanager/ConferenceEngine;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/conferencemanager/ConferenceEngine;

    invoke-direct {v1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;-><init>()V

    sput-object v1, Lcom/xiaomi/conferencemanager/ConferenceEngine;->instance:Lcom/xiaomi/conferencemanager/ConferenceEngine;

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
    sget-object v0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->instance:Lcom/xiaomi/conferencemanager/ConferenceEngine;

    return-object v0
.end method


# virtual methods
.method public native AutoStartCamera(Z)V
.end method

.method public native AutoStartMicrophone(Z)V
.end method

.method public native AutoStartSpeaker(Z)V
.end method

.method public native Construct(Landroid/content/Context;JLjava/lang/String;[BLjava/lang/String;)J
.end method

.method public native Dispose()V
.end method

.method public native Join(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)Z
.end method

.method public native Leave()V
.end method

.method public native MuteMicrophone(Z)V
.end method

.method public native MuteVideo(Z)Z
.end method

.method public native SetGslbConfig([B)Z
.end method

.method public native SetSecure(Z)V
.end method

.method public native StartVideo(Z)Z
.end method

.method public native acceptCall()V
.end method

.method public native addVideoStream(III)J
.end method

.method public native declineCall()V
.end method

.method public native enableCameraRotation(Z)V
.end method

.method public native enableMonitorTraffic(Z)V
.end method

.method public native getAECType()I
.end method

.method public getAddress()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->address:J

    return-wide v0
.end method

.method public getEngineError(I)Lcom/xiaomi/conferencemanager/ConferenceManager$EngineErrorTypeT;
    .locals 5

    sget-object p0, Lcom/xiaomi/conferencemanager/ConferenceManager$EngineErrorTypeT;->ENGINE_UNKNOWN_ERROR:Lcom/xiaomi/conferencemanager/ConferenceManager$EngineErrorTypeT;

    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceManager$EngineErrorTypeT;->values()[Lcom/xiaomi/conferencemanager/ConferenceManager$EngineErrorTypeT;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v4, p1, :cond_0

    move-object p0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public native getIceStat()Ljava/lang/String;
.end method

.method public native getInVideoStat()Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;
.end method

.method public native getMonitorData()Lcom/xiaomi/conferencemanager/Model/MonitorData;
.end method

.method public getNetworkEnv(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string p0, "connectivity"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p0, "WIFI"

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    const-string v0, "Unknown"

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    return-object v0

    :pswitch_0
    const-string p0, "4G"

    return-object p0

    :pswitch_1
    const-string p0, "3G"

    return-object p0

    :pswitch_2
    const-string p0, "2G"

    return-object p0

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    const-string p0, "No network"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public native getOutVideoStat()Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;
.end method

.method public native getRunHorseTime()I
.end method

.method public native getUserPlayoutVolume(Ljava/lang/String;)I
.end method

.method public native getVoiceMode()I
.end method

.method public initialize(Landroid/content/Context;JLjava/lang/String;[BLcom/xiaomi/conferencemanager/callback/ConferenceCallback;Ljava/lang/String;)Z
    .locals 7

    iput-object p6, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    if-eqz p5, :cond_0

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Java gslb_config_str.length. "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    new-instance p6, Ljava/lang/String;

    invoke-direct {p6, p5}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->Construct(Landroid/content/Context;JLjava/lang/String;[BLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->address:J

    iget-wide p0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->address:J

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public native isInConference()Z
.end method

.method public native localParticipantSetDynamicViewPolicy(Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;)V
.end method

.method public native muteUserAudio(Ljava/lang/String;Z)V
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Java onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getEngineError(I)Lcom/xiaomi/conferencemanager/ConferenceManager$EngineErrorTypeT;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-virtual {p0, p2}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getEngineError(I)Lcom/xiaomi/conferencemanager/ConferenceManager$EngineErrorTypeT;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onError(Ljava/lang/String;Lcom/xiaomi/conferencemanager/ConferenceManager$EngineErrorTypeT;)V

    return-void
.end method

.method public onGetConnnectionData(Lcom/xiaomi/conferencemanager/Model/ConnectionData;)V
    .locals 0

    const-string p0, "Java onGetConnectionData."

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    return-void
.end method

.method public onGetFirstAudioSample()V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {p0}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onGetFirstAudioSample()V

    return-void
.end method

.method public onGetFirstVideoSample(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {p0, p1}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onGetFirstVideoSample(Ljava/lang/String;)V

    return-void
.end method

.method public onGetSpeekerDetect([Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {p0, p1}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onGetSpeekerDetect([Ljava/lang/String;)V

    return-void
.end method

.method public onLocalUserJoined()V
    .locals 1

    const-string v0, "Java onLocalUserJoined."

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {p0}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onLocalUserJoined()V

    return-void
.end method

.method public onLocalUserLeaved(I)V
    .locals 1

    const-string v0, "Java onLocalUserLeaved."

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-virtual {p0, p1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getEngineError(I)Lcom/xiaomi/conferencemanager/ConferenceManager$EngineErrorTypeT;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onLocalUserLeaved(Lcom/xiaomi/conferencemanager/ConferenceManager$EngineErrorTypeT;)V

    return-void
.end method

.method public onParticipantsVolumeChanged([Ljava/lang/String;[I)V
    .locals 4

    array-length v0, p1

    new-array v0, v0, [Lcom/xiaomi/conferencemanager/callback/ConferenceCallback$ParticipantVolume;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback$ParticipantVolume;

    invoke-direct {v2}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback$ParticipantVolume;-><init>()V

    aget-object v3, p1, v1

    iput-object v3, v2, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback$ParticipantVolume;->mUid:Ljava/lang/String;

    aget v3, p2, v1

    iput v3, v2, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback$ParticipantVolume;->mVolume:I

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {p0, v0}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onParticipantsVolumeChanged([Lcom/xiaomi/conferencemanager/callback/ConferenceCallback$ParticipantVolume;)V

    return-void
.end method

.method public onRemoteAudioStreamCreated(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {p0, p1}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onRemoteAudioStreamCreated(Ljava/lang/String;)V

    return-void
.end method

.method public onRemoteAudioStreamRemoved(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {p0, p1}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onRemoteAudioStreamRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public onRemoteSourceAdded(Ljava/lang/String;J)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onRemoteSourceAdded(Ljava/lang/String;J)V

    return-void
.end method

.method public onRemoteSourceRemoved(Ljava/lang/String;J)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onRemoteSourceRemoved(Ljava/lang/String;J)V

    return-void
.end method

.method public onRemoteUserJoined(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {p0, p1}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onRemoteUserJoined(Ljava/lang/String;)V

    return-void
.end method

.method public onRemoteUserLeaved(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {p0, p1}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onRemoteUserLeaved(Ljava/lang/String;)V

    return-void
.end method

.method public onRemoteVidResize(Ljava/lang/String;II)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onRemoteVidResize(Ljava/lang/String;II)V

    return-void
.end method

.method public onRemoteVidStreamCreated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onRemoteVidStreamCreated(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRemoteVidStreamRemoved(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onRemoteVidStreamRemoved(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSpeakingStatusChanged(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onSpeakingStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStartCamera()V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {p0}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onStartCamera()V

    return-void
.end method

.method public onStopCamera()V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    invoke-interface {p0}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onStopCamera()V

    return-void
.end method

.method public native pushVideoFrameJni(II[BIIIJJ)V
.end method

.method public native removeVideoStream(J)V
.end method

.method public native setAudioType(I)V
.end method

.method public native setCallResolutionMode(II)V
.end method

.method public native setEncoderMaxBitRate(I)V
.end method

.method public native setLocalNetWork(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native setMirrorCamera(Z)V
.end method

.method public native setPlayoutVolume(I)V
.end method

.method public native setPowerStatus(IZ)V
.end method

.method public native setRemoteNetWork(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native setScreenFps(I)Z
.end method

.method public native setScreenResolution(II)Z
.end method

.method public native setUserPlayoutVolume(Ljava/lang/String;D)V
.end method

.method public native startSpeakingMonitor()V
.end method

.method public native startVolumeMonitor(I)V
.end method

.method public native stopSpeakingMonitor()V
.end method

.method public native stopVolumeMonitor()V
.end method

.method public native switchVideoContent(Lcom/xiaomi/conferencemanager/ConferenceManager$VideoContentTypeT;)Z
.end method

.method public uninitialize()V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->Dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine;->cc:Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;

    return-void
.end method
