.class Lmiui/maml/elements/VariableArrayElement$Item;
.super Ljava/lang/Object;
.source "VariableArrayElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/VariableArrayElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation


# instance fields
.field public mExpression:Lmiui/maml/data/Expression;

.field public mValue:Ljava/lang/Object;

.field final synthetic this$0:Lmiui/maml/elements/VariableArrayElement;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/VariableArrayElement;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lmiui/maml/elements/VariableArrayElement$Item;->this$0:Lmiui/maml/elements/VariableArrayElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mValue:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mExpression:Lmiui/maml/data/Expression;

    return-void
.end method

.method public constructor <init>(Lmiui/maml/elements/VariableArrayElement;Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;)V
    .registers 7

    iput-object p1, p0, Lmiui/maml/elements/VariableArrayElement$Item;->this$0:Lmiui/maml/elements/VariableArrayElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_34

    const-string v0, "expression"

    invoke-interface {p3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mExpression:Lmiui/maml/data/Expression;

    const-string v0, "value"

    invoke-interface {p3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lmiui/maml/elements/VariableArrayElement;->mType:Lmiui/maml/elements/VariableArrayElement$Type;

    sget-object v1, Lmiui/maml/elements/VariableArrayElement$Type;->DOUBLE:Lmiui/maml/elements/VariableArrayElement$Type;

    if-ne p1, v1, :cond_32

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_32

    :try_start_25
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mValue:Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_2f} :catch_30

    goto :goto_31

    :catch_30
    move-exception p1

    :goto_31
    goto :goto_34

    :cond_32
    iput-object v0, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mValue:Ljava/lang/Object;

    :cond_34
    :goto_34
    return-void
.end method


# virtual methods
.method public evaluate()Ljava/lang/Double;
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mExpression:Lmiui/maml/data/Expression;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->isNull()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_16

    :cond_c
    iget-object v0, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :goto_16
    return-object v1

    :cond_17
    iget-object v0, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mValue:Ljava/lang/Object;

    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_27

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :cond_27
    return-object v1
.end method

.method public evaluateStr()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mValue:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_12

    check-cast v0, Ljava/lang/String;

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return-object v0
.end method

.method public isExpression()Z
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/VariableArrayElement$Item;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
