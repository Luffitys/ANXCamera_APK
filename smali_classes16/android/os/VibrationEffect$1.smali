.class Landroid/os/VibrationEffect$1;
.super Ljava/lang/Object;
.source "VibrationEffect.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/VibrationEffect;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/VibrationEffect;
    .registers 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    new-instance v1, Landroid/os/VibrationEffect$OneShot;

    invoke-direct {v1, p1}, Landroid/os/VibrationEffect$OneShot;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :cond_d
    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    new-instance v1, Landroid/os/VibrationEffect$Waveform;

    invoke-direct {v1, p1}, Landroid/os/VibrationEffect$Waveform;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :cond_16
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1f

    new-instance v1, Landroid/os/VibrationEffect$Prebaked;

    invoke-direct {v1, p1}, Landroid/os/VibrationEffect$Prebaked;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :cond_1f
    const/4 v1, 0x4

    if-ne v0, v1, :cond_28

    new-instance v1, Landroid/os/VibrationEffect$Composed;

    invoke-direct {v1, p1}, Landroid/os/VibrationEffect$Composed;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :cond_28
    const/4 v1, 0x5

    if-ne v0, v1, :cond_31

    new-instance v1, Landroid/os/DynamicEffect;

    invoke-direct {v1, p1}, Landroid/os/DynamicEffect;-><init>(Landroid/os/Parcel;)V

    return-object v1

    :cond_31
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected vibration event type token in parcel."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/os/VibrationEffect$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/os/VibrationEffect;
    .registers 3

    new-array v0, p1, [Landroid/os/VibrationEffect;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/os/VibrationEffect$1;->newArray(I)[Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1
.end method
