.class public final Lmiui/maml/shader/ShaderElement$GradientStop;
.super Ljava/lang/Object;
.source "ShaderElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/shader/ShaderElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "GradientStop"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "GradientStop"


# instance fields
.field private mColorParser:Lmiui/maml/util/ColorParser;

.field private mPositionExp:Lmiui/maml/data/Expression;

.field final synthetic this$0:Lmiui/maml/shader/ShaderElement;


# direct methods
.method public constructor <init>(Lmiui/maml/shader/ShaderElement;Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 6

    iput-object p1, p0, Lmiui/maml/shader/ShaderElement$GradientStop;->this$0:Lmiui/maml/shader/ShaderElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lmiui/maml/shader/ShaderElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-static {v0, p2}, Lmiui/maml/util/ColorParser;->fromElement(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;)Lmiui/maml/util/ColorParser;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/shader/ShaderElement$GradientStop;->mColorParser:Lmiui/maml/util/ColorParser;

    iget-object v0, p1, Lmiui/maml/shader/ShaderElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "position"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/shader/ShaderElement$GradientStop;->mPositionExp:Lmiui/maml/data/Expression;

    if-nez v0, :cond_2c

    const-string v0, "GradientStop"

    const-string v1, "lost position attribute."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    return-void
.end method


# virtual methods
.method public getColor()I
    .registers 2

    iget-object v0, p0, Lmiui/maml/shader/ShaderElement$GradientStop;->mColorParser:Lmiui/maml/util/ColorParser;

    invoke-virtual {v0}, Lmiui/maml/util/ColorParser;->getColor()I

    move-result v0

    return v0
.end method

.method public getPosition()F
    .registers 3

    iget-object v0, p0, Lmiui/maml/shader/ShaderElement$GradientStop;->mPositionExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
