.class public Lcom/android/camera/fragment/mode/ModeBackground;
.super Landroid/view/View;
.source ""


# instance fields
.field private mArcRectF:Landroid/graphics/RectF;

.field private mHeight:I

.field private mOffset:I

.field private mPaint:Landroid/graphics/Paint;

.field private mProgress:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x50

    iput v0, p0, Lcom/android/camera/fragment/mode/ModeBackground;->mProgress:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mode/ModeBackground;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x50

    iput p2, p0, Lcom/android/camera/fragment/mode/ModeBackground;->mProgress:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mode/ModeBackground;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x50

    iput p2, p0, Lcom/android/camera/fragment/mode/ModeBackground;->mProgress:I

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mode/ModeBackground;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/mode/ModeBackground;->mArcRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/mode/ModeBackground;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/android/camera/fragment/mode/ModeBackground;->mOffset:I

    iget-object v1, p0, Lcom/android/camera/fragment/mode/ModeBackground;->mPaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/camera/fragment/mode/ModeBackground;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p0, p0, Lcom/android/camera/fragment/mode/ModeBackground;->mPaint:Landroid/graphics/Paint;

    const v0, 0x7f060137

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/mode/ModeBackground;->mProgress:I

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/android/camera/fragment/mode/ModeBackground;->mProgress:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/mode/ModeBackground;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/camera/fragment/mode/ModeBackground;->mArcRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/camera/fragment/mode/ModeBackground;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/fragment/mode/ModeBackground;->mHeight:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v6, p0, Lcom/android/camera/fragment/mode/ModeBackground;->mArcRectF:Landroid/graphics/RectF;

    int-to-float v8, v0

    iget-object v10, p0, Lcom/android/camera/fragment/mode/ModeBackground;->mPaint:Landroid/graphics/Paint;

    const/high16 v7, -0x3d4c0000    # -90.0f

    const/4 v9, 0x1

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/camera/fragment/mode/ModeBackground;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/camera/fragment/mode/ModeBackground;->mArcRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/camera/fragment/mode/ModeBackground;->mOffset:I

    int-to-float v3, v2

    int-to-float v4, v2

    iget v5, p0, Lcom/android/camera/fragment/mode/ModeBackground;->mWidth:I

    sub-int/2addr v5, v2

    int-to-float v5, v5

    iget v6, p0, Lcom/android/camera/fragment/mode/ModeBackground;->mHeight:I

    sub-int/2addr v6, v2

    int-to-float v2, v6

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v7, p0, Lcom/android/camera/fragment/mode/ModeBackground;->mArcRectF:Landroid/graphics/RectF;

    add-int/lit8 v1, v0, -0x5a

    int-to-float v8, v1

    rsub-int v0, v0, 0x168

    int-to-float v9, v0

    iget-object v11, p0, Lcom/android/camera/fragment/mode/ModeBackground;->mPaint:Landroid/graphics/Paint;

    const/4 v10, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/mode/ModeBackground;->mWidth:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/mode/ModeBackground;->mHeight:I

    iget p2, p0, Lcom/android/camera/fragment/mode/ModeBackground;->mWidth:I

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param

    iput p1, p0, Lcom/android/camera/fragment/mode/ModeBackground;->mProgress:I

    return-void
.end method
