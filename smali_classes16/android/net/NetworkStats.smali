.class public final Landroid/net/NetworkStats;
.super Ljava/lang/Object;
.source "NetworkStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStats$NonMonotonicObserver;,
        Landroid/net/NetworkStats$Entry;,
        Landroid/net/NetworkStats$StatsType;,
        Landroid/net/NetworkStats$DefaultNetwork;,
        Landroid/net/NetworkStats$Roaming;,
        Landroid/net/NetworkStats$Meteredness;,
        Landroid/net/NetworkStats$State;
    }
.end annotation


# static fields
.field private static final CLATD_INTERFACE_PREFIX:Ljava/lang/String; = "v4-"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_NETWORK_ALL:I = -0x1

.field public static final DEFAULT_NETWORK_NO:I = 0x0

.field public static final DEFAULT_NETWORK_YES:I = 0x1

.field public static final IFACE_ALL:Ljava/lang/String;

.field public static final IFACE_VT:Ljava/lang/String; = "vt_data0"

.field public static final INTERFACES_ALL:[Ljava/lang/String;

.field private static final IPV4V6_HEADER_DELTA:I = 0x14

.field public static final METERED_ALL:I = -0x1

.field public static final METERED_NO:I = 0x0

.field public static final METERED_YES:I = 0x1

.field public static final ROAMING_ALL:I = -0x1

.field public static final ROAMING_NO:I = 0x0

.field public static final ROAMING_YES:I = 0x1

.field public static final SET_ALL:I = -0x1

.field public static final SET_DBG_VPN_IN:I = 0x3e9

.field public static final SET_DBG_VPN_OUT:I = 0x3ea

.field public static final SET_DEBUG_START:I = 0x3e8

.field public static final SET_DEFAULT:I = 0x0

.field public static final SET_FOREGROUND:I = 0x1

.field public static final STATS_PER_IFACE:I = 0x0

.field public static final STATS_PER_UID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NetworkStats"

.field public static final TAG_ALL:I = -0x1

.field public static final TAG_NONE:I = 0x0

.field public static final UID_ALL:I = -0x1

.field public static final UID_TETHERING:I = -0x5


# instance fields
.field private capacity:I

.field private defaultNetwork:[I

.field private elapsedRealtime:J

.field private iface:[Ljava/lang/String;

.field private metered:[I

.field private operations:[J

.field private roaming:[I

.field private rxBytes:[J

.field private rxPackets:[J

.field private set:[I

.field private size:I

.field private tag:[I

.field private txBytes:[J

.field private txPackets:[J

.field private uid:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    sput-object v0, Landroid/net/NetworkStats;->INTERFACES_ALL:[Ljava/lang/String;

    new-instance v0, Landroid/net/NetworkStats$1;

    invoke-direct {v0}, Landroid/net/NetworkStats$1;-><init>()V

    sput-object v0, Landroid/net/NetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkStats;->size:I

    if-lez p3, :cond_3d

    iput p3, p0, Landroid/net/NetworkStats;->capacity:I

    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->metered:[I

    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    goto :goto_40

    :cond_3d
    invoke-virtual {p0}, Landroid/net/NetworkStats;->clear()V

    :goto_40
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStats;->size:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->metered:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    return-void
.end method

.method private addTrafficToApplications(ILjava/lang/String;[Ljava/lang/String;Landroid/net/NetworkStats$Entry;[Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)[Landroid/net/NetworkStats$Entry;
    .registers 36

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    array-length v4, v1

    new-array v4, v4, [Landroid/net/NetworkStats$Entry;

    const/4 v5, 0x0

    :goto_c
    array-length v6, v1

    if-ge v5, v6, :cond_19

    new-instance v6, Landroid/net/NetworkStats$Entry;

    invoke-direct {v6}, Landroid/net/NetworkStats$Entry;-><init>()V

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_19
    new-instance v5, Landroid/net/NetworkStats$Entry;

    invoke-direct {v5}, Landroid/net/NetworkStats$Entry;-><init>()V

    iget v6, v0, Landroid/net/NetworkStats;->size:I

    const/4 v7, 0x0

    :goto_21
    if-ge v7, v6, :cond_1d1

    iget-object v8, v0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v8, v8, v7

    move-object/from16 v9, p2

    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_33

    move/from16 v24, v6

    goto/16 :goto_1c7

    :cond_33
    iget-object v8, v0, Landroid/net/NetworkStats;->uid:[I

    aget v10, v8, v7

    move/from16 v11, p1

    if-ne v10, v11, :cond_3f

    move/from16 v24, v6

    goto/16 :goto_1c7

    :cond_3f
    aget v8, v8, v7

    iput v8, v5, Landroid/net/NetworkStats$Entry;->uid:I

    iget-object v8, v0, Landroid/net/NetworkStats;->tag:[I

    aget v8, v8, v7

    iput v8, v5, Landroid/net/NetworkStats$Entry;->tag:I

    iget-object v8, v0, Landroid/net/NetworkStats;->metered:[I

    aget v8, v8, v7

    iput v8, v5, Landroid/net/NetworkStats$Entry;->metered:I

    iget-object v8, v0, Landroid/net/NetworkStats;->roaming:[I

    aget v8, v8, v7

    iput v8, v5, Landroid/net/NetworkStats$Entry;->roaming:I

    iget-object v8, v0, Landroid/net/NetworkStats;->defaultNetwork:[I

    aget v8, v8, v7

    iput v8, v5, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    const-wide/16 v12, 0x0

    iget-wide v14, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v8, 0x0

    cmp-long v10, v14, v8

    if-lez v10, :cond_78

    iget-wide v14, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v10, v0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v16, v10, v7

    mul-long v14, v14, v16

    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    div-long/2addr v14, v8

    iget-object v8, v0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v8, v8, v7

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    :cond_78
    const-wide/16 v8, 0x0

    iget-wide v14, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v16, 0x0

    cmp-long v10, v14, v16

    if-lez v10, :cond_98

    iget-wide v14, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v10, v0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v18, v10, v7

    mul-long v14, v14, v18

    move-wide/from16 v18, v8

    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    div-long/2addr v14, v8

    iget-object v8, v0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v8, v8, v7

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    goto :goto_9a

    :cond_98
    move-wide/from16 v18, v8

    :goto_9a
    const-wide/16 v14, 0x0

    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v16, 0x0

    cmp-long v10, v10, v16

    if-lez v10, :cond_bc

    iget-wide v10, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    move/from16 v24, v6

    iget-object v6, v0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v18, v6, v7

    mul-long v10, v10, v18

    move-wide/from16 v18, v14

    iget-wide v14, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    div-long/2addr v10, v14

    iget-object v6, v0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v14, v6, v7

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    goto :goto_c0

    :cond_bc
    move/from16 v24, v6

    move-wide/from16 v18, v14

    :goto_c0
    const-wide/16 v10, 0x0

    move-wide/from16 v18, v10

    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-wide/16 v16, 0x0

    cmp-long v6, v10, v16

    if-lez v6, :cond_e3

    iget-wide v10, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v6, v0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v20, v6, v7

    mul-long v10, v10, v20

    move-wide/from16 v25, v14

    iget-wide v14, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    div-long/2addr v10, v14

    iget-object v6, v0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v14, v6, v7

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    move-wide v10, v14

    goto :goto_e7

    :cond_e3
    move-wide/from16 v25, v14

    move-wide/from16 v10, v18

    :goto_e7
    const-wide/16 v14, 0x0

    move-wide/from16 v18, v14

    iget-wide v14, v2, Landroid/net/NetworkStats$Entry;->operations:J

    const-wide/16 v16, 0x0

    cmp-long v6, v14, v16

    if-lez v6, :cond_10a

    iget-wide v14, v3, Landroid/net/NetworkStats$Entry;->operations:J

    iget-object v6, v0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v20, v6, v7

    mul-long v14, v14, v20

    move-wide/from16 v27, v10

    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->operations:J

    div-long/2addr v14, v10

    iget-object v6, v0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v10, v6, v7

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    move-wide v14, v10

    goto :goto_10e

    :cond_10a
    move-wide/from16 v27, v10

    move-wide/from16 v14, v18

    :goto_10e
    const/4 v6, 0x0

    :goto_10f
    array-length v10, v1

    if-ge v6, v10, :cond_1c7

    aget-object v10, v1, v6

    iput-object v10, v5, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    const-wide/16 v10, 0x0

    iput-wide v10, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v10, v0, Landroid/net/NetworkStats;->set:[I

    aget v10, v10, v7

    iput v10, v5, Landroid/net/NetworkStats$Entry;->set:I

    iget-wide v10, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v16, 0x0

    cmp-long v10, v10, v16

    if-lez v10, :cond_13a

    aget-object v10, p5, v6

    iget-wide v10, v10, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v1, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v18, v12

    move-wide/from16 v20, v10

    move-wide/from16 v22, v1

    invoke-static/range {v18 .. v23}, Landroid/net/NetworkStats;->multiplySafe(JJJ)J

    move-result-wide v1

    iput-wide v1, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    :cond_13a
    const-wide/16 v1, 0x0

    iput-wide v1, v5, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v10, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    cmp-long v10, v10, v1

    if-lez v10, :cond_156

    aget-object v1, p5, v6

    iget-wide v1, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v10, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v18, v8

    move-wide/from16 v20, v1

    move-wide/from16 v22, v10

    invoke-static/range {v18 .. v23}, Landroid/net/NetworkStats;->multiplySafe(JJJ)J

    move-result-wide v1

    iput-wide v1, v5, Landroid/net/NetworkStats$Entry;->rxPackets:J

    :cond_156
    const-wide/16 v1, 0x0

    iput-wide v1, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v10, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    cmp-long v10, v10, v1

    if-lez v10, :cond_172

    aget-object v1, p5, v6

    iget-wide v1, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v10, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v18, v25

    move-wide/from16 v20, v1

    move-wide/from16 v22, v10

    invoke-static/range {v18 .. v23}, Landroid/net/NetworkStats;->multiplySafe(JJJ)J

    move-result-wide v1

    iput-wide v1, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    :cond_172
    const-wide/16 v1, 0x0

    iput-wide v1, v5, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v10, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    cmp-long v10, v10, v1

    if-lez v10, :cond_18e

    aget-object v1, p5, v6

    iget-wide v1, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v10, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v18, v27

    move-wide/from16 v20, v1

    move-wide/from16 v22, v10

    invoke-static/range {v18 .. v23}, Landroid/net/NetworkStats;->multiplySafe(JJJ)J

    move-result-wide v1

    iput-wide v1, v5, Landroid/net/NetworkStats$Entry;->txPackets:J

    :cond_18e
    const-wide/16 v1, 0x0

    iput-wide v1, v5, Landroid/net/NetworkStats$Entry;->operations:J

    iget-wide v10, v3, Landroid/net/NetworkStats$Entry;->operations:J

    cmp-long v10, v10, v1

    if-lez v10, :cond_1aa

    aget-object v10, p5, v6

    iget-wide v10, v10, Landroid/net/NetworkStats$Entry;->operations:J

    iget-wide v1, v3, Landroid/net/NetworkStats$Entry;->operations:J

    move-wide/from16 v18, v14

    move-wide/from16 v20, v10

    move-wide/from16 v22, v1

    invoke-static/range {v18 .. v23}, Landroid/net/NetworkStats;->multiplySafe(JJJ)J

    move-result-wide v1

    iput-wide v1, v5, Landroid/net/NetworkStats$Entry;->operations:J

    :cond_1aa
    invoke-virtual {v0, v5}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    iget-object v1, v0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, v7

    if-nez v1, :cond_1bf

    aget-object v1, v4, v6

    invoke-virtual {v1, v5}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    const/16 v1, 0x3e9

    iput v1, v5, Landroid/net/NetworkStats$Entry;->set:I

    invoke-virtual {v0, v5}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    :cond_1bf
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    goto/16 :goto_10f

    :cond_1c7
    :goto_1c7
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v6, v24

    goto/16 :goto_21

    :cond_1d1
    return-object v4
.end method

.method public static apply464xlatAdjustments(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget v2, p1, Landroid/net/NetworkStats;->size:I

    if-ge v1, v2, :cond_36

    invoke-virtual {p1, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_33

    :cond_d
    iget-object v2, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    if-nez v2, :cond_12

    goto :goto_33

    :cond_12
    iget-object v2, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    const-string/jumbo v3, "v4-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_33

    :cond_1e
    iget-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v6, 0x14

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v2, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-direct {p1, v1, v0}, Landroid/net/NetworkStats;->setValues(ILandroid/net/NetworkStats$Entry;)V

    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_36
    return-void
.end method

.method private deductTrafficFromVpnApp(I[Ljava/lang/String;[Landroid/net/NetworkStats$Entry;)V
    .registers 16

    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_56

    aget-object v1, p3, v0

    iput p1, v1, Landroid/net/NetworkStats$Entry;->uid:I

    aget-object v1, p3, v0

    const/16 v2, 0x3ea

    iput v2, v1, Landroid/net/NetworkStats$Entry;->set:I

    aget-object v1, p3, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/net/NetworkStats$Entry;->tag:I

    aget-object v1, p3, v0

    aget-object v2, p2, v0

    iput-object v2, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    aget-object v1, p3, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/net/NetworkStats$Entry;->metered:I

    aget-object v1, p3, v0

    iput v2, v1, Landroid/net/NetworkStats$Entry;->roaming:I

    aget-object v1, p3, v0

    iput v2, v1, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    aget-object v1, p3, v0

    invoke-virtual {p0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    aget-object v4, p2, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move v5, p1

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIIIII)I

    move-result v1

    if-eq v1, v2, :cond_3f

    aget-object v3, p3, v0

    invoke-static {v1, p0, v3}, Landroid/net/NetworkStats;->tunSubtract(ILandroid/net/NetworkStats;Landroid/net/NetworkStats$Entry;)V

    :cond_3f
    aget-object v5, p2, v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p0

    move v6, p1

    invoke-virtual/range {v4 .. v11}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIIIII)I

    move-result v3

    if-eq v3, v2, :cond_53

    aget-object v2, p3, v0

    invoke-static {v3, p0, v2}, Landroid/net/NetworkStats;->tunSubtract(ILandroid/net/NetworkStats;Landroid/net/NetworkStats$Entry;)V

    :cond_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_56
    return-void
.end method

.method public static defaultNetworkToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_11

    if-eqz p0, :cond_e

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const-string v0, "UNKNOWN"

    return-object v0

    :cond_b
    const-string v0, "YES"

    return-object v0

    :cond_e
    const-string v0, "NO"

    return-object v0

    :cond_11
    const-string v0, "ALL"

    return-object v0
.end method

.method private filter(Ljava/util/function/Predicate;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Landroid/net/NetworkStats$Entry;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_1f

    invoke-virtual {p0, v2, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    if-eq v1, v2, :cond_1a

    invoke-direct {p0, v1, v0}, Landroid/net/NetworkStats;->setValues(ILandroid/net/NetworkStats$Entry;)V

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1f
    iput v1, p0, Landroid/net/NetworkStats;->size:I

    return-void
.end method

.method private getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats$Entry;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;IZ)",
            "Landroid/net/NetworkStats$Entry;"
        }
    .end annotation

    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_9

    :cond_4
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    :goto_9
    sget-object v1, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iput p3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->set:I

    const/4 v2, 0x0

    iput v2, v0, Landroid/net/NetworkStats$Entry;->tag:I

    iput v1, v0, Landroid/net/NetworkStats$Entry;->metered:I

    iput v1, v0, Landroid/net/NetworkStats$Entry;->roaming:I

    iput v1, v0, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iput-wide v3, v0, Landroid/net/NetworkStats$Entry;->operations:J

    const/4 v3, 0x0

    :goto_28
    iget v4, p0, Landroid/net/NetworkStats;->size:I

    if-ge v3, v4, :cond_84

    const/4 v4, 0x1

    if-eq p3, v1, :cond_38

    iget-object v5, p0, Landroid/net/NetworkStats;->uid:[I

    aget v5, v5, v3

    if-ne p3, v5, :cond_36

    goto :goto_38

    :cond_36
    move v5, v2

    goto :goto_39

    :cond_38
    :goto_38
    move v5, v4

    :goto_39
    if-eqz p2, :cond_47

    iget-object v6, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {p2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    goto :goto_47

    :cond_46
    move v4, v2

    :cond_47
    :goto_47
    if-eqz v5, :cond_81

    if-eqz v4, :cond_81

    iget-object v6, p0, Landroid/net/NetworkStats;->tag:[I

    aget v6, v6, v3

    if-eqz v6, :cond_54

    if-nez p4, :cond_54

    goto :goto_81

    :cond_54
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v8, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v8, v8, v3

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v8, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v8, v8, v3

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v8, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v8, v8, v3

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v8, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v8, v8, v3

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->operations:J

    iget-object v8, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v8, v8, v3

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->operations:J

    :cond_81
    :goto_81
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_84
    return-object v0
.end method

.method static synthetic lambda$filter$2(II[Ljava/lang/String;Landroid/net/NetworkStats$Entry;)Z
    .registers 6

    const/4 v0, -0x1

    if-eq p0, v0, :cond_7

    iget v1, p3, Landroid/net/NetworkStats$Entry;->uid:I

    if-ne p0, v1, :cond_1a

    :cond_7
    if-eq p1, v0, :cond_d

    iget v0, p3, Landroid/net/NetworkStats$Entry;->tag:I

    if-ne p1, v0, :cond_1a

    :cond_d
    sget-object v0, Landroid/net/NetworkStats;->INTERFACES_ALL:[Ljava/lang/String;

    if-eq p2, v0, :cond_1c

    iget-object v0, p3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    :goto_1d
    return v0
.end method

.method static synthetic lambda$filterDebugEntries$3(Landroid/net/NetworkStats$Entry;)Z
    .registers 3

    iget v0, p0, Landroid/net/NetworkStats$Entry;->set:I

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic lambda$removeEmptyEntries$1(Landroid/net/NetworkStats$Entry;)Z
    .registers 5

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->operations:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    :goto_24
    return v0
.end method

.method static synthetic lambda$removeUids$0([ILandroid/net/NetworkStats$Entry;)Z
    .registers 3

    iget v0, p1, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private maybeCopyEntry(II)V
    .registers 6

    if-ne p1, p2, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v0, p2

    aput-object v1, v0, p1

    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v0, p2

    aput v1, v0, p1

    iget-object v0, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v0, p2

    aput v1, v0, p1

    iget-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v0, p2

    aput v1, v0, p1

    iget-object v0, p0, Landroid/net/NetworkStats;->metered:[I

    aget v1, v0, p2

    aput v1, v0, p1

    iget-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v1, v0, p2

    aput v1, v0, p1

    iget-object v0, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    aget v1, v0, p2

    aput v1, v0, p1

    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v1, v0, p2

    aput-wide v1, v0, p1

    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v1, v0, p2

    aput-wide v1, v0, p1

    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v1, v0, p2

    aput-wide v1, v0, p1

    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v1, v0, p2

    aput-wide v1, v0, p1

    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v1, v0, p2

    aput-wide v1, v0, p1

    return-void
.end method

.method public static meteredToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_11

    if-eqz p0, :cond_e

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const-string v0, "UNKNOWN"

    return-object v0

    :cond_b
    const-string v0, "YES"

    return-object v0

    :cond_e
    const-string v0, "NO"

    return-object v0

    :cond_11
    const-string v0, "ALL"

    return-object v0
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

.method public static roamingToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_11

    if-eqz p0, :cond_e

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const-string v0, "UNKNOWN"

    return-object v0

    :cond_b
    const-string v0, "YES"

    return-object v0

    :cond_e
    const-string v0, "NO"

    return-object v0

    :cond_11
    const-string v0, "ALL"

    return-object v0
.end method

.method public static setMatches(II)Z
    .registers 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, -0x1

    if-ne p0, v1, :cond_c

    const/16 v1, 0x3e8

    if-ge p1, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static setToCheckinString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_22

    if-eqz p0, :cond_1f

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1c

    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_18

    const/16 v0, 0x3ea

    if-eq p0, v0, :cond_14

    const-string/jumbo v0, "unk"

    return-object v0

    :cond_14
    const-string/jumbo v0, "vpnout"

    return-object v0

    :cond_18
    const-string/jumbo v0, "vpnin"

    return-object v0

    :cond_1c
    const-string v0, "fg"

    return-object v0

    :cond_1f
    const-string v0, "def"

    return-object v0

    :cond_22
    const-string v0, "all"

    return-object v0
.end method

.method public static setToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1f

    if-eqz p0, :cond_1c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_16

    const/16 v0, 0x3ea

    if-eq p0, v0, :cond_13

    const-string v0, "UNKNOWN"

    return-object v0

    :cond_13
    const-string v0, "DBG_VPN_OUT"

    return-object v0

    :cond_16
    const-string v0, "DBG_VPN_IN"

    return-object v0

    :cond_19
    const-string v0, "FOREGROUND"

    return-object v0

    :cond_1c
    const-string v0, "DEFAULT"

    return-object v0

    :cond_1f
    const-string v0, "ALL"

    return-object v0
.end method

.method private setValues(ILandroid/net/NetworkStats$Entry;)V
    .registers 6

    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    iget-object v1, p2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    aput-object v1, v0, p1

    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    iget v1, p2, Landroid/net/NetworkStats$Entry;->uid:I

    aput v1, v0, p1

    iget-object v0, p0, Landroid/net/NetworkStats;->set:[I

    iget v1, p2, Landroid/net/NetworkStats$Entry;->set:I

    aput v1, v0, p1

    iget-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    iget v1, p2, Landroid/net/NetworkStats$Entry;->tag:I

    aput v1, v0, p1

    iget-object v0, p0, Landroid/net/NetworkStats;->metered:[I

    iget v1, p2, Landroid/net/NetworkStats$Entry;->metered:I

    aput v1, v0, p1

    iget-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    iget v1, p2, Landroid/net/NetworkStats$Entry;->roaming:I

    aput v1, v0, p1

    iget-object v0, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    iget v1, p2, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    aput v1, v0, p1

    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    iget-wide v1, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    aput-wide v1, v0, p1

    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    iget-wide v1, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    aput-wide v1, v0, p1

    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    iget-wide v1, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    aput-wide v1, v0, p1

    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    iget-wide v1, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    aput-wide v1, v0, p1

    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    iget-wide v1, p2, Landroid/net/NetworkStats$Entry;->operations:J

    aput-wide v1, v0, p1

    return-void
.end method

.method public static subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats$NonMonotonicObserver<",
            "TC;>;TC;)",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public static subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats$NonMonotonicObserver<",
            "TC;>;TC;",
            "Landroid/net/NetworkStats;",
            ")",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p4

    iget-wide v0, v6, Landroid/net/NetworkStats;->elapsedRealtime:J

    iget-wide v2, v15, Landroid/net/NetworkStats;->elapsedRealtime:J

    sub-long v7, v0, v2

    const-wide/16 v12, 0x0

    cmp-long v0, v7, v12

    if-gez v0, :cond_25

    if-eqz p2, :cond_21

    const/4 v2, -0x1

    const/4 v4, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/Object;)V

    :cond_21
    const-wide/16 v7, 0x0

    move-wide v4, v7

    goto :goto_26

    :cond_25
    move-wide v4, v7

    :goto_26
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    move-object v3, v0

    if-eqz v14, :cond_3d

    iget v0, v14, Landroid/net/NetworkStats;->capacity:I

    iget v1, v6, Landroid/net/NetworkStats;->size:I

    if-lt v0, v1, :cond_3d

    move-object/from16 v0, p4

    const/4 v1, 0x0

    iput v1, v0, Landroid/net/NetworkStats;->size:I

    iput-wide v4, v0, Landroid/net/NetworkStats;->elapsedRealtime:J

    move-object v2, v0

    goto :goto_45

    :cond_3d
    new-instance v0, Landroid/net/NetworkStats;

    iget v1, v6, Landroid/net/NetworkStats;->size:I

    invoke-direct {v0, v4, v5, v1}, Landroid/net/NetworkStats;-><init>(JI)V

    move-object v2, v0

    :goto_45
    const/4 v0, 0x0

    move v1, v0

    :goto_47
    iget v0, v6, Landroid/net/NetworkStats;->size:I

    if-ge v1, v0, :cond_142

    iget-object v0, v6, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, v3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget-object v0, v6, Landroid/net/NetworkStats;->uid:[I

    aget v0, v0, v1

    iput v0, v3, Landroid/net/NetworkStats$Entry;->uid:I

    iget-object v0, v6, Landroid/net/NetworkStats;->set:[I

    aget v0, v0, v1

    iput v0, v3, Landroid/net/NetworkStats$Entry;->set:I

    iget-object v0, v6, Landroid/net/NetworkStats;->tag:[I

    aget v0, v0, v1

    iput v0, v3, Landroid/net/NetworkStats$Entry;->tag:I

    iget-object v0, v6, Landroid/net/NetworkStats;->metered:[I

    aget v0, v0, v1

    iput v0, v3, Landroid/net/NetworkStats$Entry;->metered:I

    iget-object v0, v6, Landroid/net/NetworkStats;->roaming:[I

    aget v0, v0, v1

    iput v0, v3, Landroid/net/NetworkStats$Entry;->roaming:I

    iget-object v0, v6, Landroid/net/NetworkStats;->defaultNetwork:[I

    aget v0, v0, v1

    iput v0, v3, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    iget-object v0, v6, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v7, v0, v1

    iput-wide v7, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v0, v6, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v7, v0, v1

    iput-wide v7, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v0, v6, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v7, v0, v1

    iput-wide v7, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v0, v6, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v7, v0, v1

    iput-wide v7, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v0, v6, Landroid/net/NetworkStats;->operations:[J

    aget-wide v7, v0, v1

    iput-wide v7, v3, Landroid/net/NetworkStats$Entry;->operations:J

    iget-object v8, v3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v9, v3, Landroid/net/NetworkStats$Entry;->uid:I

    iget v10, v3, Landroid/net/NetworkStats$Entry;->set:I

    iget v11, v3, Landroid/net/NetworkStats$Entry;->tag:I

    iget v0, v3, Landroid/net/NetworkStats$Entry;->metered:I

    iget v7, v3, Landroid/net/NetworkStats$Entry;->roaming:I

    move-object/from16 v16, v2

    iget v2, v3, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    move/from16 v17, v7

    move-object/from16 v7, p1

    move v12, v0

    move/from16 v13, v17

    move v14, v2

    move-object v2, v15

    move v15, v1

    invoke-virtual/range {v7 .. v15}, Landroid/net/NetworkStats;->findIndexHinted(Ljava/lang/String;IIIIIII)I

    move-result v7

    const/4 v0, -0x1

    if-eq v7, v0, :cond_e1

    iget-wide v8, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v0, v2, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v10, v0, v7

    sub-long/2addr v8, v10

    iput-wide v8, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v8, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v0, v2, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v10, v0, v7

    sub-long/2addr v8, v10

    iput-wide v8, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v8, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v0, v2, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v10, v0, v7

    sub-long/2addr v8, v10

    iput-wide v8, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v8, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v0, v2, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v10, v0, v7

    sub-long/2addr v8, v10

    iput-wide v8, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v8, v3, Landroid/net/NetworkStats$Entry;->operations:J

    iget-object v0, v2, Landroid/net/NetworkStats;->operations:[J

    aget-wide v10, v0, v7

    sub-long/2addr v8, v10

    iput-wide v8, v3, Landroid/net/NetworkStats$Entry;->operations:J

    :cond_e1
    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_12c

    if-eqz p2, :cond_fc

    move-object/from16 v0, p2

    move v8, v1

    move-object/from16 v1, p0

    move-object/from16 v9, v16

    move v2, v8

    move-object v10, v3

    move-object/from16 v3, p1

    move-wide v11, v4

    move v4, v7

    move-object/from16 v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/Object;)V

    goto :goto_101

    :cond_fc
    move v8, v1

    move-object v10, v3

    move-wide v11, v4

    move-object/from16 v9, v16

    :goto_101
    iget-wide v0, v10, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v10, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v0, v10, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v10, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v0, v10, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v10, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v0, v10, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v10, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v0, v10, Landroid/net/NetworkStats$Entry;->operations:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v10, Landroid/net/NetworkStats$Entry;->operations:J

    goto :goto_133

    :cond_12c
    move v8, v1

    move-object v10, v3

    move-wide v11, v4

    move-object/from16 v9, v16

    const-wide/16 v2, 0x0

    :goto_133
    invoke-virtual {v9, v10}, Landroid/net/NetworkStats;->insertEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    add-int/lit8 v1, v8, 0x1

    move-object/from16 v15, p1

    move-object/from16 v14, p4

    move-wide v4, v11

    move-wide v12, v2

    move-object v2, v9

    move-object v3, v10

    goto/16 :goto_47

    :cond_142
    move-object v9, v2

    return-object v9
.end method

.method public static tagToString(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private tunAdjustmentInit(ILjava/lang/String;[Ljava/lang/String;Landroid/net/NetworkStats$Entry;[Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)V
    .registers 12

    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v2, :cond_60

    invoke-virtual {p0, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    iget v2, v0, Landroid/net/NetworkStats$Entry;->uid:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_58

    iget v2, v0, Landroid/net/NetworkStats$Entry;->set:I

    const/16 v3, 0x3e9

    if-eq v2, v3, :cond_50

    iget v2, v0, Landroid/net/NetworkStats$Entry;->set:I

    const/16 v3, 0x3ea

    if-eq v2, v3, :cond_50

    iget v2, v0, Landroid/net/NetworkStats$Entry;->tag:I

    if-eqz v2, :cond_23

    goto :goto_4d

    :cond_23
    iget v2, v0, Landroid/net/NetworkStats$Entry;->uid:I

    if-ne v2, p1, :cond_42

    const/4 v2, 0x0

    :goto_28
    array-length v3, p3

    if-ge v2, v3, :cond_41

    aget-object v3, p3, v2

    iget-object v4, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    aget-object v3, p5, v2

    invoke-virtual {v3, v0}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    invoke-virtual {p6, v0}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    goto :goto_41

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_41
    :goto_41
    goto :goto_4d

    :cond_42
    iget-object v2, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual {p4, v0}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    :cond_4d
    :goto_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_50
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot adjust VPN accounting on a NetworkStats containing SET_DBG_VPN_*"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_58
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot adjust VPN accounting on an iface aggregated NetworkStats."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_60
    return-void
.end method

.method private static tunSubtract(ILandroid/net/NetworkStats;Landroid/net/NetworkStats$Entry;)V
    .registers 14

    iget-object v0, p1, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v0, v0, p0

    iget-wide v2, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p1, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v3, v2, p0

    sub-long/2addr v3, v0

    aput-wide v3, v2, p0

    iget-wide v2, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    sub-long/2addr v2, v0

    iput-wide v2, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v2, p1, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v2, p0

    iget-wide v4, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iget-object v4, p1, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v5, v4, p0

    sub-long/2addr v5, v2

    aput-wide v5, v4, p0

    iget-wide v4, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    sub-long/2addr v4, v2

    iput-wide v4, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v4, p1, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v4, v4, p0

    iget-wide v6, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iget-object v6, p1, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v7, v6, p0

    sub-long/2addr v7, v4

    aput-wide v7, v6, p0

    iget-wide v6, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    sub-long/2addr v6, v4

    iput-wide v6, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v6, p1, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v6, v6, p0

    iget-wide v8, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iget-object v8, p1, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v9, v8, p0

    sub-long/2addr v9, v6

    aput-wide v9, v8, p0

    iget-wide v8, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    sub-long/2addr v8, v6

    iput-wide v8, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    return-void
.end method


# virtual methods
.method public add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .registers 3

    invoke-virtual {p0}, Landroid/net/NetworkStats;->clone()Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    return-object v0
.end method

.method public addEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .registers 3

    invoke-virtual {p0}, Landroid/net/NetworkStats;->clone()Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public apply464xlatAdjustments(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p0, p1}, Landroid/net/NetworkStats;->apply464xlatAdjustments(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Ljava/util/Map;)V

    return-void
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->metered:[I

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    return-void
.end method

.method public clone()Landroid/net/NetworkStats;
    .registers 5

    new-instance v0, Landroid/net/NetworkStats;

    iget-wide v1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    iget v3, p0, Landroid/net/NetworkStats;->size:I

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_19

    invoke-virtual {p0, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->insertEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_19
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/NetworkStats;->clone()Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public combineAllValues(Landroid/net/NetworkStats;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget v2, p1, Landroid/net/NetworkStats;->size:I

    if-ge v1, v2, :cond_10

    invoke-virtual {p1, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    return-void
.end method

.method public combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .registers 10

    iget-object v1, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v2, p1, Landroid/net/NetworkStats$Entry;->uid:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->set:I

    iget v4, p1, Landroid/net/NetworkStats$Entry;->tag:I

    iget v5, p1, Landroid/net/NetworkStats$Entry;->metered:I

    iget v6, p1, Landroid/net/NetworkStats$Entry;->roaming:I

    iget v7, p1, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIIIII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    invoke-virtual {p0, p1}, Landroid/net/NetworkStats;->insertEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_47

    :cond_1a
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->operations:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    :goto_47
    return-object p0
.end method

.method public combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    .registers 31

    new-instance v15, Landroid/net/NetworkStats$Entry;

    move-object v0, v15

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v0 .. v14}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v1

    return-object v1
.end method

.method public combineValues(Ljava/lang/String;IIJJJJJ)Landroid/net/NetworkStats;
    .registers 29
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    invoke-virtual/range {v0 .. v14}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "NetworkStats: elapsedRealtime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const/4 v0, 0x0

    :goto_e
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_ca

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  ["

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " iface="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " uid="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " set="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " tag="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " metered="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->meteredToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " roaming="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->roamingToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " defaultNetwork="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->defaultNetworkToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " rxBytes="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v1, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string v1, " rxPackets="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v1, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string v1, " txBytes="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v1, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string v1, " txPackets="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v1, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string v1, " operations="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v1, v1, v0

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e

    :cond_ca
    return-void
.end method

.method public filter(I[Ljava/lang/String;I)V
    .registers 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    if-ne p3, v0, :cond_a

    sget-object v0, Landroid/net/NetworkStats;->INTERFACES_ALL:[Ljava/lang/String;

    if-ne p2, v0, :cond_a

    return-void

    :cond_a
    new-instance v0, Landroid/net/-$$Lambda$NetworkStats$gx1B4P7UoRqmZb0uOUhxzSzSy80;

    invoke-direct {v0, p1, p3, p2}, Landroid/net/-$$Lambda$NetworkStats$gx1B4P7UoRqmZb0uOUhxzSzSy80;-><init>(II[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/net/NetworkStats;->filter(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public filterDebugEntries()V
    .registers 2

    sget-object v0, Landroid/net/-$$Lambda$NetworkStats$2M4nCfjROiI-VTvfv7lrr6g7K6Y;->INSTANCE:Landroid/net/-$$Lambda$NetworkStats$2M4nCfjROiI-VTvfv7lrr6g7K6Y;

    invoke-direct {p0, v0}, Landroid/net/NetworkStats;->filter(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public findIndex(Ljava/lang/String;IIIIII)I
    .registers 10

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_37

    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, v0

    if-ne p2, v1, :cond_34

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, v0

    if-ne p3, v1, :cond_34

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, v0

    if-ne p4, v1, :cond_34

    iget-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    aget v1, v1, v0

    if-ne p5, v1, :cond_34

    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v1, v1, v0

    if-ne p6, v1, :cond_34

    iget-object v1, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    aget v1, v1, v0

    if-ne p7, v1, :cond_34

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    return v0

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_37
    const/4 v0, -0x1

    return v0
.end method

.method public findIndexHinted(Ljava/lang/String;IIIIIII)I
    .registers 13

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_47

    div-int/lit8 v2, v0, 0x2

    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_f

    add-int v3, p8, v2

    rem-int/2addr v3, v1

    goto :goto_15

    :cond_f
    add-int v3, v1, p8

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    rem-int/2addr v3, v1

    :goto_15
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, v3

    if-ne p2, v1, :cond_44

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, v3

    if-ne p3, v1, :cond_44

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, v3

    if-ne p4, v1, :cond_44

    iget-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    aget v1, v1, v3

    if-ne p5, v1, :cond_44

    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v1, v1, v3

    if-ne p6, v1, :cond_44

    iget-object v1, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    aget v1, v1, v3

    if-ne p7, v1, :cond_44

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    return v3

    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_47
    const/4 v0, -0x1

    return v0
.end method

.method public getElapsedRealtime()J
    .registers 3

    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    return-wide v0
.end method

.method public getElapsedRealtimeAge()J
    .registers 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;I)Landroid/net/NetworkStats$Entry;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;)Landroid/net/NetworkStats$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats$Entry;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/NetworkStats$Entry;"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotalBytes()J
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    iget-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v3, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public getTotalIncludingTags(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotalPackets()J
    .registers 8

    const-wide/16 v0, 0x0

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    add-int/lit8 v2, v2, -0x1

    :goto_6
    if-ltz v2, :cond_15

    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v3, v3, v2

    iget-object v5, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v5, v5, v2

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_15
    return-wide v0
.end method

.method public getUniqueIfaces()[Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_17

    aget-object v4, v1, v3

    sget-object v5, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    if-eq v4, v5, :cond_14

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_17
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public getUniqueUids()[I
    .registers 7

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_14

    aget v4, v1, v3

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_14
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v1, :cond_26

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_26
    return-object v2
.end method

.method public getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .registers 6

    if-eqz p2, :cond_4

    move-object v0, p2

    goto :goto_9

    :cond_4
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    :goto_9
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, p1

    iput-object v1, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->uid:I

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->set:I

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->tag:I

    iget-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->metered:I

    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->roaming:I

    iget-object v1, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->operations:J

    return-object v0
.end method

.method public groupedByIface()Landroid/net/NetworkStats;
    .registers 6

    new-instance v0, Landroid/net/NetworkStats;

    iget-wide v1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    const/4 v2, -0x1

    iput v2, v1, Landroid/net/NetworkStats$Entry;->uid:I

    iput v2, v1, Landroid/net/NetworkStats$Entry;->set:I

    const/4 v3, 0x0

    iput v3, v1, Landroid/net/NetworkStats$Entry;->tag:I

    iput v2, v1, Landroid/net/NetworkStats$Entry;->metered:I

    iput v2, v1, Landroid/net/NetworkStats$Entry;->roaming:I

    iput v2, v1, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/net/NetworkStats$Entry;->operations:J

    const/4 v2, 0x0

    :goto_21
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_50

    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v2

    if-eqz v3, :cond_2c

    goto :goto_4d

    :cond_2c
    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v2

    iput-object v3, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v3, v3, v2

    iput-wide v3, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v3, v3, v2

    iput-wide v3, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v3, v3, v2

    iput-wide v3, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v3, v3, v2

    iput-wide v3, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    :goto_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_50
    return-object v0
.end method

.method public groupedByUid()Landroid/net/NetworkStats;
    .registers 6

    new-instance v0, Landroid/net/NetworkStats;

    iget-wide v1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, v1, Landroid/net/NetworkStats$Entry;->set:I

    const/4 v3, 0x0

    iput v3, v1, Landroid/net/NetworkStats$Entry;->tag:I

    iput v2, v1, Landroid/net/NetworkStats$Entry;->metered:I

    iput v2, v1, Landroid/net/NetworkStats$Entry;->roaming:I

    iput v2, v1, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    const/4 v2, 0x0

    :goto_1f
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_54

    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v2

    if-eqz v3, :cond_2a

    goto :goto_51

    :cond_2a
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v2

    iput v3, v1, Landroid/net/NetworkStats$Entry;->uid:I

    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v3, v3, v2

    iput-wide v3, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v3, v3, v2

    iput-wide v3, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v3, v3, v2

    iput-wide v3, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v3, v3, v2

    iput-wide v3, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v3, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v3, v3, v2

    iput-wide v3, v1, Landroid/net/NetworkStats$Entry;->operations:J

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    :goto_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_54
    return-object v0
.end method

.method public insertEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .registers 4

    iget v0, p0, Landroid/net/NetworkStats;->size:I

    iget v1, p0, Landroid/net/NetworkStats;->capacity:I

    if-lt v0, v1, :cond_74

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->set:[I

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    iget-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    iget-object v1, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    :cond_74
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    invoke-direct {p0, v0, p1}, Landroid/net/NetworkStats;->setValues(ILandroid/net/NetworkStats$Entry;)V

    iget v0, p0, Landroid/net/NetworkStats;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/NetworkStats;->size:I

    return-object p0
.end method

.method public insertEntry(Ljava/lang/String;IIIIIIJJJJJ)Landroid/net/NetworkStats;
    .registers 37

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move-wide/from16 v16, p16

    new-instance v0, Landroid/net/NetworkStats$Entry;

    move-object/from16 v18, v0

    invoke-direct/range {v0 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->insertEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v1

    return-object v1
.end method

.method public insertEntry(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    .registers 31

    new-instance v15, Landroid/net/NetworkStats$Entry;

    move-object v0, v15

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v0 .. v14}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/NetworkStats;->insertEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v1

    return-object v1
.end method

.method public insertEntry(Ljava/lang/String;JJJJ)Landroid/net/NetworkStats;
    .registers 25

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    invoke-virtual/range {v0 .. v14}, Landroid/net/NetworkStats;->insertEntry(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public internalSize()I
    .registers 2

    iget v0, p0, Landroid/net/NetworkStats;->capacity:I

    return v0
.end method

.method public migrateTun(ILjava/lang/String;[Ljava/lang/String;)V
    .registers 20

    move-object/from16 v14, p3

    new-instance v4, Landroid/net/NetworkStats$Entry;

    invoke-direct {v4}, Landroid/net/NetworkStats$Entry;-><init>()V

    array-length v0, v14

    new-array v15, v0, [Landroid/net/NetworkStats$Entry;

    new-instance v6, Landroid/net/NetworkStats$Entry;

    invoke-direct {v6}, Landroid/net/NetworkStats$Entry;-><init>()V

    const/4 v0, 0x0

    :goto_10
    array-length v1, v15

    if-ge v0, v1, :cond_1d

    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    aput-object v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1d
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v5, v15

    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkStats;->tunAdjustmentInit(ILjava/lang/String;[Ljava/lang/String;Landroid/net/NetworkStats$Entry;[Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)V

    nop

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object v11, v4

    move-object v12, v15

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/net/NetworkStats;->addTrafficToApplications(ILjava/lang/String;[Ljava/lang/String;Landroid/net/NetworkStats$Entry;[Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)[Landroid/net/NetworkStats$Entry;

    move-result-object v0

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v1, v2, v14, v0}, Landroid/net/NetworkStats;->deductTrafficFromVpnApp(I[Ljava/lang/String;[Landroid/net/NetworkStats$Entry;)V

    return-void
.end method

.method public removeEmptyEntries()Landroid/net/NetworkStats;
    .registers 3

    invoke-virtual {p0}, Landroid/net/NetworkStats;->clone()Landroid/net/NetworkStats;

    move-result-object v0

    sget-object v1, Landroid/net/-$$Lambda$NetworkStats$WUR2rEeWAm-reU6YW0wyDJBvBq4;->INSTANCE:Landroid/net/-$$Lambda$NetworkStats$WUR2rEeWAm-reU6YW0wyDJBvBq4;

    invoke-direct {v0, v1}, Landroid/net/NetworkStats;->filter(Ljava/util/function/Predicate;)V

    return-object v0
.end method

.method public removeUids([I)V
    .registers 3

    new-instance v0, Landroid/net/-$$Lambda$NetworkStats$c4qSN1jIrXnKVwDlamQuAx9k02M;

    invoke-direct {v0, p1}, Landroid/net/-$$Lambda$NetworkStats$c4qSN1jIrXnKVwDlamQuAx9k02M;-><init>([I)V

    invoke-direct {p0, v0}, Landroid/net/NetworkStats;->filter(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public setElapsedRealtime(J)V
    .registers 3

    iput-wide p1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    return-void
.end method

.method public size()I
    .registers 2

    iget v0, p0, Landroid/net/NetworkStats;->size:I

    return v0
.end method

.method public spliceOperationsFrom(Landroid/net/NetworkStats;)V
    .registers 12

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_3b

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v4, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v5, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v6, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    aget v7, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v8, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    aget v9, v1, v0

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIIIII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_30

    iget-object v2, p0, Landroid/net/NetworkStats;->operations:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    goto :goto_38

    :cond_30
    iget-object v2, p0, Landroid/net/NetworkStats;->operations:[J

    iget-object v3, p1, Landroid/net/NetworkStats;->operations:[J

    aget-wide v3, v3, v1

    aput-wide v3, v2, v0

    :goto_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3b
    return-void
.end method

.method public subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, Landroid/net/NetworkStats;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/net/NetworkStats;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/NetworkStats;->capacity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/net/NetworkStats;->set:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/net/NetworkStats;->metered:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void
.end method
