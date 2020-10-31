.class public final Landroid/net/util/SocketUtils;
.super Ljava/lang/Object;
.source "SocketUtils.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindSocketToInterface(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    sget v0, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v1, Landroid/system/OsConstants;->SO_BINDTODEVICE:I

    invoke-static {p0, v0, v1, p1}, Landroid/system/Os;->setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V

    invoke-static {p0}, Landroid/net/NetworkUtils;->protectFromVpn(Ljava/io/FileDescriptor;)Z

    return-void
.end method

.method public static closeSocket(Ljava/io/FileDescriptor;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public static makeNetlinkSocketAddress(II)Ljava/net/SocketAddress;
    .registers 3

    new-instance v0, Landroid/system/NetlinkSocketAddress;

    invoke-direct {v0, p0, p1}, Landroid/system/NetlinkSocketAddress;-><init>(II)V

    return-object v0
.end method

.method public static makePacketSocketAddress(II)Ljava/net/SocketAddress;
    .registers 4

    new-instance v0, Landroid/system/PacketSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/system/PacketSocketAddress;-><init>(II[B)V

    return-object v0
.end method

.method public static makePacketSocketAddress(II[B)Ljava/net/SocketAddress;
    .registers 4

    new-instance v0, Landroid/system/PacketSocketAddress;

    invoke-direct {v0, p0, p1, p2}, Landroid/system/PacketSocketAddress;-><init>(II[B)V

    return-object v0
.end method

.method public static makePacketSocketAddress(I[B)Ljava/net/SocketAddress;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/system/PacketSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Landroid/system/PacketSocketAddress;-><init>(II[B)V

    return-object v0
.end method
