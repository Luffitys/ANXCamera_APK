.class public Lmiui/maml/elements/AnimConfigElement;
.super Lmiui/maml/elements/ConfigElement;
.source "AnimConfigElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/AnimConfigElement$ConfigData;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "AnimConfig"


# instance fields
.field private mConfigs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lmiui/maml/elements/AnimConfigElement$ConfigData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 11

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ConfigElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    iget-boolean v0, p0, Lmiui/maml/elements/AnimConfigElement;->mHasName:Z

    if-eqz v0, :cond_71

    iget-object v0, p0, Lmiui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lmiui/maml/elements/AnimConfigElement;->mName:Ljava/lang/String;

    iget-object v2, p0, Lmiui/maml/elements/AnimConfigElement;->mName:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lmiui/maml/elements/AnimConfigElement;->getConfigData(Lorg/w3c/dom/Element;Ljava/lang/String;)Lmiui/maml/elements/AnimConfigElement$ConfigData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    :goto_24
    if-ge v2, v1, :cond_71

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6e

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Special"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    const-string v4, "name"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lmiui/maml/elements/AnimConfigElement;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmiui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v3, v5}, Lmiui/maml/elements/AnimConfigElement;->getConfigData(Lorg/w3c/dom/Element;Ljava/lang/String;)Lmiui/maml/elements/AnimConfigElement$ConfigData;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_71
    return-void
.end method

.method private getConfigData(Lorg/w3c/dom/Element;Ljava/lang/String;)Lmiui/maml/elements/AnimConfigElement$ConfigData;
    .registers 11

    invoke-virtual {p0}, Lmiui/maml/elements/AnimConfigElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    new-instance v1, Lmiui/maml/elements/AnimConfigElement$ConfigData;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmiui/maml/elements/AnimConfigElement$ConfigData;-><init>(Lmiui/maml/elements/AnimConfigElement;Lmiui/maml/elements/AnimConfigElement$1;)V

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v3, :cond_2d

    invoke-interface {v2, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v7

    if-eqz v7, :cond_2a

    invoke-direct {p0, v1, p2, v6, v7}, Lmiui/maml/elements/AnimConfigElement;->updateConfigIndexVariable(Lmiui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;Ljava/lang/String;[Lmiui/maml/data/Expression;)V

    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_2d
    return-object v1
.end method

.method private getConfigValueFromVarToSet(Lmiui/maml/data/IndexedVariable;Landroid/util/ArraySet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/maml/data/IndexedVariable;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lmiui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_1d

    instance-of v1, v0, [Ljava/lang/String;

    if-eqz v1, :cond_1d

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_1d

    aget-object v4, v1, v3

    invoke-virtual {p2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_1d
    return-void
.end method

.method private getEase(Lmiui/maml/data/IndexedVariable;)Lmiui/animation/utils/EaseManager$EaseStyle;
    .registers 12

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lmiui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    if-eqz v1, :cond_35

    instance-of v2, v1, [D

    if-eqz v2, :cond_35

    move-object v2, v1

    check-cast v2, [D

    array-length v3, v2

    if-lez v3, :cond_35

    const/4 v3, 0x0

    aget-wide v3, v2, v3

    double-to-int v3, v3

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    new-array v4, v4, [F

    array-length v5, v2

    const/4 v6, 0x1

    :goto_20
    if-ge v6, v5, :cond_2c

    add-int/lit8 v7, v6, -0x1

    aget-wide v8, v2, v6

    double-to-float v8, v8

    aput v8, v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_2c
    :try_start_2c
    invoke-static {v3, v4}, Lmiui/animation/utils/EaseManager;->getStyle(I[F)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_30} :catch_31

    return-object v0

    :catch_31
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :cond_35
    return-object v0
.end method

.method private removeConfigIndexVariable(Lmiui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_e4

    :cond_7
    goto :goto_4e

    :sswitch_8
    const-string v0, "onUpdate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_4f

    :sswitch_12
    const-string v0, "delay"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_4f

    :sswitch_1c
    const-string v0, "fromSpeed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_4f

    :sswitch_26
    const-string v0, "ease"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_4f

    :sswitch_30
    const-string v0, "property"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_4f

    :sswitch_3a
    const-string v0, "onBegin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_4f

    :sswitch_44
    const-string v0, "onComplete"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_4f

    :goto_4e
    const/4 v0, -0x1

    :goto_4f
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_102

    goto/16 :goto_e2

    :pswitch_57
    iget-object v0, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_62

    iget-object v0, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v3}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iput-object v3, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lmiui/maml/data/IndexedVariable;

    :cond_62
    iget-object v0, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallbackLen:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_e2

    iget-object v0, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallbackLen:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iput-object v3, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallbackLen:Lmiui/maml/data/IndexedVariable;

    goto/16 :goto_e2

    :pswitch_6f
    iget-object v0, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_7a

    iget-object v0, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v3}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iput-object v3, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lmiui/maml/data/IndexedVariable;

    :cond_7a
    iget-object v0, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallbackLen:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_e2

    iget-object v0, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallbackLen:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iput-object v3, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallbackLen:Lmiui/maml/data/IndexedVariable;

    goto :goto_e2

    :pswitch_86
    iget-object v0, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_91

    iget-object v0, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v3}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iput-object v3, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lmiui/maml/data/IndexedVariable;

    :cond_91
    iget-object v0, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallbackLen:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_e2

    iget-object v0, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallbackLen:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iput-object v3, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallbackLen:Lmiui/maml/data/IndexedVariable;

    goto :goto_e2

    :pswitch_9d
    iget-object v0, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_a8

    iget-object v0, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v3}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iput-object v3, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lmiui/maml/data/IndexedVariable;

    :cond_a8
    iget-object v0, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mPropertyLen:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_e2

    iget-object v0, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mPropertyLen:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iput-object v3, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mPropertyLen:Lmiui/maml/data/IndexedVariable;

    goto :goto_e2

    :pswitch_b4
    iget-object v0, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_bf

    iget-object v0, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v3}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iput-object v3, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lmiui/maml/data/IndexedVariable;

    :cond_bf
    iget-object v0, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mEaseLen:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_e2

    iget-object v0, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mEaseLen:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iput-object v3, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mEaseLen:Lmiui/maml/data/IndexedVariable;

    goto :goto_e2

    :pswitch_cb
    iget-object v0, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_e2

    iget-object v0, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iput-object v3, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lmiui/maml/data/IndexedVariable;

    goto :goto_e2

    :pswitch_d7
    iget-object v0, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_e2

    iget-object v0, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iput-object v3, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lmiui/maml/data/IndexedVariable;

    :cond_e2
    :goto_e2
    return-void

    nop

    :sswitch_data_e4
    .sparse-switch
        -0x7ea0abc8 -> :sswitch_44
        -0x50a5b1f6 -> :sswitch_3a
        -0x3b32222b -> :sswitch_30
        0x2f63ee -> :sswitch_26
        0x42432bd -> :sswitch_1c
        0x5b0b983 -> :sswitch_12
        0x5cf50f88 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_d7
        :pswitch_cb
        :pswitch_b4
        :pswitch_9d
        :pswitch_86
        :pswitch_6f
        :pswitch_57
    .end packed-switch
.end method

.method private updateConfigIndexVariable(Lmiui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;Ljava/lang/String;[Lmiui/maml/data/Expression;)V
    .registers 16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimConfigElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v4

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    sparse-switch v5, :sswitch_data_1b2

    :cond_25
    goto :goto_6c

    :sswitch_26
    const-string v5, "onUpdate"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    const/4 v5, 0x5

    goto :goto_6d

    :sswitch_30
    const-string v5, "delay"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    move v5, v7

    goto :goto_6d

    :sswitch_3a
    const-string v5, "fromSpeed"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    move v5, v6

    goto :goto_6d

    :sswitch_44
    const-string v5, "ease"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    const/4 v5, 0x2

    goto :goto_6d

    :sswitch_4e
    const-string v5, "property"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    const/4 v5, 0x3

    goto :goto_6d

    :sswitch_58
    const-string v5, "onBegin"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    const/4 v5, 0x4

    goto :goto_6d

    :sswitch_62
    const-string v5, "onComplete"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    const/4 v5, 0x6

    goto :goto_6d

    :goto_6c
    const/4 v5, -0x1

    :goto_6d
    const-string v8, ".length"

    packed-switch v5, :pswitch_data_1d0

    return-void

    :pswitch_73
    iget-object v5, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lmiui/maml/data/IndexedVariable;

    if-nez v5, :cond_7e

    new-instance v5, Lmiui/maml/data/IndexedVariable;

    invoke-direct {v5, p2, v4, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v5, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lmiui/maml/data/IndexedVariable;

    :cond_7e
    iget-object v5, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallbackLen:Lmiui/maml/data/IndexedVariable;

    if-nez v5, :cond_98

    new-instance v5, Lmiui/maml/data/IndexedVariable;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8, v4, v7}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v5, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallbackLen:Lmiui/maml/data/IndexedVariable;

    :cond_98
    iget-object v2, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lmiui/maml/data/IndexedVariable;

    iget-object v3, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallbackLen:Lmiui/maml/data/IndexedVariable;

    goto/16 :goto_167

    :pswitch_9e
    iget-object v5, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lmiui/maml/data/IndexedVariable;

    if-nez v5, :cond_a9

    new-instance v5, Lmiui/maml/data/IndexedVariable;

    invoke-direct {v5, p2, v4, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v5, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lmiui/maml/data/IndexedVariable;

    :cond_a9
    iget-object v5, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallbackLen:Lmiui/maml/data/IndexedVariable;

    if-nez v5, :cond_c3

    new-instance v5, Lmiui/maml/data/IndexedVariable;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8, v4, v7}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v5, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallbackLen:Lmiui/maml/data/IndexedVariable;

    :cond_c3
    iget-object v2, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lmiui/maml/data/IndexedVariable;

    iget-object v3, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallbackLen:Lmiui/maml/data/IndexedVariable;

    goto/16 :goto_167

    :pswitch_c9
    iget-object v5, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lmiui/maml/data/IndexedVariable;

    if-nez v5, :cond_d4

    new-instance v5, Lmiui/maml/data/IndexedVariable;

    invoke-direct {v5, p2, v4, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v5, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lmiui/maml/data/IndexedVariable;

    :cond_d4
    iget-object v5, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallbackLen:Lmiui/maml/data/IndexedVariable;

    if-nez v5, :cond_ee

    new-instance v5, Lmiui/maml/data/IndexedVariable;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8, v4, v7}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v5, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallbackLen:Lmiui/maml/data/IndexedVariable;

    :cond_ee
    iget-object v2, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lmiui/maml/data/IndexedVariable;

    iget-object v3, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallbackLen:Lmiui/maml/data/IndexedVariable;

    goto/16 :goto_167

    :pswitch_f4
    iget-object v5, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lmiui/maml/data/IndexedVariable;

    if-nez v5, :cond_ff

    new-instance v5, Lmiui/maml/data/IndexedVariable;

    invoke-direct {v5, p2, v4, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v5, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lmiui/maml/data/IndexedVariable;

    :cond_ff
    iget-object v5, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mPropertyLen:Lmiui/maml/data/IndexedVariable;

    if-nez v5, :cond_119

    new-instance v5, Lmiui/maml/data/IndexedVariable;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8, v4, v7}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v5, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mPropertyLen:Lmiui/maml/data/IndexedVariable;

    :cond_119
    iget-object v2, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lmiui/maml/data/IndexedVariable;

    iget-object v3, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mPropertyLen:Lmiui/maml/data/IndexedVariable;

    goto :goto_167

    :pswitch_11e
    iget-object v5, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lmiui/maml/data/IndexedVariable;

    if-nez v5, :cond_129

    new-instance v5, Lmiui/maml/data/IndexedVariable;

    invoke-direct {v5, p2, v4, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v5, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lmiui/maml/data/IndexedVariable;

    :cond_129
    iget-object v5, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mEaseLen:Lmiui/maml/data/IndexedVariable;

    if-nez v5, :cond_143

    new-instance v5, Lmiui/maml/data/IndexedVariable;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8, v4, v7}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v5, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mEaseLen:Lmiui/maml/data/IndexedVariable;

    :cond_143
    const/4 v1, 0x1

    iget-object v2, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lmiui/maml/data/IndexedVariable;

    iget-object v3, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mEaseLen:Lmiui/maml/data/IndexedVariable;

    goto :goto_167

    :pswitch_149
    iget-object v5, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lmiui/maml/data/IndexedVariable;

    if-nez v5, :cond_154

    new-instance v5, Lmiui/maml/data/IndexedVariable;

    invoke-direct {v5, p2, v4, v7}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v5, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lmiui/maml/data/IndexedVariable;

    :cond_154
    const/4 v0, 0x1

    iget-object v2, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lmiui/maml/data/IndexedVariable;

    goto :goto_167

    :pswitch_158
    iget-object v5, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lmiui/maml/data/IndexedVariable;

    if-nez v5, :cond_163

    new-instance v5, Lmiui/maml/data/IndexedVariable;

    invoke-direct {v5, p2, v4, v7}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v5, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lmiui/maml/data/IndexedVariable;

    :cond_163
    const/4 v0, 0x1

    iget-object v2, p1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lmiui/maml/data/IndexedVariable;

    nop

    :goto_167
    array-length v5, p4

    const/4 v7, 0x0

    if-lez v5, :cond_1b0

    if-eqz v0, :cond_178

    aget-object v6, p4, v6

    invoke-virtual {v6}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_1a6

    :cond_178
    if-eqz v1, :cond_190

    new-array v6, v5, [D

    const/4 v8, 0x0

    :goto_17d
    if-ge v8, v5, :cond_18e

    aget-object v9, p4, v8

    if-eqz v9, :cond_18b

    aget-object v9, p4, v8

    invoke-virtual {v9}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v9

    aput-wide v9, v6, v8

    :cond_18b
    add-int/lit8 v8, v8, 0x1

    goto :goto_17d

    :cond_18e
    nop

    goto :goto_1a6

    :cond_190
    new-array v6, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    :goto_193
    if-ge v8, v5, :cond_1a4

    aget-object v9, p4, v8

    if-eqz v9, :cond_1a1

    aget-object v9, p4, v8

    invoke-virtual {v9}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    :cond_1a1
    add-int/lit8 v8, v8, 0x1

    goto :goto_193

    :cond_1a4
    nop

    nop

    :goto_1a6
    invoke-virtual {v2, v6}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    if-eqz v3, :cond_1af

    int-to-double v7, v5

    invoke-virtual {v3, v7, v8}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_1af
    return-void

    :cond_1b0
    return-void

    nop

    :sswitch_data_1b2
    .sparse-switch
        -0x7ea0abc8 -> :sswitch_62
        -0x50a5b1f6 -> :sswitch_58
        -0x3b32222b -> :sswitch_4e
        0x2f63ee -> :sswitch_44
        0x42432bd -> :sswitch_3a
        0x5b0b983 -> :sswitch_30
        0x5cf50f88 -> :sswitch_26
    .end sparse-switch

    :pswitch_data_1d0
    .packed-switch 0x0
        :pswitch_158
        :pswitch_149
        :pswitch_11e
        :pswitch_f4
        :pswitch_c9
        :pswitch_9e
        :pswitch_73
    .end packed-switch
.end method


# virtual methods
.method public clearConfigData()V
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/AnimConfigElement$ConfigData;

    const-string v2, "fromSpeed"

    invoke-direct {p0, v1, v2}, Lmiui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lmiui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    const-string v2, "delay"

    invoke-direct {p0, v1, v2}, Lmiui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lmiui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    const-string v2, "ease"

    invoke-direct {p0, v1, v2}, Lmiui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lmiui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    const-string v2, "property"

    invoke-direct {p0, v1, v2}, Lmiui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lmiui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    const-string v2, "onUpdate"

    invoke-direct {p0, v1, v2}, Lmiui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lmiui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    const-string v2, "onBegin"

    invoke-direct {p0, v1, v2}, Lmiui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lmiui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    const-string v2, "onComplete"

    invoke-direct {p0, v1, v2}, Lmiui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lmiui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    goto :goto_a

    :cond_3a
    iget-object v0, p0, Lmiui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method protected evaluateConfigValue()V
    .registers 6

    iget-object v0, p0, Lmiui/maml/elements/AnimConfigElement;->mTempValueList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lmiui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/AnimConfigElement$ConfigData;

    new-instance v2, Lmiui/maml/folme/ConfigValue;

    invoke-direct {v2}, Lmiui/maml/folme/ConfigValue;-><init>()V

    iget-object v3, v1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lmiui/maml/data/IndexedVariable;

    if-eqz v3, :cond_2d

    iget-object v3, v1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v3}, Lmiui/maml/data/IndexedVariable;->getDouble()D

    move-result-wide v3

    double-to-long v3, v3

    iput-wide v3, v2, Lmiui/maml/folme/ConfigValue;->mDelay:J

    :cond_2d
    iget-object v3, v1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lmiui/maml/data/IndexedVariable;

    if-eqz v3, :cond_3e

    iget-object v3, v1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v3}, Lmiui/maml/data/IndexedVariable;->getDouble()D

    move-result-wide v3

    double-to-long v3, v3

    long-to-float v3, v3

    iput v3, v2, Lmiui/maml/folme/ConfigValue;->mFromSpeed:F

    const/4 v3, 0x1

    iput-boolean v3, v2, Lmiui/maml/folme/ConfigValue;->mHasFromSpeed:Z

    :cond_3e
    iget-object v3, v1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lmiui/maml/data/IndexedVariable;

    if-eqz v3, :cond_4a

    iget-object v3, v1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lmiui/maml/data/IndexedVariable;

    invoke-direct {p0, v3}, Lmiui/maml/elements/AnimConfigElement;->getEase(Lmiui/maml/data/IndexedVariable;)Lmiui/animation/utils/EaseManager$EaseStyle;

    move-result-object v3

    iput-object v3, v2, Lmiui/maml/folme/ConfigValue;->mEase:Lmiui/animation/utils/EaseManager$EaseStyle;

    :cond_4a
    iget-object v3, v1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lmiui/maml/data/IndexedVariable;

    if-eqz v3, :cond_55

    iget-object v3, v1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lmiui/maml/data/IndexedVariable;

    iget-object v4, v2, Lmiui/maml/folme/ConfigValue;->mRelatedProperty:Landroid/util/ArraySet;

    invoke-direct {p0, v3, v4}, Lmiui/maml/elements/AnimConfigElement;->getConfigValueFromVarToSet(Lmiui/maml/data/IndexedVariable;Landroid/util/ArraySet;)V

    :cond_55
    iget-object v3, v1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lmiui/maml/data/IndexedVariable;

    if-eqz v3, :cond_60

    iget-object v3, v1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lmiui/maml/data/IndexedVariable;

    iget-object v4, v2, Lmiui/maml/folme/ConfigValue;->mOnBeginCallback:Landroid/util/ArraySet;

    invoke-direct {p0, v3, v4}, Lmiui/maml/elements/AnimConfigElement;->getConfigValueFromVarToSet(Lmiui/maml/data/IndexedVariable;Landroid/util/ArraySet;)V

    :cond_60
    iget-object v3, v1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lmiui/maml/data/IndexedVariable;

    if-eqz v3, :cond_6b

    iget-object v3, v1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lmiui/maml/data/IndexedVariable;

    iget-object v4, v2, Lmiui/maml/folme/ConfigValue;->mOnCompleteCallback:Landroid/util/ArraySet;

    invoke-direct {p0, v3, v4}, Lmiui/maml/elements/AnimConfigElement;->getConfigValueFromVarToSet(Lmiui/maml/data/IndexedVariable;Landroid/util/ArraySet;)V

    :cond_6b
    iget-object v3, v1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lmiui/maml/data/IndexedVariable;

    if-eqz v3, :cond_76

    iget-object v3, v1, Lmiui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lmiui/maml/data/IndexedVariable;

    iget-object v4, v2, Lmiui/maml/folme/ConfigValue;->mOnUpdateCallback:Landroid/util/ArraySet;

    invoke-direct {p0, v3, v4}, Lmiui/maml/elements/AnimConfigElement;->getConfigValueFromVarToSet(Lmiui/maml/data/IndexedVariable;Landroid/util/ArraySet;)V

    :cond_76
    iget-object v3, p0, Lmiui/maml/elements/AnimConfigElement;->mTempValueList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_7c
    return-void
.end method

.method public removeConfigData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/AnimConfigElement$ConfigData;

    if-eqz v0, :cond_d

    invoke-direct {p0, v0, p2}, Lmiui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lmiui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public updateConfigData(Ljava/lang/String;Ljava/lang/String;[Lmiui/maml/data/Expression;)V
    .registers 7

    iget-object v0, p0, Lmiui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/AnimConfigElement$ConfigData;

    if-nez v0, :cond_16

    new-instance v1, Lmiui/maml/elements/AnimConfigElement$ConfigData;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmiui/maml/elements/AnimConfigElement$ConfigData;-><init>(Lmiui/maml/elements/AnimConfigElement;Lmiui/maml/elements/AnimConfigElement$1;)V

    move-object v0, v1

    iget-object v1, p0, Lmiui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/maml/elements/AnimConfigElement;->updateConfigIndexVariable(Lmiui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;Ljava/lang/String;[Lmiui/maml/data/Expression;)V

    return-void
.end method
