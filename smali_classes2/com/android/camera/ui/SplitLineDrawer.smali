.class public Lcom/android/camera/ui/SplitLineDrawer;
.super Landroid/view/View;
.source "SplitLineDrawer.java"


# static fields
.field private static final BORDER:I = 0x1


# instance fields
.field private mBottomVisible:Z

.field private mColumnCount:I

.field private mFrameColor:I

.field private mFramePaint:Landroid/graphics/Paint;

.field private mLineColor:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mRowCount:I

.field private mTopVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mColumnCount:I

    iput p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mRowCount:I

    iput-boolean p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mTopVisible:Z

    iput-boolean p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mBottomVisible:Z

    const p1, 0x6affffff

    iput p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mLineColor:I

    const/high16 p1, 0x18000000

    iput p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mFrameColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mColumnCount:I

    iput p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mRowCount:I

    iput-boolean p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mTopVisible:Z

    iput-boolean p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mBottomVisible:Z

    const p1, 0x6affffff

    iput p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mLineColor:I

    const/high16 p1, 0x18000000

    iput p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mFrameColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mColumnCount:I

    iput p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mRowCount:I

    iput-boolean p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mTopVisible:Z

    iput-boolean p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mBottomVisible:Z

    const p1, 0x6affffff

    iput p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mLineColor:I

    const/high16 p1, 0x18000000

    iput p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mFrameColor:I

    return-void
.end method


# virtual methods
.method public initialize(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/SplitLineDrawer;->mColumnCount:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mRowCount:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/camera/ui/SplitLineDrawer;->mLineColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mFrameColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    move v3, v1

    :goto_0
    iget v4, p0, Lcom/android/camera/ui/SplitLineDrawer;->mColumnCount:I

    if-ge v3, v4, :cond_0

    new-instance v5, Landroid/graphics/Rect;

    mul-int v6, v3, v0

    div-int v7, v6, v4

    div-int/2addr v6, v4

    add-int/lit8 v6, v6, 0x3

    add-int/lit8 v4, v2, -0x1

    invoke-direct {v5, v7, v1, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, p0, Lcom/android/camera/ui/SplitLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v3, p0, Lcom/android/camera/ui/SplitLineDrawer;->mBottomVisible:Z

    xor-int/2addr v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    iget v6, p0, Lcom/android/camera/ui/SplitLineDrawer;->mRowCount:I

    if-gt v5, v6, :cond_5

    if-eqz v5, :cond_1

    if-ne v5, v6, :cond_3

    :cond_1
    if-nez v5, :cond_2

    iget-boolean v6, p0, Lcom/android/camera/ui/SplitLineDrawer;->mTopVisible:Z

    if-nez v6, :cond_3

    :cond_2
    iget v6, p0, Lcom/android/camera/ui/SplitLineDrawer;->mRowCount:I

    if-ne v5, v6, :cond_4

    iget-boolean v6, p0, Lcom/android/camera/ui/SplitLineDrawer;->mBottomVisible:Z

    if-eqz v6, :cond_4

    :cond_3
    new-instance v6, Landroid/graphics/Rect;

    mul-int v7, v5, v2

    iget v8, p0, Lcom/android/camera/ui/SplitLineDrawer;->mRowCount:I

    div-int v9, v7, v8

    sub-int v10, v0, v3

    div-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x3

    invoke-direct {v6, v3, v9, v10, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v7, p0, Lcom/android/camera/ui/SplitLineDrawer;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    move v5, v1

    :goto_2
    iget v6, p0, Lcom/android/camera/ui/SplitLineDrawer;->mColumnCount:I

    if-ge v5, v6, :cond_6

    new-instance v7, Landroid/graphics/Rect;

    mul-int v8, v5, v0

    div-int v9, v8, v6

    div-int/2addr v8, v6

    add-int/lit8 v8, v8, 0x2

    add-int/lit8 v6, v2, -0x1

    invoke-direct {v7, v9, v1, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v6, p0, Lcom/android/camera/ui/SplitLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    iget v1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mRowCount:I

    if-gt v4, v1, :cond_b

    if-eqz v4, :cond_7

    if-ne v4, v1, :cond_9

    :cond_7
    if-nez v4, :cond_8

    iget-boolean v1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mTopVisible:Z

    if-nez v1, :cond_9

    :cond_8
    iget v1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mRowCount:I

    if-ne v4, v1, :cond_a

    iget-boolean v1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mBottomVisible:Z

    if-eqz v1, :cond_a

    :cond_9
    new-instance v1, Landroid/graphics/Rect;

    mul-int v5, v4, v2

    iget v6, p0, Lcom/android/camera/ui/SplitLineDrawer;->mRowCount:I

    div-int v7, v5, v6

    sub-int v8, v0, v3

    div-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x2

    invoke-direct {v1, v3, v7, v8, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v5, p0, Lcom/android/camera/ui/SplitLineDrawer;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_b
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setBorderVisible(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mTopVisible:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/SplitLineDrawer;->mBottomVisible:Z

    if-eq v0, p2, :cond_1

    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mTopVisible:Z

    iput-boolean p2, p0, Lcom/android/camera/ui/SplitLineDrawer;->mBottomVisible:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setLineColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/SplitLineDrawer;->mLineColor:I

    return-void
.end method
