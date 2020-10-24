.class public Lcom/android/camera/fragment/idcard/IDCardView;
.super Landroid/view/View;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "IDCardView"


# instance fields
.field private mBigColor:I

.field private mBitmap1:Landroid/graphics/Bitmap;

.field private mBitmap2:Landroid/graphics/Bitmap;

.field private mBitmap3:Landroid/graphics/Bitmap;

.field private mBitmap4:Landroid/graphics/Bitmap;

.field private mBitmapHeight:F

.field private mBitmapWidth:F

.field private mContext:Landroid/content/Context;

.field private mDisplayRect:Landroid/graphics/Rect;

.field private mHint:Ljava/lang/String;

.field private mIDCardRectF:Landroid/graphics/RectF;

.field private mMarginLeft:F

.field private mMarginTop:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRectHeight:F

.field private mRectPaint:Landroid/graphics/Paint;

.field private mRectWidth:F

.field private mSignBitmap:Landroid/graphics/Bitmap;

.field private mSignRectF:Landroid/graphics/RectF;

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/idcard/IDCardView;->init(Landroid/content/Context;Z)V

    return-void
.end method

.method private decodeResourceCatchOOM(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 0

    :try_start_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "IDCardView"

    const-string p2, "decodeResourceCatchOOM"

    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private init(Landroid/content/Context;Z)V
    .locals 13

    iput-object p1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mDisplayRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mTextPaint:Landroid/graphics/Paint;

    const v2, 0x7f0702b4

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v0, 0x7f060083

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBigColor:I

    const v0, 0x7f0702b3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectWidth:F

    const v0, 0x7f0702b2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectHeight:F

    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mDisplayRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectWidth:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mMarginLeft:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectHeight:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iget-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mDisplayRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mMarginTop:F

    const v0, 0x7f0702ac

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const v1, 0x7f0702ad

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const v3, 0x7f0702a8

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const v4, 0x7f0702a9

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    const v5, 0x7f0804b5

    invoke-direct {p0, p1, v5}, Lcom/android/camera/fragment/idcard/IDCardView;->decodeResourceCatchOOM(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmap1:Landroid/graphics/Bitmap;

    const v5, 0x7f0804b6

    invoke-direct {p0, p1, v5}, Lcom/android/camera/fragment/idcard/IDCardView;->decodeResourceCatchOOM(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmap2:Landroid/graphics/Bitmap;

    const v5, 0x7f0804b7

    invoke-direct {p0, p1, v5}, Lcom/android/camera/fragment/idcard/IDCardView;->decodeResourceCatchOOM(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmap3:Landroid/graphics/Bitmap;

    const v5, 0x7f0804b8

    invoke-direct {p0, p1, v5}, Lcom/android/camera/fragment/idcard/IDCardView;->decodeResourceCatchOOM(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmap4:Landroid/graphics/Bitmap;

    const v5, 0x7f0804bc

    invoke-direct {p0, p1, v5}, Lcom/android/camera/fragment/idcard/IDCardView;->decodeResourceCatchOOM(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    const v6, 0x7f0804ba

    invoke-direct {p0, p1, v6}, Lcom/android/camera/fragment/idcard/IDCardView;->decodeResourceCatchOOM(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmapWidth:F

    iget-object v7, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmapHeight:F

    const v7, 0x7f1002f7

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f1002f6

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    iput-object v9, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v10, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mMarginLeft:F

    iput v10, v9, Landroid/graphics/RectF;->left:F

    iget v11, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mMarginTop:F

    iput v11, v9, Landroid/graphics/RectF;->top:F

    iget v12, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectWidth:F

    add-float/2addr v10, v12

    iput v10, v9, Landroid/graphics/RectF;->right:F

    iget v10, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectHeight:F

    add-float/2addr v11, v10

    iput v11, v9, Landroid/graphics/RectF;->bottom:F

    if-eqz p2, :cond_0

    const p2, 0x7f0702af

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    const v3, 0x7f0702ae

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput-object v7, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mHint:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v0

    iget v0, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    add-float/2addr p2, v4

    add-float/2addr p1, v0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v4, v0, p2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mSignRectF:Landroid/graphics/RectF;

    iput-object v5, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mSignBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const p2, 0x7f0702ab

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    const v0, 0x7f0702aa

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput-object v8, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mHint:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v3

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v4

    add-float/2addr p2, v1

    add-float/2addr p1, v0

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v1, v0, p2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mSignRectF:Landroid/graphics/RectF;

    iput-object v6, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mSignBitmap:Landroid/graphics/Bitmap;

    :goto_0
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object p2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mHint:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v0, v1, v3, p1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mDisplayRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr p2, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    div-float/2addr p2, v2

    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr p2, v0

    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mDisplayRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    div-float/2addr p1, v2

    add-float/2addr v1, p1

    iget-object p1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mDisplayRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBigColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mDisplayRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mHint:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mPath:Landroid/graphics/Path;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mTextPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmap1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmap2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmapWidth:F

    sub-float/2addr v3, v4

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmap3:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmapHeight:F

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmap4:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mIDCardRectF:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmapWidth:F

    sub-float/2addr v3, v4

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mBitmapHeight:F

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_4
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mSignBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mSignRectF:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/camera/fragment/idcard/IDCardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_5
    return-void
.end method
