.class public final Landroid/hardware/hdmi/HdmiAudioSystemClient;
.super Landroid/hardware/hdmi/HdmiClient;
.source "HdmiAudioSystemClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiAudioSystemClient$SetSystemAudioModeCallback;
    }
.end annotation


# static fields
.field private static final REPORT_AUDIO_STATUS_INTERVAL_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "HdmiAudioSystemClient"


# instance fields
.field private mCanSendAudioStatus:Z

.field private final mHandler:Landroid/os/Handler;

.field private mLastIsMute:Z

.field private mLastMaxVolume:I

.field private mLastVolume:I

.field private mPendingReportAudioStatus:Z


# direct methods
.method public constructor <init>(Landroid/hardware/hdmi/IHdmiControlService;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/hardware/hdmi/HdmiAudioSystemClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/hdmi/IHdmiControlService;Landroid/os/Handler;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/HdmiClient;-><init>(Landroid/hardware/hdmi/IHdmiControlService;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mCanSendAudioStatus:Z

    if-nez p2, :cond_12

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_13

    :cond_12
    move-object v0, p2

    :goto_13
    iput-object v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/hdmi/HdmiAudioSystemClient;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mPendingReportAudioStatus:Z

    return v0
.end method

.method static synthetic access$002(Landroid/hardware/hdmi/HdmiAudioSystemClient;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mPendingReportAudioStatus:Z

    return p1
.end method

.method static synthetic access$100(Landroid/hardware/hdmi/HdmiAudioSystemClient;)I
    .registers 2

    iget v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mLastVolume:I

    return v0
.end method

.method static synthetic access$200(Landroid/hardware/hdmi/HdmiAudioSystemClient;)I
    .registers 2

    iget v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mLastMaxVolume:I

    return v0
.end method

.method static synthetic access$300(Landroid/hardware/hdmi/HdmiAudioSystemClient;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mLastIsMute:Z

    return v0
.end method

.method static synthetic access$400(Landroid/hardware/hdmi/HdmiAudioSystemClient;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Landroid/hardware/hdmi/HdmiAudioSystemClient;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mCanSendAudioStatus:Z

    return p1
.end method


# virtual methods
.method public getDeviceType()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public sendReportAudioStatusCecCommand(ZIIZ)V
    .registers 9

    if-eqz p1, :cond_e

    :try_start_2
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->getDeviceType()I

    move-result v1

    invoke-interface {v0, v1, p2, p3, p4}, Landroid/hardware/hdmi/IHdmiControlService;->reportAudioStatus(IIIZ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_d

    :catch_c
    move-exception v0

    :goto_d
    return-void

    :cond_e
    iput p2, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mLastVolume:I

    iput p3, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mLastMaxVolume:I

    iput-boolean p4, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mLastIsMute:Z

    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mCanSendAudioStatus:Z

    if-eqz v0, :cond_33

    :try_start_18
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->getDeviceType()I

    move-result v1

    invoke-interface {v0, v1, p2, p3, p4}, Landroid/hardware/hdmi/IHdmiControlService;->reportAudioStatus(IIIZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mCanSendAudioStatus:Z

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/hdmi/HdmiAudioSystemClient$1;

    invoke-direct {v1, p0}, Landroid/hardware/hdmi/HdmiAudioSystemClient$1;-><init>(Landroid/hardware/hdmi/HdmiAudioSystemClient;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_30} :catch_31

    goto :goto_32

    :catch_31
    move-exception v0

    :goto_32
    goto :goto_36

    :cond_33
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mPendingReportAudioStatus:Z

    :goto_36
    return-void
.end method

.method public setSystemAudioMode(ZLandroid/hardware/hdmi/HdmiAudioSystemClient$SetSystemAudioModeCallback;)V
    .registers 3

    return-void
.end method

.method public setSystemAudioModeOnForAudioOnlySource()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiAudioSystemClient;->mService:Landroid/hardware/hdmi/IHdmiControlService;

    invoke-interface {v0}, Landroid/hardware/hdmi/IHdmiControlService;->setSystemAudioModeOnForAudioOnlySource()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "HdmiAudioSystemClient"

    const-string v2, "Failed to set System Audio Mode on for Audio Only source"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    return-void
.end method
