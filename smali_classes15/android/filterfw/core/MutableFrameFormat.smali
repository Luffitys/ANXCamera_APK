.class public Landroid/filterfw/core/MutableFrameFormat;
.super Landroid/filterfw/core/FrameFormat;
.source "MutableFrameFormat.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/filterfw/core/FrameFormat;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/FrameFormat;-><init>(II)V

    return-void
.end method


# virtual methods
.method public setBaseType(I)V
    .registers 3

    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mBaseType:I

    invoke-static {p1}, Landroid/filterfw/core/MutableFrameFormat;->bytesPerSampleOf(I)I

    move-result v0

    iput v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mBytesPerSample:I

    return-void
.end method

.method public setBytesPerSample(I)V
    .registers 3

    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mBytesPerSample:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    return-void
.end method

.method public setDimensionCount(I)V
    .registers 3

    new-array v0, p1, [I

    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    return-void
.end method

.method public setDimensions(I)V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    const/4 v1, -0x1

    iput v1, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    return-void
.end method

.method public setDimensions(II)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    const/4 v1, -0x1

    iput v1, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    return-void
.end method

.method public setDimensions(III)V
    .registers 6

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    const/4 v1, -0x1

    iput v1, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    return-void
.end method

.method public setDimensions([I)V
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    :goto_9
    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    return-void
.end method

.method public setMetaValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    if-nez v0, :cond_b

    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    :cond_b
    iget-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1, p2}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setObjectClass(Ljava/lang/Class;)V
    .registers 2

    iput-object p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mObjectClass:Ljava/lang/Class;

    return-void
.end method

.method public setTarget(I)V
    .registers 2

    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mTarget:I

    return-void
.end method
