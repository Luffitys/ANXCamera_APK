.class public final Lmiui/util/ArraySet;
.super Ljava/lang/Object;
.source "ArraySet.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArraySet"

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
            "TE;TE;>;"
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

    iput-object v0, p0, Lmiui/util/ArraySet;->mHashes:[I

    sget-object v0, Lmiui/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/ArraySet;->mSize:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_e

    sget-object v0, Lmiui/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lmiui/util/ArraySet;->mHashes:[I

    sget-object v0, Lmiui/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    goto :goto_11

    :cond_e
    invoke-direct {p0, p1}, Lmiui/util/ArraySet;->allocArrays(I)V

    :goto_11
    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/ArraySet;->mSize:I

    return-void
.end method

.method public constructor <init>(Lmiui/util/ArraySet;)V
    .registers 2

    invoke-direct {p0}, Lmiui/util/ArraySet;-><init>()V

    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, Lmiui/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_8
    return-void
.end method

.method static synthetic access$000(Lmiui/util/ArraySet;)I
    .registers 2

    invoke-direct {p0}, Lmiui/util/ArraySet;->indexOfNull()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lmiui/util/ArraySet;Ljava/lang/Object;I)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiui/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method private allocArrays(I)V
    .registers 8

    const-class v0, Lmiui/util/ArraySet;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-ne p1, v4, :cond_2e

    monitor-enter v0

    :try_start_a
    sget-object v4, Lmiui/util/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_29

    sget-object v4, Lmiui/util/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    iput-object v4, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v5, v4, v2

    check-cast v5, [Ljava/lang/Object;

    sput-object v5, Lmiui/util/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    aget-object v5, v4, v3

    check-cast v5, [I

    iput-object v5, p0, Lmiui/util/ArraySet;->mHashes:[I

    aput-object v1, v4, v3

    aput-object v1, v4, v2

    sget v1, Lmiui/util/ArraySet;->mTwiceBaseCacheSize:I

    sub-int/2addr v1, v3

    sput v1, Lmiui/util/ArraySet;->mTwiceBaseCacheSize:I

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
    sget-object v4, Lmiui/util/ArraySet;->mBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_51

    sget-object v4, Lmiui/util/ArraySet;->mBaseCache:[Ljava/lang/Object;

    iput-object v4, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v5, v4, v2

    check-cast v5, [Ljava/lang/Object;

    sput-object v5, Lmiui/util/ArraySet;->mBaseCache:[Ljava/lang/Object;

    aget-object v5, v4, v3

    check-cast v5, [I

    iput-object v5, p0, Lmiui/util/ArraySet;->mHashes:[I

    aput-object v1, v4, v3

    aput-object v1, v4, v2

    sget v1, Lmiui/util/ArraySet;->mBaseCacheSize:I

    sub-int/2addr v1, v3

    sput v1, Lmiui/util/ArraySet;->mBaseCacheSize:I

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

    iput-object v0, p0, Lmiui/util/ArraySet;->mHashes:[I

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    return-void
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .registers 11

    const-class v0, Lmiui/util/ArraySet;

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x1

    const/16 v7, 0x8

    if-ne v1, v7, :cond_2d

    monitor-enter v0

    :try_start_e
    sget v1, Lmiui/util/ArraySet;->mTwiceBaseCacheSize:I

    if-ge v1, v5, :cond_28

    sget-object v1, Lmiui/util/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    aput-object v1, p1, v4

    aput-object p0, p1, v6

    add-int/lit8 v1, p2, -0x1

    :goto_1a
    if-lt v1, v3, :cond_21

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    :cond_21
    sput-object p1, Lmiui/util/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    sget v1, Lmiui/util/ArraySet;->mTwiceBaseCacheSize:I

    add-int/2addr v1, v6

    sput v1, Lmiui/util/ArraySet;->mTwiceBaseCacheSize:I

    :cond_28
    monitor-exit v0

    goto :goto_51

    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_e .. :try_end_2c} :catchall_2a

    throw v1

    :cond_2d
    array-length v1, p0

    const/4 v7, 0x4

    if-ne v1, v7, :cond_51

    monitor-enter v0

    :try_start_32
    sget v1, Lmiui/util/ArraySet;->mBaseCacheSize:I

    if-ge v1, v5, :cond_4c

    sget-object v1, Lmiui/util/ArraySet;->mBaseCache:[Ljava/lang/Object;

    aput-object v1, p1, v4

    aput-object p0, p1, v6

    add-int/lit8 v1, p2, -0x1

    :goto_3e
    if-lt v1, v3, :cond_45

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_3e

    :cond_45
    sput-object p1, Lmiui/util/ArraySet;->mBaseCache:[Ljava/lang/Object;

    sget v1, Lmiui/util/ArraySet;->mBaseCacheSize:I

    add-int/2addr v1, v6

    sput v1, Lmiui/util/ArraySet;->mBaseCacheSize:I

    :cond_4c
    monitor-exit v0

    goto :goto_51

    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_32 .. :try_end_50} :catchall_4e

    throw v1

    :cond_51
    :goto_51
    return-void
.end method

.method private getCollection()Lmiui/util/MapCollections;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/util/MapCollections<",
            "TE;TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/util/ArraySet;->mCollections:Lmiui/util/MapCollections;

    if-nez v0, :cond_b

    new-instance v0, Lmiui/util/ArraySet$1;

    invoke-direct {v0, p0}, Lmiui/util/ArraySet$1;-><init>(Lmiui/util/ArraySet;)V

    iput-object v0, p0, Lmiui/util/ArraySet;->mCollections:Lmiui/util/MapCollections;

    :cond_b
    iget-object v0, p0, Lmiui/util/ArraySet;->mCollections:Lmiui/util/MapCollections;

    return-object v0
.end method

.method private indexOf(Ljava/lang/Object;I)I
    .registers 8

    iget v0, p0, Lmiui/util/ArraySet;->mSize:I

    if-nez v0, :cond_6

    const/4 v1, -0x1

    return v1

    :cond_6
    iget-object v1, p0, Lmiui/util/ArraySet;->mHashes:[I

    invoke-static {v1, v0, p2}, Lmiui/util/ContainerHelpers;->binarySearch([III)I

    move-result v1

    if-gez v1, :cond_f

    return v1

    :cond_f
    iget-object v2, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    return v1

    :cond_1a
    add-int/lit8 v2, v1, 0x1

    :goto_1c
    if-ge v2, v0, :cond_32

    iget-object v3, p0, Lmiui/util/ArraySet;->mHashes:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_32

    iget-object v3, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    return v2

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_32
    add-int/lit8 v3, v1, -0x1

    :goto_34
    if-ltz v3, :cond_4a

    iget-object v4, p0, Lmiui/util/ArraySet;->mHashes:[I

    aget v4, v4, v3

    if-ne v4, p2, :cond_4a

    iget-object v4, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    return v3

    :cond_47
    add-int/lit8 v3, v3, -0x1

    goto :goto_34

    :cond_4a
    not-int v3, v2

    return v3
.end method

.method private indexOfNull()I
    .registers 6

    iget v0, p0, Lmiui/util/ArraySet;->mSize:I

    if-nez v0, :cond_6

    const/4 v1, -0x1

    return v1

    :cond_6
    iget-object v1, p0, Lmiui/util/ArraySet;->mHashes:[I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lmiui/util/ContainerHelpers;->binarySearch([III)I

    move-result v1

    if-gez v1, :cond_10

    return v1

    :cond_10
    iget-object v2, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-nez v2, :cond_17

    return v1

    :cond_17
    add-int/lit8 v2, v1, 0x1

    :goto_19
    if-ge v2, v0, :cond_2b

    iget-object v3, p0, Lmiui/util/ArraySet;->mHashes:[I

    aget v3, v3, v2

    if-nez v3, :cond_2b

    iget-object v3, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-nez v3, :cond_28

    return v2

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_2b
    add-int/lit8 v3, v1, -0x1

    :goto_2d
    if-ltz v3, :cond_3f

    iget-object v4, p0, Lmiui/util/ArraySet;->mHashes:[I

    aget v4, v4, v3

    if-nez v4, :cond_3f

    iget-object v4, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-nez v4, :cond_3c

    return v3

    :cond_3c
    add-int/lit8 v3, v3, -0x1

    goto :goto_2d

    :cond_3f
    not-int v3, v2

    return v3
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    if-nez p1, :cond_8

    const/4 v0, 0x0

    invoke-direct {p0}, Lmiui/util/ArraySet;->indexOfNull()I

    move-result v1

    goto :goto_10

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lmiui/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    :goto_10
    const/4 v2, 0x0

    if-ltz v1, :cond_14

    return v2

    :cond_14
    not-int v1, v1

    iget v3, p0, Lmiui/util/ArraySet;->mSize:I

    iget-object v4, p0, Lmiui/util/ArraySet;->mHashes:[I

    array-length v4, v4

    if-lt v3, v4, :cond_44

    const/4 v4, 0x4

    const/16 v5, 0x8

    if-lt v3, v5, :cond_25

    shr-int/lit8 v4, v3, 0x1

    add-int/2addr v4, v3

    goto :goto_28

    :cond_25
    if-lt v3, v4, :cond_28

    move v4, v5

    :cond_28
    :goto_28
    move v3, v4

    iget-object v4, p0, Lmiui/util/ArraySet;->mHashes:[I

    iget-object v5, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, v3}, Lmiui/util/ArraySet;->allocArrays(I)V

    iget-object v6, p0, Lmiui/util/ArraySet;->mHashes:[I

    array-length v7, v6

    if-lez v7, :cond_3f

    array-length v7, v4

    invoke-static {v4, v2, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    array-length v7, v5

    invoke-static {v5, v2, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3f
    iget v2, p0, Lmiui/util/ArraySet;->mSize:I

    invoke-static {v4, v5, v2}, Lmiui/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    :cond_44
    iget v2, p0, Lmiui/util/ArraySet;->mSize:I

    if-ge v1, v2, :cond_5a

    iget-object v3, p0, Lmiui/util/ArraySet;->mHashes:[I

    add-int/lit8 v4, v1, 0x1

    sub-int/2addr v2, v1

    invoke-static {v3, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    iget v4, p0, Lmiui/util/ArraySet;->mSize:I

    sub-int/2addr v4, v1

    invoke-static {v2, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5a
    iget-object v2, p0, Lmiui/util/ArraySet;->mHashes:[I

    aput v0, v2, v1

    iget-object v2, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    aput-object p1, v2, v1

    iget v2, p0, Lmiui/util/ArraySet;->mSize:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lmiui/util/ArraySet;->mSize:I

    return v3
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    iget v0, p0, Lmiui/util/ArraySet;->mSize:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lmiui/util/ArraySet;->ensureCapacity(I)V

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_f

    :cond_1f
    return v0
.end method

.method public clear()V
    .registers 4

    iget v0, p0, Lmiui/util/ArraySet;->mSize:I

    if-eqz v0, :cond_16

    iget-object v1, p0, Lmiui/util/ArraySet;->mHashes:[I

    iget-object v2, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lmiui/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    sget-object v0, Lmiui/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lmiui/util/ArraySet;->mHashes:[I

    sget-object v0, Lmiui/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lmiui/util/ArraySet;->mSize:I

    :cond_16
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_b

    invoke-direct {p0}, Lmiui/util/ArraySet;->indexOfNull()I

    move-result v2

    if-ltz v2, :cond_16

    goto :goto_15

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lmiui/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v2

    if-ltz v2, :cond_16

    :goto_15
    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    return v1

    :cond_16
    const/4 v1, 0x1

    return v1
.end method

.method public ensureCapacity(I)V
    .registers 7

    iget-object v0, p0, Lmiui/util/ArraySet;->mHashes:[I

    array-length v0, v0

    if-ge v0, p1, :cond_22

    iget-object v0, p0, Lmiui/util/ArraySet;->mHashes:[I

    iget-object v1, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lmiui/util/ArraySet;->allocArrays(I)V

    iget v2, p0, Lmiui/util/ArraySet;->mSize:I

    if-lez v2, :cond_1d

    iget-object v3, p0, Lmiui/util/ArraySet;->mHashes:[I

    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v3, p0, Lmiui/util/ArraySet;->mSize:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1d
    iget v2, p0, Lmiui/util/ArraySet;->mSize:I

    invoke-static {v0, v1, v2}, Lmiui/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    :cond_22
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_30

    move-object v1, p1

    check-cast v1, Ljava/util/Set;

    invoke-virtual {p0}, Lmiui/util/ArraySet;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    if-eq v3, v4, :cond_17

    return v2

    :cond_17
    const/4 v3, 0x0

    :goto_18
    :try_start_18
    iget v4, p0, Lmiui/util/ArraySet;->mSize:I

    if-ge v3, v4, :cond_2a

    invoke-virtual {p0, v3}, Lmiui/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_24
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_24} :catch_2e
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_24} :catch_2c

    if-nez v5, :cond_27

    return v2

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_2a
    nop

    return v0

    :catch_2c
    move-exception v0

    return v2

    :catch_2e
    move-exception v0

    return v2

    :cond_30
    return v2
.end method

.method public hashCode()I
    .registers 6

    iget-object v0, p0, Lmiui/util/ArraySet;->mHashes:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lmiui/util/ArraySet;->mSize:I

    :goto_6
    if-ge v2, v3, :cond_e

    aget v4, v0, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_e
    return v1
.end method

.method public isEmpty()Z
    .registers 2

    iget v0, p0, Lmiui/util/ArraySet;->mSize:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    invoke-direct {p0}, Lmiui/util/ArraySet;->getCollection()Lmiui/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/util/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Lmiui/util/ArraySet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/ArraySet<",
            "+TE;>;)V"
        }
    .end annotation

    iget v0, p1, Lmiui/util/ArraySet;->mSize:I

    iget v1, p0, Lmiui/util/ArraySet;->mSize:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lmiui/util/ArraySet;->ensureCapacity(I)V

    iget v1, p0, Lmiui/util/ArraySet;->mSize:I

    if-nez v1, :cond_20

    if-lez v0, :cond_2d

    iget-object v1, p1, Lmiui/util/ArraySet;->mHashes:[I

    iget-object v2, p0, Lmiui/util/ArraySet;->mHashes:[I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v2, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lmiui/util/ArraySet;->mSize:I

    goto :goto_2d

    :cond_20
    const/4 v1, 0x0

    :goto_21
    if-ge v1, v0, :cond_2d

    invoke-virtual {p1, v1}, Lmiui/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_2d
    :goto_2d
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    if-nez p1, :cond_7

    invoke-direct {p0}, Lmiui/util/ArraySet;->indexOfNull()I

    move-result v0

    goto :goto_f

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lmiui/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    :goto_f
    if-ltz v0, :cond_16

    invoke-virtual {p0, v0}, Lmiui/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    const/4 v1, 0x1

    return v1

    :cond_16
    const/4 v1, 0x0

    return v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmiui/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_5

    :cond_15
    return v0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v1, v0, p1

    iget v2, p0, Lmiui/util/ArraySet;->mSize:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v2, v4, :cond_1a

    iget-object v4, p0, Lmiui/util/ArraySet;->mHashes:[I

    invoke-static {v4, v0, v2}, Lmiui/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    sget-object v0, Lmiui/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Lmiui/util/ArraySet;->mHashes:[I

    sget-object v0, Lmiui/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    iput v3, p0, Lmiui/util/ArraySet;->mSize:I

    goto :goto_7c

    :cond_1a
    iget-object v0, p0, Lmiui/util/ArraySet;->mHashes:[I

    array-length v5, v0

    const/16 v6, 0x8

    if-le v5, v6, :cond_5c

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    if-ge v2, v0, :cond_5c

    if-le v2, v6, :cond_2c

    shr-int/lit8 v0, v2, 0x1

    add-int v6, v2, v0

    :cond_2c
    move v0, v6

    iget-object v2, p0, Lmiui/util/ArraySet;->mHashes:[I

    iget-object v5, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Lmiui/util/ArraySet;->allocArrays(I)V

    iget v6, p0, Lmiui/util/ArraySet;->mSize:I

    sub-int/2addr v6, v4

    iput v6, p0, Lmiui/util/ArraySet;->mSize:I

    if-lez p1, :cond_45

    iget-object v4, p0, Lmiui/util/ArraySet;->mHashes:[I

    invoke-static {v2, v3, v4, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v5, v3, v4, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_45
    iget v3, p0, Lmiui/util/ArraySet;->mSize:I

    if-ge p1, v3, :cond_5b

    add-int/lit8 v4, p1, 0x1

    iget-object v6, p0, Lmiui/util/ArraySet;->mHashes:[I

    sub-int/2addr v3, p1

    invoke-static {v2, v4, v6, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v6, p0, Lmiui/util/ArraySet;->mSize:I

    sub-int/2addr v6, p1

    invoke-static {v5, v3, v4, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5b
    goto :goto_7c

    :cond_5c
    iget v0, p0, Lmiui/util/ArraySet;->mSize:I

    sub-int/2addr v0, v4

    iput v0, p0, Lmiui/util/ArraySet;->mSize:I

    if-ge p1, v0, :cond_75

    iget-object v2, p0, Lmiui/util/ArraySet;->mHashes:[I

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v2, v3, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lmiui/util/ArraySet;->mSize:I

    sub-int/2addr v3, p1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_75
    iget-object v0, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Lmiui/util/ArraySet;->mSize:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    :goto_7c
    return-object v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lmiui/util/ArraySet;->mSize:I

    add-int/lit8 v1, v1, -0x1

    :goto_5
    if-ltz v1, :cond_18

    iget-object v2, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {p0, v1}, Lmiui/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_15
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_18
    return v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lmiui/util/ArraySet;->mSize:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 5

    iget v0, p0, Lmiui/util/ArraySet;->mSize:I

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    array-length v0, p1

    iget v1, p0, Lmiui/util/ArraySet;->mSize:I

    if-ge v0, v1, :cond_17

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Lmiui/util/ArraySet;->mSize:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    :cond_17
    iget-object v0, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v1, p0, Lmiui/util/ArraySet;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    iget v1, p0, Lmiui/util/ArraySet;->mSize:I

    if-le v0, v1, :cond_27

    const/4 v0, 0x0

    aput-object v0, p1, v1

    :cond_27
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lmiui/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "{}"

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/util/ArraySet;->mSize:I

    mul-int/lit8 v1, v1, 0xe

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_18
    iget v2, p0, Lmiui/util/ArraySet;->mSize:I

    if-ge v1, v2, :cond_35

    if-lez v1, :cond_23

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    invoke-virtual {p0, v1}, Lmiui/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_2d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_2d
    const-string v3, "(this Set)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_35
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
