.class public final Landroid/media/PlaybackParams;
.super Ljava/lang/Object;
.source "PlaybackParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/PlaybackParams$AudioStretchMode;,
        Landroid/media/PlaybackParams$AudioFallbackMode;
    }
.end annotation


# static fields
.field public static final AUDIO_FALLBACK_MODE_DEFAULT:I = 0x0

.field public static final AUDIO_FALLBACK_MODE_FAIL:I = 0x2

.field public static final AUDIO_FALLBACK_MODE_MUTE:I = 0x1

.field public static final AUDIO_STRETCH_MODE_DEFAULT:I = 0x0

.field public static final AUDIO_STRETCH_MODE_VOICE:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/PlaybackParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final SET_AUDIO_FALLBACK_MODE:I = 0x4

.field private static final SET_AUDIO_STRETCH_MODE:I = 0x8

.field private static final SET_PITCH:I = 0x2

.field private static final SET_SPEED:I = 0x1


# instance fields
.field private mAudioFallbackMode:I

.field private mAudioStretchMode:I

.field private mPitch:F

.field private mSet:I

.field private mSpeed:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/PlaybackParams$1;

    invoke-direct {v0}, Landroid/media/PlaybackParams$1;-><init>()V

    sput-object v0, Landroid/media/PlaybackParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    iput v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    iput v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/media/PlaybackParams;->mPitch:F

    iput v0, p0, Landroid/media/PlaybackParams;->mSpeed:F

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    iput v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    iput v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/media/PlaybackParams;->mPitch:F

    iput v0, p0, Landroid/media/PlaybackParams;->mSpeed:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/media/PlaybackParams;->mPitch:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2f

    iput v1, p0, Landroid/media/PlaybackParams;->mPitch:F

    :cond_2f
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/media/PlaybackParams;->mSpeed:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/PlaybackParams$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/PlaybackParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public allowDefaults()Landroid/media/PlaybackParams;
    .registers 2

    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    or-int/lit8 v0, v0, 0xf

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    return-object p0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAudioFallbackMode()I
    .registers 3

    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "audio fallback mode not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAudioStretchMode()I
    .registers 3

    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "audio stretch mode not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPitch()F
    .registers 3

    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/media/PlaybackParams;->mPitch:F

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "pitch not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSpeed()F
    .registers 3

    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/media/PlaybackParams;->mSpeed:F

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "speed not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAudioFallbackMode(I)Landroid/media/PlaybackParams;
    .registers 3

    iput p1, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    return-object p0
.end method

.method public setAudioStretchMode(I)Landroid/media/PlaybackParams;
    .registers 3

    iput p1, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    return-object p0
.end method

.method public setPitch(F)Landroid/media/PlaybackParams;
    .registers 4

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_e

    iput p1, p0, Landroid/media/PlaybackParams;->mPitch:F

    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    return-object p0

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pitch must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSpeed(F)Landroid/media/PlaybackParams;
    .registers 3

    iput p1, p0, Landroid/media/PlaybackParams;->mSpeed:F

    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/PlaybackParams;->mSet:I

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/media/PlaybackParams;->mSet:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/PlaybackParams;->mAudioFallbackMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/PlaybackParams;->mAudioStretchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/PlaybackParams;->mPitch:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/media/PlaybackParams;->mSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
