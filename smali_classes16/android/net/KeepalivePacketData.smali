.class public Landroid/net/KeepalivePacketData;
.super Ljava/lang/Object;
.source "KeepalivePacketData.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KeepalivePacketData"


# instance fields
.field private final mDstAddress:Ljava/net/InetAddress;

.field private final mDstPort:I

.field private final mPacket:[B

.field private final mSrcAddress:Ljava/net/InetAddress;

.field private final mSrcPort:I


# direct methods
.method protected constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I[B)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/InvalidPacketException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/KeepalivePacketData;->mSrcAddress:Ljava/net/InetAddress;

    iput-object p3, p0, Landroid/net/KeepalivePacketData;->mDstAddress:Ljava/net/InetAddress;

    iput p2, p0, Landroid/net/KeepalivePacketData;->mSrcPort:I

    iput p4, p0, Landroid/net/KeepalivePacketData;->mDstPort:I

    iput-object p5, p0, Landroid/net/KeepalivePacketData;->mPacket:[B

    const-string v0, "KeepalivePacketData"

    if-eqz p1, :cond_43

    if-eqz p3, :cond_43

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-static {p2}, Landroid/net/util/IpUtils;->isValidUdpOrTcpPort(I)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-static {p4}, Landroid/net/util/IpUtils;->isValidUdpOrTcpPort(I)Z

    move-result v1

    if-eqz v1, :cond_36

    return-void

    :cond_36
    const-string v1, "Invalid ports in KeepalivePacketData"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/net/InvalidPacketException;

    const/16 v1, -0x16

    invoke-direct {v0, v1}, Landroid/net/InvalidPacketException;-><init>(I)V

    throw v0

    :cond_43
    const-string v1, "Invalid or mismatched InetAddresses in KeepalivePacketData"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/net/InvalidPacketException;

    const/16 v1, -0x15

    invoke-direct {v0, v1}, Landroid/net/InvalidPacketException;-><init>(I)V

    throw v0
.end method


# virtual methods
.method public getDstAddress()Ljava/net/InetAddress;
    .registers 2

    iget-object v0, p0, Landroid/net/KeepalivePacketData;->mDstAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getDstPort()I
    .registers 2

    iget v0, p0, Landroid/net/KeepalivePacketData;->mDstPort:I

    return v0
.end method

.method public getPacket()[B
    .registers 2

    iget-object v0, p0, Landroid/net/KeepalivePacketData;->mPacket:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getSrcAddress()Ljava/net/InetAddress;
    .registers 2

    iget-object v0, p0, Landroid/net/KeepalivePacketData;->mSrcAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getSrcPort()I
    .registers 2

    iget v0, p0, Landroid/net/KeepalivePacketData;->mSrcPort:I

    return v0
.end method
