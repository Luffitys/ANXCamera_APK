.class Lmiui/maml/data/Variables$DoubleBucket;
.super Lmiui/maml/data/Variables$BaseVarBucket;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Variables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DoubleBucket"
.end annotation


# instance fields
.field private mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/maml/data/Variables$DoubleInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/maml/data/Variables$BaseVarBucket;-><init>(Lmiui/maml/data/Variables$1;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/data/Variables$1;)V
    .registers 2

    invoke-direct {p0}, Lmiui/maml/data/Variables$DoubleBucket;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized exists(I)Z
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    if-gez p1, :cond_5

    :cond_4
    goto :goto_e

    :cond_5
    :try_start_5
    iget-object v1, p0, Lmiui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_7} :catch_15
    .catchall {:try_start_5 .. :try_end_7} :catchall_12

    :try_start_7
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_b} :catch_10
    .catchall {:try_start_7 .. :try_end_b} :catchall_12

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    :goto_e
    monitor-exit p0

    return v0

    :catch_10
    move-exception v1

    goto :goto_16

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_15
    move-exception v1

    :goto_16
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized get(I)D
    .registers 5

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_3
    iget-object v2, p0, Lmiui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_5} :catch_17
    .catchall {:try_start_3 .. :try_end_5} :catchall_14

    :try_start_5
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/Variables$DoubleInfo;

    if-nez v2, :cond_e

    goto :goto_10

    :cond_e
    iget-wide v0, v2, Lmiui/maml/data/Variables$DoubleInfo;->mValue:D
    :try_end_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_10} :catch_12
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    :goto_10
    monitor-exit p0

    return-wide v0

    :catch_12
    move-exception v2

    goto :goto_18

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_17
    move-exception v2

    :goto_18
    monitor-exit p0

    return-wide v0
.end method

.method public declared-synchronized getVer(I)I
    .registers 4

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_2
    iget-object v1, p0, Lmiui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_4} :catch_16
    .catchall {:try_start_2 .. :try_end_4} :catchall_13

    :try_start_4
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/Variables$DoubleInfo;

    if-nez v1, :cond_d

    goto :goto_f

    :cond_d
    iget v0, v1, Lmiui/maml/data/Variables$DoubleInfo;->mVersion:I
    :try_end_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_f} :catch_11
    .catchall {:try_start_4 .. :try_end_f} :catchall_13

    :goto_f
    monitor-exit p0

    return v0

    :catch_11
    move-exception v1

    goto :goto_17

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_16
    move-exception v1

    :goto_17
    monitor-exit p0

    return v0
.end method

.method protected onAddItem(I)V
    .registers 4

    :goto_0
    iget-object v0, p0, Lmiui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_f

    iget-object v0, p0, Lmiui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_f
    return-void
.end method

.method public final declared-synchronized put(ID)V
    .registers 7

    monitor-enter p0

    if-gez p1, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lmiui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_7} :catch_25
    .catchall {:try_start_5 .. :try_end_7} :catchall_22

    :try_start_7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/Variables$DoubleInfo;

    if-nez v0, :cond_1c

    new-instance v1, Lmiui/maml/data/Variables$DoubleInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p3, v2}, Lmiui/maml/data/Variables$DoubleInfo;-><init>(DI)V

    move-object v0, v1

    iget-object v1, p0, Lmiui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :cond_1c
    invoke-virtual {v0, p2, p3}, Lmiui/maml/data/Variables$DoubleInfo;->setValue(D)V
    :try_end_1f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_1f} :catch_20
    .catchall {:try_start_7 .. :try_end_1f} :catchall_22

    :goto_1f
    goto :goto_26

    :catch_20
    move-exception v0

    goto :goto_26

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_25
    move-exception v0

    :goto_26
    monitor-exit p0

    return-void
.end method

.method public reset()V
    .registers 6

    iget-object v0, p0, Lmiui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1b

    iget-object v2, p0, Lmiui/maml/data/Variables$DoubleBucket;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/Variables$DoubleInfo;

    if-eqz v2, :cond_18

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lmiui/maml/data/Variables$DoubleInfo;->setValue(D)V

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1b
    return-void
.end method
