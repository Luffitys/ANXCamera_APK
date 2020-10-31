.class public Lmiui/animation/utils/VelocityMonitor;
.super Ljava/lang/Object;
.source "VelocityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/animation/utils/VelocityMonitor$MoveRecord;
    }
.end annotation


# static fields
.field private static final MAX_DELTA:J = 0x64L

.field private static final MAX_RECORD_COUNT:I = 0xa

.field private static final MIN_DELTA:J = 0x1eL

.field private static final TIME_THRESHOLD:J = 0x32L


# instance fields
.field private mHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lmiui/animation/utils/VelocityMonitor$MoveRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mVelocity:[F


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmiui/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    return-void
.end method

.method private addAndUpdate(Lmiui/animation/utils/VelocityMonitor$MoveRecord;)V
    .registers 4

    iget-object v0, p0, Lmiui/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_15

    iget-object v0, p0, Lmiui/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    :cond_15
    invoke-direct {p0}, Lmiui/animation/utils/VelocityMonitor;->updateVelocity()V

    return-void
.end method

.method private calVelocity(ILmiui/animation/utils/VelocityMonitor$MoveRecord;Lmiui/animation/utils/VelocityMonitor$MoveRecord;)F
    .registers 29

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    iget-object v0, v8, Lmiui/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    aget-wide v10, v0, p1

    iget-wide v12, v8, Lmiui/animation/utils/VelocityMonitor$MoveRecord;->timeStamp:J

    iget-object v0, v9, Lmiui/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    aget-wide v14, v0, p1

    iget-wide v5, v9, Lmiui/animation/utils/VelocityMonitor$MoveRecord;->timeStamp:J

    sub-long v16, v12, v5

    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide v3, v14

    move-wide/from16 v18, v5

    move-wide/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Lmiui/animation/utils/VelocityMonitor;->getVelocity(DDJ)F

    move-result v0

    float-to-double v5, v0

    const v16, 0x7f7fffff    # Float.MAX_VALUE

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    iget-object v3, v7, Lmiui/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    :goto_2f
    if-ltz v3, :cond_94

    iget-object v4, v7, Lmiui/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/animation/utils/VelocityMonitor$MoveRecord;

    move-wide/from16 v20, v0

    iget-wide v0, v4, Lmiui/animation/utils/VelocityMonitor$MoveRecord;->timeStamp:J

    sub-long v20, v12, v0

    const-wide/16 v0, 0x1e

    cmp-long v0, v20, v0

    if-lez v0, :cond_83

    const-wide/16 v0, 0x64

    cmp-long v0, v20, v0

    if-gez v0, :cond_83

    iget-object v0, v4, Lmiui/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    aget-wide v22, v0, p1

    move-object/from16 v0, p0

    move-wide v1, v10

    move/from16 v17, v3

    move-object/from16 v24, v4

    move-wide/from16 v3, v22

    move-wide v7, v5

    move-wide/from16 v5, v20

    invoke-direct/range {v0 .. v6}, Lmiui/animation/utils/VelocityMonitor;->getVelocity(DDJ)F

    move-result v0

    float-to-double v1, v0

    mul-double v5, v7, v1

    const-wide/16 v1, 0x0

    cmpl-double v1, v5, v1

    if-lez v1, :cond_7e

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_73

    float-to-double v1, v0

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    goto :goto_78

    :cond_73
    float-to-double v1, v0

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    :goto_78
    double-to-float v1, v1

    move/from16 v16, v1

    move-object/from16 v5, v24

    goto :goto_9a

    :cond_7e
    move/from16 v16, v0

    move-object/from16 v5, v24

    goto :goto_9a

    :cond_83
    move/from16 v17, v3

    move-object/from16 v24, v4

    move-wide v7, v5

    add-int/lit8 v3, v17, -0x1

    move-wide v5, v7

    move-wide/from16 v0, v20

    move-object/from16 v2, v24

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    goto :goto_2f

    :cond_94
    move-wide/from16 v20, v0

    move/from16 v17, v3

    move-wide v7, v5

    move-object v5, v2

    :goto_9a
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v16, v0

    if-nez v0, :cond_b3

    if-eqz v5, :cond_b3

    iget-object v0, v5, Lmiui/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    aget-wide v3, v0, p1

    move-object/from16 v0, p0

    move-wide v1, v10

    move-object/from16 v24, v5

    move-wide/from16 v5, v20

    invoke-direct/range {v0 .. v6}, Lmiui/animation/utils/VelocityMonitor;->getVelocity(DDJ)F

    move-result v16

    goto :goto_b5

    :cond_b3
    move-object/from16 v24, v5

    :goto_b5
    return v16
.end method

.method private clearVelocity()V
    .registers 3

    iget-object v0, p0, Lmiui/animation/utils/VelocityMonitor;->mVelocity:[F

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    :cond_8
    return-void
.end method

.method private getMoveRecord()Lmiui/animation/utils/VelocityMonitor$MoveRecord;
    .registers 4

    new-instance v0, Lmiui/animation/utils/VelocityMonitor$MoveRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/animation/utils/VelocityMonitor$MoveRecord;-><init>(Lmiui/animation/utils/VelocityMonitor$1;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lmiui/animation/utils/VelocityMonitor$MoveRecord;->timeStamp:J

    return-object v0
.end method

.method private getVelocity(DDJ)F
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-nez v0, :cond_9

    const-wide/16 v0, 0x0

    goto :goto_11

    :cond_9
    sub-double v0, p1, p3

    long-to-float v2, p5

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    div-double/2addr v0, v2

    :goto_11
    double-to-float v0, v0

    return v0
.end method

.method private updateVelocity()V
    .registers 7

    iget-object v0, p0, Lmiui/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3e

    iget-object v1, p0, Lmiui/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/utils/VelocityMonitor$MoveRecord;

    iget-object v2, p0, Lmiui/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    add-int/lit8 v3, v0, -0x2

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/animation/utils/VelocityMonitor$MoveRecord;

    iget-object v3, p0, Lmiui/animation/utils/VelocityMonitor;->mVelocity:[F

    if-eqz v3, :cond_25

    array-length v3, v3

    iget-object v4, v1, Lmiui/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    array-length v4, v4

    if-ge v3, v4, :cond_2c

    :cond_25
    iget-object v3, v1, Lmiui/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    array-length v3, v3

    new-array v3, v3, [F

    iput-object v3, p0, Lmiui/animation/utils/VelocityMonitor;->mVelocity:[F

    :cond_2c
    const/4 v3, 0x0

    :goto_2d
    iget-object v4, v1, Lmiui/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    array-length v4, v4

    if-ge v3, v4, :cond_3d

    iget-object v4, p0, Lmiui/animation/utils/VelocityMonitor;->mVelocity:[F

    invoke-direct {p0, v3, v1, v2}, Lmiui/animation/utils/VelocityMonitor;->calVelocity(ILmiui/animation/utils/VelocityMonitor$MoveRecord;Lmiui/animation/utils/VelocityMonitor$MoveRecord;)F

    move-result v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_3d
    goto :goto_41

    :cond_3e
    invoke-direct {p0}, Lmiui/animation/utils/VelocityMonitor;->clearVelocity()V

    :goto_41
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lmiui/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    invoke-direct {p0}, Lmiui/animation/utils/VelocityMonitor;->clearVelocity()V

    return-void
.end method

.method public getVelocity(I)F
    .registers 10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lmiui/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_24

    iget-object v2, p0, Lmiui/animation/utils/VelocityMonitor;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/animation/utils/VelocityMonitor$MoveRecord;

    iget-wide v4, v2, Lmiui/animation/utils/VelocityMonitor$MoveRecord;->timeStamp:J

    sub-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x32

    cmp-long v2, v4, v6

    if-lez v2, :cond_24

    return v3

    :cond_24
    iget-object v2, p0, Lmiui/animation/utils/VelocityMonitor;->mVelocity:[F

    if-eqz v2, :cond_2e

    array-length v4, v2

    if-le v4, p1, :cond_2e

    aget v2, v2, p1

    return v2

    :cond_2e
    return v3
.end method

.method public varargs update([D)V
    .registers 3

    if-eqz p1, :cond_10

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_10

    :cond_6
    invoke-direct {p0}, Lmiui/animation/utils/VelocityMonitor;->getMoveRecord()Lmiui/animation/utils/VelocityMonitor$MoveRecord;

    move-result-object v0

    iput-object p1, v0, Lmiui/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    invoke-direct {p0, v0}, Lmiui/animation/utils/VelocityMonitor;->addAndUpdate(Lmiui/animation/utils/VelocityMonitor$MoveRecord;)V

    return-void

    :cond_10
    :goto_10
    return-void
.end method

.method public varargs update([F)V
    .registers 7

    if-eqz p1, :cond_21

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_21

    :cond_6
    invoke-direct {p0}, Lmiui/animation/utils/VelocityMonitor;->getMoveRecord()Lmiui/animation/utils/VelocityMonitor$MoveRecord;

    move-result-object v0

    array-length v1, p1

    new-array v1, v1, [D

    iput-object v1, v0, Lmiui/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    const/4 v1, 0x0

    :goto_10
    array-length v2, p1

    if-ge v1, v2, :cond_1d

    iget-object v2, v0, Lmiui/animation/utils/VelocityMonitor$MoveRecord;->values:[D

    aget v3, p1, v1

    float-to-double v3, v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1d
    invoke-direct {p0, v0}, Lmiui/animation/utils/VelocityMonitor;->addAndUpdate(Lmiui/animation/utils/VelocityMonitor$MoveRecord;)V

    return-void

    :cond_21
    :goto_21
    return-void
.end method
