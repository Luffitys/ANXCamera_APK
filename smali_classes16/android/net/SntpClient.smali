.class public Landroid/net/SntpClient;
.super Ljava/lang/Object;
.source "SntpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/SntpClient$InvalidServerReplyException;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final NTP_LEAP_NOSYNC:I = 0x3

.field private static final NTP_MODE_BROADCAST:I = 0x5

.field private static final NTP_MODE_CLIENT:I = 0x3

.field private static final NTP_MODE_SERVER:I = 0x4

.field private static final NTP_PACKET_SIZE:I = 0x30

.field private static final NTP_PORT:I = 0x7b

.field private static final NTP_STRATUM_DEATH:I = 0x0

.field private static final NTP_STRATUM_MAX:I = 0xf

.field private static final NTP_VERSION:I = 0x3

.field private static final OFFSET_1900_TO_1970:J = 0x83aa7e80L

.field private static final ORIGINATE_TIME_OFFSET:I = 0x18

.field private static final RECEIVE_TIME_OFFSET:I = 0x20

.field private static final REFERENCE_TIME_OFFSET:I = 0x10

.field private static final TAG:Ljava/lang/String; = "SntpClient"

.field private static final TRANSMIT_TIME_OFFSET:I = 0x28


# instance fields
.field private mNtpTime:J

.field private mNtpTimeReference:J

.field private mRoundTripTime:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkValidServerReply(BBIJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/SntpClient$InvalidServerReplyException;
        }
    .end annotation

    const/4 v0, 0x3

    if-eq p0, v0, :cond_50

    const/4 v0, 0x4

    if-eq p1, v0, :cond_22

    const/4 v0, 0x5

    if-ne p1, v0, :cond_a

    goto :goto_22

    :cond_a
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "untrusted mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    :goto_22
    if-eqz p2, :cond_38

    const/16 v0, 0xf

    if-gt p2, v0, :cond_38

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_2f

    return-void

    :cond_2f
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string/jumbo v1, "zero transmitTime"

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "untrusted stratum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string/jumbo v1, "unsynchronized server"

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private read32([BI)J
    .registers 16

    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v4, v0, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_18

    and-int/lit8 v4, v0, 0x7f

    add-int/2addr v4, v5

    goto :goto_19

    :cond_18
    move v4, v0

    :goto_19
    and-int/lit16 v6, v1, 0x80

    if-ne v6, v5, :cond_21

    and-int/lit8 v6, v1, 0x7f

    add-int/2addr v6, v5

    goto :goto_22

    :cond_21
    move v6, v1

    :goto_22
    and-int/lit16 v7, v2, 0x80

    if-ne v7, v5, :cond_2a

    and-int/lit8 v7, v2, 0x7f

    add-int/2addr v7, v5

    goto :goto_2b

    :cond_2a
    move v7, v2

    :goto_2b
    and-int/lit16 v8, v3, 0x80

    if-ne v8, v5, :cond_33

    and-int/lit8 v8, v3, 0x7f

    add-int/2addr v8, v5

    goto :goto_34

    :cond_33
    move v8, v3

    :goto_34
    move v5, v8

    int-to-long v8, v4

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    int-to-long v10, v6

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v7

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v5

    add-long/2addr v8, v10

    return-wide v8
.end method

.method private readTimeStamp([BI)J
    .registers 13

    invoke-direct {p0, p1, p2}, Landroid/net/SntpClient;->read32([BI)J

    move-result-wide v0

    add-int/lit8 v2, p2, 0x4

    invoke-direct {p0, p1, v2}, Landroid/net/SntpClient;->read32([BI)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_15

    cmp-long v6, v2, v4

    if-nez v6, :cond_15

    return-wide v4

    :cond_15
    const-wide v4, 0x83aa7e80L

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    mul-long/2addr v6, v2

    const-wide v8, 0x100000000L

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    return-wide v4
.end method

.method private writeTimeStamp([BIJ)V
    .registers 20

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    const/4 v3, 0x0

    if-nez v2, :cond_11

    add-int/lit8 v2, v1, 0x8

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    return-void

    :cond_11
    const-wide/16 v4, 0x3e8

    div-long v6, p3, v4

    mul-long v8, v6, v4

    sub-long v8, p3, v8

    const-wide v10, 0x83aa7e80L

    add-long/2addr v6, v10

    add-int/lit8 v2, v1, 0x1

    const/16 v10, 0x18

    shr-long v11, v6, v10

    long-to-int v11, v11

    int-to-byte v11, v11

    aput-byte v11, v0, v1

    add-int/lit8 v1, v2, 0x1

    const/16 v11, 0x10

    shr-long v12, v6, v11

    long-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, v0, v2

    add-int/lit8 v2, v1, 0x1

    const/16 v12, 0x8

    shr-long v13, v6, v12

    long-to-int v13, v13

    int-to-byte v13, v13

    aput-byte v13, v0, v1

    add-int/lit8 v1, v2, 0x1

    shr-long v13, v6, v3

    long-to-int v3, v13

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const-wide v2, 0x100000000L

    mul-long/2addr v2, v8

    div-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x1

    shr-long v13, v2, v10

    long-to-int v5, v13

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    add-int/lit8 v1, v4, 0x1

    shr-long v10, v2, v11

    long-to-int v5, v10

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v1, 0x1

    shr-long v10, v2, v12

    long-to-int v5, v10

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    add-int/lit8 v1, v4, 0x1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide v12, 0x406fe00000000000L    # 255.0

    mul-double/2addr v10, v12

    double-to-int v5, v10

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    return-void
.end method


# virtual methods
.method public getNtpTime()J
    .registers 3

    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTime:J

    return-wide v0
.end method

.method public getNtpTimeReference()J
    .registers 3

    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTimeReference:J

    return-wide v0
.end method

.method public getRoundTripTime()J
    .registers 3

    iget-wide v0, p0, Landroid/net/SntpClient;->mRoundTripTime:J

    return-wide v0
.end method

.method public requestTime(Ljava/lang/String;I)Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "SntpClient"

    const-string v1, "Shame on you for calling the hidden API requestTime()!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public requestTime(Ljava/lang/String;ILandroid/net/Network;)Z
    .registers 9

    invoke-virtual {p3}, Landroid/net/Network;->getPrivateDnsBypassingCopy()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v0, p1}, Landroid/net/Network;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_12

    move-object v1, v2

    nop

    const/16 v2, 0x7b

    invoke-virtual {p0, v1, v2, p2, v0}, Landroid/net/SntpClient;->requestTime(Ljava/net/InetAddress;IILandroid/net/Network;)Z

    move-result v2

    return v2

    :catch_12
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/net/EventLogTags;->writeNtpFailure(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "request time failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SntpClient"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3
.end method

.method public requestTime(Ljava/net/InetAddress;IILandroid/net/Network;)Z
    .registers 39

    move-object/from16 v1, p0

    const-string v2, "SntpClient"

    const/4 v3, 0x0

    const/16 v0, -0xbf

    invoke-static {v0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v4

    const/4 v5, 0x0

    :try_start_c
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    move-object v3, v0

    move-object/from16 v6, p4

    invoke-virtual {v6, v3}, Landroid/net/Network;->bindSocket(Ljava/net/DatagramSocket;)V

    move/from16 v7, p3

    invoke-virtual {v3, v7}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    const/16 v0, 0x30

    new-array v0, v0, [B

    new-instance v8, Ljava/net/DatagramPacket;

    array-length v9, v0

    move-object/from16 v10, p1

    move/from16 v11, p2

    invoke-direct {v8, v0, v9, v10, v11}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    const/16 v9, 0x1b

    aput-byte v9, v0, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const/16 v9, 0x28

    invoke-direct {v1, v0, v9, v12, v13}, Landroid/net/SntpClient;->writeTimeStamp([BIJ)V

    invoke-virtual {v3, v8}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    new-instance v9, Ljava/net/DatagramPacket;

    array-length v5, v0

    invoke-direct {v9, v0, v5}, Ljava/net/DatagramPacket;-><init>([BI)V

    move-object v5, v9

    invoke-virtual {v3, v5}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    move-wide/from16 v20, v18

    move-object v9, v5

    move-wide/from16 v5, v20

    sub-long v20, v5, v14

    add-long v20, v12, v20

    const/16 v17, 0x0

    aget-byte v18, v0, v17

    shr-int/lit8 v18, v18, 0x6

    and-int/lit8 v7, v18, 0x3

    int-to-byte v7, v7

    aget-byte v18, v0, v17

    move-object/from16 v19, v8

    and-int/lit8 v8, v18, 0x7

    int-to-byte v8, v8

    const/16 v18, 0x1

    move-object/from16 v22, v9

    aget-byte v9, v0, v18

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0x18

    invoke-direct {v1, v0, v10}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v23

    const/16 v10, 0x20

    invoke-direct {v1, v0, v10}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v25

    const/16 v10, 0x28

    invoke-direct {v1, v0, v10}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v27

    move-wide/from16 v29, v27

    move-wide/from16 v10, v29

    invoke-static {v7, v8, v9, v10, v11}, Landroid/net/SntpClient;->checkValidServerReply(BBIJ)V

    sub-long v27, v5, v14

    sub-long v29, v10, v25

    move/from16 v16, v7

    move/from16 v31, v8

    sub-long v7, v27, v29

    sub-long v27, v25, v23

    sub-long v29, v10, v20

    add-long v27, v27, v29

    const-wide/16 v29, 0x2

    div-long v27, v27, v29

    move-wide/from16 v29, v27

    move-object/from16 v27, v0

    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    move/from16 v28, v9

    move-wide/from16 v32, v10

    move-wide/from16 v9, v29

    invoke-static {v0, v7, v8, v9, v10}, Landroid/net/EventLogTags;->writeNtpSuccess(Ljava/lang/String;JJ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "round trip: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "ms, clock offset: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "ms"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v29, v12

    add-long v11, v20, v9

    iput-wide v11, v1, Landroid/net/SntpClient;->mNtpTime:J

    iput-wide v5, v1, Landroid/net/SntpClient;->mNtpTimeReference:J

    iput-wide v7, v1, Landroid/net/SntpClient;->mRoundTripTime:J
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_d9} :catch_e4
    .catchall {:try_start_c .. :try_end_d9} :catchall_e2

    nop

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    nop

    return v18

    :catchall_e2
    move-exception v0

    goto :goto_110

    :catch_e4
    move-exception v0

    :try_start_e5
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/EventLogTags;->writeNtpFailure(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "request time failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_105
    .catchall {:try_start_e5 .. :try_end_105} :catchall_e2

    nop

    if-eqz v3, :cond_10b

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    :cond_10b
    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    const/4 v2, 0x0

    return v2

    :goto_110
    if-eqz v3, :cond_115

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    :cond_115
    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v0
.end method
