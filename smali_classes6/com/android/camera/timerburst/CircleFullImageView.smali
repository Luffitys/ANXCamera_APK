.class public Lcom/android/camera/timerburst/CircleFullImageView;
.super Landroid/widget/ImageView;
.source ""


# instance fields
.field private colorRGBA:I

.field private mContext:Landroid/content/Context;

.field mPaint:Landroid/graphics/Paint;

.field private mRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/timerburst/CircleFullImageView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/camera/timerburst/CircleFullImageView;->initGlobalValue()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/camera/timerburst/CircleFullImageView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/camera/timerburst/CircleFullImageView;->initGlobalValue()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/android/camera/timerburst/CircleFullImageView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/camera/timerburst/CircleFullImageView;->initGlobalValue()V

    return-void
.end method

.method private initGlobalValue()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/timerburst/CircleFullImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p0, p0, Lcom/android/camera/timerburst/CircleFullImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v0

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/timerburst/CircleFullImageView;->mRadius:F

    iget-object p0, p0, Lcom/android/camera/timerburst/CircleFullImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getCircleRadius(I)F
    .locals 2

    const/4 v0, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/timerburst/CircleFullImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0704b4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    div-float/2addr p0, v1

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/timerburst/CircleFullImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0704b6

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/camera/timerburst/CircleFullImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0704b2

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method

.method public updateRadiusView(FI)V
    .locals 0

    iput p1, p0, Lcom/android/camera/timerburst/CircleFullImageView;->mRadius:F

    iput p2, p0, Lcom/android/camera/timerburst/CircleFullImageView;->colorRGBA:I

    iget-object p1, p0, Lcom/android/camera/timerburst/CircleFullImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public updateView(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/camera/timerburst/CircleFullImageView;->getCircleRadius(I)F

    move-result p1

    iput p1, p0, Lcom/android/camera/timerburst/CircleFullImageView;->mRadius:F

    iput p2, p0, Lcom/android/camera/timerburst/CircleFullImageView;->colorRGBA:I

    iget-object p1, p0, Lcom/android/camera/timerburst/CircleFullImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
