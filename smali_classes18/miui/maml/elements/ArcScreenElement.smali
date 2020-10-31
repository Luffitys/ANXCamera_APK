.class public Lmiui/maml/elements/ArcScreenElement;
.super Lmiui/maml/elements/GeometryScreenElement;
.source "ArcScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Arc"


# instance fields
.field private mAngle:F

.field private mAngleExp:Lmiui/maml/data/Expression;

.field private mArcPath:Landroid/graphics/Path;

.field private mClose:Z

.field mOvalRect:Landroid/graphics/RectF;

.field private mSweep:F

.field private mSweepExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ArcScreenElement;->mArcPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "startAngle"

    invoke-virtual {p0, p1, v1}, Lmiui/maml/elements/ArcScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/ArcScreenElement;->mAngleExp:Lmiui/maml/data/Expression;

    const-string v1, "sweep"

    invoke-virtual {p0, p1, v1}, Lmiui/maml/elements/ArcScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/ArcScreenElement;->mSweepExp:Lmiui/maml/data/Expression;

    const-string v1, "close"

    invoke-virtual {p0, p1, v1}, Lmiui/maml/elements/ArcScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/elements/ArcScreenElement;->mClose:Z

    sget-object v1, Lmiui/maml/elements/ScreenElement$Align;->CENTER:Lmiui/maml/elements/ScreenElement$Align;

    iput-object v1, p0, Lmiui/maml/elements/ArcScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    sget-object v1, Lmiui/maml/elements/ScreenElement$AlignV;->CENTER:Lmiui/maml/elements/ScreenElement$AlignV;

    iput-object v1, p0, Lmiui/maml/elements/ArcScreenElement;->mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

    return-void
.end method


# virtual methods
.method protected doTick(J)V
    .registers 6

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/GeometryScreenElement;->doTick(J)V

    invoke-virtual {p0}, Lmiui/maml/elements/ArcScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lmiui/maml/elements/ArcScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/ArcScreenElement;->mAngleExp:Lmiui/maml/data/Expression;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lmiui/maml/elements/ArcScreenElement;->mAngle:F

    iget-object v1, p0, Lmiui/maml/elements/ArcScreenElement;->mSweepExp:Lmiui/maml/data/Expression;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lmiui/maml/elements/ArcScreenElement;->mSweep:F

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;Lmiui/maml/elements/GeometryScreenElement$DrawMode;)V
    .registers 12

    invoke-virtual {p0}, Lmiui/maml/elements/ArcScreenElement;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lmiui/maml/elements/ArcScreenElement;->getHeight()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v0, v2

    const/4 v4, 0x0

    sub-float v3, v4, v3

    div-float v2, v1, v2

    sub-float/2addr v4, v2

    iget-object v2, p0, Lmiui/maml/elements/ArcScreenElement;->mArcPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lmiui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lmiui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    iput v4, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lmiui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    add-float v5, v3, v0

    iput v5, v2, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lmiui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    add-float v5, v4, v1

    iput v5, v2, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lmiui/maml/elements/ArcScreenElement;->mSweep:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v5, 0x43b40000    # 360.0f

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_3f

    iget-object v2, p0, Lmiui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lmiui/maml/elements/ArcScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_73

    :cond_3f
    iget-boolean v2, p0, Lmiui/maml/elements/ArcScreenElement;->mClose:Z

    if-eqz v2, :cond_54

    iget-object v2, p0, Lmiui/maml/elements/ArcScreenElement;->mArcPath:Landroid/graphics/Path;

    iget-object v5, p0, Lmiui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget-object v6, p0, Lmiui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_54
    iget-object v2, p0, Lmiui/maml/elements/ArcScreenElement;->mArcPath:Landroid/graphics/Path;

    iget-object v5, p0, Lmiui/maml/elements/ArcScreenElement;->mOvalRect:Landroid/graphics/RectF;

    iget v6, p0, Lmiui/maml/elements/ArcScreenElement;->mAngle:F

    iget v7, p0, Lmiui/maml/elements/ArcScreenElement;->mSweep:F

    iget-boolean v8, p0, Lmiui/maml/elements/ArcScreenElement;->mClose:Z

    xor-int/lit8 v8, v8, 0x1

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget-boolean v2, p0, Lmiui/maml/elements/ArcScreenElement;->mClose:Z

    if-eqz v2, :cond_6c

    iget-object v2, p0, Lmiui/maml/elements/ArcScreenElement;->mArcPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    :cond_6c
    iget-object v2, p0, Lmiui/maml/elements/ArcScreenElement;->mArcPath:Landroid/graphics/Path;

    iget-object v5, p0, Lmiui/maml/elements/ArcScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_73
    return-void
.end method
