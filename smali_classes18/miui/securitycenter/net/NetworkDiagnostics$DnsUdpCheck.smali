.class Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;
.super Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;
.source "NetworkDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/securitycenter/net/NetworkDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DnsUdpCheck"
.end annotation


# static fields
.field private static final DNS_SERVER_PORT:I = 0x35

.field private static final PACKET_BUFSIZE:I = 0x200

.field private static final RR_TYPE_A:I = 0x1

.field private static final RR_TYPE_AAAA:I = 0x1c

.field private static final TIMEOUT_RECV:I = 0x1f4

.field private static final TIMEOUT_SEND:I = 0x64


# instance fields
.field private final mQueryType:I

.field private final mRandom:Ljava/util/Random;


# direct methods
.method public constructor <init>(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;J)V
    .registers 8

    invoke-direct/range {p0 .. p5}, Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;-><init>(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;J)V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->mRandom:Ljava/util/Random;

    iget v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->mAddressFamily:I

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    if-ne v0, v1, :cond_15

    const/16 v0, 0x1c

    iput v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->mQueryType:I

    goto :goto_18

    :cond_15
    const/4 v0, 0x1

    iput v0, p0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->mQueryType:I

    :goto_18
    return-void
.end method

.method private getDnsQueryPacket(Ljava/lang/String;)[B
    .registers 19

    move-object/from16 v0, p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/16 v3, 0x36

    new-array v3, v3, [B

    iget-object v4, v0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->mRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    int-to-byte v4, v4

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    iget-object v4, v0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->mRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    int-to-byte v4, v4

    const/4 v6, 0x1

    aput-byte v4, v3, v6

    const/4 v4, 0x2

    aput-byte v6, v3, v4

    const/4 v7, 0x3

    aput-byte v5, v3, v7

    const/4 v8, 0x4

    aput-byte v5, v3, v8

    const/4 v9, 0x5

    aput-byte v6, v3, v9

    const/4 v10, 0x6

    aput-byte v5, v3, v10

    const/4 v11, 0x7

    aput-byte v5, v3, v11

    const/16 v12, 0x8

    aput-byte v5, v3, v12

    const/16 v12, 0x9

    aput-byte v5, v3, v12

    const/16 v12, 0xa

    aput-byte v5, v3, v12

    const/16 v12, 0xb

    aput-byte v5, v3, v12

    const/16 v12, 0xc

    const/16 v13, 0x11

    aput-byte v13, v3, v12

    aget-byte v12, v1, v5

    const/16 v14, 0xd

    aput-byte v12, v3, v14

    aget-byte v12, v1, v6

    const/16 v14, 0xe

    aput-byte v12, v3, v14

    aget-byte v4, v1, v4

    const/16 v12, 0xf

    aput-byte v4, v3, v12

    aget-byte v4, v1, v7

    const/16 v12, 0x10

    aput-byte v4, v3, v12

    aget-byte v4, v1, v8

    aput-byte v4, v3, v13

    aget-byte v4, v1, v9

    const/16 v8, 0x12

    aput-byte v4, v3, v8

    const/16 v4, 0x13

    const/16 v8, 0x2d

    aput-byte v8, v3, v4

    const/16 v4, 0x14

    const/16 v9, 0x61

    aput-byte v9, v3, v4

    const/16 v4, 0x15

    const/16 v12, 0x6e

    aput-byte v12, v3, v4

    const/16 v4, 0x16

    const/16 v12, 0x64

    aput-byte v12, v3, v4

    const/16 v4, 0x17

    const/16 v13, 0x72

    aput-byte v13, v3, v4

    const/16 v4, 0x18

    const/16 v14, 0x6f

    aput-byte v14, v3, v4

    const/16 v4, 0x19

    const/16 v15, 0x69

    aput-byte v15, v3, v4

    const/16 v4, 0x1a

    aput-byte v12, v3, v4

    const/16 v4, 0x1b

    aput-byte v8, v3, v4

    const/16 v4, 0x1c

    aput-byte v12, v3, v4

    const/16 v4, 0x1d

    const/16 v12, 0x73

    aput-byte v12, v3, v4

    const/16 v4, 0x1e

    aput-byte v10, v3, v4

    const/16 v4, 0x1f

    const/16 v10, 0x6d

    aput-byte v10, v3, v4

    const/16 v4, 0x20

    const/16 v16, 0x65

    aput-byte v16, v3, v4

    const/16 v4, 0x21

    const/16 v16, 0x74

    aput-byte v16, v3, v4

    const/16 v4, 0x22

    aput-byte v13, v3, v4

    const/16 v4, 0x23

    aput-byte v15, v3, v4

    const/16 v4, 0x24

    const/16 v13, 0x63

    aput-byte v13, v3, v4

    const/16 v4, 0x25

    aput-byte v11, v3, v4

    const/16 v4, 0x26

    const/16 v11, 0x67

    aput-byte v11, v3, v4

    const/16 v4, 0x27

    aput-byte v12, v3, v4

    const/16 v4, 0x28

    aput-byte v16, v3, v4

    const/16 v4, 0x29

    aput-byte v9, v3, v4

    const/16 v4, 0x2a

    aput-byte v16, v3, v4

    const/16 v4, 0x2b

    aput-byte v15, v3, v4

    const/16 v4, 0x2c

    aput-byte v13, v3, v4

    aput-byte v7, v3, v8

    const/16 v4, 0x2e

    aput-byte v13, v3, v4

    const/16 v4, 0x2f

    aput-byte v14, v3, v4

    const/16 v4, 0x30

    aput-byte v10, v3, v4

    const/16 v4, 0x31

    aput-byte v5, v3, v4

    const/16 v4, 0x32

    aput-byte v5, v3, v4

    iget v4, v0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->mQueryType:I

    int-to-byte v4, v4

    const/16 v7, 0x33

    aput-byte v4, v3, v7

    const/16 v4, 0x34

    aput-byte v5, v3, v4

    const/16 v4, 0x35

    aput-byte v6, v3, v4

    return-object v3
.end method


# virtual methods
.method public call()Z
    .registers 13

    const-string v0, "DnsUdpCheck"

    const-string v1, "NetworkDiagnostics"

    const/4 v2, 0x0

    :try_start_5
    sget v4, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v5, Landroid/system/OsConstants;->IPPROTO_UDP:I

    const-wide/16 v6, 0x64

    const-wide/16 v8, 0x1f4

    const/16 v10, 0x35

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->setupSocket(IIJJI)V
    :try_end_13
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_13} :catch_5c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_13} :catch_5c

    nop

    iget-object v3, p0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->mRandom:Ljava/util/Random;

    const v4, 0xdbba0

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const v4, 0x186a0

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->getDnsQueryPacket(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    :goto_2e
    # invokes: Lmiui/securitycenter/net/NetworkDiagnostics;->now()J
    invoke-static {}, Lmiui/securitycenter/net/NetworkDiagnostics;->access$000()J

    move-result-wide v6

    iget-wide v8, p0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->mDeadlineTime:J

    const-wide/16 v10, 0x3e8

    sub-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-gez v6, :cond_58

    add-int/lit8 v5, v5, 0x1

    :try_start_3d
    iget-object v6, p0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    const/4 v7, 0x0

    array-length v8, v4

    invoke-static {v6, v4, v7, v8}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_44
    .catch Landroid/system/ErrnoException; {:try_start_3d .. :try_end_44} :catch_54
    .catch Ljava/io/InterruptedIOException; {:try_start_3d .. :try_end_44} :catch_54

    nop

    const/16 v6, 0x200

    :try_start_47
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    iget-object v7, p0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v7, v6}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    :try_end_50
    .catch Landroid/system/ErrnoException; {:try_start_47 .. :try_end_50} :catch_52
    .catch Ljava/io/InterruptedIOException; {:try_start_47 .. :try_end_50} :catch_52

    const/4 v2, 0x1

    goto :goto_58

    :catch_52
    move-exception v6

    goto :goto_2e

    :catch_54
    move-exception v6

    invoke-static {v1, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_58
    :goto_58
    invoke-virtual {p0}, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->close()V

    return v2

    :catch_5c
    move-exception v3

    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method
