.class public final Landroid/os/statistics/FilteringPerfEventCache;
.super Ljava/lang/Object;
.source "FilteringPerfEventCache.java"


# static fields
.field private static curSize:I

.field private static final head:Landroid/os/statistics/FilteringPerfEventListNode;

.field private static final lock:Ljava/lang/Object;

.field private static maxSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    sput v0, Landroid/os/statistics/FilteringPerfEventCache;->maxSize:I

    new-instance v1, Landroid/os/statistics/FilteringPerfEventListNode;

    invoke-direct {v1}, Landroid/os/statistics/FilteringPerfEventListNode;-><init>()V

    sput-object v1, Landroid/os/statistics/FilteringPerfEventCache;->head:Landroid/os/statistics/FilteringPerfEventListNode;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    sput v0, Landroid/os/statistics/FilteringPerfEventCache;->curSize:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/statistics/FilteringPerfEventCache;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compact()V
    .registers 6

    sget-object v0, Landroid/os/statistics/FilteringPerfEventCache;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget v1, Landroid/os/statistics/FilteringPerfEventCache;->curSize:I

    sget v2, Landroid/os/statistics/FilteringPerfEventCache;->maxSize:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_1e

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1a

    sget-object v3, Landroid/os/statistics/FilteringPerfEventCache;->head:Landroid/os/statistics/FilteringPerfEventListNode;

    iget-object v3, v3, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    sget-object v4, Landroid/os/statistics/FilteringPerfEventCache;->head:Landroid/os/statistics/FilteringPerfEventListNode;

    iget-object v5, v3, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    iput-object v5, v4, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1a
    sget v2, Landroid/os/statistics/FilteringPerfEventCache;->maxSize:I

    sput v2, Landroid/os/statistics/FilteringPerfEventCache;->curSize:I

    :cond_1e
    monitor-exit v0

    return-void

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public static obtain()Landroid/os/statistics/FilteringPerfEvent;
    .registers 4

    sget-object v0, Landroid/os/statistics/FilteringPerfEventCache;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget v1, Landroid/os/statistics/FilteringPerfEventCache;->curSize:I

    if-lez v1, :cond_1b

    sget-object v1, Landroid/os/statistics/FilteringPerfEventCache;->head:Landroid/os/statistics/FilteringPerfEventListNode;

    iget-object v1, v1, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    sget-object v2, Landroid/os/statistics/FilteringPerfEventCache;->head:Landroid/os/statistics/FilteringPerfEventListNode;

    iget-object v3, v1, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    iput-object v3, v2, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    sget v2, Landroid/os/statistics/FilteringPerfEventCache;->curSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/os/statistics/FilteringPerfEventCache;->curSize:I

    iget-object v2, v1, Landroid/os/statistics/FilteringPerfEventListNode;->value:Landroid/os/statistics/FilteringPerfEvent;

    monitor-exit v0

    return-object v2

    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_22

    new-instance v0, Landroid/os/statistics/FilteringPerfEvent;

    invoke-direct {v0}, Landroid/os/statistics/FilteringPerfEvent;-><init>()V

    return-object v0

    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public static recycle(Landroid/os/statistics/FilteringPerfEvent;)V
    .registers 4

    invoke-virtual {p0}, Landroid/os/statistics/FilteringPerfEvent;->dispose()V

    sget-object v0, Landroid/os/statistics/FilteringPerfEventCache;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    sget v1, Landroid/os/statistics/FilteringPerfEventCache;->curSize:I

    sget v2, Landroid/os/statistics/FilteringPerfEventCache;->maxSize:I

    if-ge v1, v2, :cond_1c

    sget v1, Landroid/os/statistics/FilteringPerfEventCache;->curSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/os/statistics/FilteringPerfEventCache;->curSize:I

    sget-object v1, Landroid/os/statistics/FilteringPerfEventCache;->head:Landroid/os/statistics/FilteringPerfEventListNode;

    iget-object v1, v1, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    iput-object v1, p0, Landroid/os/statistics/FilteringPerfEvent;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    sget-object v1, Landroid/os/statistics/FilteringPerfEventCache;->head:Landroid/os/statistics/FilteringPerfEventListNode;

    iput-object p0, v1, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    :cond_1c
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public static recycleAllUnchecked(Landroid/os/statistics/FilteringPerfEventList;)V
    .registers 8

    iget v0, p0, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Landroid/os/statistics/FilteringPerfEventList;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    :goto_7
    if-eq v1, p0, :cond_11

    iget-object v2, v1, Landroid/os/statistics/FilteringPerfEventListNode;->value:Landroid/os/statistics/FilteringPerfEvent;

    invoke-virtual {v2}, Landroid/os/statistics/FilteringPerfEvent;->dispose()V

    iget-object v1, v1, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    goto :goto_7

    :cond_11
    iget-object v2, p0, Landroid/os/statistics/FilteringPerfEventList;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    iget-object v3, p0, Landroid/os/statistics/FilteringPerfEventList;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    invoke-virtual {p0}, Landroid/os/statistics/FilteringPerfEventList;->detachElements()V

    sget-object v4, Landroid/os/statistics/FilteringPerfEventCache;->lock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1b
    sget v5, Landroid/os/statistics/FilteringPerfEventCache;->curSize:I

    add-int/2addr v5, v0

    sput v5, Landroid/os/statistics/FilteringPerfEventCache;->curSize:I

    sget-object v5, Landroid/os/statistics/FilteringPerfEventCache;->head:Landroid/os/statistics/FilteringPerfEventListNode;

    iget-object v5, v5, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    sget-object v6, Landroid/os/statistics/FilteringPerfEventCache;->head:Landroid/os/statistics/FilteringPerfEventListNode;

    iput-object v2, v6, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    iput-object v5, v3, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    monitor-exit v4

    return-void

    :catchall_2c
    move-exception v5

    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_1b .. :try_end_2e} :catchall_2c

    throw v5
.end method

.method public static recycleUnchecked(Landroid/os/statistics/FilteringPerfEvent;)V
    .registers 3

    invoke-virtual {p0}, Landroid/os/statistics/FilteringPerfEvent;->dispose()V

    sget-object v0, Landroid/os/statistics/FilteringPerfEventCache;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    sget v1, Landroid/os/statistics/FilteringPerfEventCache;->curSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/os/statistics/FilteringPerfEventCache;->curSize:I

    sget-object v1, Landroid/os/statistics/FilteringPerfEventCache;->head:Landroid/os/statistics/FilteringPerfEventListNode;

    iget-object v1, v1, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    iput-object v1, p0, Landroid/os/statistics/FilteringPerfEvent;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    sget-object v1, Landroid/os/statistics/FilteringPerfEventCache;->head:Landroid/os/statistics/FilteringPerfEventListNode;

    iput-object p0, v1, Landroid/os/statistics/FilteringPerfEventListNode;->next:Landroid/os/statistics/FilteringPerfEventListNode;

    monitor-exit v0

    return-void

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public static setCapacity(I)V
    .registers 1

    sput p0, Landroid/os/statistics/FilteringPerfEventCache;->maxSize:I

    return-void
.end method
