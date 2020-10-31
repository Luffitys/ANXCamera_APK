.class public final Lmiui/maml/shader/ShadersElement;
.super Ljava/lang/Object;
.source "ShadersElement.java"


# static fields
.field public static final FILL_TAG_NAME:Ljava/lang/String; = "FillShaders"

.field public static final STROKE_TAG_NAME:Ljava/lang/String; = "StrokeShaders"


# instance fields
.field private mShaderElement:Lmiui/maml/shader/ShaderElement;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lmiui/maml/shader/ShadersElement;->loadShaderElements(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-void
.end method

.method private loadShaderElements(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 9

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_65

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_17

    goto :goto_62

    :cond_17
    move-object v3, v2

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LinearGradient"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    new-instance v5, Lmiui/maml/shader/LinearGradientElement;

    invoke-direct {v5, v3, p2}, Lmiui/maml/shader/LinearGradientElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v5, p0, Lmiui/maml/shader/ShadersElement;->mShaderElement:Lmiui/maml/shader/ShaderElement;

    goto :goto_5d

    :cond_2e
    const-string v5, "RadialGradient"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    new-instance v5, Lmiui/maml/shader/RadialGradientElement;

    invoke-direct {v5, v3, p2}, Lmiui/maml/shader/RadialGradientElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v5, p0, Lmiui/maml/shader/ShadersElement;->mShaderElement:Lmiui/maml/shader/ShaderElement;

    goto :goto_5d

    :cond_3e
    const-string v5, "SweepGradient"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    new-instance v5, Lmiui/maml/shader/SweepGradientElement;

    invoke-direct {v5, v3, p2}, Lmiui/maml/shader/SweepGradientElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v5, p0, Lmiui/maml/shader/ShadersElement;->mShaderElement:Lmiui/maml/shader/ShaderElement;

    goto :goto_5d

    :cond_4e
    const-string v5, "BitmapShader"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5d

    new-instance v5, Lmiui/maml/shader/BitmapShaderElement;

    invoke-direct {v5, v3, p2}, Lmiui/maml/shader/BitmapShaderElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v5, p0, Lmiui/maml/shader/ShadersElement;->mShaderElement:Lmiui/maml/shader/ShaderElement;

    :cond_5d
    :goto_5d
    iget-object v5, p0, Lmiui/maml/shader/ShadersElement;->mShaderElement:Lmiui/maml/shader/ShaderElement;

    if-eqz v5, :cond_62

    goto :goto_65

    :cond_62
    :goto_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_65
    :goto_65
    return-void
.end method


# virtual methods
.method public getShader()Landroid/graphics/Shader;
    .registers 2

    iget-object v0, p0, Lmiui/maml/shader/ShadersElement;->mShaderElement:Lmiui/maml/shader/ShaderElement;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lmiui/maml/shader/ShaderElement;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public updateShader()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/shader/ShadersElement;->mShaderElement:Lmiui/maml/shader/ShaderElement;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lmiui/maml/shader/ShaderElement;->updateShader()V

    :cond_7
    return-void
.end method
