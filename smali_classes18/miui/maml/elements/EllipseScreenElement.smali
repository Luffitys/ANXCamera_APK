.class public Lmiui/maml/elements/EllipseScreenElement;
.super Lmiui/maml/elements/GeometryScreenElement;
.source "EllipseScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Ellipse"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    sget-object v0, Lmiui/maml/elements/ScreenElement$Align;->CENTER:Lmiui/maml/elements/ScreenElement$Align;

    iput-object v0, p0, Lmiui/maml/elements/EllipseScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    sget-object v0, Lmiui/maml/elements/ScreenElement$AlignV;->CENTER:Lmiui/maml/elements/ScreenElement$AlignV;

    iput-object v0, p0, Lmiui/maml/elements/EllipseScreenElement;->mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;Lmiui/maml/elements/GeometryScreenElement$DrawMode;)V
    .registers 10

    invoke-virtual {p0}, Lmiui/maml/elements/EllipseScreenElement;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lmiui/maml/elements/EllipseScreenElement;->getHeight()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-ltz v3, :cond_48

    cmpg-float v3, v1, v2

    if-gez v3, :cond_12

    goto :goto_48

    :cond_12
    sget-object v3, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_OUTER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    if-ne p2, v3, :cond_1d

    iget v3, p0, Lmiui/maml/elements/EllipseScreenElement;->mWeight:F

    add-float/2addr v0, v3

    iget v3, p0, Lmiui/maml/elements/EllipseScreenElement;->mWeight:F

    add-float/2addr v1, v3

    goto :goto_30

    :cond_1d
    sget-object v3, Lmiui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_INNER:Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    if-ne p2, v3, :cond_30

    iget v3, p0, Lmiui/maml/elements/EllipseScreenElement;->mWeight:F

    sub-float/2addr v0, v3

    iget v3, p0, Lmiui/maml/elements/EllipseScreenElement;->mWeight:F

    sub-float/2addr v1, v3

    cmpg-float v3, v0, v2

    if-ltz v3, :cond_2f

    cmpg-float v3, v1, v2

    if-gez v3, :cond_30

    :cond_2f
    return-void

    :cond_30
    :goto_30
    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v0, v3

    sub-float v4, v2, v4

    div-float v3, v1, v3

    sub-float/2addr v2, v3

    new-instance v3, Landroid/graphics/RectF;

    add-float v5, v4, v0

    add-float v6, v2, v1

    invoke-direct {v3, v4, v2, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v5, p0, Lmiui/maml/elements/EllipseScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    :cond_48
    :goto_48
    return-void
.end method
