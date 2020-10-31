.class public Lmiui/maml/shader/SweepGradientElement;
.super Lmiui/maml/shader/ShaderElement;
.source "SweepGradientElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SweepGradient"


# instance fields
.field private mAngle:F

.field private mAngleExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lmiui/maml/shader/ShaderElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    invoke-virtual {p0}, Lmiui/maml/shader/SweepGradientElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "rotation"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/shader/SweepGradientElement;->mAngleExp:Lmiui/maml/data/Expression;

    iget-object v0, p0, Lmiui/maml/shader/SweepGradientElement;->mGradientStops:Lmiui/maml/shader/ShaderElement$GradientStops;

    invoke-virtual {v0}, Lmiui/maml/shader/ShaderElement$GradientStops;->update()V

    return-void
.end method

.method private final getAngle()F
    .registers 3

    iget-object v0, p0, Lmiui/maml/shader/SweepGradientElement;->mAngleExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method


# virtual methods
.method public onGradientStopsChanged()V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/shader/SweepGradientElement;->mX:F

    iput v0, p0, Lmiui/maml/shader/SweepGradientElement;->mY:F

    iput v0, p0, Lmiui/maml/shader/SweepGradientElement;->mAngle:F

    new-instance v1, Landroid/graphics/SweepGradient;

    iget-object v2, p0, Lmiui/maml/shader/SweepGradientElement;->mGradientStops:Lmiui/maml/shader/ShaderElement$GradientStops;

    invoke-virtual {v2}, Lmiui/maml/shader/ShaderElement$GradientStops;->getColors()[I

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/shader/SweepGradientElement;->mGradientStops:Lmiui/maml/shader/ShaderElement$GradientStops;

    invoke-virtual {v3}, Lmiui/maml/shader/ShaderElement$GradientStops;->getPositions()[F

    move-result-object v3

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    iput-object v1, p0, Lmiui/maml/shader/SweepGradientElement;->mShader:Landroid/graphics/Shader;

    return-void
.end method

.method public updateShaderMatrix()Z
    .registers 7

    invoke-virtual {p0}, Lmiui/maml/shader/SweepGradientElement;->getX()F

    move-result v0

    invoke-virtual {p0}, Lmiui/maml/shader/SweepGradientElement;->getY()F

    move-result v1

    invoke-direct {p0}, Lmiui/maml/shader/SweepGradientElement;->getAngle()F

    move-result v2

    iget v3, p0, Lmiui/maml/shader/SweepGradientElement;->mX:F

    cmpl-float v3, v0, v3

    if-nez v3, :cond_21

    iget v3, p0, Lmiui/maml/shader/SweepGradientElement;->mY:F

    cmpl-float v3, v1, v3

    if-nez v3, :cond_21

    iget v3, p0, Lmiui/maml/shader/SweepGradientElement;->mAngle:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v3, 0x0

    return v3

    :cond_21
    :goto_21
    iput v0, p0, Lmiui/maml/shader/SweepGradientElement;->mX:F

    iput v1, p0, Lmiui/maml/shader/SweepGradientElement;->mY:F

    iput v2, p0, Lmiui/maml/shader/SweepGradientElement;->mAngle:F

    iget-object v3, p0, Lmiui/maml/shader/SweepGradientElement;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    iget-object v3, p0, Lmiui/maml/shader/SweepGradientElement;->mShaderMatrix:Landroid/graphics/Matrix;

    neg-float v4, v0

    neg-float v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v3, p0, Lmiui/maml/shader/SweepGradientElement;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v3, p0, Lmiui/maml/shader/SweepGradientElement;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v3, 0x1

    return v3
.end method
