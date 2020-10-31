.class public Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;
.super Ljava/lang/Object;
.source "RequestLastFrameNumbersHolder.java"


# instance fields
.field private mInflightCompleted:Z

.field private final mLastRegularFrameNumber:J

.field private final mLastReprocessFrameNumber:J

.field private final mLastZslStillFrameNumber:J

.field private final mRequestId:I

.field private mSequenceCompleted:Z


# direct methods
.method constructor <init>(IJ[I)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    const-wide/16 v2, -0x1

    if-eqz p4, :cond_75

    array-length v4, p4

    add-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    cmp-long v4, p2, v4

    if-ltz v4, :cond_4a

    move-wide v4, p2

    array-length v6, p4

    add-int/lit8 v6, v6, -0x1

    :goto_15
    const-wide/16 v7, -0x1

    if-ltz v6, :cond_3c

    aget v9, p4, v6

    const/4 v10, 0x2

    if-ne v9, v10, :cond_24

    cmp-long v9, v2, v7

    if-nez v9, :cond_24

    move-wide v2, v4

    goto :goto_2d

    :cond_24
    aget v9, p4, v6

    if-nez v9, :cond_2d

    cmp-long v9, v0, v7

    if-nez v9, :cond_2d

    move-wide v0, v4

    :cond_2d
    :goto_2d
    cmp-long v9, v2, v7

    if-eqz v9, :cond_36

    cmp-long v9, v0, v7

    if-eqz v9, :cond_36

    goto :goto_3c

    :cond_36
    const-wide/16 v7, 0x1

    sub-long/2addr v4, v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_15

    :cond_3c
    :goto_3c
    iput-wide v0, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mLastRegularFrameNumber:J

    iput-wide v2, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mLastZslStillFrameNumber:J

    iput-wide v7, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mLastReprocessFrameNumber:J

    iput p1, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mRequestId:I

    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mSequenceCompleted:Z

    iput-boolean v6, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mInflightCompleted:Z

    return-void

    :cond_4a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lastFrameNumber: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " should be at least "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, p4

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " for the number of requests in the list: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, p4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_75
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "repeatingRequest list must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public constructor <init>(Ljava/util/List;Landroid/hardware/camera2/utils/SubmitInfo;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/utils/SubmitInfo;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, -0x1

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/utils/SubmitInfo;->getLastFrameNumber()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/utils/SubmitInfo;->getLastFrameNumber()J

    move-result-wide v9

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    int-to-long v13, v11

    cmp-long v9, v9, v13

    if-ltz v9, :cond_73

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v12

    :goto_23
    if-ltz v9, :cond_5f

    move-object/from16 v10, p1

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v11}, Landroid/hardware/camera2/CaptureRequest;->getRequestType()I

    move-result v13

    const-wide/16 v14, -0x1

    if-ne v13, v12, :cond_3b

    cmp-long v16, v3, v14

    if-nez v16, :cond_3b

    move-wide v3, v7

    goto :goto_4b

    :cond_3b
    const/4 v12, 0x2

    if-ne v13, v12, :cond_44

    cmp-long v12, v5, v14

    if-nez v12, :cond_44

    move-wide v5, v7

    goto :goto_4b

    :cond_44
    if-nez v13, :cond_4b

    cmp-long v12, v1, v14

    if-nez v12, :cond_4b

    move-wide v1, v7

    :cond_4b
    :goto_4b
    cmp-long v12, v3, v14

    if-eqz v12, :cond_58

    cmp-long v12, v5, v14

    if-eqz v12, :cond_58

    cmp-long v12, v1, v14

    if-eqz v12, :cond_58

    goto :goto_61

    :cond_58
    const-wide/16 v14, 0x1

    sub-long/2addr v7, v14

    add-int/lit8 v9, v9, -0x1

    const/4 v12, 0x1

    goto :goto_23

    :cond_5f
    move-object/from16 v10, p1

    :goto_61
    iput-wide v1, v0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mLastRegularFrameNumber:J

    iput-wide v3, v0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mLastReprocessFrameNumber:J

    iput-wide v5, v0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mLastZslStillFrameNumber:J

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result v9

    iput v9, v0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mRequestId:I

    const/4 v9, 0x0

    iput-boolean v9, v0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mSequenceCompleted:Z

    iput-boolean v9, v0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mInflightCompleted:Z

    return-void

    :cond_73
    move-object/from16 v10, p1

    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "lastFrameNumber: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/utils/SubmitInfo;->getLastFrameNumber()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " should be at least "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " for the number of  requests in the list: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
.end method


# virtual methods
.method public getLastFrameNumber()J
    .registers 7

    iget-wide v0, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mLastZslStillFrameNumber:J

    iget-wide v2, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mLastRegularFrameNumber:J

    iget-wide v4, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mLastReprocessFrameNumber:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastRegularFrameNumber()J
    .registers 3

    iget-wide v0, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mLastRegularFrameNumber:J

    return-wide v0
.end method

.method public getLastReprocessFrameNumber()J
    .registers 3

    iget-wide v0, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mLastReprocessFrameNumber:J

    return-wide v0
.end method

.method public getLastZslStillFrameNumber()J
    .registers 3

    iget-wide v0, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mLastZslStillFrameNumber:J

    return-wide v0
.end method

.method public getRequestId()I
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mRequestId:I

    return v0
.end method

.method public isInflightCompleted()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mInflightCompleted:Z

    return v0
.end method

.method public isSequenceCompleted()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mSequenceCompleted:Z

    return v0
.end method

.method public markInflightCompleted()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mInflightCompleted:Z

    return-void
.end method

.method public markSequenceCompleted()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->mSequenceCompleted:Z

    return-void
.end method
