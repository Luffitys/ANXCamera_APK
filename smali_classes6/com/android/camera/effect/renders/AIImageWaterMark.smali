.class public Lcom/android/camera/effect/renders/AIImageWaterMark;
.super Lcom/android/camera/effect/renders/WaterMark;
.source ""


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field private mHeight:I

.field private mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field private mPaddingX:I

.field private mPaddingY:I

.field private mRange:[I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;III[IF)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lcom/android/camera/effect/renders/WaterMark;-><init>(III)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mPaddingX:I

    iput p2, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mPaddingY:I

    iput p2, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mCenterX:I

    iput p2, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mCenterY:I

    iput p2, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mWidth:I

    iput p2, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mHeight:I

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mRange:[I

    iput-object p5, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mRange:[I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p6

    float-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p3

    double-to-int p3, p3

    and-int/lit8 p3, p3, -0x2

    iput p3, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p6

    float-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p3

    double-to-int p3, p3

    and-int/lit8 p3, p3, -0x2

    iput p3, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mHeight:I

    new-instance p3, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {p3, p1}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p3, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {p3, p2}, Lcom/android/gallery3d/ui/UploadedTexture;->setOpaque(Z)V

    invoke-direct {p0}, Lcom/android/camera/effect/renders/AIImageWaterMark;->calcCenterAxis()V

    return-void
.end method

.method private calcCenterAxis()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mRange:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x2

    aget v3, v0, v2

    div-int/2addr v3, v2

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mCenterX:I

    const/4 v1, 0x1

    aget v1, v0, v1

    const/4 v3, 0x3

    aget v0, v0, v3

    div-int/2addr v0, v2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mCenterY:I

    return-void
.end method


# virtual methods
.method public getCenterX()I
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mCenterX:I

    return p0
.end method

.method public getCenterY()I
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mCenterY:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mHeight:I

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

    iget p0, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mPaddingX:I

    return p0
.end method

.method public getPaddingY()I
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mPaddingY:I

    return p0
.end method

.method public getTexture()Lcom/android/gallery3d/ui/BasicTexture;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

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

    iget p0, p0, Lcom/android/camera/effect/renders/AIImageWaterMark;->mWidth:I

    return p0
.end method
