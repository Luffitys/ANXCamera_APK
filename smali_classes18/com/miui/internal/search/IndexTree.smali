.class public abstract Lcom/miui/internal/search/IndexTree;
.super Ljava/lang/Object;
.source "IndexTree.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IndexTree"


# instance fields
.field private volatile mChanged:Z

.field final mLock:Ljava/lang/Object;

.field private mParent:Lcom/miui/internal/search/IndexTree;

.field private mSon:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/miui/internal/search/IndexTree;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/miui/internal/search/IndexTree;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/search/IndexTree;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/miui/internal/search/IndexTree;->mParent:Lcom/miui/internal/search/IndexTree;

    return-void
.end method


# virtual methods
.method protected final addSon(ILcom/miui/internal/search/IndexTree;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/search/IndexTree;->mChanged:Z

    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    if-nez v0, :cond_11

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    :cond_11
    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method protected final addSon(Lcom/miui/internal/search/IndexTree;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    :goto_a
    invoke-virtual {p0, v0, p1}, Lcom/miui/internal/search/IndexTree;->addSon(ILcom/miui/internal/search/IndexTree;)V

    return-void
.end method

.method public abstract commit(Ljava/lang/StringBuilder;)V
.end method

.method public abstract delete(Ljava/lang/String;[Ljava/lang/String;)Z
.end method

.method public final dispatchCommit(Ljava/lang/StringBuilder;)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/miui/internal/search/IndexTree;->commit(Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/search/IndexTree;->mChanged:Z

    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    iget-object v1, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/search/IndexTree;

    invoke-virtual {v2, p1}, Lcom/miui/internal/search/IndexTree;->dispatchCommit(Ljava/lang/StringBuilder;)V

    goto :goto_13

    :cond_23
    monitor-exit v0

    goto :goto_28

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_25

    throw v1

    :cond_28
    :goto_28
    return-void
.end method

.method public final dispatchDelete(Ljava/lang/String;[Ljava/lang/String;Z)I
    .registers 11

    const/4 v0, 0x0

    if-nez p3, :cond_10

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/search/IndexTree;->delete(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_10

    iget-object v1, p0, Lcom/miui/internal/search/IndexTree;->mParent:Lcom/miui/internal/search/IndexTree;

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lcom/miui/internal/search/IndexTree;->removeSelf()V

    :cond_10
    if-eqz p3, :cond_14

    add-int/lit8 v0, v0, 0x1

    :cond_14
    invoke-virtual {p0}, Lcom/miui/internal/search/IndexTree;->getSons()Ljava/util/LinkedList;

    move-result-object v1

    if-nez v1, :cond_1b

    return v0

    :cond_1b
    iget-object v2, p0, Lcom/miui/internal/search/IndexTree;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1e
    invoke-virtual {v1}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/internal/search/IndexTree;

    invoke-virtual {v5, p1, p2, p3}, Lcom/miui/internal/search/IndexTree;->dispatchDelete(Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v6

    add-int/2addr v0, v6

    goto :goto_28

    :cond_3a
    monitor-exit v2

    return v0

    :catchall_3c
    move-exception v3

    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_1e .. :try_end_3e} :catchall_3c

    throw v3
.end method

.method public final dispatchInsert(Landroid/content/ContentValues;)Ljava/lang/String;
    .registers 9

    invoke-virtual {p0, p1}, Lcom/miui/internal/search/IndexTree;->insert(Landroid/content/ContentValues;)Lcom/miui/internal/search/IndexTree;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/internal/search/IndexTree;->mChanged:Z

    iput-boolean v1, v0, Lcom/miui/internal/search/IndexTree;->mChanged:Z

    invoke-virtual {v0}, Lcom/miui/internal/search/IndexTree;->getUri()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_10
    invoke-virtual {p0}, Lcom/miui/internal/search/IndexTree;->getSons()Ljava/util/LinkedList;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_18

    return-object v2

    :cond_18
    iget-object v3, p0, Lcom/miui/internal/search/IndexTree;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1b
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/internal/search/IndexTree;

    invoke-virtual {v5, p1}, Lcom/miui/internal/search/IndexTree;->dispatchInsert(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_33

    monitor-exit v3

    return-object v6

    :cond_33
    goto :goto_1f

    :cond_34
    monitor-exit v3

    return-object v2

    :catchall_36
    move-exception v2

    monitor-exit v3
    :try_end_38
    .catchall {:try_start_1b .. :try_end_38} :catchall_36

    throw v2
.end method

.method public final dispatchQuery(Lcom/miui/internal/search/RankedCursor;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 19

    invoke-virtual/range {p0 .. p6}, Lcom/miui/internal/search/IndexTree;->query(Lcom/miui/internal/search/RankedCursor;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/miui/internal/search/IndexTree;->getSons()Ljava/util/LinkedList;

    move-result-object v1

    if-nez v1, :cond_e

    return-void

    :cond_e
    move-object v2, p0

    iget-object v3, v2, Lcom/miui/internal/search/IndexTree;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_12
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/miui/internal/search/IndexTree;

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual/range {v5 .. v11}, Lcom/miui/internal/search/IndexTree;->dispatchQuery(Lcom/miui/internal/search/RankedCursor;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_16

    :cond_30
    monitor-exit v3

    return-void

    :catchall_32
    move-exception v0

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_12 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public final dispatchUpdate(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/search/IndexTree;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/internal/search/IndexTree;->mChanged:Z

    :cond_c
    invoke-virtual {p0}, Lcom/miui/internal/search/IndexTree;->getSons()Ljava/util/LinkedList;

    move-result-object v1

    if-nez v1, :cond_13

    return v0

    :cond_13
    iget-object v2, p0, Lcom/miui/internal/search/IndexTree;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_16
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/search/IndexTree;

    invoke-virtual {v4, p1, p2, p3}, Lcom/miui/internal/search/IndexTree;->dispatchUpdate(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_1a

    :cond_2c
    monitor-exit v2

    return v0

    :catchall_2e
    move-exception v3

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_16 .. :try_end_30} :catchall_2e

    throw v3
.end method

.method public getParent()Lcom/miui/internal/search/IndexTree;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mParent:Lcom/miui/internal/search/IndexTree;

    return-object v0
.end method

.method public getSons()Ljava/util/LinkedList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "+",
            "Lcom/miui/internal/search/IndexTree;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    return-object v0
.end method

.method protected abstract getUri()Ljava/lang/String;
.end method

.method public hasSons()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public abstract insert(Landroid/content/ContentValues;)Lcom/miui/internal/search/IndexTree;
.end method

.method public final needCommit()Z
    .registers 6

    iget-boolean v0, p0, Lcom/miui/internal/search/IndexTree;->mChanged:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    const/4 v2, 0x0

    if-nez v0, :cond_c

    return v2

    :cond_c
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/search/IndexTree;

    invoke-virtual {v3}, Lcom/miui/internal/search/IndexTree;->needCommit()Z

    move-result v4

    if-eqz v4, :cond_23

    return v1

    :cond_23
    goto :goto_10

    :cond_24
    return v2
.end method

.method public abstract query(Lcom/miui/internal/search/RankedCursor;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public removeSelf()V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/search/IndexTree;->mParent:Lcom/miui/internal/search/IndexTree;

    if-eqz v0, :cond_18

    iget-object v0, v0, Lcom/miui/internal/search/IndexTree;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/miui/internal/search/IndexTree;->mParent:Lcom/miui/internal/search/IndexTree;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/miui/internal/search/IndexTree;->mChanged:Z

    iget-object v1, p0, Lcom/miui/internal/search/IndexTree;->mParent:Lcom/miui/internal/search/IndexTree;

    iget-object v1, v1, Lcom/miui/internal/search/IndexTree;->mSon:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_18

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v1

    :cond_18
    :goto_18
    return-void
.end method

.method protected replaceBy(Lcom/miui/internal/search/IndexTree;)V
    .registers 4

    invoke-virtual {p0}, Lcom/miui/internal/search/IndexTree;->getParent()Lcom/miui/internal/search/IndexTree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/search/IndexTree;->getSons()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z
.end method
