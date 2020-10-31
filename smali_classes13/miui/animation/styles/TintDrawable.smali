.class public Lmiui/animation/styles/TintDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TintDrawable.java"


# static fields
.field private static final sListener:Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private mAnim:Lmiui/animation/styles/PropertyStyle;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBounds:Landroid/graphics/RectF;

.field private mOriDrawable:Landroid/graphics/drawable/Drawable;

.field private mPaint:Landroid/graphics/Paint;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/animation/styles/TintDrawable$1;

    invoke-direct {v0}, Lmiui/animation/styles/TintDrawable$1;-><init>()V

    sput-object v0, Lmiui/animation/styles/TintDrawable;->sListener:Landroid/view/View$OnAttachStateChangeListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiui/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/animation/styles/TintDrawable;->mSrcRect:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$000(Lmiui/animation/styles/TintDrawable;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lmiui/animation/styles/TintDrawable;->mOriDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/animation/styles/TintDrawable;)V
    .registers 1

    invoke-direct {p0}, Lmiui/animation/styles/TintDrawable;->clear()V

    return-void
.end method

.method private clear()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/animation/styles/TintDrawable;->mAnim:Lmiui/animation/styles/PropertyStyle;

    invoke-direct {p0}, Lmiui/animation/styles/TintDrawable;->recycleBitmap()V

    return-void
.end method

.method private convertBmpToMask()V
    .registers 12

    iget-object v0, p0, Lmiui/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lmiui/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v1, v0, v9

    new-array v10, v1, [I

    iget-object v1, p0, Lmiui/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v10

    move v4, v0

    move v7, v0

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v1, 0x0

    :goto_1d
    array-length v2, v10

    if-ge v1, v2, :cond_30

    aget v2, v10, v1

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2d

    const/high16 v3, -0x1000000

    aput v3, v10, v1

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_30
    iget-object v1, p0, Lmiui/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v10

    move v4, v0

    move v7, v0

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void
.end method

.method private createBitmap(II)V
    .registers 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3a

    iget-object v0, p0, Lmiui/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_1f

    iget-object v0, p0, Lmiui/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lmiui/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_1f

    goto :goto_3a

    :cond_1f
    invoke-direct {p0}, Lmiui/animation/styles/TintDrawable;->recycleBitmap()V

    iget-object v0, p0, Lmiui/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :try_start_28
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmiui/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_30
    .catch Ljava/lang/OutOfMemoryError; {:try_start_28 .. :try_end_30} :catch_31

    goto :goto_39

    :catch_31
    move-exception v0

    const-string v1, "miuisdk_anim"

    const-string v2, "TintDrawable.createBitmap failed, out of memory"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    return-void

    :cond_3a
    :goto_3a
    return-void
.end method

.method public static get(Landroid/view/View;)Lmiui/animation/styles/TintDrawable;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_12

    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lmiui/animation/styles/TintDrawable;

    if-eqz v1, :cond_12

    move-object v1, v0

    check-cast v1, Lmiui/animation/styles/TintDrawable;

    return-object v1

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method private initBitmap(I)V
    .registers 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lmiui/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_61

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_61

    :cond_12
    :try_start_12
    iget-object v0, p0, Lmiui/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lmiui/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lmiui/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lmiui/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lmiui/animation/styles/TintDrawable;->mView:Landroid/view/View;

    iget-object v4, p0, Lmiui/animation/styles/TintDrawable;->mOriDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lmiui/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lmiui/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_48

    invoke-direct {p0}, Lmiui/animation/styles/TintDrawable;->convertBmpToMask()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_48} :catch_49

    :cond_48
    goto :goto_60

    :catch_49
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TintDrawable.initBitmap failed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "miuisdk_anim"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_60
    return-void

    :cond_61
    :goto_61
    iget-object v0, p0, Lmiui/animation/styles/TintDrawable;->mView:Landroid/view/View;

    iget-object v1, p0, Lmiui/animation/styles/TintDrawable;->mOriDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private recycleBitmap()V
    .registers 2

    iget-object v0, p0, Lmiui/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    :cond_a
    return-void
.end method

.method static setAndGet(Landroid/view/View;)Lmiui/animation/styles/TintDrawable;
    .registers 4

    invoke-static {p0}, Lmiui/animation/styles/TintDrawable;->get(Landroid/view/View;)Lmiui/animation/styles/TintDrawable;

    move-result-object v0

    if-nez v0, :cond_29

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_29

    new-instance v1, Lmiui/animation/styles/TintDrawable;

    invoke-direct {v1}, Lmiui/animation/styles/TintDrawable;-><init>()V

    move-object v0, v1

    iput-object p0, v0, Lmiui/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/animation/styles/TintDrawable;->setOriDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v1, v0

    sget-object v2, Lmiui/animation/styles/TintDrawable;->sListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p0, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    new-instance v2, Lmiui/animation/styles/TintDrawable$2;

    invoke-direct {v2, p0, v1}, Lmiui/animation/styles/TintDrawable$2;-><init>(Landroid/view/View;Lmiui/animation/styles/TintDrawable;)V

    invoke-static {p0, v2}, Lmiui/animation/Folme;->post(Ljava/lang/Object;Ljava/lang/Runnable;)V

    :cond_29
    return-object v0
.end method

.method private setOriDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lmiui/animation/styles/TintDrawable;->mOriDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 11

    iget-object v0, p0, Lmiui/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lmiui/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lmiui/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lmiui/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lmiui/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    int-to-float v5, v0

    int-to-float v6, v1

    add-int v7, v0, v2

    int-to-float v7, v7

    add-int v8, v1, v3

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, p0, Lmiui/animation/styles/TintDrawable;->mSrcRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :try_start_2e
    iget-object v4, p0, Lmiui/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v4, p0, Lmiui/animation/styles/TintDrawable;->mOriDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3f

    iget-object v4, p0, Lmiui/animation/styles/TintDrawable;->mOriDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3f
    iget-object v4, p0, Lmiui/animation/styles/TintDrawable;->mAnim:Lmiui/animation/styles/PropertyStyle;

    if-eqz v4, :cond_72

    iget-object v4, p0, Lmiui/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_72

    iget-object v4, p0, Lmiui/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_50

    goto :goto_72

    :cond_50
    iget-object v4, p0, Lmiui/animation/styles/TintDrawable;->mAnim:Lmiui/animation/styles/PropertyStyle;

    invoke-virtual {v4}, Lmiui/animation/styles/PropertyStyle;->getCurrentIntValue()I

    move-result v4

    iget-object v5, p0, Lmiui/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v4, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v5, p0, Lmiui/animation/styles/TintDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lmiui/animation/styles/TintDrawable;->mSrcRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lmiui/animation/styles/TintDrawable;->mBounds:Landroid/graphics/RectF;

    iget-object v8, p0, Lmiui/animation/styles/TintDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_6d
    .catchall {:try_start_2e .. :try_end_6d} :catchall_83

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    nop

    return-void

    :cond_72
    :goto_72
    :try_start_72
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_7f

    iget-object v4, p0, Lmiui/animation/styles/TintDrawable;->mView:Landroid/view/View;

    iget-object v5, p0, Lmiui/animation/styles/TintDrawable;->mOriDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V
    :try_end_7f
    .catchall {:try_start_72 .. :try_end_7f} :catchall_83

    :cond_7f
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :catchall_83
    move-exception v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    throw v4
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x2

    return v0
.end method

.method initTintBuffer(Lmiui/animation/styles/PropertyStyle;I)V
    .registers 5

    iget-object v0, p0, Lmiui/animation/styles/TintDrawable;->mView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lmiui/animation/styles/TintDrawable;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v0, :cond_1d

    if-nez v1, :cond_14

    goto :goto_1d

    :cond_14
    iput-object p1, p0, Lmiui/animation/styles/TintDrawable;->mAnim:Lmiui/animation/styles/PropertyStyle;

    invoke-direct {p0, v0, v1}, Lmiui/animation/styles/TintDrawable;->createBitmap(II)V

    invoke-direct {p0, p2}, Lmiui/animation/styles/TintDrawable;->initBitmap(I)V

    return-void

    :cond_1d
    :goto_1d
    invoke-direct {p0}, Lmiui/animation/styles/TintDrawable;->recycleBitmap()V

    return-void
.end method

.method restoreOriginalDrawable()V
    .registers 1

    invoke-direct {p0}, Lmiui/animation/styles/TintDrawable;->clear()V

    invoke-virtual {p0}, Lmiui/animation/styles/TintDrawable;->invalidateSelf()V

    return-void
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method
