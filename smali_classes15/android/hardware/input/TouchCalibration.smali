.class public Landroid/hardware/input/TouchCalibration;
.super Ljava/lang/Object;
.source "TouchCalibration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/TouchCalibration;",
            ">;"
        }
    .end annotation
.end field

.field public static final IDENTITY:Landroid/hardware/input/TouchCalibration;


# instance fields
.field private final mXOffset:F

.field private final mXScale:F

.field private final mXYMix:F

.field private final mYOffset:F

.field private final mYScale:F

.field private final mYXMix:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/input/TouchCalibration;

    invoke-direct {v0}, Landroid/hardware/input/TouchCalibration;-><init>()V

    sput-object v0, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;

    new-instance v0, Landroid/hardware/input/TouchCalibration$1;

    invoke-direct {v0}, Landroid/hardware/input/TouchCalibration$1;-><init>()V

    sput-object v0, Landroid/hardware/input/TouchCalibration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/hardware/input/TouchCalibration;-><init>(FFFFFF)V

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    iput p2, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    iput p3, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    iput p4, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    iput p5, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    iput p6, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/hardware/input/TouchCalibration;

    const/4 v2, 0x0

    if-eqz v1, :cond_3f

    move-object v1, p1

    check-cast v1, Landroid/hardware/input/TouchCalibration;

    iget v3, v1, Landroid/hardware/input/TouchCalibration;->mXScale:F

    iget v4, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3d

    iget v3, v1, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    iget v4, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3d

    iget v3, v1, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    iget v4, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3d

    iget v3, v1, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    iget v4, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3d

    iget v3, v1, Landroid/hardware/input/TouchCalibration;->mYScale:F

    iget v4, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3d

    iget v3, v1, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    iget v4, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3d

    goto :goto_3e

    :cond_3d
    move v0, v2

    :goto_3e
    return v0

    :cond_3f
    return v2
.end method

.method public getAffineTransform()[F
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [F

    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    const/4 v2, 0x4

    aput v1, v0, v2

    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    const/4 v2, 0x5

    aput v1, v0, v2

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/hardware/input/TouchCalibration;->mXScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/input/TouchCalibration;->mXYMix:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/input/TouchCalibration;->mXOffset:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/input/TouchCalibration;->mYXMix:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/input/TouchCalibration;->mYScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/input/TouchCalibration;->mYOffset:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
