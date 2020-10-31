.class public Landroid/os/VibrationEffect$Prebaked;
.super Landroid/os/VibrationEffect;
.source "VibrationEffect.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Prebaked"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibrationEffect$Prebaked;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIBRATE_LOOP:I = 0x1

.field public static final VIBRATE_RECOVER:I = 0x2

.field private static durations:[J


# instance fields
.field private final mEffectId:I

.field private mEffectStrength:I

.field private final mFallback:Z

.field private mInfiniteEffectStrength:D

.field private mVibrationState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x94

    new-array v0, v0, [J

    fill-array-data v0, :array_12

    sput-object v0, Landroid/os/VibrationEffect$Prebaked;->durations:[J

    new-instance v0, Landroid/os/VibrationEffect$Prebaked$1;

    invoke-direct {v0}, Landroid/os/VibrationEffect$Prebaked$1;-><init>()V

    sput-object v0, Landroid/os/VibrationEffect$Prebaked;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_12
    .array-data 8
        0x5dfa
        0x2d00
        0x39b2
        0x9d95
        0x562c
        0x4169
        0x3b3e
        0x295e
        0x436c
        0x421b
        0x3e80
        0x26c0
        0x3854
        0x2ee0
        0x4650
        0x1eb4
        0x4bc8
        0x3138
        0x7cf8
        0x4895
        0x758d
        0x9b9c
        0x4c2c
        0x2152
        0x25dc
        0x277e
        0x41b4
        0x495e
        0x378f
        0x40a
        0x489
        0x830
        0x36a
        0x646
        0x31b
        0x6fc
        0x35b
        0x4ec
        0x684
        0x8ce
        0x73c
        0x1406
        0x78b
        0x4b4
        0x37a
        0x70b
        0x71e    # 9.0E-321
        0x52d
        0xa2f
        0x3f7
        0x37a
        0xd0
        0x2a4
        0x2a7
        0x352
        0x165
        0x12d
        0x473
        0x1c9
        0x29f
        0x578
        0x10c
        0x521
        0x1e
        0x54
        0x1e
        0x155
        0x1e
        0xf9
        0x2ab
        0x1e
        0x3e8
        0x19f
        0x4c
        -0x1
        0x441
        -0x1
        0x81b
        -0x1
        -0x1
        0x26c
        0x1e
        0x1d2
        0xb2
        -0x1
        0x44
        0x311
        0x7c
        0x8c
        0x19e
        0x61
        0x27
        0x1ce
        0xa5
        0x98
        0x127
        -0x1
        0x40
        0xff8
        0x3c5
        0x3a3
        0x134
        0xe00
        0x11e7
        0x10c1
        0x64
        0x46
        -0x1
        0x678
        0x59
        0x38
        0x4c
        0x38
        0x33
        0x2a9
        -0x1
        0x24
        -0x1
        -0x1
        0x53
        0x81
        0xd8
        0x57
        0x80
        0xd7
        0xe3
        0x216
        0x138
        0x5a
        0x12b
        0x455
        0x2ae
        0x18b
        0x2904
        0x1610
        0x1a34
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(IZ)V
    .registers 5

    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/VibrationEffect$Prebaked;->mVibrationState:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Landroid/os/VibrationEffect$Prebaked;->mInfiniteEffectStrength:D

    iput p1, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectId:I

    iput-boolean p2, p0, Landroid/os/VibrationEffect$Prebaked;->mFallback:Z

    const/4 v0, 0x1

    iput v0, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectStrength:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-direct {p0, v0, v1}, Landroid/os/VibrationEffect$Prebaked;-><init>(IZ)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectStrength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibrationEffect$Prebaked;->mVibrationState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/VibrationEffect$Prebaked;->mInfiniteEffectStrength:D

    return-void
.end method

.method private static isValidEffectStrength(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_a

    if-eq p0, v0, :cond_a

    const/4 v1, 0x2

    if-eq p0, v1, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/os/VibrationEffect$Prebaked;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/os/VibrationEffect$Prebaked;

    iget v2, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectId:I

    iget v3, v0, Landroid/os/VibrationEffect$Prebaked;->mEffectId:I

    if-ne v2, v3, :cond_1c

    iget-boolean v2, p0, Landroid/os/VibrationEffect$Prebaked;->mFallback:Z

    iget-boolean v3, v0, Landroid/os/VibrationEffect$Prebaked;->mFallback:Z

    if-ne v2, v3, :cond_1c

    iget v2, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectStrength:I

    iget v3, v0, Landroid/os/VibrationEffect$Prebaked;->mEffectStrength:I

    if-ne v2, v3, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method public getDuration()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getEffectStrength()I
    .registers 2

    iget v0, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectStrength:I

    return v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectId:I

    return v0
.end method

.method public getInfiniteStrength()D
    .registers 3

    iget-wide v0, p0, Landroid/os/VibrationEffect$Prebaked;->mInfiniteEffectStrength:D

    return-wide v0
.end method

.method public getRtpDuration()J
    .registers 4

    iget v0, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectId:I

    add-int/lit8 v0, v0, -0x15

    if-ltz v0, :cond_e

    sget-object v1, Landroid/os/VibrationEffect$Prebaked;->durations:[J

    array-length v2, v1

    if-ge v0, v2, :cond_e

    aget-wide v1, v1, v0

    return-wide v1

    :cond_e
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public hashCode()I
    .registers 3

    const/16 v0, 0x11

    iget v1, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectId:I

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectStrength:I

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method

.method public isLoop()Z
    .registers 3

    iget v0, p0, Landroid/os/VibrationEffect$Prebaked;->mVibrationState:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public isRecoverable()Z
    .registers 2

    iget v0, p0, Landroid/os/VibrationEffect$Prebaked;->mVibrationState:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public setEffectStrength(I)V
    .registers 5

    invoke-static {p1}, Landroid/os/VibrationEffect$Prebaked;->isValidEffectStrength(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iput p1, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectStrength:I

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid effect strength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInfiniteStrength(D)V
    .registers 3

    iput-wide p1, p0, Landroid/os/VibrationEffect$Prebaked;->mInfiniteEffectStrength:D

    return-void
.end method

.method public setState(I)V
    .registers 2

    iput p1, p0, Landroid/os/VibrationEffect$Prebaked;->mVibrationState:I

    return-void
.end method

.method public shouldFallback()Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/VibrationEffect$Prebaked;->mFallback:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prebaked{mEffectId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEffectStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/os/VibrationEffect$Prebaked;->mFallback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()V
    .registers 7

    iget v0, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectId:I

    const-string v1, ")"

    if-eqz v0, :cond_63

    const/4 v2, 0x1

    if-eq v0, v2, :cond_63

    const/4 v3, 0x2

    if-eq v0, v3, :cond_63

    const/4 v3, 0x3

    if-eq v0, v3, :cond_63

    const/4 v3, 0x4

    if-eq v0, v3, :cond_63

    const/4 v3, 0x5

    if-eq v0, v3, :cond_63

    const/16 v3, 0x15

    if-eq v0, v3, :cond_63

    sget-object v3, Landroid/os/VibrationEffect$Prebaked;->RINGTONES:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-lt v0, v3, :cond_2c

    iget v0, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectId:I

    sget-object v3, Landroid/os/VibrationEffect$Prebaked;->RINGTONES:[I

    sget-object v5, Landroid/os/VibrationEffect$Prebaked;->RINGTONES:[I

    array-length v5, v5

    sub-int/2addr v5, v2

    aget v3, v3, v5

    if-le v0, v3, :cond_64

    :cond_2c
    invoke-static {}, Landroid/os/VibrationEffect$Prebaked;->isLiner()Z

    move-result v0

    if-eqz v0, :cond_47

    iget v0, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectId:I

    sget-object v3, Landroid/os/VibrationEffect$Prebaked;->RINGTONESEXT:[I

    aget v3, v3, v4

    if-lt v0, v3, :cond_47

    iget v0, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectId:I

    sget-object v3, Landroid/os/VibrationEffect$Prebaked;->RINGTONESEXT:[I

    sget-object v4, Landroid/os/VibrationEffect$Prebaked;->RINGTONESEXT:[I

    array-length v4, v4

    sub-int/2addr v4, v2

    aget v2, v3, v4

    if-gt v0, v2, :cond_47

    goto :goto_64

    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown prebaked effect type (value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_63
    nop

    :cond_64
    :goto_64
    iget v0, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectStrength:I

    invoke-static {v0}, Landroid/os/VibrationEffect$Prebaked;->isValidEffectStrength(I)Z

    move-result v0

    if-eqz v0, :cond_6d

    return-void

    :cond_6d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown prebaked effect strength (value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectStrength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/os/VibrationEffect$Prebaked;->mFallback:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/VibrationEffect$Prebaked;->mVibrationState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/os/VibrationEffect$Prebaked;->mInfiniteEffectStrength:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
