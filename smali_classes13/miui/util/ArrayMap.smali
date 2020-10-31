.class public final Lmiui/util/ArrayMap;
.super Ljava/lang/Object;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArrayMap"

.field static mBaseCache:[Ljava/lang/Object;

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;

.field static mTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mCollections:Lmiui/util/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/MapCollections<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field mHashes:[I

.field mSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmiui/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lmiui/util/ArrayMap;->mHashes:[I

    sget-object v0, Lmiui/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/ArrayMap;->mSize:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_e

    sget-object v0, Lmiui/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lmiui/util/ArrayMap;->mHashes:[I

    sget-object v0, Lmiui/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    goto :goto_11

    :cond_e
    invoke-direct {p0, p1}, Lmiui/util/ArrayMap;->allocArrays(I)V

    :goto_11
    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/ArrayMap;->mSize:I

    return-void
.end method

.method public constructor <init>(Lmiui/util/ArrayMap;)V
    .registers 2

    invoke-direct {p0}, Lmiui/util/ArrayMap;-><init>()V

    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, Lmiui/util/ArrayMap;->putAll(Lmiui/util/ArrayMap;)V

    :cond_8
    return-void
.end method

.method private allocArrays(I)V
    .registers 8

    const-class v0, Lmiui/util/ArrayMap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-ne p1, v4, :cond_2e

    monitor-enter v0

    :try_start_a
    sget-object v4, Lmiui/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_29

    sget-object v4, Lmiui/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    iput-object v4, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v5, v4, v2

    check-cast v5, [Ljava/lang/Object;

    sput-object v5, Lmiui/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    aget-object v5, v4, v3

    check-cast v5, [I

    iput-object v5, p0, Lmiui/util/ArrayMap;->mHashes:[I

    aput-object v1, v4, v3

    aput-object v1, v4, v2

    sget v1, Lmiui/util/ArrayMap;->mTwiceBaseCacheSize:I

    sub-int/2addr v1, v3

    sput v1, Lmiui/util/ArrayMap;->mTwiceBaseCacheSize:I

    monitor-exit v0

    return-void

    :cond_29
    monitor-exit v0

    goto :goto_56

    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_2b

    throw v1

    :cond_2e
    const/4 v4, 0x4

    if-ne p1, v4, :cond_56

    monitor-enter v0

    :try_start_32
    sget-object v4, Lmiui/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_51

    sget-object v4, Lmiui/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    iput-object v4, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v5, v4, v2

    check-cast v5, [Ljava/lang/Object;

    sput-object v5, Lmiui/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    aget-object v5, v4, v3

    check-cast v5, [I

    iput-object v5, p0, Lmiui/util/ArrayMap;->mHashes:[I

    aput-object v1, v4, v3

    aput-object v1, v4, v2

    sget v1, Lmiui/util/ArrayMap;->mBaseCacheSize:I

    sub-int/2addr v1, v3

    sput v1, Lmiui/util/ArrayMap;->mBaseCacheSize:I

    monitor-exit v0

    return-void

    :cond_51
    monitor-exit v0

    goto :goto_56

    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_32 .. :try_end_55} :catchall_53

    throw v1

    :cond_56
    :goto_56
    new-array v0, p1, [I

    iput-object v0, p0, Lmiui/util/ArrayMap;->mHashes:[I

    shl-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    return-void
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .registers 11

    const-class v0, Lmiui/util/ArrayMap;

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x1

    const/16 v7, 0x8

    if-ne v1, v7, :cond_2e

    monitor-enter v0

    :try_start_e
    sget v1, Lmiui/util/ArrayMap;->mTwiceBaseCacheSize:I

    if-ge v1, v5, :cond_29

    sget-object v1, Lmiui/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    aput-object v1, p1, v4

    aput-object p0, p1, v6

    shl-int/lit8 v1, p2, 0x1

    sub-int/2addr v1, v6

    :goto_1b
    if-lt v1, v3, :cond_22

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1b

    :cond_22
    sput-object p1, Lmiui/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    sget v1, Lmiui/util/ArrayMap;->mTwiceBaseCacheSize:I

    add-int/2addr v1, v6

    sput v1, Lmiui/util/ArrayMap;->mTwiceBaseCacheSize:I

    :cond_29
    monitor-exit v0

    goto :goto_53

    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_e .. :try_end_2d} :catchall_2b

    throw v1

    :cond_2e
    array-length v1, p0

    const/4 v7, 0x4

    if-ne v1, v7, :cond_53

    monitor-enter v0

    :try_start_33
    sget v1, Lmiui/util/ArrayMap;->mBaseCacheSize:I

    if-ge v1, v5, :cond_4e

    sget-object v1, Lmiui/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    aput-object v1, p1, v4

    aput-object p0, p1, v6

    shl-int/lit8 v1, p2, 0x1

    sub-int/2addr v1, v6

    :goto_40
    if-lt v1, v3, :cond_47

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_40

    :cond_47
    sput-object p1, Lmiui/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    sget v1, Lmiui/util/ArrayMap;->mBaseCacheSize:I

    add-int/2addr v1, v6

    sput v1, Lmiui/util/ArrayMap;->mBaseCacheSize:I

    :cond_4e
    monitor-exit v0

    goto :goto_53

    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_33 .. :try_end_52} :catchall_50

    throw v1

    :cond_53
    :goto_53
    return-void
.end method

.method private getCollection()Lmiui/util/MapCollections;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/util/MapCollections<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/util/ArrayMap;->mCollections:Lmiui/util/MapCollections;

    if-nez v0, :cond_b

    new-instance v0, Lmiui/util/ArrayMap$1;

    invoke-direct {v0, p0}, Lmiui/util/ArrayMap$1;-><init>(Lmiui/util/ArrayMap;)V

    iput-object v0, p0, Lmiui/util/ArrayMap;->mCollections:Lmiui/util/MapCollections;

    :cond_b
    iget-object v0, p0, Lmiui/util/ArrayMap;->mCollections:Lmiui/util/MapCollections;

    return-object v0
.end method


# virtual methods
.method public append(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iget v0, p0, Lmiui/util/ArrayMap;->mSize:I

    if-nez p1, :cond_6

    const/4 v1, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_a
    iget-object v2, p0, Lmiui/util/ArrayMap;->mHashes:[I

    array-length v3, v2

    if-ge v0, v3, :cond_6c

    if-lez v0, :cond_59

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-le v2, v1, :cond_59

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "here"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New hash "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is before end of array hash "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiui/util/ArrayMap;->mHashes:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ArrayMap"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, p1, p2}, Lmiui/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_59
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lmiui/util/ArrayMap;->mSize:I

    iget-object v2, p0, Lmiui/util/ArrayMap;->mHashes:[I

    aput v1, v2, v0

    shl-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p1, v2, v0

    add-int/lit8 v3, v0, 0x1

    aput-object p2, v2, v3

    return-void

    :cond_6c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Array is full"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public clear()V
    .registers 4

    iget v0, p0, Lmiui/util/ArrayMap;->mSize:I

    if-lez v0, :cond_16

    iget-object v1, p0, Lmiui/util/ArrayMap;->mHashes:[I

    iget-object v2, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lmiui/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    sget-object v0, Lmiui/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lmiui/util/ArrayMap;->mHashes:[I

    sget-object v0, Lmiui/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/ArrayMap;->mSize:I

    :cond_16
    return-void
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lmiui/util/MapCollections;->containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_b

    invoke-virtual {p0}, Lmiui/util/ArrayMap;->indexOfNull()I

    move-result v2

    if-ltz v2, :cond_16

    goto :goto_15

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lmiui/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v2

    if-ltz v2, :cond_16

    :goto_15
    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lmiui/util/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public ensureCapacity(I)V
    .registers 7

    iget-object v0, p0, Lmiui/util/ArrayMap;->mHashes:[I

    array-length v0, v0

    if-ge v0, p1, :cond_24

    iget-object v0, p0, Lmiui/util/ArrayMap;->mHashes:[I

    iget-object v1, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lmiui/util/ArrayMap;->allocArrays(I)V

    iget v2, p0, Lmiui/util/ArrayMap;->mSize:I

    if-lez v2, :cond_1f

    iget-object v3, p0, Lmiui/util/ArrayMap;->mHashes:[I

    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    iget v3, p0, Lmiui/util/ArrayMap;->mSize:I

    shl-int/lit8 v3, v3, 0x1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1f
    iget v2, p0, Lmiui/util/ArrayMap;->mSize:I

    invoke-static {v0, v1, v2}, Lmiui/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    :cond_24
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-direct {p0}, Lmiui/util/ArrayMap;->getCollection()Lmiui/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/util/MapCollections;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_43

    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {p0}, Lmiui/util/ArrayMap;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    if-eq v3, v4, :cond_17

    return v2

    :cond_17
    const/4 v3, 0x0

    :goto_18
    :try_start_18
    iget v4, p0, Lmiui/util/ArrayMap;->mSize:I

    if-ge v3, v4, :cond_3d

    invoke-virtual {p0, v3}, Lmiui/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3}, Lmiui/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_33

    if-nez v6, :cond_32

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3a

    :cond_32
    return v2

    :cond_33
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_37
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_37} :catch_41
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_37} :catch_3f

    if-nez v7, :cond_3a

    return v2

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_3d
    nop

    return v0

    :catch_3f
    move-exception v0

    return v2

    :catch_41
    move-exception v0

    return v2

    :cond_43
    return v2
.end method

.method public erase()V
    .registers 5

    iget v0, p0, Lmiui/util/ArrayMap;->mSize:I

    if-lez v0, :cond_14

    shl-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_11

    const/4 v3, 0x0

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_11
    const/4 v2, 0x0

    iput v2, p0, Lmiui/util/ArrayMap;->mSize:I

    :cond_14
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lmiui/util/ArrayMap;->indexOfNull()I

    move-result v0

    goto :goto_f

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    :goto_f
    if-ltz v0, :cond_1a

    iget-object v1, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return-object v1
.end method

.method public hashCode()I
    .registers 10

    iget-object v0, p0, Lmiui/util/ArrayMap;->mHashes:[I

    iget-object v1, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget v5, p0, Lmiui/util/ArrayMap;->mSize:I

    :goto_9
    if-ge v3, v5, :cond_1e

    aget-object v6, v1, v4

    aget v7, v0, v3

    if-nez v6, :cond_13

    const/4 v8, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v8

    :goto_17
    xor-int/2addr v7, v8

    add-int/2addr v2, v7

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x2

    goto :goto_9

    :cond_1e
    return v2
.end method

.method indexOf(Ljava/lang/Object;I)I
    .registers 9

    iget v0, p0, Lmiui/util/ArrayMap;->mSize:I

    if-nez v0, :cond_6

    const/4 v1, -0x1

    return v1

    :cond_6
    iget-object v1, p0, Lmiui/util/ArrayMap;->mHashes:[I

    invoke-static {v1, v0, p2}, Lmiui/util/ContainerHelpers;->binarySearch([III)I

    move-result v1

    if-gez v1, :cond_f

    return v1

    :cond_f
    iget-object v2, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 v2, v1, 0x1

    :goto_1e
    if-ge v2, v0, :cond_36

    iget-object v3, p0, Lmiui/util/ArrayMap;->mHashes:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_36

    iget-object v3, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    return v2

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_36
    add-int/lit8 v3, v1, -0x1

    :goto_38
    if-ltz v3, :cond_50

    iget-object v4, p0, Lmiui/util/ArrayMap;->mHashes:[I

    aget v4, v4, v3

    if-ne v4, p2, :cond_50

    iget-object v4, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    return v3

    :cond_4d
    add-int/lit8 v3, v3, -0x1

    goto :goto_38

    :cond_50
    not-int v3, v2

    return v3
.end method

.method indexOfNull()I
    .registers 7

    iget v0, p0, Lmiui/util/ArrayMap;->mSize:I

    if-nez v0, :cond_6

    const/4 v1, -0x1

    return v1

    :cond_6
    iget-object v1, p0, Lmiui/util/ArrayMap;->mHashes:[I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lmiui/util/ContainerHelpers;->binarySearch([III)I

    move-result v1

    if-gez v1, :cond_10

    return v1

    :cond_10
    iget-object v2, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    if-nez v2, :cond_19

    return v1

    :cond_19
    add-int/lit8 v2, v1, 0x1

    :goto_1b
    if-ge v2, v0, :cond_2f

    iget-object v3, p0, Lmiui/util/ArrayMap;->mHashes:[I

    aget v3, v3, v2

    if-nez v3, :cond_2f

    iget-object v3, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_2c

    return v2

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2f
    add-int/lit8 v3, v1, -0x1

    :goto_31
    if-ltz v3, :cond_45

    iget-object v4, p0, Lmiui/util/ArrayMap;->mHashes:[I

    aget v4, v4, v3

    if-nez v4, :cond_45

    iget-object v4, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    if-nez v4, :cond_42

    return v3

    :cond_42
    add-int/lit8 v3, v3, -0x1

    goto :goto_31

    :cond_45
    not-int v3, v2

    return v3
.end method

.method indexOfValue(Ljava/lang/Object;)I
    .registers 6

    iget v0, p0, Lmiui/util/ArrayMap;->mSize:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    if-nez p1, :cond_16

    const/4 v2, 0x1

    :goto_9
    if-ge v2, v0, :cond_15

    aget-object v3, v1, v2

    if-nez v3, :cond_12

    shr-int/lit8 v3, v2, 0x1

    return v3

    :cond_12
    add-int/lit8 v2, v2, 0x2

    goto :goto_9

    :cond_15
    goto :goto_27

    :cond_16
    const/4 v2, 0x1

    :goto_17
    if-ge v2, v0, :cond_27

    aget-object v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    shr-int/lit8 v3, v2, 0x1

    return v3

    :cond_24
    add-int/lit8 v2, v2, 0x2

    goto :goto_17

    :cond_27
    :goto_27
    const/4 v2, -0x1

    return v2
.end method

.method public isEmpty()Z
    .registers 2

    iget v0, p0, Lmiui/util/ArrayMap;->mSize:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public keyAt(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    invoke-direct {p0}, Lmiui/util/ArrayMap;->getCollection()Lmiui/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/util/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-nez p1, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0}, Lmiui/util/ArrayMap;->indexOfNull()I

    move-result v1

    goto :goto_10

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    :goto_10
    if-ltz v1, :cond_1d

    shl-int/lit8 v2, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    iget-object v1, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v3, v1, v2

    aput-object p2, v1, v2

    return-object v3

    :cond_1d
    not-int v1, v1

    iget v2, p0, Lmiui/util/ArrayMap;->mSize:I

    iget-object v3, p0, Lmiui/util/ArrayMap;->mHashes:[I

    array-length v3, v3

    if-lt v2, v3, :cond_4e

    const/4 v3, 0x4

    const/16 v4, 0x8

    if-lt v2, v4, :cond_2e

    shr-int/lit8 v3, v2, 0x1

    add-int/2addr v3, v2

    goto :goto_31

    :cond_2e
    if-lt v2, v3, :cond_31

    move v3, v4

    :cond_31
    :goto_31
    move v2, v3

    iget-object v3, p0, Lmiui/util/ArrayMap;->mHashes:[I

    iget-object v4, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, v2}, Lmiui/util/ArrayMap;->allocArrays(I)V

    iget-object v5, p0, Lmiui/util/ArrayMap;->mHashes:[I

    array-length v6, v5

    if-lez v6, :cond_49

    array-length v6, v3

    const/4 v7, 0x0

    invoke-static {v3, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    array-length v6, v4

    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_49
    iget v5, p0, Lmiui/util/ArrayMap;->mSize:I

    invoke-static {v3, v4, v5}, Lmiui/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    :cond_4e
    iget v2, p0, Lmiui/util/ArrayMap;->mSize:I

    if-ge v1, v2, :cond_6a

    iget-object v3, p0, Lmiui/util/ArrayMap;->mHashes:[I

    add-int/lit8 v4, v1, 0x1

    sub-int/2addr v2, v1

    invoke-static {v3, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v1, 0x1

    shl-int/lit8 v4, v4, 0x1

    iget v5, p0, Lmiui/util/ArrayMap;->mSize:I

    sub-int/2addr v5, v1

    shl-int/lit8 v5, v5, 0x1

    invoke-static {v2, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6a
    iget-object v2, p0, Lmiui/util/ArrayMap;->mHashes:[I

    aput v0, v2, v1

    iget-object v2, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aput-object p1, v2, v3

    shl-int/lit8 v3, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    aput-object p2, v2, v3

    iget v2, p0, Lmiui/util/ArrayMap;->mSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmiui/util/ArrayMap;->mSize:I

    const/4 v2, 0x0

    return-object v2
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    iget v0, p0, Lmiui/util/ArrayMap;->mSize:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lmiui/util/ArrayMap;->ensureCapacity(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lmiui/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_2a
    return-void
.end method

.method public putAll(Lmiui/util/ArrayMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/ArrayMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    iget v0, p1, Lmiui/util/ArrayMap;->mSize:I

    iget v1, p0, Lmiui/util/ArrayMap;->mSize:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lmiui/util/ArrayMap;->ensureCapacity(I)V

    iget v1, p0, Lmiui/util/ArrayMap;->mSize:I

    if-nez v1, :cond_22

    if-lez v0, :cond_33

    iget-object v1, p1, Lmiui/util/ArrayMap;->mHashes:[I

    iget-object v2, p0, Lmiui/util/ArrayMap;->mHashes:[I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    iget-object v2, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v0, 0x1

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lmiui/util/ArrayMap;->mSize:I

    goto :goto_33

    :cond_22
    const/4 v1, 0x0

    :goto_23
    if-ge v1, v0, :cond_33

    invoke-virtual {p1, v1}, Lmiui/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, Lmiui/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lmiui/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_33
    :goto_33
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lmiui/util/ArrayMap;->indexOfNull()I

    move-result v0

    goto :goto_f

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    :goto_f
    if-ltz v0, :cond_16

    invoke-virtual {p0, v0}, Lmiui/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_16
    const/4 v1, 0x0

    return-object v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lmiui/util/MapCollections;->removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    aget-object v1, v0, v1

    iget v3, p0, Lmiui/util/ArrayMap;->mSize:I

    const/4 v4, 0x0

    if-gt v3, v2, :cond_1e

    iget-object v2, p0, Lmiui/util/ArrayMap;->mHashes:[I

    invoke-static {v2, v0, v3}, Lmiui/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    sget-object v0, Lmiui/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lmiui/util/ArrayMap;->mHashes:[I

    sget-object v0, Lmiui/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    iput v4, p0, Lmiui/util/ArrayMap;->mSize:I

    goto/16 :goto_91

    :cond_1e
    iget-object v0, p0, Lmiui/util/ArrayMap;->mHashes:[I

    array-length v5, v0

    const/16 v6, 0x8

    if-le v5, v6, :cond_67

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    if-ge v3, v0, :cond_67

    if-le v3, v6, :cond_30

    shr-int/lit8 v0, v3, 0x1

    add-int v6, v3, v0

    :cond_30
    move v0, v6

    iget-object v3, p0, Lmiui/util/ArrayMap;->mHashes:[I

    iget-object v5, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Lmiui/util/ArrayMap;->allocArrays(I)V

    iget v6, p0, Lmiui/util/ArrayMap;->mSize:I

    sub-int/2addr v6, v2

    iput v6, p0, Lmiui/util/ArrayMap;->mSize:I

    if-lez p1, :cond_4b

    iget-object v6, p0, Lmiui/util/ArrayMap;->mHashes:[I

    invoke-static {v3, v4, v6, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, p1, 0x1

    invoke-static {v5, v4, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4b
    iget v4, p0, Lmiui/util/ArrayMap;->mSize:I

    if-ge p1, v4, :cond_66

    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Lmiui/util/ArrayMap;->mHashes:[I

    sub-int/2addr v4, p1

    invoke-static {v3, v6, v7, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, p1, 0x1

    shl-int/2addr v4, v2

    iget-object v6, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, p1, 0x1

    iget v8, p0, Lmiui/util/ArrayMap;->mSize:I

    sub-int/2addr v8, p1

    shl-int/lit8 v2, v8, 0x1

    invoke-static {v5, v4, v6, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_66
    goto :goto_91

    :cond_67
    iget v0, p0, Lmiui/util/ArrayMap;->mSize:I

    sub-int/2addr v0, v2

    iput v0, p0, Lmiui/util/ArrayMap;->mSize:I

    if-ge p1, v0, :cond_84

    iget-object v3, p0, Lmiui/util/ArrayMap;->mHashes:[I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v3, v4, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    shl-int/2addr v3, v2

    shl-int/lit8 v4, p1, 0x1

    iget v5, p0, Lmiui/util/ArrayMap;->mSize:I

    sub-int/2addr v5, p1

    shl-int/2addr v5, v2

    invoke-static {v0, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_84
    iget-object v0, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    iget v3, p0, Lmiui/util/ArrayMap;->mSize:I

    shl-int/lit8 v4, v3, 0x1

    const/4 v5, 0x0

    aput-object v5, v0, v4

    shl-int/2addr v3, v2

    add-int/2addr v3, v2

    aput-object v5, v0, v3

    :goto_91
    return-object v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lmiui/util/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    iget-object p1, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v1, p1, v0

    aput-object p2, p1, v0

    return-object v1
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lmiui/util/ArrayMap;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lmiui/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "{}"

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/util/ArrayMap;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_18
    iget v2, p0, Lmiui/util/ArrayMap;->mSize:I

    if-ge v1, v2, :cond_47

    if-lez v1, :cond_23

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    invoke-virtual {p0, v1}, Lmiui/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "(this Map)"

    if-eq v2, p0, :cond_2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_2f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_32
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lmiui/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p0, :cond_41

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_44

    :cond_41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_47
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    invoke-direct {p0}, Lmiui/util/ArrayMap;->getCollection()Lmiui/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/util/MapCollections;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
