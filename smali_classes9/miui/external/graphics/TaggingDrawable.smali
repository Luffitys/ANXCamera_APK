.class public Lmiui/external/graphics/TaggingDrawable;
.super Lmiui/external/graphics/DrawableWrapperAdapter;
.source ""


# instance fields
.field private mRawState:[I

.field private mTaggingState:[I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lmiui/external/graphics/TaggingDrawable;-><init>(Landroid/graphics/drawable/Drawable;[I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;[I)V
    .locals 1

    invoke-direct {p0, p1}, Lmiui/external/graphics/DrawableWrapperAdapter;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    new-array v0, p1, [I

    iput-object v0, p0, Lmiui/external/graphics/TaggingDrawable;->mTaggingState:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lmiui/external/graphics/TaggingDrawable;->mRawState:[I

    invoke-virtual {p0, p2}, Lmiui/external/graphics/TaggingDrawable;->setTaggingState([I)Z

    return-void
.end method

.method public static containsTagState(Landroid/graphics/drawable/StateListDrawable;[I)Z
    .locals 7

    invoke-static {p0}, Lmiui/external/graphics/StateListDrawableReflect;->getStateCount(Landroid/graphics/drawable/StateListDrawable;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-static {p0, v2}, Lmiui/external/graphics/StateListDrawableReflect;->getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    aget v6, v3, v5

    invoke-static {p1, v6}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v6

    if-ltz v6, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static mergeSortTaggingState([I[I)[I
    .locals 3

    array-length v0, p1

    array-length v1, p0

    add-int/2addr v0, v1

    new-array v0, v0, [I

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    return-object v0
.end method

.method private static mergeTaggingState([I[I)[I
    .locals 3

    array-length v0, p1

    array-length v1, p0

    add-int/2addr v0, v1

    new-array v0, v0, [I

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public setState([I)Z
    .locals 1

    iget-object v0, p0, Lmiui/external/graphics/TaggingDrawable;->mRawState:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lmiui/external/graphics/TaggingDrawable;->mRawState:[I

    iget-object v0, p0, Lmiui/external/graphics/TaggingDrawable;->mTaggingState:[I

    invoke-static {v0, p1}, Lmiui/external/graphics/TaggingDrawable;->mergeTaggingState([I[I)[I

    move-result-object p1

    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->setState([I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setTaggingState([I)Z
    .locals 1

    iget-object v0, p0, Lmiui/external/graphics/TaggingDrawable;->mTaggingState:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lmiui/external/graphics/TaggingDrawable;->mTaggingState:[I

    iget-object v0, p0, Lmiui/external/graphics/TaggingDrawable;->mRawState:[I

    invoke-static {p1, v0}, Lmiui/external/graphics/TaggingDrawable;->mergeTaggingState([I[I)[I

    move-result-object p1

    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->setState([I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
