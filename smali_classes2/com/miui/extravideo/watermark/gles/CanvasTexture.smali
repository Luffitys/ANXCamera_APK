.class public Lcom/miui/extravideo/watermark/gles/CanvasTexture;
.super Ljava/lang/Object;
.source "CanvasTexture.java"


# instance fields
.field private mBitmapScale:F

.field private mBitmapToDraw:Landroid/graphics/Bitmap;

.field protected mCanvas:Landroid/graphics/Canvas;

.field private final mConfig:Landroid/graphics/Bitmap$Config;

.field private mHeight:I

.field private mPaddingX:I

.field private mPaddingY:I

.field private mStrToDraw:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mWidth:I

    iput p2, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mHeight:I

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p1, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mConfig:Landroid/graphics/Bitmap$Config;

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 8

    iget v0, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mWidth:I

    iget v1, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mHeight:I

    iget-object v2, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mStrToDraw:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/16 v4, 0xff

    invoke-virtual {v1, v4, v4, v4, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v4, 0x42480000    # 50.0f

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v4, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mStrToDraw:Ljava/lang/String;

    iget v6, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mWidth:I

    div-int/2addr v6, v3

    int-to-float v6, v6

    iget v7, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mHeight:I

    div-int/2addr v7, v3

    int-to-float v7, v7

    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mBitmapToDraw:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget v4, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mBitmapScale:F

    invoke-virtual {v1, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v4, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mBitmapToDraw:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mBitmapScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mHeight:I

    sub-int/2addr v5, v4

    iget v4, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mPaddingY:I

    sub-int/2addr v5, v4

    iget v4, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mPaddingX:I

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v4, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mCanvas:Landroid/graphics/Canvas;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v2, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object p0, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mBitmapToDraw:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v3}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v2, p0, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_1
    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;IIF)V
    .locals 0

    iput-object p1, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mBitmapToDraw:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mPaddingX:I

    iput p3, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mPaddingY:I

    iput p4, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mBitmapScale:F

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/extravideo/watermark/gles/CanvasTexture;->mStrToDraw:Ljava/lang/String;

    return-void
.end method
