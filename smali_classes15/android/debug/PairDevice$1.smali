.class Landroid/debug/PairDevice$1;
.super Ljava/lang/Object;
.source "PairDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/debug/PairDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/debug/PairDevice;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/debug/PairDevice;
    .registers 6

    new-instance v0, Landroid/debug/PairDevice;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/debug/PairDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/debug/PairDevice$1;->createFromParcel(Landroid/os/Parcel;)Landroid/debug/PairDevice;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/debug/PairDevice;
    .registers 3

    new-array v0, p1, [Landroid/debug/PairDevice;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/debug/PairDevice$1;->newArray(I)[Landroid/debug/PairDevice;

    move-result-object p1

    return-object p1
.end method
