.class Landroid/os/VibrationEffect$Composition$PrimitiveEffect$1;
.super Ljava/lang/Object;
.source "VibrationEffect.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect$Composition$PrimitiveEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/VibrationEffect$Composition$PrimitiveEffect;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/VibrationEffect$Composition$PrimitiveEffect;
    .registers 6

    new-instance v0, Landroid/os/VibrationEffect$Composition$PrimitiveEffect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/os/VibrationEffect$Composition$PrimitiveEffect;-><init>(IFI)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/os/VibrationEffect$Composition$PrimitiveEffect$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/VibrationEffect$Composition$PrimitiveEffect;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/os/VibrationEffect$Composition$PrimitiveEffect;
    .registers 3

    new-array v0, p1, [Landroid/os/VibrationEffect$Composition$PrimitiveEffect;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/os/VibrationEffect$Composition$PrimitiveEffect$1;->newArray(I)[Landroid/os/VibrationEffect$Composition$PrimitiveEffect;

    move-result-object p1

    return-object p1
.end method
