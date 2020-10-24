.class public Lmiuix/animation/utils/VelocityMonitor;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final MAX_DELTA:J = 0x64L

.field private static final MAX_RECORD_COUNT:I = 0xa

.field private static final MIN_DELTA:J = 0x1eL

.field private static final TIME_THRESHOLD:J = 0x32L


# instance fields
.field private mHistory:Ljava/util/LinkedList;

.field private mVelocity:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    return-void
.end method

.method private addAndUpdate(Lmiuix/animation/utils/VelocityMonitor$MoveRecord;)V
    .locals 1

    iget-object v0, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0}, Lmiuix/animation/utils/VelocityMonitor;->updateVelocity()V

    return-void
.end method

.method private calVelocity(ILmiuix/animation/utils/VelocityMonitor$MoveRecord;Lmiuix/animation/utils/VelocityMonitor$MoveRecord;)F
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    iget-object v2, v0, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    aget-wide v8, v2, p1

    iget-wide v10, v0, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->timeStamp:J

    iget-object v0, v1, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    aget-wide v3, v0, p1

    iget-wide v0, v1, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->timeStamp:J

    sub-long v5, v10, v0

    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-direct/range {v0 .. v6}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(DDJ)F

    move-result v0

    float-to-double v12, v0

    iget-object v0, v7, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    const v14, 0x7f7fffff    # Float.MAX_VALUE

    if-ltz v0, :cond_4

    iget-object v1, v7, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

    iget-wide v1, v15, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->timeStamp:J

    sub-long v16, v10, v1

    const-wide/16 v1, 0x1e

    cmp-long v1, v16, v1

    const-wide/16 v2, 0x64

    if-lez v1, :cond_2

    cmp-long v1, v16, v2

    if-gez v1, :cond_2

    iget-object v0, v15, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    aget-wide v3, v0, p1

    move-object/from16 v0, p0

    move-wide v1, v8

    move-wide/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(DDJ)F

    move-result v0

    float-to-double v1, v0

    mul-double v3, v12, v1

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    goto :goto_1

    :cond_0
    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    :goto_1
    double-to-float v0, v0

    :cond_1
    move-object v3, v15

    move-wide/from16 v5, v16

    goto :goto_2

    :cond_2
    cmp-long v1, v16, v2

    if-lez v1, :cond_3

    iget-object v1, v7, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, -0x1

    move-object v3, v15

    move-wide/from16 v1, v16

    goto :goto_0

    :cond_4
    move-wide v5, v1

    move v0, v14

    :goto_2
    cmpl-float v1, v0, v14

    if-nez v1, :cond_5

    if-eqz v3, :cond_5

    iget-object v0, v3, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    aget-wide v3, v0, p1

    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-direct/range {v0 .. v6}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(DDJ)F

    move-result v0

    :cond_5
    return v0
.end method

.method private clearVelocity()V
    .locals 1

    iget-object p0, p0, Lmiuix/animation/utils/VelocityMonitor;->mVelocity:[F

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([FF)V

    :cond_0
    return-void
.end method

.method private getMoveRecord()Lmiuix/animation/utils/VelocityMonitor$MoveRecord;
    .locals 2

    new-instance p0, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;-><init>(Lmiuix/animation/utils/VelocityMonitor$1;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->timeStamp:J

    return-object p0
.end method

.method private getVelocity(DDJ)F
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p5, v0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    sub-double/2addr p1, p3

    long-to-float p0, p5

    const/high16 p3, 0x447a0000    # 1000.0f

    div-float/2addr p0, p3

    float-to-double p3, p0

    div-double p0, p1, p3

    :goto_0
    double-to-float p0, p0

    return p0
.end method

.method private updateVelocity()V
    .locals 5

    iget-object v0, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    iget-object v2, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

    iget-object v3, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    sub-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

    iget-object v1, p0, Lmiuix/animation/utils/VelocityMonitor;->mVelocity:[F

    if-eqz v1, :cond_0

    array-length v1, v1

    iget-object v3, v2, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    array-length v3, v3

    if-ge v1, v3, :cond_1

    :cond_0
    iget-object v1, v2, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, p0, Lmiuix/animation/utils/VelocityMonitor;->mVelocity:[F

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v3, v2, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    array-length v3, v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lmiuix/animation/utils/VelocityMonitor;->mVelocity:[F

    invoke-direct {p0, v1, v2, v0}, Lmiuix/animation/utils/VelocityMonitor;->calVelocity(ILmiuix/animation/utils/VelocityMonitor$MoveRecord;Lmiuix/animation/utils/VelocityMonitor$MoveRecord;)F

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lmiuix/animation/utils/VelocityMonitor;->clearVelocity()V

    :cond_3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    invoke-direct {p0}, Lmiuix/animation/utils/VelocityMonitor;->clearVelocity()V

    return-void
.end method

.method public getVelocity(I)F
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    iget-object v2, p0, Lmiuix/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

    iget-wide v4, v2, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->timeStamp:J

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v4, 0x32

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    return v3

    :cond_0
    iget-object p0, p0, Lmiuix/animation/utils/VelocityMonitor;->mVelocity:[F

    if-eqz p0, :cond_1

    array-length v0, p0

    if-le v0, p1, :cond_1

    aget p0, p0, p1

    return p0

    :cond_1
    return v3
.end method

.method public varargs update([D)V
    .locals 1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmiuix/animation/utils/VelocityMonitor;->getMoveRecord()Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

    move-result-object v0

    iput-object p1, v0, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    invoke-direct {p0, v0}, Lmiuix/animation/utils/VelocityMonitor;->addAndUpdate(Lmiuix/animation/utils/VelocityMonitor$MoveRecord;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs update([F)V
    .locals 5

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lmiuix/animation/utils/VelocityMonitor;->getMoveRecord()Lmiuix/animation/utils/VelocityMonitor$MoveRecord;

    move-result-object v0

    array-length v1, p1

    new-array v1, v1, [D

    iput-object v1, v0, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    iget-object v2, v0, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    aget v3, p1, v1

    float-to-double v3, v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lmiuix/animation/utils/VelocityMonitor;->addAndUpdate(Lmiuix/animation/utils/VelocityMonitor$MoveRecord;)V

    :cond_2
    :goto_1
    return-void
.end method
