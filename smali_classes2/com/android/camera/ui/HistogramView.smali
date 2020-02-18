.class public Lcom/android/camera/ui/HistogramView;
.super Landroid/view/View;
.source "HistogramView.java"


# static fields
.field private static final BINS:I = 0x100

.field private static final MODE_RGB:I = 0x10

.field private static final MODE_Y:I = 0x1


# instance fields
.field private mBlueColor:I

.field private mBlueHistogram:[I

.field private mGreenColor:I

.field private mGreenHistogram:[I

.field private mMode:I

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRedColor:I

.field private mRedHistogram:[I

.field private mYColor:I

.field private mYHistogram:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x11

    iput p1, p0, Lcom/android/camera/ui/HistogramView;->mMode:I

    const/high16 p1, -0x10000

    iput p1, p0, Lcom/android/camera/ui/HistogramView;->mRedColor:I

    const p1, -0xff0100

    iput p1, p0, Lcom/android/camera/ui/HistogramView;->mGreenColor:I

    const p1, -0xffff01

    iput p1, p0, Lcom/android/camera/ui/HistogramView;->mBlueColor:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/camera/ui/HistogramView;->mYColor:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/HistogramView;->mPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/HistogramView;->mPath:Landroid/graphics/Path;

    const/16 p1, 0x100

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/camera/ui/HistogramView;->mYHistogram:[I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/camera/ui/HistogramView;->mRedHistogram:[I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/camera/ui/HistogramView;->mGreenHistogram:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/camera/ui/HistogramView;->mBlueHistogram:[I

    return-void
.end method

.method private drawHistogram(Landroid/graphics/Canvas;I[IILandroid/graphics/PorterDuff$Mode;)V
    .locals 10

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    array-length v2, p3

    int-to-float v2, v2

    div-float v2, v0, v2

    int-to-float p2, p2

    div-float p2, v1, p2

    iget-object v3, p0, Lcom/android/camera/ui/HistogramView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    iget-object v3, p0, Lcom/android/camera/ui/HistogramView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, p0, Lcom/android/camera/ui/HistogramView;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, p0, Lcom/android/camera/ui/HistogramView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p4, p0, Lcom/android/camera/ui/HistogramView;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v3, p5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p4, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object p4, p0, Lcom/android/camera/ui/HistogramView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    iget-object p4, p0, Lcom/android/camera/ui/HistogramView;->mPath:Landroid/graphics/Path;

    const/4 p5, 0x0

    invoke-virtual {p4, p5, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 p4, 0x0

    move v6, p4

    move v3, p5

    move v5, v3

    :goto_0
    array-length v7, p3

    if-ge p4, v7, :cond_2

    int-to-float v7, p4

    mul-float/2addr v7, v2

    add-float/2addr v7, p5

    aget v8, p3, p4

    int-to-float v8, v8

    mul-float/2addr v8, p2

    cmpl-float v9, v8, p5

    if-eqz v9, :cond_1

    add-float/2addr v5, v8

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v5, v3

    sub-float v3, v1, v5

    if-nez v6, :cond_0

    iget-object v5, p0, Lcom/android/camera/ui/HistogramView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5, v7, v1}, Landroid/graphics/Path;->lineTo(FF)V

    move v6, v4

    :cond_0
    iget-object v5, p0, Lcom/android/camera/ui/HistogramView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5, v7, v3}, Landroid/graphics/Path;->lineTo(FF)V

    move v3, v7

    move v5, v8

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/android/camera/ui/HistogramView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/android/camera/ui/HistogramView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/android/camera/ui/HistogramView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    iget-object p2, p0, Lcom/android/camera/ui/HistogramView;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/camera/ui/HistogramView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v4, v0

    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/HistogramView;->mYHistogram:[I

    aget v2, v2, v1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/HistogramView;->mRedHistogram:[I

    aget v3, v3, v1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/HistogramView;->mGreenHistogram:[I

    aget v3, v3, v1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/HistogramView;->mBlueHistogram:[I

    aget v3, v3, v1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/camera/ui/HistogramView;->mMode:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/camera/ui/HistogramView;->mYHistogram:[I

    iget v6, p0, Lcom/android/camera/ui/HistogramView;->mYColor:I

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/ui/HistogramView;->drawHistogram(Landroid/graphics/Canvas;I[IILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2

    iget v0, p0, Lcom/android/camera/ui/HistogramView;->mOrientation:I

    if-eq v0, p1, :cond_2

    sub-int v0, p1, v0

    const/16 v1, 0x5a

    if-le v0, v1, :cond_0

    add-int/lit16 v0, p1, -0x168

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput p1, p0, Lcom/android/camera/ui/HistogramView;->mOrientation:I

    if-eqz p2, :cond_1

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const-wide/16 p1, 0x12c

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    int-to-float p1, v0

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->rotation(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/android/camera/ui/HistogramView;->mOrientation:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_2
    :goto_1
    return-void
.end method

.method public updateStats([I)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/HistogramView;->mYHistogram:[I

    const/4 v1, 0x0

    const/16 v2, 0x100

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateStats([I[I[I)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/HistogramView;->mRedHistogram:[I

    const/16 v1, 0x100

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/android/camera/ui/HistogramView;->mGreenHistogram:[I

    invoke-static {p2, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/android/camera/ui/HistogramView;->mBlueHistogram:[I

    invoke-static {p3, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
