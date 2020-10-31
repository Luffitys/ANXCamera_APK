.class Lmiui/maml/ActionCommand$EaseTypeCommand;
.super Lmiui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EaseTypeCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "EaseTypeCommand"


# instance fields
.field private mEaseFun:Ljava/lang/String;

.field private mEaseParams:Ljava/lang/String;

.field private mEaseTypeExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lmiui/maml/ActionCommand$TargetCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    sget-object v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ANIMATION_ITEM:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    iput-object v0, p0, Lmiui/maml/ActionCommand$EaseTypeCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$EaseTypeCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "easeTypeExp"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$EaseTypeCommand;->mEaseTypeExp:Lmiui/maml/data/Expression;

    const-string v0, "easeFunExp"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$EaseTypeCommand;->mEaseFun:Ljava/lang/String;

    const-string v0, "easeParamsExp"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$EaseTypeCommand;->mEaseParams:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 7

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$EaseTypeCommand;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    iget-object v3, p0, Lmiui/maml/ActionCommand$EaseTypeCommand;->mEaseTypeExp:Lmiui/maml/data/Expression;

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmiui/maml/ActionCommand$EaseTypeCommand;->mEaseParams:Ljava/lang/String;

    iget-object v5, p0, Lmiui/maml/ActionCommand$EaseTypeCommand;->mEaseFun:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->changeInterpolator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_27
    return-void
.end method
