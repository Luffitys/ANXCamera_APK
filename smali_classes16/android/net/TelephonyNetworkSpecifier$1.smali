.class Landroid/net/TelephonyNetworkSpecifier$1;
.super Ljava/lang/Object;
.source "TelephonyNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/TelephonyNetworkSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/TelephonyNetworkSpecifier;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/TelephonyNetworkSpecifier;
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v1, Landroid/net/TelephonyNetworkSpecifier;

    invoke-direct {v1, v0}, Landroid/net/TelephonyNetworkSpecifier;-><init>(I)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/TelephonyNetworkSpecifier$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/TelephonyNetworkSpecifier;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/TelephonyNetworkSpecifier;
    .registers 3

    new-array v0, p1, [Landroid/net/TelephonyNetworkSpecifier;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/TelephonyNetworkSpecifier$1;->newArray(I)[Landroid/net/TelephonyNetworkSpecifier;

    move-result-object p1

    return-object p1
.end method
