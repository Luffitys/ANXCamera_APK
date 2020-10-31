.class public abstract Lmiui/maml/elements/ConfigElement;
.super Lmiui/maml/elements/ScreenElement;
.source "ConfigElement.java"


# static fields
.field protected static final ATTR_DELAY:Ljava/lang/String; = "delay"

.field protected static final ATTR_EASE:Ljava/lang/String; = "ease"

.field protected static final ATTR_FROM_SPEED:Ljava/lang/String; = "fromSpeed"

.field protected static final ATTR_ON_BEGIN:Ljava/lang/String; = "onBegin"

.field protected static final ATTR_ON_COMPLETE:Ljava/lang/String; = "onComplete"

.field protected static final ATTR_ON_UPDATE:Ljava/lang/String; = "onUpdate"

.field protected static final ATTR_PROPERTY:Ljava/lang/String; = "property"


# instance fields
.field protected mTempAnimConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/animation/base/AnimConfig;",
            ">;"
        }
    .end annotation
.end field

.field protected mTempValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/maml/folme/ConfigValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ConfigElement;->mTempAnimConfigs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ConfigElement;->mTempValueList:Ljava/util/ArrayList;

    return-void
.end method

.method private setupCallbacks(Ljava/util/Collection;Landroid/util/ArraySet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lmiui/maml/elements/FunctionElement;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/elements/ConfigElement;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v2

    instance-of v3, v2, Lmiui/maml/elements/FunctionElement;

    if-eqz v3, :cond_25

    move-object v3, v2

    check-cast v3, Lmiui/maml/elements/FunctionElement;

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_25
    goto :goto_7

    :cond_26
    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method protected abstract evaluateConfigValue()V
.end method

.method public getAnimConfig(Lmiui/maml/folme/TransitionListenerWrapper;)[Lmiui/animation/base/AnimConfig;
    .registers 11

    invoke-virtual {p1}, Lmiui/maml/folme/TransitionListenerWrapper;->getListener()Lmiui/maml/folme/MamlTransitionListener;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    new-array v1, v1, [Lmiui/animation/base/AnimConfig;

    return-object v1

    :cond_a
    iget-object v2, p0, Lmiui/maml/elements/ConfigElement;->mTempAnimConfigs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lmiui/maml/elements/ConfigElement;->evaluateConfigValue()V

    iget-object v2, p0, Lmiui/maml/elements/ConfigElement;->mTempValueList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/folme/ConfigValue;

    const/4 v4, 0x0

    iget-object v5, v3, Lmiui/maml/folme/ConfigValue;->mRelatedProperty:Landroid/util/ArraySet;

    if-eqz v5, :cond_5c

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v3, Lmiui/maml/folme/ConfigValue;->mRelatedProperty:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_34
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lmiui/maml/folme/AnimatedProperty;->getPropertyByName(Ljava/lang/String;)Lmiui/animation/property/FloatProperty;

    move-result-object v8

    if-eqz v8, :cond_49

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_49
    goto :goto_34

    :cond_4a
    new-instance v6, Lmiui/animation/base/AnimConfig;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Lmiui/animation/property/FloatProperty;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lmiui/animation/property/FloatProperty;

    invoke-direct {v6, v7}, Lmiui/animation/base/AnimConfig;-><init>([Lmiui/animation/property/FloatProperty;)V

    move-object v4, v6

    :cond_5c
    if-nez v4, :cond_64

    new-instance v5, Lmiui/animation/base/AnimConfig;

    invoke-direct {v5}, Lmiui/animation/base/AnimConfig;-><init>()V

    move-object v4, v5

    :cond_64
    iget-object v5, v0, Lmiui/maml/folme/MamlTransitionListener;->mBeginCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v6, v3, Lmiui/maml/folme/ConfigValue;->mOnBeginCallback:Landroid/util/ArraySet;

    invoke-direct {p0, v5, v6}, Lmiui/maml/elements/ConfigElement;->setupCallbacks(Ljava/util/Collection;Landroid/util/ArraySet;)V

    iget-object v5, v0, Lmiui/maml/folme/MamlTransitionListener;->mUpdateCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v6, v3, Lmiui/maml/folme/ConfigValue;->mOnUpdateCallback:Landroid/util/ArraySet;

    invoke-direct {p0, v5, v6}, Lmiui/maml/elements/ConfigElement;->setupCallbacks(Ljava/util/Collection;Landroid/util/ArraySet;)V

    iget-object v5, v0, Lmiui/maml/folme/MamlTransitionListener;->mCompleteCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v6, v3, Lmiui/maml/folme/ConfigValue;->mOnCompleteCallback:Landroid/util/ArraySet;

    invoke-direct {p0, v5, v6}, Lmiui/maml/elements/ConfigElement;->setupCallbacks(Ljava/util/Collection;Landroid/util/ArraySet;)V

    iget-boolean v5, v3, Lmiui/maml/folme/ConfigValue;->mHasFromSpeed:Z

    if-eqz v5, :cond_82

    iget v5, v3, Lmiui/maml/folme/ConfigValue;->mFromSpeed:F

    invoke-virtual {v4, v5}, Lmiui/animation/base/AnimConfig;->setFromSpeed(F)Lmiui/animation/base/AnimConfig;

    :cond_82
    iget-object v5, v3, Lmiui/maml/folme/ConfigValue;->mEase:Lmiui/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {v4, v5}, Lmiui/animation/base/AnimConfig;->setEase(Lmiui/animation/utils/EaseManager$EaseStyle;)Lmiui/animation/base/AnimConfig;

    iget-wide v5, v3, Lmiui/maml/folme/ConfigValue;->mDelay:J

    invoke-virtual {v4, v5, v6}, Lmiui/animation/base/AnimConfig;->setDelay(J)Lmiui/animation/base/AnimConfig;

    const/4 v5, 0x1

    new-array v5, v5, [Lmiui/animation/listener/TransitionListener;

    aput-object p1, v5, v1

    invoke-virtual {v4, v5}, Lmiui/animation/base/AnimConfig;->addListeners([Lmiui/animation/listener/TransitionListener;)Lmiui/animation/base/AnimConfig;

    iget-object v5, p0, Lmiui/maml/elements/ConfigElement;->mTempAnimConfigs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18

    :cond_9b
    iget-object v1, p0, Lmiui/maml/elements/ConfigElement;->mTempAnimConfigs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lmiui/animation/base/AnimConfig;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lmiui/animation/base/AnimConfig;

    return-object v1
.end method

.method public isVisible()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public tick(J)V
    .registers 3

    return-void
.end method
