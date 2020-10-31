.class public Lmiui/smooth/internal/SmoothDrawHelper;
.super Ljava/lang/Object;
.source "SmoothDrawHelper.java"


# instance fields
.field private mClipPaint:Landroid/graphics/Paint;

.field private mClipPath:Landroid/graphics/Path;

.field private mLayer:Landroid/graphics/RectF;

.field private mOutterPath:Landroid/graphics/Path;

.field private mPathProvider:Lcom/miui/internal/smooth/SmoothPathProvider;

.field private mRadii:[F

.field private mRadius:F

.field private mStrokeColor:I

.field private mStrokePaint:Landroid/graphics/Paint;

.field private mStrokeWidth:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mStrokeWidth:I

    iput v0, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mStrokeColor:I

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mClipPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mOutterPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mClipPath:Landroid/graphics/Path;

    new-instance v0, Lcom/miui/internal/smooth/SmoothPathProvider;

    invoke-direct {v0}, Lcom/miui/internal/smooth/SmoothPathProvider;-><init>()V

    iput-object v0, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mPathProvider:Lcom/miui/internal/smooth/SmoothPathProvider;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mLayer:Landroid/graphics/RectF;

    return-void
.end method

.method private getSmoothPathFromProvider(Landroid/graphics/Path;Landroid/graphics/RectF;[FFFF)Landroid/graphics/Path;
    .registers 8

    if-nez p3, :cond_8

    iget-object v0, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mPathProvider:Lcom/miui/internal/smooth/SmoothPathProvider;

    invoke-virtual {v0, p2, p4, p5, p6}, Lcom/miui/internal/smooth/SmoothPathProvider;->buildSmoothData(Landroid/graphics/RectF;FFF)V

    goto :goto_d

    :cond_8
    iget-object v0, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mPathProvider:Lcom/miui/internal/smooth/SmoothPathProvider;

    invoke-virtual {v0, p2, p3, p5, p6}, Lcom/miui/internal/smooth/SmoothPathProvider;->buildSmoothData(Landroid/graphics/RectF;[FFF)V

    :goto_d
    iget-object v0, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mPathProvider:Lcom/miui/internal/smooth/SmoothPathProvider;

    invoke-virtual {v0, p1}, Lcom/miui/internal/smooth/SmoothPathProvider;->getSmoothPath(Landroid/graphics/Path;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public drawMask(Landroid/graphics/Canvas;Landroid/graphics/Xfermode;)V
    .registers 5

    iget-object v0, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mClipPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mClipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mClipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mClipPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public drawStroke(Landroid/graphics/Canvas;)V
    .registers 5

    iget v0, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mStrokeWidth:I

    if-eqz v0, :cond_a

    iget v0, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mStrokeColor:I

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_29

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mStrokePaint:Landroid/graphics/Paint;

    iget v2, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mStrokePaint:Landroid/graphics/Paint;

    iget v2, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mStrokeColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mOutterPath:Landroid/graphics/Path;

    iget-object v2, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_29
    return-void
.end method

.method public getRadii()[F
    .registers 2

    iget-object v0, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mRadii:[F

    return-object v0
.end method

.method public getRadius()F
    .registers 2

    iget v0, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mRadius:F

    return v0
.end method

.method public getStrokeColor()I
    .registers 2

    iget v0, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mStrokeColor:I

    return v0
.end method

.method public getStrokeWidth()I
    .registers 2

    iget v0, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mStrokeWidth:I

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .registers 11

    iget-object v0, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mLayer:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget v0, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mStrokeWidth:I

    if-eqz v0, :cond_f

    iget v0, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mStrokeColor:I

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_19

    iget v1, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mStrokeWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    move v7, v1

    iget-object v3, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mOutterPath:Landroid/graphics/Path;

    iget-object v4, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mLayer:Landroid/graphics/RectF;

    iget-object v5, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mRadii:[F

    iget v6, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mRadius:F

    move-object v2, p0

    move v8, v7

    invoke-direct/range {v2 .. v8}, Lmiui/smooth/internal/SmoothDrawHelper;->getSmoothPathFromProvider(Landroid/graphics/Path;Landroid/graphics/RectF;[FFFF)Landroid/graphics/Path;

    move-result-object v1

    iput-object v1, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mOutterPath:Landroid/graphics/Path;

    iget-object v1, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mClipPath:Landroid/graphics/Path;

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    goto :goto_3a

    :cond_33
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mClipPath:Landroid/graphics/Path;

    :goto_3a
    iget-object v1, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mClipPath:Landroid/graphics/Path;

    iget-object v2, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mLayer:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iget-object v1, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mClipPath:Landroid/graphics/Path;

    iget-object v2, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mOutterPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    return-void
.end method

.method public setRadii([F)V
    .registers 2

    iput-object p1, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mRadii:[F

    return-void
.end method

.method public setRadius(F)V
    .registers 2

    iput p1, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mRadius:F

    return-void
.end method

.method public setStrokeColor(I)V
    .registers 2

    iput p1, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mStrokeColor:I

    return-void
.end method

.method public setStrokeWidth(I)V
    .registers 2

    iput p1, p0, Lmiui/smooth/internal/SmoothDrawHelper;->mStrokeWidth:I

    return-void
.end method
