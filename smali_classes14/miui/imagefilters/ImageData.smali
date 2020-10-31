.class public Lmiui/imagefilters/ImageData;
.super Ljava/lang/Object;
.source "ImageData.java"


# instance fields
.field private backPixels:[I

.field height:I

.field private mHashCode:I

.field pixels:[I

.field width:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/imagefilters/ImageData;->mHashCode:I

    iput p1, p0, Lmiui/imagefilters/ImageData;->width:I

    iput p2, p0, Lmiui/imagefilters/ImageData;->height:I

    mul-int v0, p1, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/imagefilters/ImageData;->pixels:[I

    return-void
.end method

.method public static bitmapToImageData(Landroid/graphics/Bitmap;)Lmiui/imagefilters/ImageData;
    .registers 10

    new-instance v0, Lmiui/imagefilters/ImageData;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lmiui/imagefilters/ImageData;-><init>(II)V

    iget-object v2, v0, Lmiui/imagefilters/ImageData;->pixels:[I

    iget v7, v0, Lmiui/imagefilters/ImageData;->width:I

    iget v8, v0, Lmiui/imagefilters/ImageData;->height:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lmiui/imagefilters/ImageData;->generalRandomNum(I)I

    return-object v0
.end method

.method public static imageDataToBitmap(Lmiui/imagefilters/ImageData;)Landroid/graphics/Bitmap;
    .registers 5

    iget-object v0, p0, Lmiui/imagefilters/ImageData;->pixels:[I

    iget v1, p0, Lmiui/imagefilters/ImageData;->width:I

    iget v2, p0, Lmiui/imagefilters/ImageData;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public generalRandomNum(I)I
    .registers 10

    iget v0, p0, Lmiui/imagefilters/ImageData;->mHashCode:I

    if-nez v0, :cond_28

    const/16 v1, 0x8

    iget v2, p0, Lmiui/imagefilters/ImageData;->width:I

    const/16 v3, 0x8

    div-int/2addr v2, v3

    iget v4, p0, Lmiui/imagefilters/ImageData;->height:I

    div-int/2addr v4, v3

    const/4 v5, 0x1

    :goto_f
    if-ge v5, v3, :cond_21

    mul-int v6, v5, v4

    iget v7, p0, Lmiui/imagefilters/ImageData;->width:I

    mul-int/2addr v6, v7

    mul-int v7, v5, v2

    add-int/2addr v6, v7

    iget-object v7, p0, Lmiui/imagefilters/ImageData;->pixels:[I

    aget v7, v7, v6

    xor-int/2addr v0, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_21
    if-nez v0, :cond_24

    move v0, p1

    :cond_24
    const v3, 0x7fffffff

    and-int/2addr v0, v3

    :cond_28
    iput v0, p0, Lmiui/imagefilters/ImageData;->mHashCode:I

    rem-int v1, v0, p1

    return v1
.end method

.method public getBackPixels()[I
    .registers 3

    iget-object v0, p0, Lmiui/imagefilters/ImageData;->backPixels:[I

    if-eqz v0, :cond_a

    array-length v0, v0

    iget-object v1, p0, Lmiui/imagefilters/ImageData;->pixels:[I

    array-length v1, v1

    if-eq v0, v1, :cond_11

    :cond_a
    iget-object v0, p0, Lmiui/imagefilters/ImageData;->pixels:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/imagefilters/ImageData;->backPixels:[I

    :cond_11
    iget-object v0, p0, Lmiui/imagefilters/ImageData;->backPixels:[I

    return-object v0
.end method

.method public swapPixels()V
    .registers 3

    iget-object v0, p0, Lmiui/imagefilters/ImageData;->pixels:[I

    iget-object v1, p0, Lmiui/imagefilters/ImageData;->backPixels:[I

    iput-object v1, p0, Lmiui/imagefilters/ImageData;->pixels:[I

    iput-object v0, p0, Lmiui/imagefilters/ImageData;->backPixels:[I

    return-void
.end method
