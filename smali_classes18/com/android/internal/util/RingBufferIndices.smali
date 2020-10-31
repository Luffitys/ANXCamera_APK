.class public Lcom/android/internal/util/RingBufferIndices;
.super Ljava/lang/Object;
.source "RingBufferIndices.java"


# instance fields
.field private final mCapacity:I

.field private mSize:I

.field private mStart:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/util/RingBufferIndices;->mCapacity:I

    return-void
.end method


# virtual methods
.method public add()I
    .registers 4

    iget v0, p0, Lcom/android/internal/util/RingBufferIndices;->mSize:I

    iget v1, p0, Lcom/android/internal/util/RingBufferIndices;->mCapacity:I

    if-ge v0, v1, :cond_d

    iget v1, p0, Lcom/android/internal/util/RingBufferIndices;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/util/RingBufferIndices;->mSize:I

    return v1

    :cond_d
    iget v0, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    iget v2, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    if-ne v2, v1, :cond_1a

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    :cond_1a
    return v0
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    iput v0, p0, Lcom/android/internal/util/RingBufferIndices;->mSize:I

    return-void
.end method

.method public indexOf(I)I
    .registers 4

    iget v0, p0, Lcom/android/internal/util/RingBufferIndices;->mStart:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/internal/util/RingBufferIndices;->mCapacity:I

    if-lt v0, v1, :cond_8

    sub-int/2addr v0, v1

    :cond_8
    return v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/android/internal/util/RingBufferIndices;->mSize:I

    return v0
.end method
