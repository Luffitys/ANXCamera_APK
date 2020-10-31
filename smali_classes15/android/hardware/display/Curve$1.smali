.class Landroid/hardware/display/Curve$1;
.super Ljava/lang/Object;
.source "Curve.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/Curve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/display/Curve;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/Curve;
    .registers 5

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v1

    new-instance v2, Landroid/hardware/display/Curve;

    invoke-direct {v2, v0, v1}, Landroid/hardware/display/Curve;-><init>([F[F)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/hardware/display/Curve$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/Curve;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/display/Curve;
    .registers 3

    new-array v0, p1, [Landroid/hardware/display/Curve;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/hardware/display/Curve$1;->newArray(I)[Landroid/hardware/display/Curve;

    move-result-object p1

    return-object p1
.end method
