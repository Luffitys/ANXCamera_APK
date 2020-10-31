.class public Landroid/view/DisplayAdjustments$FixedRotationAdjustments;
.super Ljava/lang/Object;
.source "DisplayAdjustments.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayAdjustments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedRotationAdjustments"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/DisplayAdjustments$FixedRotationAdjustments;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mRotatedDisplayCutout:Landroid/view/DisplayCutout;

.field final mRotation:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/DisplayAdjustments$FixedRotationAdjustments$1;

    invoke-direct {v0}, Landroid/view/DisplayAdjustments$FixedRotationAdjustments$1;-><init>()V

    sput-object v0, Landroid/view/DisplayAdjustments$FixedRotationAdjustments;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/view/DisplayCutout;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/DisplayAdjustments$FixedRotationAdjustments;->mRotation:I

    iput-object p2, p0, Landroid/view/DisplayAdjustments$FixedRotationAdjustments;->mRotatedDisplayCutout:Landroid/view/DisplayCutout;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayAdjustments$FixedRotationAdjustments;->mRotation:I

    sget-object v0, Landroid/view/DisplayCutout$ParcelableWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/DisplayCutout$ParcelableWrapper;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    iput-object v1, p0, Landroid/view/DisplayAdjustments$FixedRotationAdjustments;->mRotatedDisplayCutout:Landroid/view/DisplayCutout;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/DisplayAdjustments$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/DisplayAdjustments$FixedRotationAdjustments;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/view/DisplayAdjustments$FixedRotationAdjustments;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/view/DisplayAdjustments$FixedRotationAdjustments;

    iget v2, p0, Landroid/view/DisplayAdjustments$FixedRotationAdjustments;->mRotation:I

    iget v3, v0, Landroid/view/DisplayAdjustments$FixedRotationAdjustments;->mRotation:I

    if-ne v2, v3, :cond_1b

    iget-object v2, p0, Landroid/view/DisplayAdjustments$FixedRotationAdjustments;->mRotatedDisplayCutout:Landroid/view/DisplayCutout;

    iget-object v3, v0, Landroid/view/DisplayAdjustments$FixedRotationAdjustments;->mRotatedDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    nop

    :goto_1c
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x11

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/DisplayAdjustments$FixedRotationAdjustments;->mRotation:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/DisplayAdjustments$FixedRotationAdjustments;->mRotatedDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FixedRotationAdjustments{rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DisplayAdjustments$FixedRotationAdjustments;->mRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cutout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/DisplayAdjustments$FixedRotationAdjustments;->mRotatedDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/view/DisplayAdjustments$FixedRotationAdjustments;->mRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v1, p0, Landroid/view/DisplayAdjustments$FixedRotationAdjustments;->mRotatedDisplayCutout:Landroid/view/DisplayCutout;

    invoke-direct {v0, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>(Landroid/view/DisplayCutout;)V

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
