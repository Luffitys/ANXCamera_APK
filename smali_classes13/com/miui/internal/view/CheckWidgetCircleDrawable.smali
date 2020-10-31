.class public Lcom/miui/internal/view/CheckWidgetCircleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CheckWidgetCircleDrawable.java"


# static fields
.field private static final PADDING:I = 0x3

.field private static final STROKEWIDTH:I = 0x3


# instance fields
.field private mHasStroke:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mScale:F

.field private mStrokeDisableAlpha:I

.field private mStrokeNormalAlpha:I

.field private mStrokePaint:Landroid/graphics/Paint;

.field private mUncheckedDisableAlpha:I

.field private mUncheckedNormalAlpha:I


# direct methods
.method public constructor <init>(III)V
    .registers 11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/view/CheckWidgetCircleDrawable;-><init>(IIIIII)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 9

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->mScale:F

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iput p2, p0, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->mUncheckedNormalAlpha:I

    iput p3, p0, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->mUncheckedDisableAlpha:I

    if-eqz p4, :cond_28

    move v0, v1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    iput-boolean v0, p0, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->mHasStroke:Z

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_45
    iput p5, p0, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->mStrokeNormalAlpha:I

    iput p6, p0, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->mStrokeDisableAlpha:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 11

    invoke-virtual {p0}, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-boolean v4, p0, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->mHasStroke:Z

    const/high16 v5, 0x40400000    # 3.0f

    if-eqz v4, :cond_45

    int-to-float v4, v1

    int-to-float v6, v2

    int-to-float v7, v3

    iget v8, p0, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->mScale:F

    mul-float/2addr v7, v8

    sub-float/2addr v7, v5

    sub-float/2addr v7, v5

    iget-object v8, p0, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    int-to-float v4, v1

    int-to-float v6, v2

    int-to-float v7, v3

    iget v8, p0, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->mScale:F

    mul-float/2addr v7, v8

    sub-float/2addr v7, v5

    const/high16 v5, 0x3fc00000    # 1.5f

    sub-float/2addr v7, v5

    iget-object v5, p0, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v7, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_51

    :cond_45
    int-to-float v4, v1

    int-to-float v6, v2

    int-to-float v7, v3

    iget v8, p0, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->mScale:F

    mul-float/2addr v7, v8

    sub-float/2addr v7, v5

    iget-object v5, p0, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v7, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_51
    return-void
.end method

.method public getAlpha()I
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public getScale()F
    .registers 2

    iget v0, p0, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->mScale:F

    return v0
.end method

.method public setAlpha(I)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v0, p0, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->mHasStroke:Z

    if-eqz v0, :cond_20

    iget v0, p0, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->mUncheckedNormalAlpha:I

    if-ne p1, v0, :cond_15

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->mStrokeNormalAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_20

    :cond_15
    iget v0, p0, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->mUncheckedDisableAlpha:I

    if-ne p1, v0, :cond_20

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->mStrokeDisableAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_20
    :goto_20
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setScale(F)V
    .registers 2

    iput p1, p0, Lcom/miui/internal/view/CheckWidgetCircleDrawable;->mScale:F

    return-void
.end method
