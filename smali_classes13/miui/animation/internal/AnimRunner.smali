.class public Lmiui/animation/internal/AnimRunner;
.super Ljava/lang/Object;
.source "AnimRunner.java"

# interfaces
.implements Lmiui/animation/physics/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/animation/internal/AnimRunner$Holder;
    }
.end annotation


# static fields
.field public static final MAX_DELTA:J = 0x10L

.field private static final MAX_RECORD:I = 0x5

.field private static final MSG_START:I

.field private static final sMainHandler:Landroid/os/Handler;


# instance fields
.field private mDeltaRecord:[J

.field private mIsRunning:Z

.field private mLastFrameTime:J

.field private volatile mRatio:F

.field private mRecordCount:I

.field private mRunningTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private mTargetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/animation/IAnimTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lmiui/animation/internal/AnimRunner$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/animation/internal/AnimRunner$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lmiui/animation/internal/AnimRunner;->sMainHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lmiui/animation/internal/AnimRunner;->mRunningTime:Ljava/util/concurrent/atomic/AtomicLong;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lmiui/animation/internal/AnimRunner;->mRatio:F

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_22

    iput-object v0, p0, Lmiui/animation/internal/AnimRunner;->mDeltaRecord:[J

    const/4 v0, 0x0

    iput v0, p0, Lmiui/animation/internal/AnimRunner;->mRecordCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/animation/internal/AnimRunner;->mTargetList:Ljava/util/List;

    return-void

    nop

    :array_22
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000()V
    .registers 0

    invoke-static {}, Lmiui/animation/internal/AnimRunner;->startAnimRunner()V

    return-void
.end method

.method static synthetic access$100(Lmiui/animation/internal/AnimRunner;)Ljava/util/concurrent/atomic/AtomicLong;
    .registers 2

    iget-object v0, p0, Lmiui/animation/internal/AnimRunner;->mRunningTime:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/animation/internal/AnimRunner;)V
    .registers 1

    invoke-direct {p0}, Lmiui/animation/internal/AnimRunner;->start()V

    return-void
.end method

.method private average([J)J
    .registers 11

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    array-length v3, p1

    const/4 v4, 0x0

    :goto_5
    const-wide/16 v5, 0x0

    if-ge v4, v3, :cond_18

    aget-wide v7, p1, v4

    add-long/2addr v0, v7

    cmp-long v5, v7, v5

    if-lez v5, :cond_13

    add-int/lit8 v5, v2, 0x1

    goto :goto_14

    :cond_13
    move v5, v2

    :goto_14
    move v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_18
    if-lez v2, :cond_1d

    int-to-long v3, v2

    div-long v5, v0, v3

    :cond_1d
    return-wide v5
.end method

.method private cleanOneshotTarget(Lmiui/animation/IAnimTarget;)V
    .registers 5

    invoke-virtual {p1}, Lmiui/animation/IAnimTarget;->getAnimTask()Lmiui/animation/internal/AnimTask;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {p1, v1, v2}, Lmiui/animation/IAnimTarget;->hasFlags(J)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Lmiui/animation/internal/AnimTask;->isValid()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lmiui/animation/internal/AnimTask;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_21

    :cond_18
    const/4 v1, 0x1

    new-array v1, v1, [Lmiui/animation/IAnimTarget;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lmiui/animation/Folme;->clean([Ljava/lang/Object;)V

    :cond_21
    return-void
.end method

.method private endAnimation()Z
    .registers 4

    invoke-direct {p0}, Lmiui/animation/internal/AnimRunner;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_28

    invoke-static {}, Lmiui/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "AnimRunner.endAnimation"

    invoke-static {v2, v0}, Lmiui/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_14
    iput-boolean v1, p0, Lmiui/animation/internal/AnimRunner;->mIsRunning:Z

    iget-object v0, p0, Lmiui/animation/internal/AnimRunner;->mRunningTime:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iput-wide v1, p0, Lmiui/animation/internal/AnimRunner;->mLastFrameTime:J

    invoke-static {}, Lmiui/animation/physics/AnimationHandler;->getInstance()Lmiui/animation/physics/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/animation/physics/AnimationHandler;->removeCallback(Lmiui/animation/physics/AnimationHandler$AnimationFrameCallback;)V

    const/4 v0, 0x1

    return v0

    :cond_28
    return v1
.end method

.method public static getAnimTask(Lmiui/animation/IAnimTarget;JLmiui/animation/controller/AnimState;Lmiui/animation/controller/AnimState;Lmiui/animation/base/AnimConfigLink;)Lmiui/animation/internal/AnimTask;
    .registers 8

    invoke-virtual {p0}, Lmiui/animation/IAnimTarget;->getAnimTask()Lmiui/animation/internal/AnimTask;

    move-result-object v0

    new-instance v1, Lmiui/animation/internal/TransitionInfo;

    invoke-direct {v1, p0, p3, p4, p5}, Lmiui/animation/internal/TransitionInfo;-><init>(Lmiui/animation/IAnimTarget;Lmiui/animation/controller/AnimState;Lmiui/animation/controller/AnimState;Lmiui/animation/base/AnimConfigLink;)V

    invoke-virtual {v0, p1, p2, v1}, Lmiui/animation/internal/AnimTask;->addTransition(JLmiui/animation/internal/TransitionInfo;)V

    return-object v0
.end method

.method public static getInst()Lmiui/animation/internal/AnimRunner;
    .registers 1

    sget-object v0, Lmiui/animation/internal/AnimRunner$Holder;->inst:Lmiui/animation/internal/AnimRunner;

    return-object v0
.end method

.method private isAnimRunning(Lmiui/animation/IAnimTarget;)Z
    .registers 3

    invoke-virtual {p1}, Lmiui/animation/IAnimTarget;->getAnimTask()Lmiui/animation/internal/AnimTask;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/animation/internal/AnimTask;->isFinished()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isRunning()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/animation/internal/AnimRunner;->mTargetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/animation/IAnimTarget;

    invoke-direct {p0, v2}, Lmiui/animation/internal/AnimRunner;->isAnimRunning(Lmiui/animation/IAnimTarget;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    goto :goto_7

    :cond_1c
    :goto_1c
    iget-object v1, p0, Lmiui/animation/internal/AnimRunner;->mTargetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return v0
.end method

.method private varargs runAnim(Lmiui/animation/internal/AnimTask;JJ[J)V
    .registers 7

    invoke-virtual/range {p1 .. p6}, Lmiui/animation/internal/AnimTask;->run(JJ[J)V

    return-void
.end method

.method private start()V
    .registers 3

    iget-boolean v0, p0, Lmiui/animation/internal/AnimRunner;->mIsRunning:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_13

    invoke-static {}, Lmiui/animation/internal/AnimRunner;->startAnimRunner()V

    goto :goto_19

    :cond_13
    sget-object v0, Lmiui/animation/internal/AnimRunner;->sMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_19
    return-void
.end method

.method private static startAnimRunner()V
    .registers 4

    invoke-static {}, Lmiui/animation/internal/AnimRunner;->getInst()Lmiui/animation/internal/AnimRunner;

    move-result-object v0

    iget-boolean v1, v0, Lmiui/animation/internal/AnimRunner;->mIsRunning:Z

    if-eqz v1, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lmiui/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AnimRunner.start"

    invoke-static {v2, v1}, Lmiui/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_17
    const/4 v1, 0x1

    iput-boolean v1, v0, Lmiui/animation/internal/AnimRunner;->mIsRunning:Z

    invoke-static {}, Lmiui/animation/physics/AnimationHandler;->getInstance()Lmiui/animation/physics/AnimationHandler;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lmiui/animation/physics/AnimationHandler;->addAnimationFrameCallback(Lmiui/animation/physics/AnimationHandler$AnimationFrameCallback;J)V

    return-void
.end method

.method private updateRunningTime(J)J
    .registers 8

    iget-wide v0, p0, Lmiui/animation/internal/AnimRunner;->mLastFrameTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_d

    iput-wide p1, p0, Lmiui/animation/internal/AnimRunner;->mLastFrameTime:J

    const-wide/16 v0, 0x0

    goto :goto_11

    :cond_d
    sub-long v0, p1, v0

    iput-wide p1, p0, Lmiui/animation/internal/AnimRunner;->mLastFrameTime:J

    :goto_11
    iget v2, p0, Lmiui/animation/internal/AnimRunner;->mRecordCount:I

    rem-int/lit8 v3, v2, 0x5

    iget-object v4, p0, Lmiui/animation/internal/AnimRunner;->mDeltaRecord:[J

    aput-wide v0, v4, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmiui/animation/internal/AnimRunner;->mRecordCount:I

    invoke-virtual {p0, v0, v1}, Lmiui/animation/internal/AnimRunner;->getAverageDelta(J)J

    move-result-wide v0

    iget-object v2, p0, Lmiui/animation/internal/AnimRunner;->mRunningTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-wide v0
.end method


# virtual methods
.method public varargs cancel(Lmiui/animation/IAnimTarget;[Lmiui/animation/property/FloatProperty;)V
    .registers 4

    new-instance v0, Lmiui/animation/internal/AnimRunner$2;

    invoke-direct {v0, p0, p1, p2}, Lmiui/animation/internal/AnimRunner$2;-><init>(Lmiui/animation/internal/AnimRunner;Lmiui/animation/IAnimTarget;[Lmiui/animation/property/FloatProperty;)V

    invoke-virtual {p1, v0}, Lmiui/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method doAnimOnTarget(Lmiui/animation/IAnimTarget;JJ)V
    .registers 14

    invoke-virtual {p1}, Lmiui/animation/IAnimTarget;->getAnimTask()Lmiui/animation/internal/AnimTask;

    move-result-object v7

    const/4 v0, 0x0

    new-array v6, v0, [J

    move-object v0, p0

    move-object v1, v7

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lmiui/animation/internal/AnimRunner;->runAnim(Lmiui/animation/internal/AnimTask;JJ[J)V

    invoke-virtual {v7}, Lmiui/animation/internal/AnimTask;->isFinished()Z

    move-result v0

    invoke-virtual {p1, v0}, Lmiui/animation/IAnimTarget;->onFrameEnd(Z)V

    invoke-direct {p0, p1}, Lmiui/animation/internal/AnimRunner;->cleanOneshotTarget(Lmiui/animation/IAnimTarget;)V

    return-void
.end method

.method public doAnimationFrame(J)Z
    .registers 10

    invoke-direct {p0, p1, p2}, Lmiui/animation/internal/AnimRunner;->updateRunningTime(J)J

    move-result-wide v0

    iget-object v2, p0, Lmiui/animation/internal/AnimRunner;->mRunningTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget-object v4, p0, Lmiui/animation/internal/AnimRunner;->mTargetList:Ljava/util/List;

    invoke-static {v4}, Lmiui/animation/Folme;->getTargets(Ljava/util/Collection;)V

    iget-object v4, p0, Lmiui/animation/internal/AnimRunner;->mTargetList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/animation/IAnimTarget;

    invoke-virtual {v5}, Lmiui/animation/IAnimTarget;->allowAnimRun()Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-virtual {v5}, Lmiui/animation/IAnimTarget;->getAnimTask()Lmiui/animation/internal/AnimTask;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/animation/internal/AnimTask;->isValid()Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-virtual {v5, v2, v3, v0, v1}, Lmiui/animation/IAnimTarget;->executeAnim(JJ)V

    :cond_34
    invoke-direct {p0, v5}, Lmiui/animation/internal/AnimRunner;->cleanOneshotTarget(Lmiui/animation/IAnimTarget;)V

    goto :goto_15

    :cond_38
    invoke-direct {p0}, Lmiui/animation/internal/AnimRunner;->endAnimation()Z

    move-result v4

    return v4
.end method

.method public varargs end(Lmiui/animation/IAnimTarget;[Lmiui/animation/property/FloatProperty;)V
    .registers 4

    new-instance v0, Lmiui/animation/internal/AnimRunner$3;

    invoke-direct {v0, p0, p1, p2}, Lmiui/animation/internal/AnimRunner$3;-><init>(Lmiui/animation/internal/AnimRunner;Lmiui/animation/IAnimTarget;[Lmiui/animation/property/FloatProperty;)V

    invoke-virtual {p1, v0}, Lmiui/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAverageDelta(J)J
    .registers 7

    iget-object v0, p0, Lmiui/animation/internal/AnimRunner;->mDeltaRecord:[J

    invoke-direct {p0, v0}, Lmiui/animation/internal/AnimRunner;->average([J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_e

    move-wide v2, v0

    goto :goto_f

    :cond_e
    move-wide v2, p1

    :goto_f
    move-wide p1, v2

    const-wide/16 v2, 0x10

    cmp-long v2, p1, v2

    if-lez v2, :cond_18

    const-wide/16 p1, 0x10

    :cond_18
    long-to-float v2, p1

    iget v3, p0, Lmiui/animation/internal/AnimRunner;->mRatio:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-long v2, v2

    return-wide v2
.end method

.method public getRunningTime()J
    .registers 3

    iget-object v0, p0, Lmiui/animation/internal/AnimRunner;->mRunningTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public run(Lmiui/animation/IAnimTarget;Lmiui/animation/controller/AnimState;Lmiui/animation/controller/AnimState;Lmiui/animation/base/AnimConfigLink;)V
    .registers 12

    new-instance v6, Lmiui/animation/internal/AnimRunner$4;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmiui/animation/internal/AnimRunner$4;-><init>(Lmiui/animation/internal/AnimRunner;Lmiui/animation/IAnimTarget;Lmiui/animation/controller/AnimState;Lmiui/animation/controller/AnimState;Lmiui/animation/base/AnimConfigLink;)V

    invoke-virtual {p1, v6}, Lmiui/animation/IAnimTarget;->executeOnInitialized(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTimeRatio(F)V
    .registers 2

    iput p1, p0, Lmiui/animation/internal/AnimRunner;->mRatio:F

    return-void
.end method
