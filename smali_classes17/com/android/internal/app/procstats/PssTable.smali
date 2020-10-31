.class public Lcom/android/internal/app/procstats/PssTable;
.super Lcom/android/internal/app/procstats/SparseMappingTable$Table;
.source "PssTable.java"


# direct methods
.method public constructor <init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    return-void
.end method

.method public static mergeStats([JIIJJJJJJJJJ)V
    .registers 37

    move/from16 v0, p2

    move-wide/from16 v1, p5

    move-wide/from16 v3, p11

    move-wide/from16 v5, p17

    add-int/lit8 v7, p1, 0x0

    aget-wide v7, p0, v7

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-nez v9, :cond_3d

    add-int/lit8 v9, p1, 0x0

    int-to-long v10, v0

    aput-wide v10, p0, v9

    add-int/lit8 v9, p1, 0x1

    aput-wide p3, p0, v9

    add-int/lit8 v9, p1, 0x2

    aput-wide v1, p0, v9

    add-int/lit8 v9, p1, 0x3

    aput-wide p7, p0, v9

    add-int/lit8 v9, p1, 0x4

    aput-wide p9, p0, v9

    add-int/lit8 v9, p1, 0x5

    aput-wide v3, p0, v9

    add-int/lit8 v9, p1, 0x6

    aput-wide p13, p0, v9

    add-int/lit8 v9, p1, 0x7

    aput-wide p15, p0, v9

    add-int/lit8 v9, p1, 0x8

    aput-wide v5, p0, v9

    add-int/lit8 v9, p1, 0x9

    aput-wide p19, p0, v9

    goto/16 :goto_bf

    :cond_3d
    add-int/lit8 v9, p1, 0x0

    int-to-long v10, v0

    add-long/2addr v10, v7

    aput-wide v10, p0, v9

    add-int/lit8 v9, p1, 0x1

    aget-wide v9, p0, v9

    cmp-long v9, v9, p3

    if-lez v9, :cond_4f

    add-int/lit8 v9, p1, 0x1

    aput-wide p3, p0, v9

    :cond_4f
    add-int/lit8 v9, p1, 0x2

    add-int/lit8 v10, p1, 0x2

    aget-wide v10, p0, v10

    long-to-double v10, v10

    long-to-double v12, v7

    mul-double/2addr v10, v12

    long-to-double v12, v1

    int-to-double v14, v0

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    int-to-long v12, v0

    add-long/2addr v12, v7

    long-to-double v12, v12

    div-double/2addr v10, v12

    double-to-long v10, v10

    aput-wide v10, p0, v9

    add-int/lit8 v9, p1, 0x3

    aget-wide v9, p0, v9

    cmp-long v9, v9, p7

    if-gez v9, :cond_6f

    add-int/lit8 v9, p1, 0x3

    aput-wide p7, p0, v9

    :cond_6f
    add-int/lit8 v9, p1, 0x4

    aget-wide v9, p0, v9

    cmp-long v9, v9, p9

    if-lez v9, :cond_7b

    add-int/lit8 v9, p1, 0x4

    aput-wide p9, p0, v9

    :cond_7b
    add-int/lit8 v9, p1, 0x5

    add-int/lit8 v10, p1, 0x5

    aget-wide v10, p0, v10

    long-to-double v10, v10

    long-to-double v12, v7

    mul-double/2addr v10, v12

    long-to-double v12, v3

    int-to-double v14, v0

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    int-to-long v12, v0

    add-long/2addr v12, v7

    long-to-double v12, v12

    div-double/2addr v10, v12

    double-to-long v10, v10

    aput-wide v10, p0, v9

    add-int/lit8 v9, p1, 0x6

    aget-wide v9, p0, v9

    cmp-long v9, v9, p13

    if-gez v9, :cond_9b

    add-int/lit8 v9, p1, 0x6

    aput-wide p13, p0, v9

    :cond_9b
    add-int/lit8 v9, p1, 0x7

    aget-wide v9, p0, v9

    add-int/lit8 v9, p1, 0x8

    add-int/lit8 v10, p1, 0x8

    aget-wide v10, p0, v10

    long-to-double v10, v10

    long-to-double v12, v7

    mul-double/2addr v10, v12

    long-to-double v12, v5

    int-to-double v14, v0

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    int-to-long v12, v0

    add-long/2addr v12, v7

    long-to-double v12, v12

    div-double/2addr v10, v12

    double-to-long v10, v10

    aput-wide v10, p0, v9

    add-int/lit8 v9, p1, 0x9

    aget-wide v9, p0, v9

    cmp-long v9, v9, p19

    if-gez v9, :cond_bf

    add-int/lit8 v9, p1, 0x9

    aput-wide p19, p0, v9

    :cond_bf
    :goto_bf
    return-void
.end method

.method public static mergeStats([JI[JI)V
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    add-int/lit8 v2, p3, 0x0

    aget-wide v2, p2, v2

    long-to-int v2, v2

    add-int/lit8 v3, p3, 0x1

    aget-wide v3, p2, v3

    add-int/lit8 v5, p3, 0x2

    aget-wide v5, p2, v5

    add-int/lit8 v7, p3, 0x3

    aget-wide v7, p2, v7

    add-int/lit8 v9, p3, 0x4

    aget-wide v9, p2, v9

    add-int/lit8 v11, p3, 0x5

    aget-wide v11, p2, v11

    add-int/lit8 v13, p3, 0x6

    aget-wide v13, p2, v13

    add-int/lit8 v15, p3, 0x7

    aget-wide v15, p2, v15

    add-int/lit8 v17, p3, 0x8

    aget-wide v17, p2, v17

    add-int/lit8 v19, p3, 0x9

    aget-wide v19, p2, v19

    invoke-static/range {v0 .. v20}, Lcom/android/internal/app/procstats/PssTable;->mergeStats([JIIJJJJJJJJJ)V

    return-void
.end method

.method public static writeStatsToProto(Landroid/util/proto/ProtoOutputStream;[JI)V
    .registers 13

    add-int/lit8 v0, p2, 0x0

    aget-wide v0, p1, v0

    const-wide v2, 0x10500000005L

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    add-int/lit8 v0, p2, 0x1

    aget-wide v4, p1, v0

    add-int/lit8 v0, p2, 0x2

    aget-wide v6, p1, v0

    add-int/lit8 v0, p2, 0x3

    aget-wide v8, p1, v0

    const-wide v2, 0x10b00000006L

    move-object v1, p0

    invoke-static/range {v1 .. v9}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJ)V

    add-int/lit8 v0, p2, 0x4

    aget-wide v4, p1, v0

    add-int/lit8 v0, p2, 0x5

    aget-wide v6, p1, v0

    add-int/lit8 v0, p2, 0x6

    aget-wide v8, p1, v0

    const-wide v2, 0x10b00000007L

    invoke-static/range {v1 .. v9}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJ)V

    add-int/lit8 v0, p2, 0x7

    aget-wide v4, p1, v0

    add-int/lit8 v0, p2, 0x8

    aget-wide v6, p1, v0

    add-int/lit8 v0, p2, 0x9

    aget-wide v8, p1, v0

    const-wide v2, 0x10b00000008L

    invoke-static/range {v1 .. v9}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJ)V

    return-void
.end method


# virtual methods
.method getRssMeanAndMax(I)[J
    .registers 8

    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/PssTable;->getArrayForKey(I)[J

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [J

    add-int/lit8 v3, v1, 0x8

    aget-wide v3, v0, v3

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    add-int/lit8 v3, v1, 0x9

    aget-wide v3, v0, v3

    const/4 v5, 0x1

    aput-wide v3, v2, v5

    return-object v2
.end method

.method public mergeStats(IIJJJJJJJJJ)V
    .registers 46

    move-object/from16 v0, p0

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    move-wide/from16 v18, p17

    move-wide/from16 v20, p19

    move/from16 v2, p1

    int-to-byte v1, v2

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getOrAddKey(BI)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/procstats/PssTable;->getArrayForKey(I)[J

    move-result-object v22

    move-object/from16 v1, v22

    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v23

    move/from16 v24, v2

    move/from16 v2, v23

    invoke-static/range {v1 .. v21}, Lcom/android/internal/app/procstats/PssTable;->mergeStats([JIIJJJJJJJJJ)V

    return-void
.end method

.method public mergeStats(Lcom/android/internal/app/procstats/PssTable;)V
    .registers 11

    invoke-virtual {p1}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2c

    invoke-virtual {p1, v1}, Lcom/android/internal/app/procstats/PssTable;->getKeyAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    int-to-byte v4, v3

    const/16 v5, 0xa

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getOrAddKey(BI)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/app/procstats/PssTable;->getArrayForKey(I)[J

    move-result-object v5

    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v6

    invoke-virtual {p1, v2}, Lcom/android/internal/app/procstats/PssTable;->getArrayForKey(I)[J

    move-result-object v7

    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/android/internal/app/procstats/PssTable;->mergeStats([JI[JI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2c
    return-void
.end method

.method public writeStatsToProtoForKey(Landroid/util/proto/ProtoOutputStream;I)V
    .registers 5

    invoke-virtual {p0, p2}, Lcom/android/internal/app/procstats/PssTable;->getArrayForKey(I)[J

    move-result-object v0

    invoke-static {p2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/internal/app/procstats/PssTable;->writeStatsToProto(Landroid/util/proto/ProtoOutputStream;[JI)V

    return-void
.end method
