.class Landroid/net/ConnectionInfo$1;
.super Ljava/lang/Object;
.source "ConnectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/ConnectionInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/ConnectionInfo;
    .registers 10

    const-string v0, "Invalid InetAddress"

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2
    :try_end_e
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_e} :catch_37

    nop

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    :try_start_13
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_1b
    .catch Ljava/net/UnknownHostException; {:try_start_13 .. :try_end_1b} :catch_30

    nop

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-direct {v6, v0, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    new-instance v7, Landroid/net/ConnectionInfo;

    invoke-direct {v7, v1, v5, v6}, Landroid/net/ConnectionInfo;-><init>(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    return-object v7

    :catch_30
    move-exception v4

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_37
    move-exception v2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/ConnectionInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/ConnectionInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/ConnectionInfo;
    .registers 3

    new-array v0, p1, [Landroid/net/ConnectionInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/ConnectionInfo$1;->newArray(I)[Landroid/net/ConnectionInfo;

    move-result-object p1

    return-object p1
.end method
