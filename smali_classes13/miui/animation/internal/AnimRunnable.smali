.class public Lmiui/animation/internal/AnimRunnable;
.super Ljava/lang/Object;
.source "AnimRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mDeltaT:J

.field private mTargetRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/animation/IAnimTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalT:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized init(Lmiui/animation/IAnimTarget;JJ)V
    .registers 7

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/animation/internal/AnimRunnable;->mTargetRef:Ljava/lang/ref/WeakReference;

    iput-wide p2, p0, Lmiui/animation/internal/AnimRunnable;->mTotalT:J

    iput-wide p4, p0, Lmiui/animation/internal/AnimRunnable;->mDeltaT:J
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized run()V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmiui/animation/internal/AnimRunnable;->mTargetRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/IAnimTarget;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1b

    if-nez v0, :cond_d

    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    invoke-static {}, Lmiui/animation/internal/AnimRunner;->getInst()Lmiui/animation/internal/AnimRunner;

    move-result-object v1

    iget-wide v3, p0, Lmiui/animation/internal/AnimRunnable;->mTotalT:J

    iget-wide v5, p0, Lmiui/animation/internal/AnimRunnable;->mDeltaT:J

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lmiui/animation/internal/AnimRunner;->doAnimOnTarget(Lmiui/animation/IAnimTarget;JJ)V
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
