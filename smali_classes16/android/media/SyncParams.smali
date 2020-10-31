.class public final Landroid/media/SyncParams;
.super Ljava/lang/Object;
.source "SyncParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SyncParams$AudioAdjustMode;,
        Landroid/media/SyncParams$SyncSource;
    }
.end annotation


# static fields
.field public static final AUDIO_ADJUST_MODE_DEFAULT:I = 0x0

.field public static final AUDIO_ADJUST_MODE_RESAMPLE:I = 0x2

.field public static final AUDIO_ADJUST_MODE_STRETCH:I = 0x1

.field private static final SET_AUDIO_ADJUST_MODE:I = 0x2

.field private static final SET_FRAME_RATE:I = 0x8

.field private static final SET_SYNC_SOURCE:I = 0x1

.field private static final SET_TOLERANCE:I = 0x4

.field public static final SYNC_SOURCE_AUDIO:I = 0x2

.field public static final SYNC_SOURCE_DEFAULT:I = 0x0

.field public static final SYNC_SOURCE_SYSTEM_CLOCK:I = 0x1

.field public static final SYNC_SOURCE_VSYNC:I = 0x3


# instance fields
.field private mAudioAdjustMode:I

.field private mFrameRate:F

.field private mSet:I

.field private mSyncSource:I

.field private mTolerance:F


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/SyncParams;->mSet:I

    iput v0, p0, Landroid/media/SyncParams;->mAudioAdjustMode:I

    iput v0, p0, Landroid/media/SyncParams;->mSyncSource:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/SyncParams;->mTolerance:F

    iput v0, p0, Landroid/media/SyncParams;->mFrameRate:F

    return-void
.end method


# virtual methods
.method public allowDefaults()Landroid/media/SyncParams;
    .registers 2

    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    or-int/lit8 v0, v0, 0x7

    iput v0, p0, Landroid/media/SyncParams;->mSet:I

    return-object p0
.end method

.method public getAudioAdjustMode()I
    .registers 3

    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/media/SyncParams;->mAudioAdjustMode:I

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "audio adjust mode not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFrameRate()F
    .registers 3

    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/media/SyncParams;->mFrameRate:F

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "frame rate not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSyncSource()I
    .registers 3

    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/media/SyncParams;->mSyncSource:I

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "sync source not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTolerance()F
    .registers 3

    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/media/SyncParams;->mTolerance:F

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "tolerance not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAudioAdjustMode(I)Landroid/media/SyncParams;
    .registers 3

    iput p1, p0, Landroid/media/SyncParams;->mAudioAdjustMode:I

    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/media/SyncParams;->mSet:I

    return-object p0
.end method

.method public setFrameRate(F)Landroid/media/SyncParams;
    .registers 3

    iput p1, p0, Landroid/media/SyncParams;->mFrameRate:F

    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/media/SyncParams;->mSet:I

    return-object p0
.end method

.method public setSyncSource(I)Landroid/media/SyncParams;
    .registers 3

    iput p1, p0, Landroid/media/SyncParams;->mSyncSource:I

    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/SyncParams;->mSet:I

    return-object p0
.end method

.method public setTolerance(F)Landroid/media/SyncParams;
    .registers 4

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_14

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_14

    iput p1, p0, Landroid/media/SyncParams;->mTolerance:F

    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/media/SyncParams;->mSet:I

    return-object p0

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "tolerance must be less than one and non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
