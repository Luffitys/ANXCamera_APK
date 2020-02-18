.class public Lcom/android/camera/effect/framework/graphics/Block;
.super Ljava/lang/Object;
.source "Block.java"


# instance fields
.field public mAdjHeight:I

.field public mAdjWidth:I

.field public mHeight:I

.field public mOffset:I

.field public mRowStride:I

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOffset(II)[I
    .locals 3

    const/4 p2, 0x2

    new-array p2, p2, [I

    iget v0, p0, Lcom/android/camera/effect/framework/graphics/Block;->mOffset:I

    rem-int v1, v0, p1

    iget v2, p0, Lcom/android/camera/effect/framework/graphics/Block;->mAdjWidth:I

    div-int/2addr v1, v2

    div-int/2addr v0, p1

    iget p0, p0, Lcom/android/camera/effect/framework/graphics/Block;->mAdjHeight:I

    div-int/2addr v0, p0

    mul-int/2addr v1, v2

    const/4 p1, 0x0

    aput v1, p2, p1

    mul-int/2addr v0, p0

    const/4 p0, 0x1

    aput v0, p2, p0

    return-object p2
.end method

.method public getYUVOffset(IIII)[I
    .locals 4

    const/4 p4, 0x2

    new-array p4, p4, [I

    iget p0, p0, Lcom/android/camera/effect/framework/graphics/Block;->mOffset:I

    div-int v0, p0, p3

    rem-int/2addr p0, p3

    mul-int/2addr p1, v0

    add-int/2addr p1, p0

    const/4 p3, 0x0

    aput p1, p4, p3

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    mul-int/2addr p1, p2

    add-int/2addr p1, p0

    const/4 p0, 0x1

    aput p1, p4, p0

    return-object p4
.end method
