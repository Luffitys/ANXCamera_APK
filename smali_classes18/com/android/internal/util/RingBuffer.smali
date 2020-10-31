.class public Lcom/android/internal/util/RingBuffer;
.super Ljava/lang/Object;
.source "RingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mBuffer:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mCursor:J


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/util/RingBuffer;->mCursor:J

    const-string v0, "A RingBuffer cannot have 0 capacity"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    return-void
.end method

.method private indexOf(J)I
    .registers 5

    iget-object v0, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    array-length v0, v0

    int-to-long v0, v0

    rem-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public append(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    iget-wide v1, p0, Lcom/android/internal/util/RingBuffer;->mCursor:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/internal/util/RingBuffer;->mCursor:J

    invoke-direct {p0, v1, v2}, Lcom/android/internal/util/RingBuffer;->indexOf(J)I

    move-result v1

    aput-object p1, v0, v1

    return-void
.end method

.method public clear()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v1

    if-ge v0, v1, :cond_f

    iget-object v1, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/util/RingBuffer;->mCursor:J

    return-void
.end method

.method protected createNewItem()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public getNextSlot()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/internal/util/RingBuffer;->mCursor:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/util/RingBuffer;->mCursor:J

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/RingBuffer;->indexOf(J)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    aget-object v2, v1, v0

    if-nez v2, :cond_17

    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->createNewItem()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    :cond_17
    iget-object v1, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public size()I
    .registers 5

    iget-object v0, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    array-length v0, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/android/internal/util/RingBuffer;->mCursor:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/util/RingBuffer;->mCursor:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    :goto_18
    if-ltz v5, :cond_2b

    add-int/lit8 v6, v5, -0x1

    iget-object v7, p0, Lcom/android/internal/util/RingBuffer;->mBuffer:[Ljava/lang/Object;

    sub-long v8, v1, v3

    invoke-direct {p0, v1, v2}, Lcom/android/internal/util/RingBuffer;->indexOf(J)I

    move-result v1

    aget-object v1, v7, v1

    aput-object v1, v0, v5

    move v5, v6

    move-wide v1, v8

    goto :goto_18

    :cond_2b
    return-object v0
.end method
