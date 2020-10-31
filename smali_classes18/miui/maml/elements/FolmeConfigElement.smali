.class public Lmiui/maml/elements/FolmeConfigElement;
.super Lmiui/maml/elements/ConfigElement;
.source "FolmeConfigElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/FolmeConfigElement$ConfigData;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "FolmeConfig"


# instance fields
.field private mConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/maml/elements/FolmeConfigElement$ConfigData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 9

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ConfigElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/FolmeConfigElement;->mConfigs:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lmiui/maml/elements/FolmeConfigElement;->getConfigData(Lorg/w3c/dom/Element;)Lmiui/maml/elements/FolmeConfigElement$ConfigData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_45

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_42

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Special"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    iget-object v4, p0, Lmiui/maml/elements/FolmeConfigElement;->mConfigs:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lmiui/maml/elements/FolmeConfigElement;->getConfigData(Lorg/w3c/dom/Element;)Lmiui/maml/elements/FolmeConfigElement$ConfigData;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_45
    return-void
.end method

.method private getConfigData(Lorg/w3c/dom/Element;)Lmiui/maml/elements/FolmeConfigElement$ConfigData;
    .registers 5

    new-instance v0, Lmiui/maml/elements/FolmeConfigElement$ConfigData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/maml/elements/FolmeConfigElement$ConfigData;-><init>(Lmiui/maml/elements/FolmeConfigElement;Lmiui/maml/elements/FolmeConfigElement$1;)V

    invoke-virtual {p0}, Lmiui/maml/elements/FolmeConfigElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string v2, "ease"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, v0, Lmiui/maml/elements/FolmeConfigElement$ConfigData;->mEaseExp:[Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/FolmeConfigElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string v2, "fromSpeed"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, v0, Lmiui/maml/elements/FolmeConfigElement$ConfigData;->mFromSpeedExp:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/FolmeConfigElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string v2, "delay"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, v0, Lmiui/maml/elements/FolmeConfigElement$ConfigData;->mDelayExp:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/FolmeConfigElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string v2, "onBegin"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, v0, Lmiui/maml/elements/FolmeConfigElement$ConfigData;->mOnBeginCallbackExp:[Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/FolmeConfigElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string v2, "onComplete"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, v0, Lmiui/maml/elements/FolmeConfigElement$ConfigData;->mOnCompleteCallbackExp:[Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/FolmeConfigElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string v2, "onUpdate"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, v0, Lmiui/maml/elements/FolmeConfigElement$ConfigData;->mOnUpdateCallbackExp:[Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/FolmeConfigElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string v2, "property"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, v0, Lmiui/maml/elements/FolmeConfigElement$ConfigData;->mPropertyExp:[Lmiui/maml/data/Expression;

    return-object v0
.end method

.method private getEaseFromExpressions([Lmiui/maml/data/Expression;)Lmiui/animation/utils/EaseManager$EaseStyle;
    .registers 9

    if-eqz p1, :cond_3b

    array-length v0, p1

    if-lez v0, :cond_3b

    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-eqz v1, :cond_3b

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int v0, v0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [F

    array-length v2, p1

    const/4 v3, 0x1

    :goto_18
    if-ge v3, v2, :cond_32

    aget-object v4, p1, v3

    if-eqz v4, :cond_2a

    add-int/lit8 v4, v3, -0x1

    aget-object v5, p1, v3

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v1, v4

    goto :goto_2f

    :cond_2a
    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x0

    aput v5, v1, v4

    :goto_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_32
    :try_start_32
    invoke-static {v0, v1}, Lmiui/animation/utils/EaseManager;->getStyle(I[F)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v3
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_36} :catch_37

    return-object v3

    :catch_37
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3b
    const/4 v0, 0x0

    return-object v0
.end method

.method private getStrFromExpToSet([Lmiui/maml/data/Expression;Landroid/util/ArraySet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lmiui/maml/data/Expression;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    if-eqz p1, :cond_1c

    array-length v0, p1

    if-lez v0, :cond_1c

    array-length v0, p1

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    if-eqz v2, :cond_19

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1c
    return-void
.end method


# virtual methods
.method protected evaluateConfigValue()V
    .registers 7

    iget-object v0, p0, Lmiui/maml/elements/FolmeConfigElement;->mTempValueList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lmiui/maml/elements/FolmeConfigElement;->mConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_65

    new-instance v2, Lmiui/maml/folme/ConfigValue;

    invoke-direct {v2}, Lmiui/maml/folme/ConfigValue;-><init>()V

    iget-object v3, p0, Lmiui/maml/elements/FolmeConfigElement;->mConfigs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/FolmeConfigElement$ConfigData;

    iget-object v4, v3, Lmiui/maml/elements/FolmeConfigElement$ConfigData;->mDelayExp:Lmiui/maml/data/Expression;

    if-eqz v4, :cond_28

    iget-object v4, v3, Lmiui/maml/elements/FolmeConfigElement$ConfigData;->mDelayExp:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-long v4, v4

    iput-wide v4, v2, Lmiui/maml/folme/ConfigValue;->mDelay:J

    :cond_28
    iget-object v4, v3, Lmiui/maml/elements/FolmeConfigElement$ConfigData;->mFromSpeedExp:Lmiui/maml/data/Expression;

    if-eqz v4, :cond_39

    iget-object v4, v3, Lmiui/maml/elements/FolmeConfigElement$ConfigData;->mFromSpeedExp:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-long v4, v4

    long-to-float v4, v4

    iput v4, v2, Lmiui/maml/folme/ConfigValue;->mFromSpeed:F

    const/4 v4, 0x1

    iput-boolean v4, v2, Lmiui/maml/folme/ConfigValue;->mHasFromSpeed:Z

    :cond_39
    iget-object v4, v3, Lmiui/maml/elements/FolmeConfigElement$ConfigData;->mEaseExp:[Lmiui/maml/data/Expression;

    invoke-direct {p0, v4}, Lmiui/maml/elements/FolmeConfigElement;->getEaseFromExpressions([Lmiui/maml/data/Expression;)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v4

    iput-object v4, v2, Lmiui/maml/folme/ConfigValue;->mEase:Lmiui/animation/utils/EaseManager$EaseStyle;

    iget-object v4, v3, Lmiui/maml/elements/FolmeConfigElement$ConfigData;->mPropertyExp:[Lmiui/maml/data/Expression;

    iget-object v5, v2, Lmiui/maml/folme/ConfigValue;->mRelatedProperty:Landroid/util/ArraySet;

    invoke-direct {p0, v4, v5}, Lmiui/maml/elements/FolmeConfigElement;->getStrFromExpToSet([Lmiui/maml/data/Expression;Landroid/util/ArraySet;)V

    iget-object v4, v3, Lmiui/maml/elements/FolmeConfigElement$ConfigData;->mOnBeginCallbackExp:[Lmiui/maml/data/Expression;

    iget-object v5, v2, Lmiui/maml/folme/ConfigValue;->mOnBeginCallback:Landroid/util/ArraySet;

    invoke-direct {p0, v4, v5}, Lmiui/maml/elements/FolmeConfigElement;->getStrFromExpToSet([Lmiui/maml/data/Expression;Landroid/util/ArraySet;)V

    iget-object v4, v3, Lmiui/maml/elements/FolmeConfigElement$ConfigData;->mOnCompleteCallbackExp:[Lmiui/maml/data/Expression;

    iget-object v5, v2, Lmiui/maml/folme/ConfigValue;->mOnCompleteCallback:Landroid/util/ArraySet;

    invoke-direct {p0, v4, v5}, Lmiui/maml/elements/FolmeConfigElement;->getStrFromExpToSet([Lmiui/maml/data/Expression;Landroid/util/ArraySet;)V

    iget-object v4, v3, Lmiui/maml/elements/FolmeConfigElement$ConfigData;->mOnUpdateCallbackExp:[Lmiui/maml/data/Expression;

    iget-object v5, v2, Lmiui/maml/folme/ConfigValue;->mOnUpdateCallback:Landroid/util/ArraySet;

    invoke-direct {p0, v4, v5}, Lmiui/maml/elements/FolmeConfigElement;->getStrFromExpToSet([Lmiui/maml/data/Expression;Landroid/util/ArraySet;)V

    iget-object v4, p0, Lmiui/maml/elements/FolmeConfigElement;->mTempValueList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_65
    return-void
.end method
