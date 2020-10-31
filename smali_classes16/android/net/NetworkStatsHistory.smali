.class public Landroid/net/NetworkStatsHistory;
.super Ljava/lang/Object;
.source "NetworkStatsHistory.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStatsHistory$ParcelUtils;,
        Landroid/net/NetworkStatsHistory$DataStreamUtils;,
        Landroid/net/NetworkStatsHistory$Entry;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIELD_ACTIVE_TIME:I = 0x1

.field public static final FIELD_ALL:I = -0x1

.field public static final FIELD_OPERATIONS:I = 0x20

.field public static final FIELD_RX_BYTES:I = 0x2

.field public static final FIELD_RX_PACKETS:I = 0x4

.field public static final FIELD_TX_BYTES:I = 0x8

.field public static final FIELD_TX_PACKETS:I = 0x10

.field private static final VERSION_ADD_ACTIVE:I = 0x3

.field private static final VERSION_ADD_PACKETS:I = 0x2

.field private static final VERSION_INIT:I = 0x1


# instance fields
.field private activeTime:[J

.field private bucketCount:I

.field private bucketDuration:J

.field private bucketStart:[J

.field private operations:[J

.field private rxBytes:[J

.field private rxPackets:[J

.field private totalBytes:J

.field private txBytes:[J

.field private txPackets:[J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/NetworkStatsHistory$1;

    invoke-direct {v0}, Landroid/net/NetworkStatsHistory$1;-><init>()V

    sput-object v0, Landroid/net/NetworkStatsHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 5

    const/16 v0, 0xa

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    return-void
.end method

.method public constructor <init>(JI)V
    .registers 5

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    return-void
.end method

.method public constructor <init>(JII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_11

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    :cond_11
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_19

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    :cond_19
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_21

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    :cond_21
    and-int/lit8 v0, p4, 0x8

    if-eqz v0, :cond_29

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    :cond_29
    and-int/lit8 v0, p4, 0x10

    if-eqz v0, :cond_31

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    :cond_31
    and-int/lit8 v0, p4, 0x20

    if-eqz v0, :cond_39

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    :cond_39
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkStatsHistory;J)V
    .registers 5

    invoke-virtual {p1, p2, p3}, Landroid/net/NetworkStatsHistory;->estimateResizeBuckets(J)I

    move-result v0

    invoke-direct {p0, p2, p3, v0}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    invoke-virtual {p0, p1}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v0, v0

    iput v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_74

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v1, :cond_29

    if-ne v0, v2, :cond_11

    goto :goto_29

    :cond_11
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_29
    :goto_29
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    if-lt v0, v2, :cond_3c

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    goto :goto_3f

    :cond_3c
    array-length v1, v1

    new-array v1, v1, [J

    :goto_3f
    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    iput v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    move-result-wide v1

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    goto :goto_b2

    :cond_74
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v2, v1

    new-array v2, v2, [J

    iput-object v2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    array-length v2, v1

    new-array v2, v2, [J

    iput-object v2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    array-length v1, v1

    iput v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    move-result-wide v1

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    nop

    :goto_b2
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne v1, v2, :cond_d3

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    array-length v1, v1

    if-ne v1, v2, :cond_d3

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    array-length v1, v1

    if-ne v1, v2, :cond_d3

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    array-length v1, v1

    if-ne v1, v2, :cond_d3

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    array-length v1, v1

    if-ne v1, v2, :cond_d3

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    array-length v1, v1

    if-ne v1, v2, :cond_d3

    return-void

    :cond_d3
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Mismatched history lengths"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static addLong([JIJ)V
    .registers 6

    if-eqz p0, :cond_7

    aget-wide v0, p0, p1

    add-long/2addr v0, p2

    aput-wide v0, p0, p1

    :cond_7
    return-void
.end method

.method private static dumpDebug(Landroid/util/proto/ProtoOutputStream;J[JI)V
    .registers 7

    if-eqz p3, :cond_7

    aget-wide v0, p3, p4

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_7
    return-void
.end method

.method private ensureBuckets(JJ)V
    .registers 10

    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    rem-long v2, p1, v0

    sub-long/2addr p1, v2

    rem-long v2, p3, v0

    sub-long v2, v0, v2

    rem-long/2addr v2, v0

    add-long/2addr p3, v2

    move-wide v0, p1

    :goto_c
    cmp-long v2, v0, p3

    if-gez v2, :cond_23

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    const/4 v3, 0x0

    iget v4, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {v2, v3, v4, v0, v1}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v2

    if-gez v2, :cond_1f

    not-int v3, v2

    invoke-direct {p0, v3, v0, v1}, Landroid/net/NetworkStatsHistory;->insertBucket(IJ)V

    :cond_1f
    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v0, v2

    goto :goto_c

    :cond_23
    return-void
.end method

.method private static getLong([JIJ)J
    .registers 6

    if-eqz p0, :cond_5

    aget-wide v0, p0, p1

    goto :goto_6

    :cond_5
    move-wide v0, p2

    :goto_6
    return-wide v0
.end method

.method private insertBucket(IJ)V
    .registers 7

    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v2, v1

    if-lt v0, v2, :cond_56

    array-length v0, v1

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v1, :cond_24

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    :cond_24
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v1, :cond_2e

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    :cond_2e
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v1, :cond_38

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    :cond_38
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v1, :cond_42

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    :cond_42
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v1, :cond_4c

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    :cond_4c
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v1, :cond_56

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    :cond_56
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge p1, v0, :cond_8c

    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v0, p1

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    invoke-static {v2, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v2, :cond_69

    invoke-static {v2, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_69
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v2, :cond_70

    invoke-static {v2, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_70
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v2, :cond_77

    invoke-static {v2, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_77
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v2, :cond_7e

    invoke-static {v2, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7e
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v2, :cond_85

    invoke-static {v2, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_85
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v2, :cond_8c

    invoke-static {v2, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8c
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aput-wide p2, v0, p1

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    return-void
.end method

.method public static multiplySafe(JJJ)J
    .registers 23

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_9

    const-wide/16 v2, 0x1

    goto :goto_b

    :cond_9
    move-wide/from16 v2, p4

    :goto_b
    move-wide/from16 v4, p0

    move-wide/from16 v6, p2

    mul-long v8, v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    or-long v14, v10, v12

    const/16 v16, 0x1f

    ushr-long v14, v14, v16

    cmp-long v14, v14, v0

    if-eqz v14, :cond_4b

    cmp-long v0, v6, v0

    if-eqz v0, :cond_2d

    div-long v0, v8, v6

    cmp-long v0, v0, v4

    if-nez v0, :cond_39

    :cond_2d
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, v4, v0

    if-nez v0, :cond_46

    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_46

    :cond_39
    move-wide/from16 v0, p2

    long-to-double v14, v0

    long-to-double v0, v2

    div-double/2addr v14, v0

    move-wide/from16 v0, p0

    move-wide/from16 p4, v4

    long-to-double v4, v0

    mul-double/2addr v14, v4

    double-to-long v4, v14

    return-wide v4

    :cond_46
    move-wide/from16 v0, p0

    move-wide/from16 p4, v4

    goto :goto_4f

    :cond_4b
    move-wide/from16 v0, p0

    move-wide/from16 p4, v4

    :goto_4f
    div-long v4, v8, v2

    return-wide v4
.end method

.method public static randomLong(Ljava/util/Random;JJ)J
    .registers 9

    long-to-float v0, p1

    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sub-long v2, p3, p1

    long-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method private static setLong([JIJ)V
    .registers 4

    if-eqz p0, :cond_4

    aput-wide p2, p0, p1

    :cond_4
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v0, :cond_c

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    :cond_c
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v0, :cond_14

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    :cond_14
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v0, :cond_1c

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    :cond_1c
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v0, :cond_24

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    :cond_24
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v0, :cond_2c

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    :cond_2c
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v0, :cond_34

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    :cond_34
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V
    .registers 9

    const-string v0, "NetworkStatsHistory: bucketDuration="

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v0, 0x0

    if-eqz p2, :cond_14

    goto :goto_1c

    :cond_14
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v1, v1, -0x20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_1c
    if-lez v0, :cond_2b

    const-string v1, "(omitting "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v1, " buckets)"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_2b
    move v1, v0

    :goto_2c
    iget v4, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v1, v4, :cond_94

    const-string/jumbo v4, "st="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v4, v4, v1

    div-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v4, :cond_4e

    const-string v4, " rb="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    aget-wide v4, v4, v1

    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    :cond_4e
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v4, :cond_5e

    const-string v4, " rp="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    aget-wide v4, v4, v1

    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    :cond_5e
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v4, :cond_6e

    const-string v4, " tb="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    aget-wide v4, v4, v1

    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    :cond_6e
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v4, :cond_7e

    const-string v4, " tp="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    aget-wide v4, v4, v1

    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    :cond_7e
    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v4, :cond_8e

    const-string v4, " op="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    aget-wide v4, v4, v1

    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    :cond_8e
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_94
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public dumpCheckin(Ljava/io/PrintWriter;)V
    .registers 10

    const-string v0, "d,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const/4 v0, 0x0

    :goto_11
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v0, v1, :cond_7c

    const-string v1, "b,"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v4, v1, v0

    div-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    const-string v5, "*"

    if-eqz v4, :cond_33

    aget-wide v6, v4, v0

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_36

    :cond_33
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_36
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v4, :cond_43

    aget-wide v6, v4, v0

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_46

    :cond_43
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_46
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v4, :cond_53

    aget-wide v6, v4, v0

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_56

    :cond_53
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_56
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v4, :cond_63

    aget-wide v6, v4, v0

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_66

    :cond_63
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_66
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v1, :cond_73

    aget-wide v4, v1, v0

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_76

    :cond_73
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_76
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_7c
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 14

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    const-wide v4, 0x10300000001L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v2, 0x0

    :goto_f
    iget v3, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v2, v3, :cond_5b

    const-wide v6, 0x20b00000002L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v8, v3, v2

    invoke-virtual {p1, v4, v5, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v8, 0x10300000002L

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {p1, v8, v9, v3, v2}, Landroid/net/NetworkStatsHistory;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J[JI)V

    const-wide v8, 0x10300000003L

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {p1, v8, v9, v3, v2}, Landroid/net/NetworkStatsHistory;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J[JI)V

    const-wide v8, 0x10300000004L

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {p1, v8, v9, v3, v2}, Landroid/net/NetworkStatsHistory;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J[JI)V

    const-wide v8, 0x10300000005L

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {p1, v8, v9, v3, v2}, Landroid/net/NetworkStatsHistory;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J[JI)V

    const-wide v8, 0x10300000006L

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {p1, v8, v9, v3, v2}, Landroid/net/NetworkStatsHistory;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J[JI)V

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_5b
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public estimateResizeBuckets(J)I
    .registers 7

    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v2

    mul-long/2addr v0, v2

    div-long/2addr v0, p1

    long-to-int v0, v0

    return v0
.end method

.method public generateRandom(JJJ)V
    .registers 36
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-wide/from16 v0, p5

    new-instance v17, Ljava/util/Random;

    invoke-direct/range {v17 .. v17}, Ljava/util/Random;-><init>()V

    invoke-virtual/range {v17 .. v17}, Ljava/util/Random;->nextFloat()F

    move-result v18

    long-to-float v2, v0

    mul-float v2, v2, v18

    float-to-long v13, v2

    long-to-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v3, v18

    mul-float/2addr v2, v3

    float-to-long v11, v2

    const-wide/16 v2, 0x400

    div-long v19, v13, v2

    div-long v21, v11, v2

    const-wide/16 v2, 0x800

    div-long v23, v13, v2

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide v7, v13

    move-wide/from16 v9, v19

    move-wide/from16 v25, v11

    move-wide/from16 v27, v13

    move-wide/from16 v13, v21

    move-wide/from16 v15, v23

    invoke-virtual/range {v2 .. v17}, Landroid/net/NetworkStatsHistory;->generateRandom(JJJJJJJLjava/util/Random;)V

    return-void
.end method

.method public generateRandom(JJJJJJJLjava/util/Random;)V
    .registers 38
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-wide/from16 v0, p3

    move-object/from16 v2, p15

    invoke-direct/range {p0 .. p4}, Landroid/net/NetworkStatsHistory;->ensureBuckets(JJ)V

    new-instance v18, Landroid/net/NetworkStats$Entry;

    sget-object v4, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v3, v18

    invoke-direct/range {v3 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move-wide/from16 v10, p11

    move-wide/from16 v12, p13

    :goto_27
    const-wide/16 v14, 0x400

    cmp-long v16, v4, v14

    if-gtz v16, :cond_43

    const-wide/16 v16, 0x80

    cmp-long v18, v6, v16

    if-gtz v18, :cond_43

    cmp-long v14, v8, v14

    if-gtz v14, :cond_43

    cmp-long v14, v10, v16

    if-gtz v14, :cond_43

    const-wide/16 v14, 0x20

    cmp-long v14, v12, v14

    if-lez v14, :cond_42

    goto :goto_43

    :cond_42
    return-void

    :cond_43
    :goto_43
    move-wide/from16 v14, p1

    invoke-static {v2, v14, v15, v0, v1}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v16

    sub-long v18, v0, v16

    const-wide/16 v20, 0x2

    div-long v0, v18, v20

    const-wide/16 v14, 0x0

    invoke-static {v2, v14, v15, v0, v1}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v0

    add-long v0, v16, v0

    move-wide/from16 p11, v0

    invoke-static {v2, v14, v15, v4, v5}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v0

    iput-wide v0, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-static {v2, v14, v15, v6, v7}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v0

    iput-wide v0, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-static {v2, v14, v15, v8, v9}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v0

    iput-wide v0, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v2, v14, v15, v10, v11}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v0

    iput-wide v0, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-static {v2, v14, v15, v12, v13}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v0

    iput-wide v0, v3, Landroid/net/NetworkStats$Entry;->operations:J

    iget-wide v0, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    sub-long/2addr v4, v0

    iget-wide v0, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    sub-long/2addr v6, v0

    iget-wide v0, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    sub-long/2addr v8, v0

    iget-wide v0, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    sub-long/2addr v10, v0

    iget-wide v0, v3, Landroid/net/NetworkStats$Entry;->operations:J

    sub-long/2addr v12, v0

    move-object/from16 p5, p0

    move-wide/from16 p6, v16

    move-wide/from16 p8, p11

    move-object/from16 p10, v3

    invoke-virtual/range {p5 .. p10}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    move-wide/from16 v0, p3

    goto :goto_27
.end method

.method public getBucketDuration()J
    .registers 3

    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    return-wide v0
.end method

.method public getEnd()J
    .registers 5

    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-lez v0, :cond_e

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, v1, v0

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v0, v2

    return-wide v0

    :cond_e
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public getIndexAfter(J)I
    .registers 6

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    if-gez v0, :cond_d

    not-int v0, v0

    goto :goto_f

    :cond_d
    add-int/lit8 v0, v0, 0x1

    :goto_f
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    return v1
.end method

.method public getIndexBefore(J)I
    .registers 6

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    if-gez v0, :cond_f

    not-int v1, v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    :cond_f
    add-int/lit8 v1, v0, -0x1

    :goto_11
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v2, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method public getStart()J
    .registers 3

    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-lez v0, :cond_a

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0

    :cond_a
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getTotalBytes()J
    .registers 3

    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    return-wide v0
.end method

.method public getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;
    .registers 9

    if-eqz p2, :cond_4

    move-object v0, p2

    goto :goto_9

    :cond_4
    new-instance v0, Landroid/net/NetworkStatsHistory$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStatsHistory$Entry;-><init>()V

    :goto_9
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    iput-wide v1, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    const-wide/16 v2, -0x1

    invoke-static {v1, p1, v2, v3}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v4

    iput-wide v4, v0, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v1, p1, v2, v3}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v4

    iput-wide v4, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v1, p1, v2, v3}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v4

    iput-wide v4, v0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v1, p1, v2, v3}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v4

    iput-wide v4, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v1, p1, v2, v3}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v4

    iput-wide v4, v0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v1, p1, v2, v3}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    return-object v0
.end method

.method public getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;
    .registers 37

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    if-eqz p7, :cond_b

    move-object/from16 v5, p7

    goto :goto_10

    :cond_b
    new-instance v5, Landroid/net/NetworkStatsHistory$Entry;

    invoke-direct {v5}, Landroid/net/NetworkStatsHistory$Entry;-><init>()V

    :goto_10
    sub-long v6, v3, v1

    iput-wide v6, v5, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    iput-wide v1, v5, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    iget-object v6, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    const-wide/16 v7, -0x1

    const-wide/16 v9, 0x0

    if-eqz v6, :cond_20

    move-wide v11, v9

    goto :goto_21

    :cond_20
    move-wide v11, v7

    :goto_21
    iput-wide v11, v5, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    iget-object v6, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v6, :cond_29

    move-wide v11, v9

    goto :goto_2a

    :cond_29
    move-wide v11, v7

    :goto_2a
    iput-wide v11, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-object v6, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v6, :cond_32

    move-wide v11, v9

    goto :goto_33

    :cond_32
    move-wide v11, v7

    :goto_33
    iput-wide v11, v5, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    iget-object v6, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v6, :cond_3b

    move-wide v11, v9

    goto :goto_3c

    :cond_3b
    move-wide v11, v7

    :goto_3c
    iput-wide v11, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    iget-object v6, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v6, :cond_44

    move-wide v11, v9

    goto :goto_45

    :cond_44
    move-wide v11, v7

    :goto_45
    iput-wide v11, v5, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    iget-object v6, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v6, :cond_4c

    move-wide v7, v9

    :cond_4c
    iput-wide v7, v5, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    invoke-virtual {v0, v3, v4}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v6

    move v7, v6

    :goto_53
    if-ltz v7, :cond_114

    iget-object v8, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v11, v8, v7

    iget-wide v13, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v13, v11

    cmp-long v8, v13, v1

    if-gtz v8, :cond_62

    goto/16 :goto_114

    :cond_62
    cmp-long v8, v11, v3

    if-ltz v8, :cond_68

    goto/16 :goto_10e

    :cond_68
    cmp-long v8, v13, p5

    if-lez v8, :cond_6e

    move-wide/from16 v13, p5

    :cond_6e
    sub-long v21, v13, v11

    cmp-long v8, v21, v9

    if-gtz v8, :cond_76

    goto/16 :goto_10e

    :cond_76
    cmp-long v8, v13, v3

    if-gez v8, :cond_7c

    move-wide v15, v13

    goto :goto_7d

    :cond_7c
    move-wide v15, v3

    :goto_7d
    move-wide/from16 v23, v15

    cmp-long v8, v11, v1

    if-lez v8, :cond_85

    move-wide v15, v11

    goto :goto_86

    :cond_85
    move-wide v15, v1

    :goto_86
    move-wide/from16 v25, v15

    sub-long v27, v23, v25

    cmp-long v8, v27, v9

    if-gtz v8, :cond_90

    goto/16 :goto_10e

    :cond_90
    iget-object v8, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v8, :cond_a5

    iget-wide v9, v5, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    iget-object v8, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    aget-wide v15, v8, v7

    move-wide/from16 v17, v27

    move-wide/from16 v19, v21

    invoke-static/range {v15 .. v20}, Landroid/net/NetworkStatsHistory;->multiplySafe(JJJ)J

    move-result-wide v15

    add-long/2addr v9, v15

    iput-wide v9, v5, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    :cond_a5
    iget-object v8, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v8, :cond_ba

    iget-wide v8, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-object v10, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    aget-wide v15, v10, v7

    move-wide/from16 v17, v27

    move-wide/from16 v19, v21

    invoke-static/range {v15 .. v20}, Landroid/net/NetworkStatsHistory;->multiplySafe(JJJ)J

    move-result-wide v15

    add-long/2addr v8, v15

    iput-wide v8, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    :cond_ba
    iget-object v8, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v8, :cond_cf

    iget-wide v8, v5, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    iget-object v10, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    aget-wide v15, v10, v7

    move-wide/from16 v17, v27

    move-wide/from16 v19, v21

    invoke-static/range {v15 .. v20}, Landroid/net/NetworkStatsHistory;->multiplySafe(JJJ)J

    move-result-wide v15

    add-long/2addr v8, v15

    iput-wide v8, v5, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    :cond_cf
    iget-object v8, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v8, :cond_e4

    iget-wide v8, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    iget-object v10, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    aget-wide v15, v10, v7

    move-wide/from16 v17, v27

    move-wide/from16 v19, v21

    invoke-static/range {v15 .. v20}, Landroid/net/NetworkStatsHistory;->multiplySafe(JJJ)J

    move-result-wide v15

    add-long/2addr v8, v15

    iput-wide v8, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    :cond_e4
    iget-object v8, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v8, :cond_f9

    iget-wide v8, v5, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    iget-object v10, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    aget-wide v15, v10, v7

    move-wide/from16 v17, v27

    move-wide/from16 v19, v21

    invoke-static/range {v15 .. v20}, Landroid/net/NetworkStatsHistory;->multiplySafe(JJJ)J

    move-result-wide v15

    add-long/2addr v8, v15

    iput-wide v8, v5, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    :cond_f9
    iget-object v8, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v8, :cond_10e

    iget-wide v8, v5, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    iget-object v10, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    aget-wide v15, v10, v7

    move-wide/from16 v17, v27

    move-wide/from16 v19, v21

    invoke-static/range {v15 .. v20}, Landroid/net/NetworkStatsHistory;->multiplySafe(JJJ)J

    move-result-wide v15

    add-long/2addr v8, v15

    iput-wide v8, v5, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    :cond_10e
    :goto_10e
    add-int/lit8 v7, v7, -0x1

    const-wide/16 v9, 0x0

    goto/16 :goto_53

    :cond_114
    :goto_114
    return-object v5
.end method

.method public getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;
    .registers 14

    const-wide v5, 0x7fffffffffffffffL

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    return-object v0
.end method

.method public intersects(JJ)Z
    .registers 11

    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v2

    cmp-long v4, p1, v0

    const/4 v5, 0x1

    if-ltz v4, :cond_12

    cmp-long v4, p1, v2

    if-gtz v4, :cond_12

    return v5

    :cond_12
    cmp-long v4, p3, v0

    if-ltz v4, :cond_1b

    cmp-long v4, p3, v2

    if-gtz v4, :cond_1b

    return v5

    :cond_1b
    cmp-long v4, v0, p1

    if-ltz v4, :cond_24

    cmp-long v4, v0, p3

    if-gtz v4, :cond_24

    return v5

    :cond_24
    cmp-long v4, v2, p1

    if-ltz v4, :cond_2d

    cmp-long v4, v2, p3

    if-gtz v4, :cond_2d

    return v5

    :cond_2d
    const/4 v4, 0x0

    return v4
.end method

.method public recordData(JJJJ)V
    .registers 25
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v15, Landroid/net/NetworkStats$Entry;

    sget-object v1, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object v0, v15

    move-wide/from16 v5, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v0 .. v14}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    return-void
.end method

.method public recordData(JJLandroid/net/NetworkStats$Entry;)V
    .registers 44

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    iget-wide v6, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v8, v5, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v10, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v12, v5, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v14, v5, Landroid/net/NetworkStats$Entry;->operations:J

    invoke-virtual/range {p5 .. p5}, Landroid/net/NetworkStats$Entry;->isNegative()Z

    move-result v16

    if-nez v16, :cond_de

    invoke-virtual/range {p5 .. p5}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_1f

    return-void

    :cond_1f
    invoke-direct/range {p0 .. p4}, Landroid/net/NetworkStatsHistory;->ensureBuckets(JJ)V

    sub-long v16, v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v18

    move/from16 v19, v18

    move-wide/from16 v26, v12

    move-wide/from16 v28, v14

    move-wide/from16 v30, v16

    move/from16 v12, v19

    move-wide v14, v8

    move-wide/from16 v16, v10

    :goto_35
    if-ltz v12, :cond_ce

    iget-object v8, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v10, v8, v12

    iget-wide v8, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v8, v10

    cmp-long v13, v8, v1

    if-gez v13, :cond_46

    move-wide/from16 v23, v14

    goto/16 :goto_d1

    :cond_46
    cmp-long v13, v10, v3

    if-lez v13, :cond_4b

    goto :goto_5b

    :cond_4b
    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v19

    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v21

    sub-long v1, v19, v21

    const-wide/16 v19, 0x0

    cmp-long v13, v1, v19

    if-gtz v13, :cond_5e

    :goto_5b
    move v5, v12

    goto/16 :goto_c4

    :cond_5e
    move-wide/from16 v20, v6

    move-wide/from16 v22, v1

    move-wide/from16 v24, v30

    invoke-static/range {v20 .. v25}, Landroid/net/NetworkStatsHistory;->multiplySafe(JJJ)J

    move-result-wide v3

    move-wide/from16 v19, v8

    move-wide v8, v14

    move-wide/from16 v21, v10

    move-wide v10, v1

    move v5, v12

    move-wide/from16 v12, v30

    invoke-static/range {v8 .. v13}, Landroid/net/NetworkStatsHistory;->multiplySafe(JJJ)J

    move-result-wide v12

    move-wide/from16 v8, v16

    move-wide/from16 v23, v14

    move-wide v14, v12

    move-wide/from16 v12, v30

    invoke-static/range {v8 .. v13}, Landroid/net/NetworkStatsHistory;->multiplySafe(JJJ)J

    move-result-wide v12

    move-wide/from16 v8, v26

    move-wide/from16 v32, v12

    move-wide/from16 v12, v30

    invoke-static/range {v8 .. v13}, Landroid/net/NetworkStatsHistory;->multiplySafe(JJJ)J

    move-result-wide v12

    move-wide/from16 v8, v28

    move-wide/from16 v34, v12

    move-wide/from16 v12, v30

    invoke-static/range {v8 .. v13}, Landroid/net/NetworkStatsHistory;->multiplySafe(JJJ)J

    move-result-wide v8

    iget-object v10, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v10, v5, v1, v2}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    iget-object v10, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v10, v5, v3, v4}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long/2addr v6, v3

    iget-object v10, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v10, v5, v14, v15}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v10, v23, v14

    iget-object v12, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    move-wide/from16 v36, v3

    move-wide/from16 v3, v32

    invoke-static {v12, v5, v3, v4}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v16, v16, v3

    iget-object v12, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    move-wide/from16 v3, v34

    invoke-static {v12, v5, v3, v4}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v26, v26, v3

    iget-object v12, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v12, v5, v8, v9}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v28, v28, v8

    sub-long v30, v30, v1

    move-wide v14, v10

    :goto_c4
    add-int/lit8 v12, v5, -0x1

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    goto/16 :goto_35

    :cond_ce
    move v5, v12

    move-wide/from16 v23, v14

    :goto_d1
    iget-wide v1, v0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    move-object/from16 v3, p5

    iget-wide v4, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v8, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v4, v8

    add-long/2addr v1, v4

    iput-wide v1, v0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    return-void

    :cond_de
    move-object v3, v5

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "tried recording negative data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public recordEntireHistory(Landroid/net/NetworkStatsHistory;)V
    .registers 8

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    return-void
.end method

.method public recordHistory(Landroid/net/NetworkStatsHistory;JJ)V
    .registers 29

    move-object/from16 v0, p1

    new-instance v16, Landroid/net/NetworkStats$Entry;

    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    const/4 v2, 0x0

    :goto_19
    iget v3, v0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v2, v3, :cond_65

    iget-object v3, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v3, v3, v2

    iget-wide v5, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v5, v3

    cmp-long v7, v3, p2

    if-ltz v7, :cond_62

    cmp-long v7, v5, p4

    if-lez v7, :cond_2d

    goto :goto_62

    :cond_2d
    iget-object v7, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    const-wide/16 v8, 0x0

    invoke-static {v7, v2, v8, v9}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v10

    iput-wide v10, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v7, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v7, v2, v8, v9}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v10

    iput-wide v10, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v7, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v7, v2, v8, v9}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v10

    iput-wide v10, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v7, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v7, v2, v8, v9}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v10

    iput-wide v10, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v7, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v7, v2, v8, v9}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v7

    iput-wide v7, v1, Landroid/net/NetworkStats$Entry;->operations:J

    move-object/from16 v17, p0

    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    move-object/from16 v22, v1

    invoke-virtual/range {v17 .. v22}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    :cond_62
    :goto_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_65
    return-void
.end method

.method public removeBucketsBefore(J)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v0, v1, :cond_14

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v1, v1, v0

    iget-wide v3, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v3, v1

    cmp-long v5, v3, p1

    if-lez v5, :cond_11

    goto :goto_14

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    :goto_14
    if-lez v0, :cond_60

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v2, v1

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v1, :cond_29

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    :cond_29
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v1, :cond_33

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    :cond_33
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v1, :cond_3d

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    :cond_3d
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v1, :cond_47

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    :cond_47
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v1, :cond_51

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    :cond_51
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v1, :cond_5b

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    :cond_5b
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    :cond_60
    return-void
.end method

.method public setValues(ILandroid/net/NetworkStatsHistory$Entry;)V
    .registers 8

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v0, :cond_b

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    aget-wide v3, v0, p1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    :cond_b
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v0, :cond_16

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    aget-wide v3, v0, p1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    :cond_16
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    aput-wide v1, v0, p1

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget-wide v1, p2, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    invoke-static {v0, p1, v1, v2}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v0, :cond_51

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    aget-wide v3, v0, p1

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    :cond_51
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v0, :cond_5c

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    aget-wide v3, v0, p1

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    :cond_5c
    return-void
.end method

.method public size()I
    .registers 2

    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/net/NetworkStatsHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method public writeToStream(Ljava/io/DataOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    return-void
.end method
