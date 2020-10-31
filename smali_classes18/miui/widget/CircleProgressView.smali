.class public Lmiui/widget/CircleProgressView;
.super Landroid/widget/FrameLayout;
.source "CircleProgressView.java"


# static fields
.field private static MAX_PROGRESS:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAngle:I

.field private mArcRect:Landroid/graphics/RectF;

.field private mCurProgress:I

.field private mMaxProgress:I

.field private mMemBitmap:Landroid/graphics/Bitmap;

.field private mMemCanvas:Landroid/graphics/Canvas;

.field private mPaint:Landroid/graphics/Paint;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "CircleProgressView"

    sput-object v0, Lmiui/widget/CircleProgressView;->TAG:Ljava/lang/String;

    const/16 v0, 0x64

    sput v0, Lmiui/widget/CircleProgressView;->MAX_PROGRESS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/CircleProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/CircleProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget v0, Lmiui/widget/CircleProgressView;->MAX_PROGRESS:I

    iput v0, p0, Lmiui/widget/CircleProgressView;->mMaxProgress:I

    const v0, 0x11070057

    invoke-virtual {p0, v0}, Lmiui/widget/CircleProgressView;->setBackgroundResource(I)V

    const v0, 0x11070058

    invoke-virtual {p0, v0}, Lmiui/widget/CircleProgressView;->setProgressResource(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lmiui/widget/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lmiui/widget/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lmiui/widget/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method


# virtual methods
.method public getMaxProgress()I
    .registers 2

    iget v0, p0, Lmiui/widget/CircleProgressView;->mMaxProgress:I

    return v0
.end method

.method public getProgress()I
    .registers 2

    iget v0, p0, Lmiui/widget/CircleProgressView;->mCurProgress:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lmiui/widget/CircleProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lmiui/widget/CircleProgressView;->mMemBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lmiui/widget/CircleProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiui/widget/CircleProgressView;->mMemCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lmiui/widget/CircleProgressView;->mMemCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lmiui/widget/CircleProgressView;->mArcRect:Landroid/graphics/RectF;

    iget v0, p0, Lmiui/widget/CircleProgressView;->mAngle:I

    rsub-int v1, v0, 0x10e

    int-to-float v4, v1

    int-to-float v5, v0

    const/4 v6, 0x1

    iget-object v7, p0, Lmiui/widget/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lmiui/widget/CircleProgressView;->mMemBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lmiui/widget/CircleProgressView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/CircleProgressView;->mMemBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lmiui/widget/CircleProgressView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/CircleProgressView;->mMemBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_46
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    nop

    invoke-virtual {p0}, Lmiui/widget/CircleProgressView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lmiui/widget/CircleProgressView;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lmiui/widget/CircleProgressView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lmiui/widget/CircleProgressView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/widget/CircleProgressView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setMaxProgress(I)V
    .registers 3

    if-lez p1, :cond_d

    iget v0, p0, Lmiui/widget/CircleProgressView;->mMaxProgress:I

    if-eq v0, p1, :cond_d

    iput p1, p0, Lmiui/widget/CircleProgressView;->mMaxProgress:I

    iget v0, p0, Lmiui/widget/CircleProgressView;->mCurProgress:I

    invoke-virtual {p0, v0}, Lmiui/widget/CircleProgressView;->setProgress(I)V

    :cond_d
    return-void
.end method

.method public setProgress(I)V
    .registers 6

    iget v0, p0, Lmiui/widget/CircleProgressView;->mMaxProgress:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lmiui/widget/CircleProgressView;->mCurProgress:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lmiui/widget/CircleProgressView;->mCurProgress:I

    iget v1, p0, Lmiui/widget/CircleProgressView;->mMaxProgress:I

    sub-int v0, v1, v0

    mul-int/lit16 v0, v0, 0x168

    div-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/CircleProgressView;->mAngle:I

    if-eq v0, v1, :cond_37

    sget-object v1, Lmiui/widget/CircleProgressView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "progress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lmiui/widget/CircleProgressView;->mCurProgress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lmiui/widget/CircleProgressView;->mAngle:I

    invoke-virtual {p0}, Lmiui/widget/CircleProgressView;->invalidate()V

    :cond_37
    return-void
.end method

.method public setProgressResource(I)V
    .registers 8

    iget-object v0, p0, Lmiui/widget/CircleProgressView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/CircleProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/CircleProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/CircleProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lmiui/widget/CircleProgressView;->mMemBitmap:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lmiui/widget/CircleProgressView;->mMemBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lmiui/widget/CircleProgressView;->mMemCanvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, v1

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lmiui/widget/CircleProgressView;->mArcRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lmiui/widget/CircleProgressView;->requestLayout()V

    return-void
.end method
