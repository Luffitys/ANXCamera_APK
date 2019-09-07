.class public Lcom/xiaomi/conferencemanager/ConferenceManager;
.super Ljava/lang/Object;
.source "ConferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/conferencemanager/ConferenceManager$VideoContentTypeT;,
        Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;,
        Lcom/xiaomi/conferencemanager/ConferenceManager$EngineErrorTypeT;,
        Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;
    }
.end annotation


# static fields
.field static final AUTO:I = 0x0

.field static final EARPIECE:I = 0x2

.field static final HEADSET:I = 0x3

.field static final SPEAKER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ConferenceManager"


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private audioOutputDevice:I

.field final audioStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field gslb_test_config:[B

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->audioOutputDevice:I

    const/4 v1, 0x1

    new-array v2, v1, [B

    aput-byte v1, v2, v0

    iput-object v2, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->gslb_test_config:[B

    new-instance v0, Lcom/xiaomi/conferencemanager/ConferenceManager$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/conferencemanager/ConferenceManager$1;-><init>(Lcom/xiaomi/conferencemanager/ConferenceManager;)V

    iput-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->audioStateChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static WriteSettings(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    const-string v0, "ConferenceManagerwrite setting files"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->WriteSettings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$000(Lcom/xiaomi/conferencemanager/ConferenceManager;)I
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/conferencemanager/ConferenceManager;->getOutPutDevice()I

    move-result p0

    return p0
.end method

.method private getAudioManagerMode()I
    .locals 2

    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getAECType()I

    move-result p0

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    :cond_0
    return v0
.end method

.method public static getEngineVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "ConferenceManager get Engine Version!!!!"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getEngineVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEngineVersionInt()I
    .locals 1

    const-string v0, "getting getEngineVersionInt"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getEngineVersionInt()I

    move-result v0

    return v0
.end method

.method private getOutPutDevice()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->audioOutputDevice:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->audioOutputDevice:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->audioOutputDevice:I

    :goto_0
    iget p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->audioOutputDevice:I

    return p0
.end method


# virtual methods
.method public addVideoStream(IILcom/xiaomi/conferencemanager/ConferenceManager$VideoContentTypeT;)J
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addVideoStream width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "ConferenceManageraddVideoStream error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->addVideoStream(III)J

    move-result-wide p0

    return-wide p0
.end method

.method public destroy()V
    .locals 2

    const-string v0, "destorying voip engine..."

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p0, "ConferenceManagerdestroy error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->audioStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "audioStateChangeReceiver is not registered!"

    const-string v1, "ConferenceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->uninitialize()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    const-string p0, "destory voip engine done"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    return-void
.end method

.method public enableCameraRotation(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Eanble camera rotate with:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "ConferenceManagerenableCameraRotation error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->enableCameraRotation(Z)V

    const-string p0, "set camera rotate done"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    return-void
.end method

.method public enableMonitorTraffic(Z)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setting enableMonitorTraffic "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->enableMonitorTraffic(Z)V

    return-void
.end method

.method public getAECType()I
    .locals 0

    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getAECType()I

    move-result p0

    return p0
.end method

.method public getAddress()J
    .locals 2

    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getAddress()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIceStat()Ljava/lang/String;
    .locals 1

    const-string v0, "getting ice Stat"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "ConferenceManagergetIceStat error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getIceStat()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInVideoStat()Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;
    .locals 0

    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInVideoStat()Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;

    move-result-object p0

    return-object p0
.end method

.method public getMonitorData()Lcom/xiaomi/conferencemanager/Model/MonitorData;
    .locals 1

    const-string v0, "getting monitor data"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "ConferenceManagergetMonitorData error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getMonitorData()Lcom/xiaomi/conferencemanager/Model/MonitorData;

    move-result-object p0

    return-object p0
.end method

.method public getNetworkEnv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p0, "ConferenceManagerget network environment error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getNetworkEnv(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOutVideoStat()Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;
    .locals 0

    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getOutVideoStat()Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;

    move-result-object p0

    return-object p0
.end method

.method public getRunHorseTime()I
    .locals 1

    const-string v0, "getting RunHorseTime"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "ConferenceManagergetRunHorseTime error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getRunHorseTime()I

    move-result p0

    return p0
.end method

.method public getUserPlayoutVolume(Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConferenceManager get participants name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " volume!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "ConferenceManager getParticipantsVolume error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getUserPlayoutVolume(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;JLjava/lang/String;Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;)Z
    .locals 10

    const-string v0, "Initializing voip engine..."

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "ConferenceManagerinit error, please destroy the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0}, Lcom/xiaomi/conferencemanager/ConferenceManager;->getOutPutDevice()I

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->audioStateChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v2

    iget-object v7, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->gslb_test_config:[B

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->initialize(Landroid/content/Context;JLjava/lang/String;[BLcom/xiaomi/conferencemanager/callback/ConferenceCallback;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "Monitor Successed: On load succeeded."

    invoke-static {p2}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    const/4 p0, 0x1

    invoke-interface {p5, p0}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onLoad(Z)V

    return p0

    :cond_1
    const-string p1, "Monitor Failed:On load failed."

    invoke-static {p1}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    invoke-interface {p5, v1}, Lcom/xiaomi/conferencemanager/callback/ConferenceCallback;->onLoad(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    return v1
.end method

.method public isInConference()Z
    .locals 1

    const-string v0, "ConferenceManagerisInConference"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "ConferenceManager isInConference error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->isInConference()Z

    move-result p0

    return p0
.end method

.method public joinRoom(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/conferencemanager/ConferenceManager$ConferenceManagerRole;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "joining room, roomId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " server:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    if-nez v1, :cond_0

    const-string v0, "ConferenceManager joinRoom error, please init the engine first"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return v15

    :cond_0
    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, v0, Lcom/xiaomi/conferencemanager/ConferenceManager;->audioManager:Landroid/media/AudioManager;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/conferencemanager/ConferenceManager;->getAudioManagerMode()I

    move-result v1

    iget-object v3, v0, Lcom/xiaomi/conferencemanager/ConferenceManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->setMode(I)V

    iget-object v1, v0, Lcom/xiaomi/conferencemanager/ConferenceManager;->audioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_1

    const-string v0, "ConferenceManager Could not change audio routing - no audio manager"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return v15

    :cond_1
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v1

    iget-object v3, v0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getNetworkEnv(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ConferenceManager Current network environment is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->AutoStartCamera(Z)V

    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v3

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    const/4 v13, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v14, p10

    move v1, v15

    move-object/from16 v15, p11

    invoke-virtual/range {v3 .. v15}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->Join(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "ConferenceManagerjoin room failed"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/conferencemanager/ConferenceManager;->getOutPutDevice()I

    const-string v0, "join room succeeded"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public leaveRoom()V
    .locals 1

    const-string v0, "leaving conference room"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p0, "ConferenceManagerleaveRoom error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    const-string p0, "ConferenceManagerCould not change audio routing - no audio manager"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->Leave()V

    const-string v0, "Set the mode to normal"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->audioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setMode(I)V

    const-string p0, "leave conference room done"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    return-void
.end method

.method public localParticipantSetDynamicViewPolicy(Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;)V
    .locals 1

    const-string v0, "setting local participant dynamic view policy"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "ConferenceManagerlocalParticipantSetDynamicViewPolicy error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->localParticipantSetDynamicViewPolicy(Lcom/xiaomi/conferencemanager/ConferenceManager$DynamicViewPolicyT;)V

    const-string p0, "set local participant dynamic view policy done"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    return-void
.end method

.method public muteMicrophone()Z
    .locals 1

    const-string v0, "muting Microphone..."

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "ConferenceManagermuteMic error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->MuteMicrophone(Z)V

    const-string p0, "mute Microphone succeeded"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    return v0
.end method

.method public muteUserAudio(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConferenceManager set user name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "ConferenceManager muteUserAudio error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->muteUserAudio(Ljava/lang/String;Z)V

    return-void
.end method

.method public muteVideo()Z
    .locals 2

    const-string v0, "muting video..."

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "ConferenceManagermuteVideo error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->MuteVideo(Z)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ConferenceManagermute video failed"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return v0

    :cond_1
    const-string p0, "mute video succeeded"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    return v1
.end method

.method public pushVideoFrame(II[BIIIJJ)V
    .locals 12

    move-object v0, p0

    iget-object v0, v0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "ConferenceManagerpush extra YUV frame error, please init the engine first"

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-virtual/range {v1 .. v11}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->pushVideoFrameJni(II[BIIIJJ)V

    return-void
.end method

.method public removeVideoStream(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeVideoStream stream id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "ConferenceManagerremoveVideoStream error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->removeVideoStream(J)V

    return-void
.end method

.method public setAutoStartDevice(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConferenceManager setAutoStartDevice "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "ConferenceManagerset AutoStart Device error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->AutoStartMicrophone(Z)V

    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->AutoStartSpeaker(Z)V

    return-void
.end method

.method public setCallResolutionMode(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConferenceManager setCallResolutionMode to width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "ConferenceManager setCallResolutionMode error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->setCallResolutionMode(II)V

    return-void
.end method

.method public setEncoderMaxBitRate(I)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting encoder max bitrate to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "ConferenceManagersetEncoderMaxBitRate error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->setEncoderMaxBitRate(I)V

    const-string p0, "set encoder max bitrate done"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setGslbConfig([B)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGslbConfig, config_str pb pb_config length :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "ConferenceManager setGslbConfig, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return v1

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->gslb_test_config:[B

    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->SetGslbConfig([B)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ConferenceManagersetGslbConfig failed"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return v1

    :cond_1
    const-string p0, "setGslbConfig succeeded"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setLocalNetWork(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting local netWork to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " netID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "ConferenceManagersetLocalNetwork error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->setLocalNetWork(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "set local netWork done"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setMirrorCamera(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConferenceManager setMirrorCamera :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "ConferenceManager setMirrorCamera error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->setMirrorCamera(Z)V

    return-void
.end method

.method public setPlayoutVolume(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConferenceManager setPlayoutVolume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "ConferenceManager setVolume error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->setPlayoutVolume(I)V

    return-void
.end method

.method public setPowerStatus(IZ)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting power status: power left to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isCharge: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "ConferenceManagersetPowerStatus error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->setPowerStatus(IZ)V

    const-string p0, "set power status done"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setRemoteNetWork(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting remotel netWork to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " netID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "ConferenceManagersetRemoteNetwork error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->setRemoteNetWork(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "set remote netWork done"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setScreenFps(I)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set Screen fps to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "ConferenceManagersetScreenFps error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->setScreenFps(I)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ConferenceManagerset screen fps false"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return v0

    :cond_1
    const-string p0, "set screen fps done"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setScreenResolution(II)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set Screen Resotuon to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "ConferenceManagersetScreenResolution error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->setScreenResolution(II)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ConferenceManagerset screen resolution false"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return v0

    :cond_1
    const-string p0, "set screen resolution done"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setUserPlayoutVolume(Ljava/lang/String;D)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConferenceManager set user name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " volume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "ConferenceManager setVolume error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->setUserPlayoutVolume(Ljava/lang/String;D)V

    return-void
.end method

.method public startSpeakingMonitor()V
    .locals 1

    const-string v0, "ConferenceManager startSpeakingMonitor "

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "ConferenceManager startSpeakingMonitor error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->startSpeakingMonitor()V

    return-void
.end method

.method public startVideo()Z
    .locals 2

    const-string v0, "starting video..."

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "ConferenceManagerstartVideo error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->StartVideo(Z)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ConferenceManagerstart video failed"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return v0

    :cond_1
    const-string p0, "start video succeeded"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    return v1
.end method

.method public startVolumeMonitor(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConferenceManager startVolumeMonitor, monitorInterval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "ConferenceManager startVolumeMonitor error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->startVolumeMonitor(I)V

    return-void
.end method

.method public stopSpeakingMonitor()V
    .locals 1

    const-string v0, "ConferenceManager stopSpeakingMonitor "

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "ConferenceManager stopSpeakingMonitor error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->stopSpeakingMonitor()V

    return-void
.end method

.method public stopVideo()Z
    .locals 1

    const-string v0, "stopping video..."

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "ConferenceManagerstopVideo error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->StartVideo(Z)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ConferenceManagerstop video failed"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return v0

    :cond_1
    const-string p0, "stop video succeeded"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public stopVolumeMonitor()V
    .locals 1

    const-string v0, "ConferenceManager stopVolumeMonitor "

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string p0, "ConferenceManager stopVolumeMonitor error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->stopVolumeMonitor()V

    return-void
.end method

.method public switchVideoContent(Lcom/xiaomi/conferencemanager/ConferenceManager$VideoContentTypeT;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switch video content type to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "ConferenceManagerswitch video content error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->switchVideoContent(Lcom/xiaomi/conferencemanager/ConferenceManager$VideoContentTypeT;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ConferenceManagerswitch video content false"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return v0

    :cond_1
    const-string p0, "switch video content done"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public unMuteMicrophone()Z
    .locals 1

    const-string v0, "unmuting unMuteMicrophone..."

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "ConferenceManagerunMuteMic error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->MuteMicrophone(Z)V

    const-string p0, "unmute unMuteMicrophone succeeded"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public unMuteVideo()Z
    .locals 1

    const-string v0, "unmuting video..."

    invoke-static {v0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/conferencemanager/ConferenceManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "ConferenceManagerunMuteVideo error, please init the engine first"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->getInstance()Lcom/xiaomi/conferencemanager/ConferenceEngine;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/xiaomi/conferencemanager/ConferenceEngine;->MuteVideo(Z)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ConferenceManagerunmute video failed"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogE(Ljava/lang/String;)V

    return v0

    :cond_1
    const-string p0, "unmute video succeeded"

    invoke-static {p0}, Lcom/xiaomi/utils/Logger;->LogI(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
