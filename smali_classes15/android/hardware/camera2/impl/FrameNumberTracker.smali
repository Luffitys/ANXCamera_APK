.class public Landroid/hardware/camera2/impl/FrameNumberTracker;
.super Ljava/lang/Object;
.source "FrameNumberTracker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FrameNumberTracker"


# instance fields
.field private mCompletedFrameNumber:[J

.field private final mFutureErrorMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPartialResults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSkippedFrameNumbers:[Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mSkippedOtherFrameNumbers:[Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    new-array v1, v0, [Ljava/util/LinkedList;

    iput-object v1, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mSkippedOtherFrameNumbers:[Ljava/util/LinkedList;

    new-array v1, v0, [Ljava/util/LinkedList;

    iput-object v1, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mSkippedFrameNumbers:[Ljava/util/LinkedList;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mFutureErrorMap:Ljava/util/TreeMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    const/4 v1, 0x0

    :goto_1f
    if-ge v1, v0, :cond_3c

    iget-object v2, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    const-wide/16 v3, -0x1

    aput-wide v3, v2, v1

    iget-object v2, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mSkippedOtherFrameNumbers:[Ljava/util/LinkedList;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mSkippedFrameNumbers:[Ljava/util/LinkedList;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_3c
    return-void
.end method

.method private update()V
    .registers 13

    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mFutureErrorMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ab

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aget-wide v8, v7, v3

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    cmp-long v5, v5, v8

    const/4 v6, 0x1

    if-nez v5, :cond_46

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aput-wide v8, v7, v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_a0

    :cond_46
    iget-object v5, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mSkippedFrameNumbers:[Ljava/util/LinkedList;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6e

    iget-object v5, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mSkippedFrameNumbers:[Ljava/util/LinkedList;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    move-result-object v5

    if-ne v2, v5, :cond_a0

    iget-object v5, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aput-wide v7, v5, v3

    iget-object v5, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mSkippedFrameNumbers:[Ljava/util/LinkedList;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_a0

    :cond_6e
    const/4 v5, 0x1

    :goto_6f
    const/4 v7, 0x3

    if-ge v5, v7, :cond_a0

    add-int v8, v3, v5

    rem-int/2addr v8, v7

    iget-object v7, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mSkippedOtherFrameNumbers:[Ljava/util/LinkedList;

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9d

    iget-object v7, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mSkippedOtherFrameNumbers:[Ljava/util/LinkedList;

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    move-result-object v7

    if-ne v2, v7, :cond_9d

    iget-object v7, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    aput-wide v9, v7, v3

    iget-object v7, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mSkippedOtherFrameNumbers:[Ljava/util/LinkedList;

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_a0

    :cond_9d
    add-int/lit8 v5, v5, 0x1

    goto :goto_6f

    :cond_a0
    :goto_a0
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_a9

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_a9
    goto/16 :goto_a

    :cond_ab
    return-void
.end method

.method private updateCompletedFrameNumber(JI)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aget-wide v4, v3, p3

    cmp-long v4, v1, v4

    const-string v5, " is a repeat"

    const-string v6, "frame number "

    if-lez v4, :cond_122

    add-int/lit8 v4, p3, 0x1

    rem-int/lit8 v4, v4, 0x3

    add-int/lit8 v7, p3, 0x2

    rem-int/lit8 v7, v7, 0x3

    aget-wide v8, v3, v4

    aget-wide v10, v3, v7

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    cmp-long v3, v1, v8

    if-gez v3, :cond_101

    iget-object v3, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mSkippedFrameNumbers:[Ljava/util/LinkedList;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_98

    iget-object v3, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mSkippedFrameNumbers:[Ljava/util/LinkedList;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v3, v1, v10

    if-ltz v3, :cond_80

    iget-object v3, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mSkippedFrameNumbers:[Ljava/util/LinkedList;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v3, v1, v10

    if-gtz v3, :cond_5b

    iget-object v3, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mSkippedFrameNumbers:[Ljava/util/LinkedList;

    aget-object v3, v3, p3

    invoke-virtual {v3}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    goto/16 :goto_11d

    :cond_5b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " comes out of order. Expecting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mSkippedFrameNumbers:[Ljava/util/LinkedList;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_80
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_98
    iget-object v3, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mSkippedOtherFrameNumbers:[Ljava/util/LinkedList;

    aget-object v3, v3, v4

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iget-object v5, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mSkippedOtherFrameNumbers:[Ljava/util/LinkedList;

    aget-object v5, v5, v7

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x1

    if-eq v3, v11, :cond_b7

    move v13, v12

    goto :goto_b8

    :cond_b7
    move v13, v10

    :goto_b8
    if-eq v5, v11, :cond_bb

    move v10, v12

    :cond_bb
    xor-int v11, v13, v10

    if-eqz v11, :cond_e7

    if-eqz v13, :cond_cb

    iget-object v6, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mSkippedOtherFrameNumbers:[Ljava/util/LinkedList;

    aget-object v6, v6, v4

    iget-object v11, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mSkippedFrameNumbers:[Ljava/util/LinkedList;

    aget-object v11, v11, v7

    move v12, v3

    goto :goto_d4

    :cond_cb
    iget-object v6, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mSkippedOtherFrameNumbers:[Ljava/util/LinkedList;

    aget-object v6, v6, v7

    iget-object v11, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mSkippedFrameNumbers:[Ljava/util/LinkedList;

    aget-object v11, v11, v4

    move v12, v5

    :goto_d4
    const/4 v14, 0x0

    :goto_d5
    if-ge v14, v12, :cond_e3

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v11, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_d5

    :cond_e3
    invoke-virtual {v6}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    goto :goto_11d

    :cond_e7
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " is a repeat or invalid"

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v11, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_101
    iget-object v3, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aget-wide v5, v3, p3

    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    const-wide/16 v10, 0x1

    add-long/2addr v5, v10

    :goto_10c
    cmp-long v3, v5, v1

    if-gez v3, :cond_11d

    iget-object v3, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mSkippedOtherFrameNumbers:[Ljava/util/LinkedList;

    aget-object v3, v3, p3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-long/2addr v5, v10

    goto :goto_10c

    :cond_11d
    :goto_11d
    iget-object v3, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aput-wide v1, v3, p3

    return-void

    :cond_122
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getCompletedFrameNumber()J
    .registers 3

    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getCompletedReprocessFrameNumber()J
    .registers 3

    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getCompletedZslStillFrameNumber()J
    .registers 3

    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public popPartialResults(J)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public updateTracker(JLandroid/hardware/camera2/CaptureResult;ZI)V
    .registers 9

    if-nez p4, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p5}, Landroid/hardware/camera2/impl/FrameNumberTracker;->updateTracker(JZI)V

    return-void

    :cond_7
    if-nez p3, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_27

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateTracker(JZI)V
    .registers 8

    if-eqz p3, :cond_10

    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mFutureErrorMap:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    :cond_10
    :try_start_10
    invoke-direct {p0, p1, p2, p4}, Landroid/hardware/camera2/impl/FrameNumberTracker;->updateCompletedFrameNumber(JI)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_1e

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FrameNumberTracker"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    invoke-direct {p0}, Landroid/hardware/camera2/impl/FrameNumberTracker;->update()V

    return-void
.end method
