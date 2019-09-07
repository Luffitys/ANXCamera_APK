.class public Lcom/ss/android/vesdk/utils/BitmapLoader;
.super Ljava/lang/Object;
.source "BitmapLoader.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateInSampleSize(Ljava/lang/String;II)I
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v2, 0x0

    if-gt p0, p2, :cond_1

    if-le v0, p1, :cond_2

    :cond_1
    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    int-to-float p0, p0

    int-to-float p1, p2

    div-float/2addr p0, p1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    float-to-int v2, p0

    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public static loadBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 8
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    invoke-static {p0, p1, p2}, Lcom/ss/android/vesdk/utils/BitmapLoader;->calculateInSampleSize(Ljava/lang/String;II)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_0
    const/4 p1, 0x0

    :try_start_0
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, p1

    :goto_0
    const/4 p0, 0x0

    if-eqz v0, :cond_4

    const-string v1, "Orientation"

    invoke-virtual {v0, v1, p0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 p0, 0x10e

    goto :goto_1

    :cond_2
    const/16 p0, 0x5a

    goto :goto_1

    :cond_3
    const/16 p0, 0xb4

    :cond_4
    :goto_1
    if-eqz p0, :cond_5

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p0, p0

    invoke-virtual {v6, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p2

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    :cond_5
    move-object p0, p2

    :cond_6
    :goto_2
    invoke-static {p0}, Lcom/ss/android/vesdk/utils/BitmapLoader;->makeDimensionEven(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p2, "loadBitmap"

    invoke-static {p2, p0}, Lcom/ss/android/medialib/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private static makeDimensionEven(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x1

    and-int/2addr v3, v4

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, v4

    move v3, v1

    move v1, v4

    goto :goto_0

    :cond_1
    move v3, v1

    move v1, v5

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    and-int/2addr v6, v4

    if-ne v6, v4, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    move v1, v4

    :cond_2
    if-nez v1, :cond_3

    return-object p0

    :cond_3
    invoke-static {p0, v5, v5, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "makeDimensionEven"

    invoke-static {v1, p0}, Lcom/ss/android/medialib/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
