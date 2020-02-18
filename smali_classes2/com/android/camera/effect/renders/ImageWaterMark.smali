.class public Lcom/android/camera/effect/renders/ImageWaterMark;
.super Lcom/android/camera/effect/renders/WaterMark;
.source "ImageWaterMark.java"


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field private mHeight:I

.field private mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field private mIsCinematicAspectRatio:Z

.field private mPaddingX:I

.field private mPaddingY:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;IIIFFFZ)V
    .locals 7

    invoke-direct {p0, p2, p3, p4}, Lcom/android/camera/effect/renders/WaterMark;-><init>(III)V

    iput-boolean p8, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mIsCinematicAspectRatio:Z

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move v0, p2

    move v1, p3

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-static/range {v0 .. v6}, Lcom/android/camera/Util;->calcDualCameraWatermarkLocation(IIIIFFF)[I

    move-result-object p5

    const/4 p6, 0x0

    aget p7, p5, p6

    iput p7, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mWidth:I

    const/4 p7, 0x1

    aget p7, p5, p7

    iput p7, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mHeight:I

    const/4 p7, 0x2

    aget p7, p5, p7

    iput p7, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mPaddingX:I

    const/4 p7, 0x3

    aget p5, p5, p7

    iput p5, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mPaddingY:I

    iget-boolean p5, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mIsCinematicAspectRatio:Z

    if-eqz p5, :cond_2

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x44870000    # 1080.0f

    div-float/2addr p2, p3

    invoke-static {}, Lcom/android/camera/Util;->getCinematicAspectRatioMargin()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p2

    float-to-double p7, p3

    invoke-static {p7, p8}, Ljava/lang/Math;->floor(D)D

    move-result-wide p7

    double-to-int p3, p7

    const/16 p5, 0x5a

    if-eq p4, p5, :cond_1

    const/16 p5, 0x10e

    if-ne p4, p5, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mPaddingY:I

    add-int/2addr p2, p3

    iput p2, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mPaddingY:I

    goto :goto_1

    :cond_1
    :goto_0
    iget p4, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mWidth:I

    int-to-double p4, p4

    const-wide p7, 0x3fee666666666666L    # 0.95

    mul-double/2addr p4, p7

    invoke-static {p4, p5}, Ljava/lang/Math;->round(D)J

    move-result-wide p4

    const-wide/16 v0, -0x2

    and-long/2addr p4, v0

    long-to-int p4, p4

    iput p4, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mWidth:I

    iget p4, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mHeight:I

    int-to-double p4, p4

    mul-double/2addr p4, p7

    invoke-static {p4, p5}, Ljava/lang/Math;->round(D)J

    move-result-wide p4

    and-long/2addr p4, v0

    long-to-int p4, p4

    iput p4, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mHeight:I

    iget p4, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mPaddingX:I

    int-to-float p4, p4

    const/high16 p5, 0x41700000    # 15.0f

    mul-float/2addr p2, p5

    sub-float/2addr p4, p2

    float-to-int p4, p4

    iput p4, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mPaddingX:I

    iget p4, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mPaddingY:I

    int-to-float p4, p4

    sub-float/2addr p4, p2

    float-to-int p2, p4

    iput p2, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mPaddingY:I

    iget p2, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mPaddingX:I

    add-int/2addr p2, p3

    iput p2, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mPaddingX:I

    :cond_2
    :goto_1
    new-instance p2, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {p2, p1}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    iget-object p1, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {p1, p6}, Lcom/android/gallery3d/ui/UploadedTexture;->setOpaque(Z)V

    invoke-direct {p0}, Lcom/android/camera/effect/renders/ImageWaterMark;->calcCenterAxis()V

    return-void
.end method

.method private calcCenterAxis()V
    .locals 2

    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mOrientation:I

    if-eqz v0, :cond_3

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mPaddingY:I

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ImageWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mCenterX:I

    iget v0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mPaddingX:I

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ImageWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mCenterY:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mPaddingX:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ImageWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mCenterX:I

    iget v0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mPaddingY:I

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ImageWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mCenterY:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mPaddingY:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ImageWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mCenterX:I

    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mPaddingX:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ImageWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mCenterY:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mPaddingX:I

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ImageWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mCenterX:I

    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mPaddingY:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ImageWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mCenterY:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getCenterX()I
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mCenterX:I

    return p0
.end method

.method public getCenterY()I
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mCenterY:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mHeight:I

    return p0
.end method

.method public bridge synthetic getLeft()I
    .locals 0

    invoke-super {p0}, Lcom/android/camera/effect/renders/WaterMark;->getLeft()I

    move-result p0

    return p0
.end method

.method public getPaddingX()I
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mPaddingX:I

    return p0
.end method

.method public getPaddingY()I
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mPaddingY:I

    return p0
.end method

.method public getTexture()Lcom/android/gallery3d/ui/BasicTexture;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    return-object p0
.end method

.method public bridge synthetic getTop()I
    .locals 0

    invoke-super {p0}, Lcom/android/camera/effect/renders/WaterMark;->getTop()I

    move-result p0

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/renders/ImageWaterMark;->mWidth:I

    return p0
.end method
