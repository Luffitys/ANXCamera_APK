.class public Lmiui/maml/elements/FolmeStateElement;
.super Lmiui/maml/elements/StateElement;
.source "FolmeStateElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "FolmeState"


# instance fields
.field private mAttrs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lmiui/maml/data/Expression;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 10

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/StateElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/FolmeStateElement;->mAttrs:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_33

    invoke-interface {v0, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p0}, Lmiui/maml/elements/FolmeStateElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v4

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v4

    if-eqz v4, :cond_30

    iget-object v5, p0, Lmiui/maml/elements/FolmeStateElement;->mAttrs:Landroid/util/ArrayMap;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_33
    return-void
.end method


# virtual methods
.method public getAnimState(Ljava/lang/String;)Lmiui/animation/controller/AnimState;
    .registers 13

    new-instance v0, Lmiui/animation/controller/AnimState;

    invoke-direct {v0, p1}, Lmiui/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lmiui/maml/elements/FolmeStateElement;->mAttrs:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lmiui/maml/folme/AnimatedProperty;->getPropertyByName(Ljava/lang/String;)Lmiui/animation/property/FloatProperty;

    move-result-object v3

    if-eqz v3, :cond_55

    instance-of v4, v3, Lmiui/animation/property/ColorProperty;

    const-wide/16 v5, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_43

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v9

    double-to-long v9, v9

    long-to-int v4, v9

    new-array v8, v8, [J

    aput-wide v5, v8, v7

    invoke-virtual {v0, v3, v4, v8}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;I[J)Lmiui/animation/controller/AnimState;

    goto :goto_55

    :cond_43
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v9

    double-to-float v4, v9

    new-array v8, v8, [J

    aput-wide v5, v8, v7

    invoke-virtual {v0, v3, v4, v8}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/FloatProperty;F[J)Lmiui/animation/controller/AnimState;

    :cond_55
    :goto_55
    goto :goto_f

    :cond_56
    return-object v0
.end method

.method public getProperties()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/maml/elements/FolmeStateElement;->mAttrs:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
