.class Landroid/media/midi/MidiPortImpl;
.super Ljava/lang/Object;
.source "MidiPortImpl.java"


# static fields
.field private static final DATA_PACKET_OVERHEAD:I = 0x9

.field public static final MAX_PACKET_DATA_SIZE:I = 0x3f7

.field public static final MAX_PACKET_SIZE:I = 0x400

.field public static final PACKET_TYPE_DATA:I = 0x1

.field public static final PACKET_TYPE_FLUSH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MidiPort"

.field private static final TIMESTAMP_SIZE:I = 0x8


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataOffset([BI)I
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public static getDataSize([BI)I
    .registers 3

    add-int/lit8 v0, p1, -0x9

    return v0
.end method

.method public static getPacketTimestamp([BI)J
    .registers 12

    move v0, p1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_4
    const/16 v4, 0x8

    if-ge v3, v4, :cond_16

    add-int/lit8 v0, v0, -0x1

    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xff

    shl-long v6, v1, v4

    int-to-long v8, v5

    or-long v1, v6, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_16
    return-wide v1
.end method

.method public static getPacketType([BI)I
    .registers 3

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    return v0
.end method

.method public static packData([BIIJ[B)I
    .registers 11

    const/16 v0, 0x3f7

    if-le p2, v0, :cond_6

    const/16 p2, 0x3f7

    :cond_6
    const/4 v0, 0x0

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    aput-byte v2, p5, v0

    invoke-static {p0, p1, p5, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, p2

    const/4 v0, 0x0

    :goto_11
    const/16 v2, 0x8

    if-ge v0, v2, :cond_20

    add-int/lit8 v3, v1, 0x1

    long-to-int v4, p3

    int-to-byte v4, v4

    aput-byte v4, p5, v1

    shr-long/2addr p3, v2

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_11

    :cond_20
    return v1
.end method

.method public static packFlush([B)I
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    aput-byte v1, p0, v0

    const/4 v0, 0x1

    return v0
.end method
