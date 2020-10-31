.class public Lmiui/maml/elements/LineScreenElement;
.super Lmiui/maml/elements/GeometryScreenElement;
.source "LineScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Line"


# instance fields
.field private mEndXExp:Lmiui/maml/data/Expression;

.field private mEndYExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "x1"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/LineScreenElement;->mEndXExp:Lmiui/maml/data/Expression;

    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "y1"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/LineScreenElement;->mEndYExp:Lmiui/maml/data/Expression;

    return-void
.end method

.method private final getEndX()F
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/LineScreenElement;->mEndXExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    :goto_b
    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/LineScreenElement;->scale(D)F

    move-result v2

    return v2
.end method

.method private final getEndY()F
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/LineScreenElement;->mEndYExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    :goto_b
    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/LineScreenElement;->scale(D)F

    move-result v2

    return v2
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;Lmiui/maml/elements/GeometryScreenElement$DrawMode;)V
    .registers 11

    invoke-direct {p0}, Lmiui/maml/elements/LineScreenElement;->getEndX()F

    move-result v0

    invoke-virtual {p0}, Lmiui/maml/elements/LineScreenElement;->getX()F

    move-result v1

    sub-float v5, v0, v1

    invoke-direct {p0}, Lmiui/maml/elements/LineScreenElement;->getEndY()F

    move-result v0

    invoke-virtual {p0}, Lmiui/maml/elements/LineScreenElement;->getY()F

    move-result v1

    sub-float v6, v0, v1

    iget-object v7, p0, Lmiui/maml/elements/LineScreenElement;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
