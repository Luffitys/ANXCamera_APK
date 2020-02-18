.class Lmiui/util/Pools$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/util/Pools$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmiui/util/Pools$b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private volatile mElements:[Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ref/SoftReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile mIndex:I

.field private volatile mSize:I

.field private final oS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmiui/util/Pools$d;->oS:Ljava/lang/Class;

    .line 3
    iput p2, p0, Lmiui/util/Pools$d;->mSize:I

    .line 4
    new-array p1, p2, [Ljava/lang/ref/SoftReference;

    .line 5
    iput-object p1, p0, Lmiui/util/Pools$d;->mElements:[Ljava/lang/ref/SoftReference;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lmiui/util/Pools$d;->mIndex:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lmiui/util/Pools$d;->oS:Ljava/lang/Class;

    return-object p0
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget v0, p0, Lmiui/util/Pools$d;->mIndex:I

    .line 2
    iget-object v1, p0, Lmiui/util/Pools$d;->mElements:[Ljava/lang/ref/SoftReference;

    :cond_5
    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    add-int/lit8 v0, v0, -0x1

    .line 3
    aget-object v3, v1, v0

    if-eqz v3, :cond_5

    .line 4
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    .line 5
    aput-object v2, v1, v0

    if-eqz v3, :cond_5

    .line 6
    iput v0, p0, Lmiui/util/Pools$d;->mIndex:I
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1e

    .line 7
    monitor-exit p0

    return-object v3

    .line 8
    :cond_1c
    monitor-exit p0

    return-object v2

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSize()I
    .registers 1

    .line 1
    iget p0, p0, Lmiui/util/Pools$d;->mSize:I

    return p0
.end method

.method public declared-synchronized put(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget v0, p0, Lmiui/util/Pools$d;->mIndex:I

    .line 2
    iget-object v1, p0, Lmiui/util/Pools$d;->mElements:[Ljava/lang/ref/SoftReference;

    .line 3
    iget v2, p0, Lmiui/util/Pools$d;->mSize:I

    const/4 v3, 0x1

    if-lt v0, v2, :cond_29

    const/4 v2, 0x0

    move v4, v2

    :goto_c
    if-ge v4, v0, :cond_27

    .line 4
    aget-object v5, v1, v4

    if-eqz v5, :cond_1e

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1b

    goto :goto_1e

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 5
    :cond_1e
    :goto_1e
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v0, v1, v4
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_35

    .line 6
    monitor-exit p0

    return v3

    .line 7
    :cond_27
    monitor-exit p0

    return v2

    .line 8
    :cond_29
    :try_start_29
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v2, v1, v0

    add-int/2addr v0, v3

    .line 9
    iput v0, p0, Lmiui/util/Pools$d;->mIndex:I
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_35

    .line 10
    monitor-exit p0

    return v3

    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resize(I)V
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    iget v0, p0, Lmiui/util/Pools$d;->mSize:I

    add-int/2addr p1, v0

    if-gtz p1, :cond_1c

    .line 2
    invoke-static {}, Lmiui/util/Pools;->p()Ljava/util/HashMap;

    move-result-object p1

    monitor-enter p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_2f

    .line 3
    :try_start_b
    invoke-static {}, Lmiui/util/Pools;->p()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/util/Pools$d;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    monitor-exit p1
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_19

    .line 5
    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    .line 6
    :try_start_1a
    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    :try_start_1b
    throw v0

    .line 7
    :cond_1c
    iput p1, p0, Lmiui/util/Pools$d;->mSize:I

    .line 8
    iget-object v0, p0, Lmiui/util/Pools$d;->mElements:[Ljava/lang/ref/SoftReference;

    .line 9
    iget v1, p0, Lmiui/util/Pools$d;->mIndex:I

    .line 10
    array-length v2, v0

    if-le p1, v2, :cond_2d

    .line 11
    new-array p1, p1, [Ljava/lang/ref/SoftReference;

    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iput-object p1, p0, Lmiui/util/Pools$d;->mElements:[Ljava/lang/ref/SoftReference;
    :try_end_2d
    .catchall {:try_start_1b .. :try_end_2d} :catchall_2f

    .line 14
    :cond_2d
    monitor-exit p0

    return-void

    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method
