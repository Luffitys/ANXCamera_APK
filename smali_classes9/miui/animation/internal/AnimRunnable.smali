.class public Lmiui/animation/internal/AnimRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mDeltaT:J

.field private mTargetRef:Ljava/lang/ref/WeakReference;

.field private mTotalT:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized init(Lmiui/animation/IAnimTarget;JJ)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/animation/internal/AnimRunnable;->mTargetRef:Ljava/lang/ref/WeakReference;

    iput-wide p2, p0, Lmiui/animation/internal/AnimRunnable;->mTotalT:J

    iput-wide p4, p0, Lmiui/animation/internal/AnimRunnable;->mDeltaT:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized run()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/animation/internal/AnimRunnable;->mTargetRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lmiui/animation/IAnimTarget;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lmiui/animation/internal/AnimRunner;->getInst()Lmiui/animation/internal/AnimRunner;

    move-result-object v1

    iget-wide v3, p0, Lmiui/animation/internal/AnimRunnable;->mTotalT:J

    iget-wide v5, p0, Lmiui/animation/internal/AnimRunnable;->mDeltaT:J

    invoke-virtual/range {v1 .. v6}, Lmiui/animation/internal/AnimRunner;->doAnimOnTarget(Lmiui/animation/IAnimTarget;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
