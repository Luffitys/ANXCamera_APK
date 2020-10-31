.class public Landroid/media/HwAudioSource;
.super Landroid/media/PlayerBase;
.source "HwAudioSource.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/HwAudioSource$Builder;
    }
.end annotation


# instance fields
.field private final mAudioAttributes:Landroid/media/AudioAttributes;

.field private final mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

.field private mNativeHandle:I


# direct methods
.method private constructor <init>(Landroid/media/AudioDeviceInfo;Landroid/media/AudioAttributes;)V
    .registers 5

    const/16 v0, 0xe

    invoke-direct {p0, p2, v0}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSource()Z

    move-result v0

    const-string v1, "Requires a source device"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Landroid/media/HwAudioSource;->mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

    iput-object p2, p0, Landroid/media/HwAudioSource;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p0}, Landroid/media/HwAudioSource;->baseRegisterPlayer()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioDeviceInfo;Landroid/media/AudioAttributes;Landroid/media/HwAudioSource$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/media/HwAudioSource;-><init>(Landroid/media/AudioDeviceInfo;Landroid/media/AudioAttributes;)V

    return-void
.end method


# virtual methods
.method public isPlaying()Z
    .registers 2

    iget v0, p0, Landroid/media/HwAudioSource;->mNativeHandle:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;
    .registers 4

    new-instance v0, Landroid/media/VolumeShaper$State;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Landroid/media/VolumeShaper$State;-><init>(FF)V

    return-object v0
.end method

.method playerPause()V
    .registers 1

    invoke-virtual {p0}, Landroid/media/HwAudioSource;->stop()V

    return-void
.end method

.method playerSetAuxEffectSendLevel(ZF)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method playerSetVolume(ZFF)V
    .registers 4

    return-void
.end method

.method playerStart()V
    .registers 1

    invoke-virtual {p0}, Landroid/media/HwAudioSource;->start()V

    return-void
.end method

.method playerStop()V
    .registers 1

    invoke-virtual {p0}, Landroid/media/HwAudioSource;->stop()V

    return-void
.end method

.method public start()V
    .registers 3

    invoke-virtual {p0}, Landroid/media/HwAudioSource;->isPlaying()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "HwAudioSource is currently playing"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/HwAudioSource;->baseStart()V

    iget-object v0, p0, Landroid/media/HwAudioSource;->mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v0

    iget-object v1, p0, Landroid/media/HwAudioSource;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->startAudioSource(Landroid/media/AudioPortConfig;Landroid/media/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroid/media/HwAudioSource;->mNativeHandle:I

    return-void
.end method

.method public stop()V
    .registers 2

    invoke-virtual {p0}, Landroid/media/HwAudioSource;->baseStop()V

    iget v0, p0, Landroid/media/HwAudioSource;->mNativeHandle:I

    if-lez v0, :cond_d

    invoke-static {v0}, Landroid/media/AudioSystem;->stopAudioSource(I)I

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/HwAudioSource;->mNativeHandle:I

    :cond_d
    return-void
.end method
