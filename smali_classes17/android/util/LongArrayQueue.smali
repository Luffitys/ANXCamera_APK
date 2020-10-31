.class public Landroid/util/LongArrayQueue;
.super Ljava/lang/Object;
.source "LongArrayQueue.java"


# instance fields
.field private mHead:I

.field private mSize:I

.field private mTail:I

.field private mValues:[J


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/util/LongArrayQueue;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_a

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/util/LongArrayQueue;->mValues:[J

    goto :goto_10

    :cond_a
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v0

    iput-object v0, p0, Landroid/util/LongArrayQueue;->mValues:[J

    :goto_10
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    iput v0, p0, Landroid/util/LongArrayQueue;->mTail:I

    iput v0, p0, Landroid/util/LongArrayQueue;->mHead:I

    return-void
.end method

.method private grow()V
    .registers 7

    iget v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    iget-object v1, p0, Landroid/util/LongArrayQueue;->mValues:[J

    array-length v1, v1

    if-lt v0, v1, :cond_29

    invoke-static {v0}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v1

    iget-object v2, p0, Landroid/util/LongArrayQueue;->mValues:[J

    array-length v3, v2

    iget v4, p0, Landroid/util/LongArrayQueue;->mHead:I

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Landroid/util/LongArrayQueue;->mValues:[J

    iget v4, p0, Landroid/util/LongArrayQueue;->mHead:I

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Landroid/util/LongArrayQueue;->mValues:[J

    iput v5, p0, Landroid/util/LongArrayQueue;->mHead:I

    iget v2, p0, Landroid/util/LongArrayQueue;->mSize:I

    iput v2, p0, Landroid/util/LongArrayQueue;->mTail:I

    return-void

    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Queue not full yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addLast(J)V
    .registers 5

    iget v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    iget-object v1, p0, Landroid/util/LongArrayQueue;->mValues:[J

    array-length v1, v1

    if-ne v0, v1, :cond_a

    invoke-direct {p0}, Landroid/util/LongArrayQueue;->grow()V

    :cond_a
    iget-object v0, p0, Landroid/util/LongArrayQueue;->mValues:[J

    iget v1, p0, Landroid/util/LongArrayQueue;->mTail:I

    aput-wide p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    array-length v0, v0

    rem-int/2addr v1, v0

    iput v1, p0, Landroid/util/LongArrayQueue;->mTail:I

    iget v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    return-void
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    iput v0, p0, Landroid/util/LongArrayQueue;->mTail:I

    iput v0, p0, Landroid/util/LongArrayQueue;->mHead:I

    return-void
.end method

.method public get(I)J
    .registers 5

    if-ltz p1, :cond_10

    iget v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    if-ge p1, v0, :cond_10

    iget v0, p0, Landroid/util/LongArrayQueue;->mHead:I

    add-int/2addr v0, p1

    iget-object v1, p0, Landroid/util/LongArrayQueue;->mValues:[J

    array-length v2, v1

    rem-int/2addr v0, v2

    aget-wide v1, v1, v0

    return-wide v1

    :cond_10
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not valid for a queue of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/LongArrayQueue;->mSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public peekFirst()J
    .registers 3

    iget v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/util/LongArrayQueue;->mValues:[J

    iget v1, p0, Landroid/util/LongArrayQueue;->mHead:I

    aget-wide v0, v0, v1

    return-wide v0

    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Queue is empty!"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public peekLast()J
    .registers 4

    iget v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    if-eqz v0, :cond_12

    iget v0, p0, Landroid/util/LongArrayQueue;->mTail:I

    if-nez v0, :cond_b

    iget-object v0, p0, Landroid/util/LongArrayQueue;->mValues:[J

    array-length v0, v0

    :cond_b
    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Landroid/util/LongArrayQueue;->mValues:[J

    aget-wide v1, v1, v0

    return-wide v1

    :cond_12
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Queue is empty!"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeFirst()J
    .registers 6

    iget v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    if-eqz v0, :cond_15

    iget-object v1, p0, Landroid/util/LongArrayQueue;->mValues:[J

    iget v2, p0, Landroid/util/LongArrayQueue;->mHead:I

    aget-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    array-length v1, v1

    rem-int/2addr v2, v1

    iput v2, p0, Landroid/util/LongArrayQueue;->mHead:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    return-wide v3

    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Queue is empty!"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    if-gtz v0, :cond_8

    const-string/jumbo v0, "{}"

    return-object v0

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x40

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, v1

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_1e
    iget v2, p0, Landroid/util/LongArrayQueue;->mSize:I

    if-ge v1, v2, :cond_31

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_31
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
