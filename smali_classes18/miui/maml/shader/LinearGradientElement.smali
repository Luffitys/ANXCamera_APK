.class public Lmiui/maml/shader/LinearGradientElement;
.super Lmiui/maml/shader/ShaderElement;
.source "LinearGradientElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "LinearGradient"


# instance fields
.field private mEndX:F

.field private mEndXExp:Lmiui/maml/data/Expression;

.field private mEndY:F

.field private mEndYExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lmiui/maml/shader/ShaderElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "x1"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/shader/LinearGradientElement;->mEndXExp:Lmiui/maml/data/Expression;

    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "y1"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/shader/LinearGradientElement;->mEndYExp:Lmiui/maml/data/Expression;

    iget-object v0, p0, Lmiui/maml/shader/LinearGradientElement;->mGradientStops:Lmiui/maml/shader/ShaderElement$GradientStops;

    invoke-virtual {v0}, Lmiui/maml/shader/ShaderElement$GradientStops;->update()V

    return-void
.end method

.method private final getEndX()F
    .registers 5

    iget-object v0, p0, Lmiui/maml/shader/LinearGradientElement;->mEndXExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    :goto_b
    iget-object v2, p0, Lmiui/maml/shader/LinearGradientElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-float v2, v2

    return v2
.end method

.method private final getEndY()F
    .registers 5

    iget-object v0, p0, Lmiui/maml/shader/LinearGradientElement;->mEndYExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    :goto_b
    iget-object v2, p0, Lmiui/maml/shader/LinearGradientElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-float v2, v2

    return v2
.end method


# virtual methods
.method public onGradientStopsChanged()V
    .registers 10

    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/shader/LinearGradientElement;->mX:F

    iput v0, p0, Lmiui/maml/shader/LinearGradientElement;->mY:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lmiui/maml/shader/LinearGradientElement;->mEndX:F

    iput v0, p0, Lmiui/maml/shader/LinearGradientElement;->mEndY:F

    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lmiui/maml/shader/LinearGradientElement;->mGradientStops:Lmiui/maml/shader/ShaderElement$GradientStops;

    invoke-virtual {v1}, Lmiui/maml/shader/ShaderElement$GradientStops;->getColors()[I

    move-result-object v6

    iget-object v1, p0, Lmiui/maml/shader/LinearGradientElement;->mGradientStops:Lmiui/maml/shader/ShaderElement$GradientStops;

    invoke-virtual {v1}, Lmiui/maml/shader/ShaderElement$GradientStops;->getPositions()[F

    move-result-object v7

    iget-object v8, p0, Lmiui/maml/shader/LinearGradientElement;->mTileMode:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lmiui/maml/shader/LinearGradientElement;->mShader:Landroid/graphics/Shader;

    return-void
.end method

.method public updateShaderMatrix()Z
    .registers 13

    invoke-virtual {p0}, Lmiui/maml/shader/LinearGradientElement;->getX()F

    move-result v0

    invoke-virtual {p0}, Lmiui/maml/shader/LinearGradientElement;->getY()F

    move-result v1

    invoke-direct {p0}, Lmiui/maml/shader/LinearGradientElement;->getEndX()F

    move-result v2

    invoke-direct {p0}, Lmiui/maml/shader/LinearGradientElement;->getEndY()F

    move-result v3

    iget v4, p0, Lmiui/maml/shader/LinearGradientElement;->mX:F

    cmpl-float v4, v0, v4

    const/4 v5, 0x0

    if-nez v4, :cond_2b

    iget v4, p0, Lmiui/maml/shader/LinearGradientElement;->mY:F

    cmpl-float v4, v1, v4

    if-nez v4, :cond_2b

    iget v4, p0, Lmiui/maml/shader/LinearGradientElement;->mEndX:F

    cmpl-float v4, v2, v4

    if-nez v4, :cond_2b

    iget v4, p0, Lmiui/maml/shader/LinearGradientElement;->mEndY:F

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_2a

    goto :goto_2b

    :cond_2a
    return v5

    :cond_2b
    :goto_2b
    iput v0, p0, Lmiui/maml/shader/LinearGradientElement;->mX:F

    iput v1, p0, Lmiui/maml/shader/LinearGradientElement;->mY:F

    iput v2, p0, Lmiui/maml/shader/LinearGradientElement;->mEndX:F

    iput v3, p0, Lmiui/maml/shader/LinearGradientElement;->mEndY:F

    iget-object v4, p0, Lmiui/maml/shader/LinearGradientElement;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    iget-object v6, p0, Lmiui/maml/shader/LinearGradientElement;->mShaderMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x4

    new-array v7, v4, [F

    fill-array-data v7, :array_54

    const/4 v8, 0x0

    new-array v9, v4, [F

    aput v0, v9, v5

    const/4 v4, 0x1

    aput v1, v9, v4

    const/4 v5, 0x2

    aput v2, v9, v5

    const/4 v5, 0x3

    aput v3, v9, v5

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    return v4

    :array_54
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method
