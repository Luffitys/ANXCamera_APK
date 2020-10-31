.class public final Landroid/media/AudioPlaybackCaptureConfiguration$Builder;
.super Ljava/lang/Object;
.source "AudioPlaybackCaptureConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioPlaybackCaptureConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final ERROR_MESSAGE_MISMATCHED_RULES:Ljava/lang/String; = "Inclusive and exclusive usage rules cannot be combined"

.field private static final ERROR_MESSAGE_NON_AUDIO_PROJECTION:Ljava/lang/String; = "MediaProjection can not project audio"

.field private static final ERROR_MESSAGE_START_ACTIVITY_FAILED:Ljava/lang/String; = "startActivityForResult failed"

.field private static final MATCH_TYPE_EXCLUSIVE:I = 0x2

.field private static final MATCH_TYPE_INCLUSIVE:I = 0x1

.field private static final MATCH_TYPE_UNSPECIFIED:I


# instance fields
.field private final mAudioMixingRuleBuilder:Landroid/media/audiopolicy/AudioMixingRule$Builder;

.field private final mProjection:Landroid/media/projection/MediaProjection;

.field private mUidMatchType:I

.field private mUsageMatchType:I


# direct methods
.method public constructor <init>(Landroid/media/projection/MediaProjection;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->mUsageMatchType:I

    iput v0, p0, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->mUidMatchType:I

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_b
    invoke-virtual {p1}, Landroid/media/projection/MediaProjection;->getProjection()Landroid/media/projection/IMediaProjection;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/projection/IMediaProjection;->canProjectAudio()Z

    move-result v0

    const-string v1, "MediaProjection can not project audio"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_23

    nop

    iput-object p1, p0, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->mProjection:Landroid/media/projection/MediaProjection;

    new-instance v0, Landroid/media/audiopolicy/AudioMixingRule$Builder;

    invoke-direct {v0}, Landroid/media/audiopolicy/AudioMixingRule$Builder;-><init>()V

    iput-object v0, p0, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->mAudioMixingRuleBuilder:Landroid/media/audiopolicy/AudioMixingRule$Builder;

    return-void

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public addMatchingUid(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;
    .registers 6

    iget v0, p0, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->mUidMatchType:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const-string v2, "Inclusive and exclusive usage rules cannot be combined"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->mAudioMixingRuleBuilder:Landroid/media/audiopolicy/AudioMixingRule$Builder;

    const/4 v2, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addMixRule(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    iput v1, p0, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->mUidMatchType:I

    return-object p0
.end method

.method public addMatchingUsage(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;
    .registers 5

    iget v0, p0, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->mUsageMatchType:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const-string v2, "Inclusive and exclusive usage rules cannot be combined"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->mAudioMixingRuleBuilder:Landroid/media/audiopolicy/AudioMixingRule$Builder;

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v2, p1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addRule(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    iput v1, p0, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->mUsageMatchType:I

    return-object p0
.end method

.method public build()Landroid/media/AudioPlaybackCaptureConfiguration;
    .registers 5

    new-instance v0, Landroid/media/AudioPlaybackCaptureConfiguration;

    iget-object v1, p0, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->mAudioMixingRuleBuilder:Landroid/media/audiopolicy/AudioMixingRule$Builder;

    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->build()Landroid/media/audiopolicy/AudioMixingRule;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->mProjection:Landroid/media/projection/MediaProjection;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/AudioPlaybackCaptureConfiguration;-><init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/projection/MediaProjection;Landroid/media/AudioPlaybackCaptureConfiguration$1;)V

    return-object v0
.end method

.method public excludeUid(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;
    .registers 5

    iget v0, p0, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->mUidMatchType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    const-string v0, "Inclusive and exclusive usage rules cannot be combined"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->mAudioMixingRuleBuilder:Landroid/media/audiopolicy/AudioMixingRule$Builder;

    const/4 v1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->excludeMixRule(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->mUidMatchType:I

    return-object p0
.end method

.method public excludeUsage(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;
    .registers 5

    iget v0, p0, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->mUsageMatchType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v2, "Inclusive and exclusive usage rules cannot be combined"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->mAudioMixingRuleBuilder:Landroid/media/audiopolicy/AudioMixingRule$Builder;

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v2, p1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->excludeRule(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->mUsageMatchType:I

    return-object p0
.end method
