.class public Lcom/facebook/rebound/SteppingLooper;
.super Lcom/facebook/rebound/SpringLooper;
.source "SteppingLooper.java"


# instance fields
.field private mLastTime:J

.field private mStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/rebound/SpringLooper;-><init>()V

    return-void
.end method


# virtual methods
.method public start()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/rebound/SteppingLooper;->mStarted:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/rebound/SteppingLooper;->mLastTime:J

    return-void
.end method

.method public step(J)Z
    .locals 3

    iget-object v0, p0, Lcom/facebook/rebound/SpringLooper;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/facebook/rebound/SteppingLooper;->mStarted:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/facebook/rebound/SteppingLooper;->mLastTime:J

    add-long/2addr v1, p1

    long-to-double p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/facebook/rebound/BaseSpringSystem;->loop(D)V

    iput-wide v1, p0, Lcom/facebook/rebound/SteppingLooper;->mLastTime:J

    iget-object p0, p0, Lcom/facebook/rebound/SpringLooper;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    invoke-virtual {p0}, Lcom/facebook/rebound/BaseSpringSystem;->getIsIdle()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/rebound/SteppingLooper;->mStarted:Z

    return-void
.end method
