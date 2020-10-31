.class public Lmiui/animation/internal/AnimTask;
.super Ljava/lang/Object;
.source "AnimTask.java"


# instance fields
.field private mNotRunList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/animation/internal/AnimRunningInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifier:Lmiui/animation/listener/ListenerNotifier;

.field private mQueueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/animation/internal/TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lmiui/animation/internal/AnimRunningInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSetToNotifier:Lmiui/animation/listener/ListenerNotifier;

.field private mTarget:Lmiui/animation/IAnimTarget;

.field private mUpdateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lmiui/animation/listener/UpdateInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiui/animation/IAnimTarget;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/animation/internal/AnimTask;->mQueueList:Ljava/util/List;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiui/animation/internal/AnimTask;->mUpdateMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/animation/internal/AnimTask;->mNotRunList:Ljava/util/List;

    iput-object p1, p0, Lmiui/animation/internal/AnimTask;->mTarget:Lmiui/animation/IAnimTarget;

    new-instance v0, Lmiui/animation/listener/ListenerNotifier;

    invoke-direct {v0, p1}, Lmiui/animation/listener/ListenerNotifier;-><init>(Lmiui/animation/IAnimTarget;)V

    iput-object v0, p0, Lmiui/animation/internal/AnimTask;->mNotifier:Lmiui/animation/listener/ListenerNotifier;

    return-void
.end method

.method private cancelAnim(Lmiui/animation/internal/AnimRunningInfo;)V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p1, Lmiui/animation/internal/AnimRunningInfo;->pending:Lmiui/animation/internal/AnimRunningInfo;

    invoke-virtual {p1}, Lmiui/animation/internal/AnimRunningInfo;->stop()V

    invoke-static {}, Lmiui/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelAnim, cancel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v1}, Lmiui/animation/property/FloatProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiui/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_29
    return-void
.end method

.method private checkAndNotifyEnd(Ljava/lang/Object;Z)Z
    .registers 4

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p0, v0, p1}, Lmiui/animation/internal/AnimTask;->isTagRunningIn(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mNotRunList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lmiui/animation/internal/AnimTask;->isTagRunningIn(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_20

    :cond_11
    if-eqz p2, :cond_19

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mNotifier:Lmiui/animation/listener/ListenerNotifier;

    invoke-virtual {v0, p1}, Lmiui/animation/listener/ListenerNotifier;->notifyCancelAll(Ljava/lang/Object;)V

    goto :goto_1e

    :cond_19
    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mNotifier:Lmiui/animation/listener/ListenerNotifier;

    invoke-virtual {v0, p1}, Lmiui/animation/listener/ListenerNotifier;->notifyEndAll(Ljava/lang/Object;)V

    :goto_1e
    const/4 v0, 0x1

    return v0

    :cond_20
    :goto_20
    const/4 v0, 0x0

    return v0
.end method

.method private collectUpdateInfo(Ljava/util/Collection;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lmiui/animation/internal/AnimRunningInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/internal/AnimRunningInfo;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_70

    :cond_17
    iget v2, v1, Lmiui/animation/internal/AnimRunningInfo;->status:I

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lmiui/animation/internal/AnimRunningInfo;->updateToDate()Lmiui/animation/listener/UpdateInfo;

    move-result-object v2

    move-object v3, v2

    if-nez v2, :cond_23

    goto :goto_4

    :cond_23
    iget-object v2, v1, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    invoke-direct {p0, v2}, Lmiui/animation/internal/AnimTask;->getUpdateList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    iget-boolean v4, v3, Lmiui/animation/listener/UpdateInfo;->isCompleted:Z

    if-eqz v4, :cond_6f

    invoke-static {}, Lmiui/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v4

    if-eqz v4, :cond_6f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "anim end, tag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "property = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v8}, Lmiui/animation/property/FloatProperty;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lmiui/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6f
    goto :goto_4

    :cond_70
    :goto_70
    return-void
.end method

.method private varargs endQueuedTransitions(Z[Lmiui/animation/property/FloatProperty;)V
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lmiui/animation/internal/AnimTask;->mQueueList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/animation/internal/TransitionInfo;

    invoke-direct {p0, v2, p1, p2}, Lmiui/animation/internal/AnimTask;->endTransitionInfo(Lmiui/animation/internal/TransitionInfo;Z[Lmiui/animation/property/FloatProperty;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    goto :goto_b

    :cond_21
    iget-object v1, p0, Lmiui/animation/internal/AnimTask;->mQueueList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private varargs endTransitionInfo(Lmiui/animation/internal/TransitionInfo;Z[Lmiui/animation/property/FloatProperty;)Z
    .registers 8

    iget-object v0, p1, Lmiui/animation/internal/TransitionInfo;->toPropValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/property/FloatProperty;

    array-length v2, p3

    if-lez v2, :cond_20

    invoke-direct {p0, v1, p3}, Lmiui/animation/internal/AnimTask;->isNotIn(Lmiui/animation/property/FloatProperty;[Lmiui/animation/property/FloatProperty;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_a

    :cond_20
    if-eqz p2, :cond_2f

    iget-object v2, p1, Lmiui/animation/internal/TransitionInfo;->target:Lmiui/animation/IAnimTarget;

    iget-object v3, p1, Lmiui/animation/internal/TransitionInfo;->toPropValues:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-direct {p0, v2, v1, v3}, Lmiui/animation/internal/AnimTask;->setTargetValue(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;Ljava/lang/Number;)V

    :cond_2f
    iget-object v2, p1, Lmiui/animation/internal/TransitionInfo;->toPropValues:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_35
    iget-object v0, p1, Lmiui/animation/internal/TransitionInfo;->toPropValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private findAndHandleSameAnim(Lmiui/animation/internal/AnimRunningInfo;)V
    .registers 8

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/internal/AnimRunningInfo;

    if-eq v1, p1, :cond_2c

    iget-wide v2, v1, Lmiui/animation/internal/AnimRunningInfo;->flags:J

    const-wide/16 v4, 0x2

    invoke-static {v2, v3, v4, v5}, Lmiui/animation/utils/CommonUtils;->hasFlags(JJ)Z

    move-result v2

    if-nez v2, :cond_2c

    iget-object v2, v1, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    iget-object v3, p1, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-direct {p0, v1, p1}, Lmiui/animation/internal/AnimTask;->handleSameAnim(Lmiui/animation/internal/AnimRunningInfo;Lmiui/animation/internal/AnimRunningInfo;)V

    return-void

    :cond_2c
    goto :goto_6

    :cond_2d
    return-void
.end method

.method private findByStatus(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lmiui/animation/internal/AnimRunningInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/internal/AnimRunningInfo;

    iget v2, v1, Lmiui/animation/internal/AnimRunningInfo;->status:I

    if-ne v2, p1, :cond_19

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    goto :goto_6

    :cond_1a
    return-void
.end method

.method private getTotalList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/animation/internal/AnimRunningInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lmiui/animation/internal/AnimTask;->mNotRunList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1d

    :cond_13
    iget-object v1, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lmiui/animation/internal/AnimTask;->mNotRunList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1d
    return-object v0
.end method

.method private getUpdateList(Ljava/lang/Object;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lmiui/animation/listener/UpdateInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mUpdateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_15

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lmiui/animation/internal/AnimTask;->mUpdateMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-object v0
.end method

.method private handleBegin(Lmiui/animation/IAnimTarget;JJ)V
    .registers 15

    const-class v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lmiui/animation/utils/ObjectPool;->acquire(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-class v2, Ljava/util/ArrayList;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lmiui/animation/utils/ObjectPool;->acquire(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/util/List;

    :try_start_16
    invoke-direct {p0, v1, v0}, Lmiui/animation/internal/AnimTask;->findByStatus(ILjava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_82

    if-eqz v1, :cond_26

    invoke-static {v8}, Lmiui/animation/utils/ObjectPool;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lmiui/animation/utils/ObjectPool;->release(Ljava/lang/Object;)V

    return-void

    :cond_26
    :try_start_26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/animation/internal/AnimRunningInfo;

    iget-wide v3, v2, Lmiui/animation/internal/AnimRunningInfo;->initTime:J

    sub-long v3, p2, v3

    iget-object v5, v2, Lmiui/animation/internal/AnimRunningInfo;->config:Lmiui/animation/base/AnimConfigLink;

    iget-object v6, v2, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    iget-object v7, v2, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v5, v6, v7}, Lmiui/animation/base/AnimConfigLink;->getDelay(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_49

    goto :goto_2a

    :cond_49
    iget-object v3, v2, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    invoke-interface {v8, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5b

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lmiui/animation/internal/AnimTask;->mNotifier:Lmiui/animation/listener/ListenerNotifier;

    iget-object v5, v2, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lmiui/animation/listener/ListenerNotifier;->notifyBegin(Ljava/lang/Object;)V

    :cond_5b
    invoke-virtual {v2, p1, p2, p3}, Lmiui/animation/internal/AnimRunningInfo;->begin(Lmiui/animation/IAnimTarget;J)V

    invoke-direct {p0, v2}, Lmiui/animation/internal/AnimTask;->stopSameRunningAnim(Lmiui/animation/internal/AnimRunningInfo;)Z

    move-result v4

    if-nez v4, :cond_6f

    iget-object v4, p0, Lmiui/animation/internal/AnimTask;->mNotifier:Lmiui/animation/listener/ListenerNotifier;

    iget-object v5, v2, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    invoke-virtual {v2}, Lmiui/animation/internal/AnimRunningInfo;->updateToDate()Lmiui/animation/listener/UpdateInfo;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lmiui/animation/listener/ListenerNotifier;->notifyPropertyBegin(Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V

    :cond_6f
    goto :goto_2a

    :cond_70
    move-object v2, p0

    move-object v3, v0

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v2 .. v7}, Lmiui/animation/internal/AnimTask;->updateAndStop(Ljava/util/Collection;JJ)V

    invoke-direct {p0, v0}, Lmiui/animation/internal/AnimTask;->notifyUpdateAndEnd(Ljava/util/Collection;)V
    :try_end_7a
    .catchall {:try_start_26 .. :try_end_7a} :catchall_82

    invoke-static {v8}, Lmiui/animation/utils/ObjectPool;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lmiui/animation/utils/ObjectPool;->release(Ljava/lang/Object;)V

    nop

    return-void

    :catchall_82
    move-exception v1

    invoke-static {v8}, Lmiui/animation/utils/ObjectPool;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lmiui/animation/utils/ObjectPool;->release(Ljava/lang/Object;)V

    throw v1
.end method

.method private handlePendingAnim(J)V
    .registers 12

    const-class v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiui/animation/utils/ObjectPool;->acquire(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x2

    :try_start_c
    invoke-direct {p0, v1, v0}, Lmiui/animation/internal/AnimTask;->findByStatus(ILjava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_4a

    if-eqz v1, :cond_19

    invoke-static {v0}, Lmiui/animation/utils/ObjectPool;->release(Ljava/lang/Object;)V

    return-void

    :cond_19
    :try_start_19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/animation/internal/AnimRunningInfo;

    iget-object v3, v2, Lmiui/animation/internal/AnimRunningInfo;->config:Lmiui/animation/base/AnimConfigLink;

    iget-object v4, v2, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    iget-object v5, v2, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v3, v4, v5}, Lmiui/animation/base/AnimConfigLink;->getMinDuration(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)J

    move-result-wide v3

    invoke-virtual {v2}, Lmiui/animation/internal/AnimRunningInfo;->getRunningTime()J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-gez v7, :cond_41

    sub-long v7, v3, v5

    cmp-long v7, v7, p1

    if-gez v7, :cond_44

    :cond_41
    invoke-virtual {v2}, Lmiui/animation/internal/AnimRunningInfo;->stop()V
    :try_end_44
    .catchall {:try_start_19 .. :try_end_44} :catchall_4a

    :cond_44
    goto :goto_1d

    :cond_45
    invoke-static {v0}, Lmiui/animation/utils/ObjectPool;->release(Ljava/lang/Object;)V

    nop

    return-void

    :catchall_4a
    move-exception v1

    invoke-static {v0}, Lmiui/animation/utils/ObjectPool;->release(Ljava/lang/Object;)V

    throw v1
.end method

.method private handleQueue(J)V
    .registers 5

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mQueueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mQueueList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/internal/TransitionInfo;

    invoke-direct {p0, p1, p2, v0}, Lmiui/animation/internal/AnimTask;->startTransition(JLmiui/animation/internal/TransitionInfo;)V

    :cond_1c
    return-void
.end method

.method private handleSameAnim(Lmiui/animation/internal/AnimRunningInfo;Lmiui/animation/internal/AnimRunningInfo;)V
    .registers 11

    iget v0, p1, Lmiui/animation/internal/AnimRunningInfo;->status:I

    const/4 v1, 0x3

    if-nez v0, :cond_8

    iput v1, p1, Lmiui/animation/internal/AnimRunningInfo;->status:I

    goto :goto_7a

    :cond_8
    iget v0, p1, Lmiui/animation/internal/AnimRunningInfo;->status:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_6d

    iget-object v0, p1, Lmiui/animation/internal/AnimRunningInfo;->config:Lmiui/animation/base/AnimConfigLink;

    iget-object v4, p1, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    iget-object v5, p1, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v0, v4, v5}, Lmiui/animation/base/AnimConfigLink;->getMinDuration(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)J

    move-result-wide v4

    invoke-virtual {p1}, Lmiui/animation/internal/AnimRunningInfo;->getRunningTime()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-gez v0, :cond_69

    invoke-static {}, Lmiui/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_65

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p1, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v7}, Lmiui/animation/property/FloatProperty;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "prev.config.minDuration = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prev.runningTime = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmiui/animation/internal/AnimRunningInfo;->getRunningTime()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "pending current info"

    aput-object v2, v0, v1

    const-string v1, "handleSameAnim"

    invoke-static {v1, v0}, Lmiui/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_65
    invoke-virtual {p1, p2}, Lmiui/animation/internal/AnimRunningInfo;->setPending(Lmiui/animation/internal/AnimRunningInfo;)V

    goto :goto_79

    :cond_69
    invoke-virtual {p1}, Lmiui/animation/internal/AnimRunningInfo;->stop()V

    goto :goto_79

    :cond_6d
    iget v0, p1, Lmiui/animation/internal/AnimRunningInfo;->status:I

    if-ne v0, v2, :cond_79

    iget-object v0, p1, Lmiui/animation/internal/AnimRunningInfo;->pending:Lmiui/animation/internal/AnimRunningInfo;

    invoke-virtual {v0}, Lmiui/animation/internal/AnimRunningInfo;->stop()V

    iput-object p2, p1, Lmiui/animation/internal/AnimRunningInfo;->pending:Lmiui/animation/internal/AnimRunningInfo;

    goto :goto_7a

    :cond_79
    :goto_79
    nop

    :goto_7a
    return-void
.end method

.method private isAnimEnd(Lmiui/animation/internal/AnimRunningInfo;J)Z
    .registers 5

    invoke-virtual {p1, p2, p3}, Lmiui/animation/internal/AnimRunningInfo;->isAnimEnd(J)Z

    move-result v0

    return v0
.end method

.method private varargs isNotIn(Lmiui/animation/property/FloatProperty;[Lmiui/animation/property/FloatProperty;)Z
    .registers 8

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_11

    aget-object v3, p2, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    return v1

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method private isRunningTag(Lmiui/animation/internal/AnimRunningInfo;Ljava/lang/Object;)Z
    .registers 5

    iget v0, p1, Lmiui/animation/internal/AnimRunningInfo;->status:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    iget-object v0, p1, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private isTagRunningIn(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lmiui/animation/internal/AnimRunningInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/internal/AnimRunningInfo;

    invoke-direct {p0, v1, p2}, Lmiui/animation/internal/AnimTask;->isRunningTag(Lmiui/animation/internal/AnimRunningInfo;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    goto :goto_4

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method private isTransGoing(J)Z
    .registers 7

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/internal/AnimRunningInfo;

    iget-wide v2, v1, Lmiui/animation/internal/AnimRunningInfo;->transId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    goto :goto_6

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method private notifyForUpdateAndEnd(Lmiui/animation/listener/ListenerNotifier;Ljava/lang/Object;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/animation/listener/ListenerNotifier;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lmiui/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Lmiui/animation/listener/ListenerNotifier;->notifyUpdate(Ljava/lang/Object;Ljava/util/List;)V

    invoke-virtual {p1, p2, p3}, Lmiui/animation/listener/ListenerNotifier;->notifyUpdateList(Ljava/lang/Object;Ljava/util/List;)V

    invoke-virtual {p1, p2, p3}, Lmiui/animation/listener/ListenerNotifier;->notifyPropertyEnd(Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method private notifyUpdateAndEnd(Ljava/util/Collection;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lmiui/animation/internal/AnimRunningInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lmiui/animation/internal/AnimTask;->collectUpdateInfo(Ljava/util/Collection;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lmiui/animation/internal/AnimTask;->removeUpdateInfoOfStoppedTrans(Ljava/util/List;)V

    iget-object v1, p0, Lmiui/animation/internal/AnimTask;->mUpdateMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_35
    iget-object v5, p0, Lmiui/animation/internal/AnimTask;->mNotifier:Lmiui/animation/listener/ListenerNotifier;

    invoke-direct {p0, v5, v3, v4}, Lmiui/animation/internal/AnimTask;->notifyForUpdateAndEnd(Lmiui/animation/listener/ListenerNotifier;Ljava/lang/Object;Ljava/util/List;)V

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lmiui/animation/internal/AnimTask;->checkAndNotifyEnd(Ljava/lang/Object;Z)Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_44
    goto :goto_15

    :cond_45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lmiui/animation/internal/AnimTask;->mUpdateMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    :cond_59
    return-void
.end method

.method private removeStoppedAnim()V
    .registers 5

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/internal/AnimRunningInfo;

    iget v2, v1, Lmiui/animation/internal/AnimRunningInfo;->status:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1c

    iget-object v2, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    :cond_1c
    goto :goto_6

    :cond_1d
    return-void
.end method

.method private removeUpdateInfoOfStoppedTrans(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mUpdateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/animation/listener/UpdateInfo;

    iget-wide v4, v3, Lmiui/animation/listener/UpdateInfo;->transId:J

    invoke-direct {p0, v4, v5}, Lmiui/animation/internal/AnimTask;->isTransGoing(J)Z

    move-result v4

    if-nez v4, :cond_34

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_34
    goto :goto_1d

    :cond_35
    invoke-interface {v1, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_a

    :cond_39
    return-void
.end method

.method private restoreAnim()V
    .registers 3

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lmiui/animation/internal/AnimTask;->mNotRunList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mNotRunList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private varargs saveNotAllowedAnim([J)V
    .registers 9

    array-length v0, p1

    const-wide/16 v1, 0x0

    if-lez v0, :cond_9

    const/4 v0, 0x0

    aget-wide v3, p1, v0

    goto :goto_a

    :cond_9
    move-wide v3, v1

    :goto_a
    cmp-long v0, v3, v1

    if-lez v0, :cond_35

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/internal/AnimRunningInfo;

    iget-wide v5, v1, Lmiui/animation/internal/AnimRunningInfo;->flags:J

    invoke-static {v5, v6, v3, v4}, Lmiui/animation/utils/CommonUtils;->hasFlags(JJ)Z

    move-result v2

    if-nez v2, :cond_2d

    iget-object v2, p0, Lmiui/animation/internal/AnimTask;->mNotRunList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    goto :goto_14

    :cond_2e
    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lmiui/animation/internal/AnimTask;->mNotRunList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->removeAll(Ljava/util/Collection;)Z

    :cond_35
    return-void
.end method

.method private setTargetValue(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;Ljava/lang/Number;)V
    .registers 6

    instance-of v0, p2, Lmiui/animation/property/IIntValueProperty;

    if-eqz v0, :cond_14

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_13

    move-object v1, p2

    check-cast v1, Lmiui/animation/property/IIntValueProperty;

    invoke-virtual {p1, v1, v0}, Lmiui/animation/IAnimTarget;->setIntValue(Lmiui/animation/property/IIntValueProperty;I)V

    :cond_13
    goto :goto_26

    :cond_14
    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {p1, p2, v0}, Lmiui/animation/internal/AnimValueUtils;->getValue(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;F)F

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_26

    invoke-virtual {p1, p2, v0}, Lmiui/animation/IAnimTarget;->setValue(Lmiui/animation/property/FloatProperty;F)V

    :cond_26
    :goto_26
    return-void
.end method

.method private startTransition(JLmiui/animation/internal/TransitionInfo;)V
    .registers 15

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_4a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lmiui/animation/internal/AnimRunningInfo;

    invoke-virtual {v7}, Lmiui/animation/internal/AnimRunningInfo;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, v7, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    iget-object v4, p3, Lmiui/animation/internal/TransitionInfo;->toTag:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p3, Lmiui/animation/internal/TransitionInfo;->toPropValues:Landroid/util/ArrayMap;

    iget-object v4, v7, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_49

    iget-object v0, p3, Lmiui/animation/internal/TransitionInfo;->config:Lmiui/animation/base/AnimConfigLink;

    iget-object v4, v7, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    iget-object v5, v7, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v0, v4, v5}, Lmiui/animation/base/AnimConfigLink;->getDelay(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-nez v0, :cond_49

    move-object v0, p0

    move-object v1, v7

    move-object v2, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lmiui/animation/internal/AnimTask;->tryUpdate(Lmiui/animation/internal/AnimRunningInfo;Lmiui/animation/internal/TransitionInfo;Ljava/util/List;J)V

    :cond_49
    goto :goto_b

    :cond_4a
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/animation/property/FloatProperty;

    iget-object v5, p3, Lmiui/animation/internal/TransitionInfo;->toPropValues:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    :cond_60
    iget-object v0, p3, Lmiui/animation/internal/TransitionInfo;->toPropValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-static {}, Lmiui/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_a6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "target = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiui/animation/internal/AnimTask;->mTarget:Lmiui/animation/IAnimTarget;

    invoke-virtual {v4}, Lmiui/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trans.tag = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p3, Lmiui/animation/internal/TransitionInfo;->toTag:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "startTransition, trans.toPropValues.isEmpty"

    invoke-static {v1, v0}, Lmiui/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a6
    return-void

    :cond_a7
    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mNotifier:Lmiui/animation/listener/ListenerNotifier;

    iget-object v4, p3, Lmiui/animation/internal/TransitionInfo;->toTag:Ljava/lang/Object;

    iget-object v5, p3, Lmiui/animation/internal/TransitionInfo;->config:Lmiui/animation/base/AnimConfigLink;

    invoke-virtual {v0, v4, v5}, Lmiui/animation/listener/ListenerNotifier;->setListeners(Ljava/lang/Object;Lmiui/animation/base/AnimConfigLink;)Z

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mTarget:Lmiui/animation/IAnimTarget;

    invoke-static {v0, p3}, Lmiui/animation/internal/AnimCompositor;->createAnimInfo(Lmiui/animation/IAnimTarget;Lmiui/animation/internal/TransitionInfo;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_be
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/animation/internal/AnimRunningInfo;

    iput-wide p1, v5, Lmiui/animation/internal/AnimRunningInfo;->initTime:J

    iget-object v6, v5, Lmiui/animation/internal/AnimRunningInfo;->config:Lmiui/animation/base/AnimConfigLink;

    iget-object v7, v5, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    iget-object v8, v5, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v6, v7, v8}, Lmiui/animation/base/AnimConfigLink;->getDelay(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)J

    move-result-wide v6

    cmp-long v6, v6, v1

    const-wide/16 v7, 0x2

    if-lez v6, :cond_e1

    iget-wide v9, v5, Lmiui/animation/internal/AnimRunningInfo;->flags:J

    or-long/2addr v9, v7

    iput-wide v9, v5, Lmiui/animation/internal/AnimRunningInfo;->flags:J

    :cond_e1
    iget-wide v9, v5, Lmiui/animation/internal/AnimRunningInfo;->flags:J

    invoke-static {v9, v10, v7, v8}, Lmiui/animation/utils/CommonUtils;->hasFlags(JJ)Z

    move-result v6

    if-nez v6, :cond_ec

    invoke-direct {p0, v5}, Lmiui/animation/internal/AnimTask;->findAndHandleSameAnim(Lmiui/animation/internal/AnimRunningInfo;)V

    :cond_ec
    iget-object v6, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_be

    :cond_f2
    return-void
.end method

.method private stopSameRunningAnim(Lmiui/animation/internal/AnimRunningInfo;)Z
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/animation/internal/AnimRunningInfo;

    if-eq v2, p1, :cond_2e

    iget-object v3, v2, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    iget-object v4, p1, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {v2}, Lmiui/animation/internal/AnimRunningInfo;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_2e

    const/4 v0, 0x1

    invoke-virtual {v2}, Lmiui/animation/internal/AnimRunningInfo;->stop()V

    iget-object v3, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    :cond_2e
    goto :goto_7

    :cond_2f
    return v0
.end method

.method private tryUpdate(Lmiui/animation/internal/AnimRunningInfo;Lmiui/animation/internal/TransitionInfo;Ljava/util/List;J)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/animation/internal/AnimRunningInfo;",
            "Lmiui/animation/internal/TransitionInfo;",
            "Ljava/util/List<",
            "Lmiui/animation/property/FloatProperty;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p2, Lmiui/animation/internal/TransitionInfo;->toPropValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/property/FloatProperty;

    iget-object v2, p1, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_a

    :cond_1f
    invoke-virtual {p1, p2, p4, p5}, Lmiui/animation/internal/AnimRunningInfo;->update(Lmiui/animation/internal/TransitionInfo;J)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_26
    return-void
.end method

.method private updateAndStop(Ljava/util/Collection;JJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lmiui/animation/internal/AnimRunningInfo;",
            ">;JJ)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/internal/AnimRunningInfo;

    invoke-virtual {v1}, Lmiui/animation/internal/AnimRunningInfo;->isRunning()Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_4

    :cond_17
    invoke-virtual {v1, p4, p5}, Lmiui/animation/internal/AnimRunningInfo;->run(J)V

    invoke-direct {p0, v1, p2, p3}, Lmiui/animation/internal/AnimTask;->isAnimEnd(Lmiui/animation/internal/AnimRunningInfo;J)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v1}, Lmiui/animation/internal/AnimRunningInfo;->updateToDate()Lmiui/animation/listener/UpdateInfo;

    move-result-object v3

    iget-boolean v3, v3, Lmiui/animation/listener/UpdateInfo;->isCanceled:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lmiui/animation/internal/AnimRunningInfo;->stop(Z)V

    :cond_2b
    goto :goto_4

    :cond_2c
    return-void
.end method


# virtual methods
.method addTransition(JLmiui/animation/internal/TransitionInfo;)V
    .registers 8

    iget-object v0, p3, Lmiui/animation/internal/TransitionInfo;->config:Lmiui/animation/base/AnimConfigLink;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lmiui/animation/base/AnimConfigLink;->getFlags(Ljava/lang/Object;Lmiui/animation/property/FloatProperty;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lmiui/animation/utils/CommonUtils;->hasFlags(JJ)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mQueueList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_15
    invoke-direct {p0, p1, p2, p3}, Lmiui/animation/internal/AnimTask;->startTransition(JLmiui/animation/internal/TransitionInfo;)V

    :goto_18
    return-void
.end method

.method public varargs cancel([Lmiui/animation/property/FloatProperty;)V
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0}, Lmiui/animation/internal/AnimTask;->getTotalList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/animation/internal/AnimRunningInfo;

    invoke-virtual {v3}, Lmiui/animation/internal/AnimRunningInfo;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_e

    array-length v4, p1

    if-lez v4, :cond_2c

    iget-object v4, v3, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-direct {p0, v4, p1}, Lmiui/animation/internal/AnimTask;->isNotIn(Lmiui/animation/property/FloatProperty;[Lmiui/animation/property/FloatProperty;)Z

    move-result v4

    if-eqz v4, :cond_2c

    goto :goto_e

    :cond_2c
    const/4 v1, 0x1

    invoke-direct {p0, v3}, Lmiui/animation/internal/AnimTask;->cancelAnim(Lmiui/animation/internal/AnimRunningInfo;)V

    iget-object v4, v3, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3b
    iget-object v5, p0, Lmiui/animation/internal/AnimTask;->mNotifier:Lmiui/animation/listener/ListenerNotifier;

    invoke-virtual {v3}, Lmiui/animation/internal/AnimRunningInfo;->updateToDate()Lmiui/animation/listener/UpdateInfo;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lmiui/animation/listener/ListenerNotifier;->notifyAnimCancel(Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V

    goto :goto_e

    :cond_45
    if-eqz v1, :cond_60

    invoke-direct {p0}, Lmiui/animation/internal/AnimTask;->removeStoppedAnim()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lmiui/animation/internal/AnimTask;->checkAndNotifyEnd(Ljava/lang/Object;Z)Z

    goto :goto_4e

    :cond_5d
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_60
    array-length v2, p1

    if-lez v2, :cond_67

    const/4 v2, 0x0

    invoke-direct {p0, v2, p1}, Lmiui/animation/internal/AnimTask;->endQueuedTransitions(Z[Lmiui/animation/property/FloatProperty;)V

    :cond_67
    return-void
.end method

.method varargs end([Lmiui/animation/property/FloatProperty;)V
    .registers 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-direct {p0}, Lmiui/animation/internal/AnimTask;->getTotalList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/animation/internal/AnimRunningInfo;

    array-length v5, p1

    if-lez v5, :cond_2d

    iget-object v5, v4, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-direct {p0, v5, p1}, Lmiui/animation/internal/AnimTask;->isNotIn(Lmiui/animation/property/FloatProperty;[Lmiui/animation/property/FloatProperty;)Z

    move-result v5

    if-eqz v5, :cond_2d

    goto :goto_15

    :cond_2d
    invoke-virtual {v4}, Lmiui/animation/internal/AnimRunningInfo;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-virtual {v4, v2}, Lmiui/animation/internal/AnimRunningInfo;->stop(Z)V

    invoke-virtual {v4}, Lmiui/animation/internal/AnimRunningInfo;->updateToDate()Lmiui/animation/listener/UpdateInfo;

    move-result-object v5

    iput-boolean v2, v5, Lmiui/animation/listener/UpdateInfo;->isEndByUser:Z

    goto :goto_46

    :cond_3d
    iget-object v5, v4, Lmiui/animation/internal/AnimRunningInfo;->target:Lmiui/animation/IAnimTarget;

    iget-object v6, v4, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    iget-object v7, v4, Lmiui/animation/internal/AnimRunningInfo;->toValue:Ljava/lang/Number;

    invoke-direct {p0, v5, v6, v7}, Lmiui/animation/internal/AnimTask;->setTargetValue(Lmiui/animation/IAnimTarget;Lmiui/animation/property/FloatProperty;Ljava/lang/Number;)V

    :goto_46
    iget-object v5, v4, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_53

    iget-object v5, v4, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_53
    iget-object v5, p0, Lmiui/animation/internal/AnimTask;->mNotifier:Lmiui/animation/listener/ListenerNotifier;

    iget-object v6, v4, Lmiui/animation/internal/AnimRunningInfo;->toTag:Ljava/lang/Object;

    invoke-virtual {v4}, Lmiui/animation/internal/AnimRunningInfo;->updateToDate()Lmiui/animation/listener/UpdateInfo;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lmiui/animation/listener/ListenerNotifier;->notifyAnimEnd(Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V

    goto :goto_15

    :cond_5f
    invoke-direct {p0, v2, p1}, Lmiui/animation/internal/AnimTask;->endQueuedTransitions(Z[Lmiui/animation/property/FloatProperty;)V

    invoke-direct {p0}, Lmiui/animation/internal/AnimTask;->removeStoppedAnim()V

    if-eqz v1, :cond_7a

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lmiui/animation/internal/AnimTask;->checkAndNotifyEnd(Ljava/lang/Object;Z)Z

    goto :goto_6b

    :cond_7a
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public isFinished()Z
    .registers 2

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isRunning(Lmiui/animation/property/FloatProperty;)Z
    .registers 5

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/internal/AnimRunningInfo;

    iget-object v2, v1, Lmiui/animation/internal/AnimRunningInfo;->property:Lmiui/animation/property/FloatProperty;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v0, 0x1

    return v0

    :cond_1c
    goto :goto_6

    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .registers 2

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mQueueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public varargs run(JJ[J)V
    .registers 13

    invoke-direct {p0, p5}, Lmiui/animation/internal/AnimTask;->saveNotAllowedAnim([J)V

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v2, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object v1, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lmiui/animation/internal/AnimTask;->updateAndStop(Ljava/util/Collection;JJ)V

    invoke-direct {p0, p3, p4}, Lmiui/animation/internal/AnimTask;->handlePendingAnim(J)V

    iget-object v0, p0, Lmiui/animation/internal/AnimTask;->mRunningList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p0, v0}, Lmiui/animation/internal/AnimTask;->notifyUpdateAndEnd(Ljava/util/Collection;)V

    invoke-direct {p0}, Lmiui/animation/internal/AnimTask;->removeStoppedAnim()V

    iget-object v2, p0, Lmiui/animation/internal/AnimTask;->mTarget:Lmiui/animation/IAnimTarget;

    invoke-direct/range {v1 .. v6}, Lmiui/animation/internal/AnimTask;->handleBegin(Lmiui/animation/IAnimTarget;JJ)V

    invoke-direct {p0, p1, p2}, Lmiui/animation/internal/AnimTask;->handleQueue(J)V

    :cond_26
    invoke-direct {p0}, Lmiui/animation/internal/AnimTask;->restoreAnim()V

    return-void
.end method

.method public setToNotify(Lmiui/animation/controller/AnimState;Lmiui/animation/base/AnimConfigLink;)V
    .registers 10

    invoke-virtual {p1}, Lmiui/animation/controller/AnimState;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lmiui/animation/internal/AnimTask;->mSetToNotifier:Lmiui/animation/listener/ListenerNotifier;

    if-nez v1, :cond_11

    new-instance v1, Lmiui/animation/listener/ListenerNotifier;

    iget-object v2, p0, Lmiui/animation/internal/AnimTask;->mTarget:Lmiui/animation/IAnimTarget;

    invoke-direct {v1, v2}, Lmiui/animation/listener/ListenerNotifier;-><init>(Lmiui/animation/IAnimTarget;)V

    iput-object v1, p0, Lmiui/animation/internal/AnimTask;->mSetToNotifier:Lmiui/animation/listener/ListenerNotifier;

    :cond_11
    iget-object v1, p0, Lmiui/animation/internal/AnimTask;->mSetToNotifier:Lmiui/animation/listener/ListenerNotifier;

    invoke-virtual {v1, v0, p2}, Lmiui/animation/listener/ListenerNotifier;->setListeners(Ljava/lang/Object;Lmiui/animation/base/AnimConfigLink;)Z

    move-result v1

    if-nez v1, :cond_1a

    return-void

    :cond_1a
    iget-object v1, p0, Lmiui/animation/internal/AnimTask;->mSetToNotifier:Lmiui/animation/listener/ListenerNotifier;

    invoke-virtual {v1, v0}, Lmiui/animation/listener/ListenerNotifier;->notifyBegin(Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lmiui/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/animation/property/FloatProperty;

    new-instance v4, Lmiui/animation/listener/UpdateInfo;

    invoke-direct {v4}, Lmiui/animation/listener/UpdateInfo;-><init>()V

    iput-object v3, v4, Lmiui/animation/listener/UpdateInfo;->property:Lmiui/animation/property/FloatProperty;

    iget-object v5, p0, Lmiui/animation/internal/AnimTask;->mTarget:Lmiui/animation/IAnimTarget;

    invoke-virtual {v5, v3}, Lmiui/animation/IAnimTarget;->getVelocity(Lmiui/animation/property/FloatProperty;)D

    move-result-wide v5

    double-to-float v5, v5

    iput v5, v4, Lmiui/animation/listener/UpdateInfo;->velocity:F

    instance-of v5, v3, Lmiui/animation/property/IIntValueProperty;

    if-eqz v5, :cond_57

    iget-object v5, p0, Lmiui/animation/internal/AnimTask;->mTarget:Lmiui/animation/IAnimTarget;

    move-object v6, v3

    check-cast v6, Lmiui/animation/property/IIntValueProperty;

    invoke-virtual {v5, v6}, Lmiui/animation/IAnimTarget;->getIntValue(Lmiui/animation/property/IIntValueProperty;)I

    move-result v5

    int-to-float v5, v5

    goto :goto_5d

    :cond_57
    iget-object v5, p0, Lmiui/animation/internal/AnimTask;->mTarget:Lmiui/animation/IAnimTarget;

    invoke-virtual {v5, v3}, Lmiui/animation/IAnimTarget;->getValue(Lmiui/animation/property/FloatProperty;)F

    move-result v5

    :goto_5d
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/animation/listener/UpdateInfo;->setValue(Ljava/lang/Number;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lmiui/animation/listener/UpdateInfo;->setComplete(Z)V

    goto :goto_2c

    :cond_6c
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_70
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_82

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/animation/listener/UpdateInfo;

    iget-object v4, p0, Lmiui/animation/internal/AnimTask;->mSetToNotifier:Lmiui/animation/listener/ListenerNotifier;

    invoke-virtual {v4, v0, v3}, Lmiui/animation/listener/ListenerNotifier;->notifyPropertyBegin(Ljava/lang/Object;Lmiui/animation/listener/UpdateInfo;)V

    goto :goto_70

    :cond_82
    iget-object v2, p0, Lmiui/animation/internal/AnimTask;->mSetToNotifier:Lmiui/animation/listener/ListenerNotifier;

    invoke-direct {p0, v2, v0, v1}, Lmiui/animation/internal/AnimTask;->notifyForUpdateAndEnd(Lmiui/animation/listener/ListenerNotifier;Ljava/lang/Object;Ljava/util/List;)V

    iget-object v2, p0, Lmiui/animation/internal/AnimTask;->mSetToNotifier:Lmiui/animation/listener/ListenerNotifier;

    invoke-virtual {v2, v0}, Lmiui/animation/listener/ListenerNotifier;->notifyEndAll(Ljava/lang/Object;)V

    return-void
.end method
