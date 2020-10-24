.class public abstract Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;
.super Ljava/lang/Object;
.source ""


# static fields
.field protected static final MAXPACKETSIZE:I = 0x4f8

.field protected static final rtphl:I = 0xc


# instance fields
.field protected buffer:[B

.field protected is:Ljava/io/InputStream;

.field protected socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

.field protected ts:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->is:Ljava/io/InputStream;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->ts:J

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->ts:J

    new-instance v1, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    invoke-direct {v1}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;-><init>()V

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    invoke-virtual {v1, v0}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->setSSRC(I)V

    return-void
.end method

.method protected static printBuffer([BII)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :goto_0
    if-ge p1, p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getRtpSocket()Lnet/majorkernelpanic/streaming/rtp/RtpSocket;
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    return-object p0
.end method

.method public getSSRC()I
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->getSSRC()I

    move-result p0

    return p0
.end method

.method protected send(I)V
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    invoke-virtual {p0, p1}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->commitBuffer(I)V

    return-void
.end method

.method public setDestination(Ljava/net/InetAddress;II)V
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    invoke-virtual {p0, p1, p2, p3}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->setDestination(Ljava/net/InetAddress;II)V

    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->is:Ljava/io/InputStream;

    return-void
.end method

.method public setSSRC(I)V
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    invoke-virtual {p0, p1}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->setSSRC(I)V

    return-void
.end method

.method public setTimeToLive(I)V
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->socket:Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    invoke-virtual {p0, p1}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->setTimeToLive(I)V

    return-void
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
