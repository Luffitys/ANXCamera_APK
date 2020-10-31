.class public Landroid/text/AutoGrowArray$IntArray;
.super Ljava/lang/Object;
.source "AutoGrowArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/AutoGrowArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntArray"
.end annotation


# instance fields
.field private mSize:I

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/text/AutoGrowArray$IntArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_a

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    goto :goto_10

    :cond_a
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    :goto_10
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    return-void
.end method

.method private ensureCapacity(I)V
    .registers 8

    iget v0, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    add-int v1, v0, p1

    iget-object v2, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1b

    # invokes: Landroid/text/AutoGrowArray;->computeNewCapacity(II)I
    invoke-static {v0, v1}, Landroid/text/AutoGrowArray;->access$000(II)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v2

    iget-object v3, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    iget v4, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    :cond_1b
    return-void
.end method


# virtual methods
.method public append(I)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/text/AutoGrowArray$IntArray;->ensureCapacity(I)V

    iget-object v0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    iget v1, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    aput p1, v0, v1

    return-void
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    return-void
.end method

.method public clearWithReleasingLargeArray()V
    .registers 3

    invoke-virtual {p0}, Landroid/text/AutoGrowArray$IntArray;->clear()V

    iget-object v0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    array-length v0, v0

    const/16 v1, 0x2710

    if-le v0, v1, :cond_e

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    :cond_e
    return-void
.end method

.method public get(I)I
    .registers 3

    iget-object v0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    aget v0, v0, p1

    return v0
.end method

.method public getRawArray()[I
    .registers 2

    iget-object v0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    return-object v0
.end method

.method public resize(I)V
    .registers 3

    iget-object v0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    array-length v0, v0

    if-le p1, v0, :cond_c

    iget v0, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Landroid/text/AutoGrowArray$IntArray;->ensureCapacity(I)V

    :cond_c
    iput p1, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    return-void
.end method

.method public set(II)V
    .registers 4

    iget-object v0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    aput p2, v0, p1

    return-void
.end method

.method public size()I
    .registers 2

    iget v0, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    return v0
.end method
