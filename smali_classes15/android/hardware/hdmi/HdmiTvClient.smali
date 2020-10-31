.class public final Landroid/hardware/hdmi/HdmiTvClient;
.super Landroid/hardware/hdmi/HdmiClient;
.source "HdmiTvClient.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;,
        Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;,
        Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HdmiTvClient"

.field public static final VENDOR_DATA_SIZE:I = 0x10


# direct methods
.method constructor <init>(Landroid/hardware/hdmi/IHdmiControlService;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    return-void
.end method

.method private checkTimerRecordingSourceType(I)V
    .registers 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_21

    const/4 v0, 0x2

    if-eq p1, v0, :cond_21

    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    goto :goto_21

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid source type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    :goto_21
    nop

    return-void
.end method

.method static create(Landroid/hardware/hdmi/IHdmiControlService;)Landroid/hardware/hdmi/HdmiTvClient;
    .registers 2

    new-instance v0, Landroid/hardware/hdmi/HdmiTvClient;

    invoke-direct {v0, p0}, Landroid/hardware/hdmi/HdmiTvClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    return-object v0
.end method

.method private static getCallbackWrapper(Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;
    .registers 2

    new-instance v0, Landroid/hardware/hdmi/HdmiTvClient$1;

    invoke-direct {v0, p0}, Landroid/hardware/hdmi/HdmiTvClient$1;-><init>(Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;)V

    return-object v0
.end method

.method private static getListenerWrapper(Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;)Landroid/hardware/hdmi/IHdmiInputChangeListener;
    .registers 2

    new-instance v0, Landroid/hardware/hdmi/HdmiTvClient$2;

    invoke-direct {v0, p0}, Landroid/hardware/hdmi/HdmiTvClient$2;-><init>(Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;)V

    return-object v0
.end method

.method private getListenerWrapper(Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;)Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;
    .registers 3

    new-instance v0, Landroid/hardware/hdmi/HdmiTvClient$4;

    invoke-direct {v0, p0, p1}, Landroid/hardware/hdmi/HdmiTvClient$4;-><init>(Landroid/hardware/hdmi/HdmiTvClient;Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;)V

    return-object v0
.end method

.method private static getListenerWrapper(Landroid/hardware/hdmi/HdmiRecordListener;)Landroid/hardware/hdmi/IHdmiRecordListener;
    .registers 2

    new-instance v0, Landroid/hardware/hdmi/HdmiTvClient$3;

    invoke-direct {v0, p0}, Landroid/hardware/hdmi/HdmiTvClient$3;-><init>(Landroid/hardware/hdmi/HdmiRecordListener;)V

    return-object v0
.end method


# virtual methods
.method public clearTimerRecording(IILandroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;)V
    .registers 7

    if-eqz p3, :cond_1e

    invoke-direct {p0, p2}, Landroid/hardware/hdmi/HdmiTvClient;->checkTimerRecordingSourceType(I)V

    :try_start_5
    invoke-virtual {p3}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->getDataSize()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->toByteArray([BI)I

    iget-object v1, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v1, p1, p2, v0}, Landroid/hardware/hdmi/IHdmiControlService;->clearTimerRecording(II[B)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception v0

    const-string v1, "HdmiTvClient"

    const-string v2, "failed to start record: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    return-void

    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deviceSelect(ILandroid/hardware/hdmi/HdmiTvClient$SelectCallback;)V
    .registers 6

    if-eqz p2, :cond_15

    :try_start_2
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-static {p2}, Landroid/hardware/hdmi/HdmiTvClient;->getCallbackWrapper(Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/hdmi/IHdmiControlService;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    const-string v1, "HdmiTvClient"

    const-string v2, "failed to select device: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14
    return-void

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDeviceList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0}, Landroid/hardware/hdmi/IHdmiControlService;->getDeviceList()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "TAG"

    const-string v2, "Failed to call getDeviceList():"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getDeviceType()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public portSelect(ILandroid/hardware/hdmi/HdmiTvClient$SelectCallback;)V
    .registers 6

    if-eqz p2, :cond_15

    :try_start_2
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-static {p2}, Landroid/hardware/hdmi/HdmiTvClient;->getCallbackWrapper(Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/hdmi/IHdmiControlService;->portSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    const-string v1, "HdmiTvClient"

    const-string v2, "failed to select port: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14
    return-void

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendMhlVendorCommand(III[B)V
    .registers 8

    if-eqz p4, :cond_4e

    array-length v0, p4

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4e

    if-ltz p2, :cond_37

    if-ge p2, v1, :cond_37

    if-ltz p3, :cond_20

    add-int v0, p2, p3

    if-gt v0, v1, :cond_20

    :try_start_11
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/hdmi/IHdmiControlService;->sendMhlVendorCommand(III[B)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_1f

    :catch_17
    move-exception v0

    const-string v1, "HdmiTvClient"

    const-string v2, "failed to send vendor command: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    return-void

    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid vendor command data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendStandby(I)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiTvClient;->getDeviceType()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/hardware/hdmi/IHdmiControlService;->sendStandby(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_13

    :catch_a
    move-exception v0

    const-string v1, "HdmiTvClient"

    const-string/jumbo v2, "sendStandby threw exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13
    return-void
.end method

.method public setHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;)V
    .registers 5

    if-eqz p1, :cond_15

    :try_start_2
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiTvClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiTvClient$HdmiMhlVendorCommandListener;)Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    const-string v1, "HdmiTvClient"

    const-string v2, "failed to set hdmi mhl vendor command listener: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14
    return-void

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInputChangeListener(Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;)V
    .registers 5

    if-eqz p1, :cond_15

    :try_start_2
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiTvClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiTvClient$InputChangeListener;)Landroid/hardware/hdmi/IHdmiInputChangeListener;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    const-string v1, "TAG"

    const-string v2, "Failed to set InputChangeListener:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14
    return-void

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRecordListener(Landroid/hardware/hdmi/HdmiRecordListener;)V
    .registers 5

    if-eqz p1, :cond_15

    :try_start_2
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-static {p1}, Landroid/hardware/hdmi/HdmiTvClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiRecordListener;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    const-string v1, "HdmiTvClient"

    const-string v2, "failed to set record listener."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14
    return-void

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSystemAudioMode(ZLandroid/hardware/hdmi/HdmiTvClient$SelectCallback;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-static {p2}, Landroid/hardware/hdmi/HdmiTvClient;->getCallbackWrapper(Landroid/hardware/hdmi/HdmiTvClient$SelectCallback;)Landroid/hardware/hdmi/IHdmiControlCallback;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/hdmi/IHdmiControlService;->setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    const-string v1, "HdmiTvClient"

    const-string v2, "failed to set system audio mode:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method public setSystemAudioMute(Z)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlService;->setSystemAudioMute(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "HdmiTvClient"

    const-string v2, "failed to set mute: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public setSystemAudioVolume(III)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/hdmi/IHdmiControlService;->setSystemAudioVolume(III)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "HdmiTvClient"

    const-string v2, "failed to set volume: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public startOneTouchRecord(ILandroid/hardware/hdmi/HdmiRecordSources$RecordSource;)V
    .registers 6

    if-eqz p2, :cond_1c

    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {p2, v0}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->getDataSize(Z)I

    move-result v1

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->toByteArray(Z[BI)I

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0, p1, v1}, Landroid/hardware/hdmi/IHdmiControlService;->startOneTouchRecord(I[B)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_12} :catch_13

    goto :goto_1b

    :catch_13
    move-exception v0

    const-string v1, "HdmiTvClient"

    const-string v2, "failed to start record: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b
    return-void

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startTimerRecording(IILandroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;)V
    .registers 7

    if-eqz p3, :cond_1e

    invoke-direct {p0, p2}, Landroid/hardware/hdmi/HdmiTvClient;->checkTimerRecordingSourceType(I)V

    :try_start_5
    invoke-virtual {p3}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->getDataSize()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->toByteArray([BI)I

    iget-object v1, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v1, p1, p2, v0}, Landroid/hardware/hdmi/IHdmiControlService;->startTimerRecording(II[B)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception v0

    const-string v1, "HdmiTvClient"

    const-string v2, "failed to start record: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    return-void

    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopOneTouchRecord(I)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlService;->stopOneTouchRecord(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "HdmiTvClient"

    const-string v2, "failed to stop record: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method
