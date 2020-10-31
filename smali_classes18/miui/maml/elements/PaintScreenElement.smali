.class public Lmiui/maml/elements/PaintScreenElement;
.super Lmiui/maml/elements/AnimatedScreenElement;
.source "PaintScreenElement.java"


# static fields
.field private static DEFAULT_WEIGHT:F = 0.0f

.field public static final TAG_NAME:Ljava/lang/String; = "Paint"


# instance fields
.field private mCachedBitmap:Landroid/graphics/Bitmap;

.field private mCachedCanvas:Landroid/graphics/Canvas;

.field private mCachedPaint:Landroid/graphics/Paint;

.field private mColor:I

.field private mColorParser:Lmiui/maml/util/ColorParser;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPendingMouseUp:Z

.field private mWeight:F

.field private mWeightExp:Lmiui/maml/data/Expression;

.field private mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lmiui/maml/elements/PaintScreenElement;->DEFAULT_WEIGHT:F

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/PaintScreenElement;->load(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/PaintScreenElement;->mPath:Landroid/graphics/Path;

    sget v0, Lmiui/maml/elements/PaintScreenElement;->DEFAULT_WEIGHT:F

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/PaintScreenElement;->scale(D)F

    move-result v0

    sput v0, Lmiui/maml/elements/PaintScreenElement;->DEFAULT_WEIGHT:F

    iput v0, p0, Lmiui/maml/elements/PaintScreenElement;->mWeight:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/PaintScreenElement;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lmiui/maml/elements/PaintScreenElement;->mXfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lmiui/maml/elements/PaintScreenElement;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lmiui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    sget v2, Lmiui/maml/elements/PaintScreenElement;->DEFAULT_WEIGHT:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lmiui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lmiui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lmiui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-boolean v1, p0, Lmiui/maml/elements/PaintScreenElement;->mTouchable:Z

    return-void
.end method

.method private load(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lmiui/maml/elements/PaintScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "weight"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/PaintScreenElement;->mWeightExp:Lmiui/maml/data/Expression;

    invoke-static {v0, p1}, Lmiui/maml/util/ColorParser;->fromElement(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;)Lmiui/maml/util/ColorParser;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/PaintScreenElement;->mColorParser:Lmiui/maml/util/ColorParser;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    const-string v2, "xfermode"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/maml/util/Utils;->getPorterDuffMode(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lmiui/maml/elements/PaintScreenElement;->mXfermode:Landroid/graphics/Xfermode;

    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .registers 12

    invoke-virtual {p0}, Lmiui/maml/elements/PaintScreenElement;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lmiui/maml/elements/PaintScreenElement;->getHeight()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Lmiui/maml/elements/PaintScreenElement;->getLeft(FF)F

    move-result v3

    invoke-virtual {p0, v2, v1}, Lmiui/maml/elements/PaintScreenElement;->getTop(FF)F

    move-result v4

    invoke-virtual {p0}, Lmiui/maml/elements/PaintScreenElement;->getAbsoluteLeft()F

    move-result v5

    invoke-virtual {p0}, Lmiui/maml/elements/PaintScreenElement;->getAbsoluteTop()F

    move-result v6

    iget-boolean v7, p0, Lmiui/maml/elements/PaintScreenElement;->mPendingMouseUp:Z

    if-eqz v7, :cond_3f

    iget-object v7, p0, Lmiui/maml/elements/PaintScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    iget-object v7, p0, Lmiui/maml/elements/PaintScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    neg-float v8, v5

    neg-float v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v7, p0, Lmiui/maml/elements/PaintScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    iget-object v8, p0, Lmiui/maml/elements/PaintScreenElement;->mPath:Landroid/graphics/Path;

    iget-object v9, p0, Lmiui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v7, p0, Lmiui/maml/elements/PaintScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    iget-object v7, p0, Lmiui/maml/elements/PaintScreenElement;->mPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    const/4 v7, 0x0

    iput-boolean v7, p0, Lmiui/maml/elements/PaintScreenElement;->mPendingMouseUp:Z

    :cond_3f
    iget-object v7, p0, Lmiui/maml/elements/PaintScreenElement;->mCachedBitmap:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lmiui/maml/elements/PaintScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-boolean v7, p0, Lmiui/maml/elements/PaintScreenElement;->mPressed:Z

    if-eqz v7, :cond_97

    iget v7, p0, Lmiui/maml/elements/PaintScreenElement;->mWeight:F

    cmpl-float v2, v7, v2

    if-lez v2, :cond_97

    iget v2, p0, Lmiui/maml/elements/PaintScreenElement;->mAlpha:I

    if-lez v2, :cond_97

    iget-object v2, p0, Lmiui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    iget v7, p0, Lmiui/maml/elements/PaintScreenElement;->mWeight:F

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lmiui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    iget v7, p0, Lmiui/maml/elements/PaintScreenElement;->mColor:I

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lmiui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    iget v8, p0, Lmiui/maml/elements/PaintScreenElement;->mAlpha:I

    invoke-static {v7, v8}, Lmiui/maml/util/Utils;->mixAlpha(II)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    neg-float v2, v5

    add-float/2addr v2, v3

    neg-float v7, v6

    add-float/2addr v7, v4

    invoke-virtual {p1, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lmiui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v2

    iget-object v7, p0, Lmiui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lmiui/maml/elements/PaintScreenElement;->mXfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v7, p0, Lmiui/maml/elements/PaintScreenElement;->mPath:Landroid/graphics/Path;

    iget-object v8, p0, Lmiui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v7, p0, Lmiui/maml/elements/PaintScreenElement;->mCachedPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_97
    return-void
.end method

.method protected doTick(J)V
    .registers 5

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->doTick(J)V

    invoke-virtual {p0}, Lmiui/maml/elements/PaintScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lmiui/maml/elements/PaintScreenElement;->mWeightExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/PaintScreenElement;->scale(D)F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/PaintScreenElement;->mWeight:F

    :cond_18
    iget-object v0, p0, Lmiui/maml/elements/PaintScreenElement;->mColorParser:Lmiui/maml/util/ColorParser;

    invoke-virtual {v0}, Lmiui/maml/util/ColorParser;->getColor()I

    move-result v0

    iput v0, p0, Lmiui/maml/elements/PaintScreenElement;->mColor:I

    return-void
.end method

.method public finish()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->finish()V

    iget-object v0, p0, Lmiui/maml/elements/PaintScreenElement;->mCachedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/PaintScreenElement;->mCachedBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lmiui/maml/elements/PaintScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public init()V
    .registers 6

    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->init()V

    invoke-virtual {p0}, Lmiui/maml/elements/PaintScreenElement;->getWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1a

    invoke-virtual {p0}, Lmiui/maml/elements/PaintScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    const-string v3, "screen_width"

    invoke-static {v3, v2}, Lmiui/maml/util/Utils;->getVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/PaintScreenElement;->scale(D)F

    move-result v0

    :cond_1a
    invoke-virtual {p0}, Lmiui/maml/elements/PaintScreenElement;->getHeight()F

    move-result v2

    cmpg-float v1, v2, v1

    if-gez v1, :cond_30

    invoke-virtual {p0}, Lmiui/maml/elements/PaintScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string v3, "screen_height"

    invoke-static {v3, v1}, Lmiui/maml/util/Utils;->getVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;)D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lmiui/maml/elements/PaintScreenElement;->scale(D)F

    move-result v2

    :cond_30
    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/PaintScreenElement;->mCachedBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lmiui/maml/elements/PaintScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3}, Lmiui/maml/ScreenElementRoot;->getTargetDensity()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v3, p0, Lmiui/maml/elements/PaintScreenElement;->mCachedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lmiui/maml/elements/PaintScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method protected onActionCancel()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/elements/PaintScreenElement;->mPendingMouseUp:Z

    return-void
.end method

.method protected onActionDown(FF)V
    .registers 4

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->onActionDown(FF)V

    iget-object v0, p0, Lmiui/maml/elements/PaintScreenElement;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lmiui/maml/elements/PaintScreenElement;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    return-void
.end method

.method protected onActionMove(FF)V
    .registers 4

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->onActionMove(FF)V

    iget-object v0, p0, Lmiui/maml/elements/PaintScreenElement;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method protected onActionUp()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->onActionUp()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/elements/PaintScreenElement;->mPendingMouseUp:Z

    return-void
.end method

.method public reset(J)V
    .registers 6

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->reset(J)V

    iget-object v0, p0, Lmiui/maml/elements/PaintScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iput-boolean v2, p0, Lmiui/maml/elements/PaintScreenElement;->mPressed:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lmiui/maml/elements/PaintScreenElement;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_a
    return-void
.end method
