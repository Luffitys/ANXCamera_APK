.class public Landroid/filterfw/core/RoundRobinScheduler;
.super Landroid/filterfw/core/Scheduler;
.source "RoundRobinScheduler.java"


# instance fields
.field private mLastPos:I


# direct methods
.method public constructor <init>(Landroid/filterfw/core/FilterGraph;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/filterfw/core/Scheduler;-><init>(Landroid/filterfw/core/FilterGraph;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    return-void
.end method

.method public scheduleNextNode()Landroid/filterfw/core/Filter;
    .registers 8

    invoke-virtual {p0}, Landroid/filterfw/core/RoundRobinScheduler;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FilterGraph;->getFilters()Ljava/util/Set;

    move-result-object v0

    iget v1, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lt v1, v2, :cond_13

    const/4 v1, -0x1

    iput v1, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    :cond_13
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/filterfw/core/Filter;

    invoke-virtual {v5}, Landroid/filterfw/core/Filter;->canProcess()Z

    move-result v6

    if-eqz v6, :cond_38

    iget v6, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    if-gt v1, v6, :cond_35

    if-nez v2, :cond_38

    move-object v2, v5

    move v3, v1

    goto :goto_38

    :cond_35
    iput v1, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    return-object v5

    :cond_38
    :goto_38
    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_3c
    if-eqz v2, :cond_41

    iput v3, p0, Landroid/filterfw/core/RoundRobinScheduler;->mLastPos:I

    return-object v2

    :cond_41
    const/4 v4, 0x0

    return-object v4
.end method
