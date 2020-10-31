.class public final Landroid/media/HwAudioSource$Builder;
.super Ljava/lang/Object;
.source "HwAudioSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/HwAudioSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/HwAudioSource;
    .registers 5

    iget-object v0, p0, Landroid/media/HwAudioSource$Builder;->mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/HwAudioSource$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    if-nez v0, :cond_19

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/HwAudioSource$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    :cond_19
    new-instance v0, Landroid/media/HwAudioSource;

    iget-object v1, p0, Landroid/media/HwAudioSource$Builder;->mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

    iget-object v2, p0, Landroid/media/HwAudioSource$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/HwAudioSource;-><init>(Landroid/media/AudioDeviceInfo;Landroid/media/AudioAttributes;Landroid/media/HwAudioSource$1;)V

    return-object v0
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/HwAudioSource$Builder;
    .registers 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/media/HwAudioSource$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method public setAudioDeviceInfo(Landroid/media/AudioDeviceInfo;)Landroid/media/HwAudioSource$Builder;
    .registers 3

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSource()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iput-object p1, p0, Landroid/media/HwAudioSource$Builder;->mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

    return-object p0
.end method
