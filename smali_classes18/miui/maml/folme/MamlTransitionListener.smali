.class public Lmiui/maml/folme/MamlTransitionListener;
.super Lmiui/animation/listener/TransitionListener;
.source "MamlTransitionListener.java"


# instance fields
.field public mBeginCallback:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lmiui/maml/elements/FunctionElement;",
            ">;"
        }
    .end annotation
.end field

.field public mCompleteCallback:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lmiui/maml/elements/FunctionElement;",
            ">;"
        }
    .end annotation
.end field

.field private mTarget:Lmiui/maml/elements/AnimatedScreenElement;

.field public mUpdateCallback:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lmiui/maml/elements/FunctionElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiui/maml/elements/AnimatedScreenElement;)V
    .registers 3

    invoke-direct {p0}, Lmiui/animation/listener/TransitionListener;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lmiui/maml/folme/MamlTransitionListener;->mUpdateCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lmiui/maml/folme/MamlTransitionListener;->mBeginCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lmiui/maml/folme/MamlTransitionListener;->mCompleteCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput-object p1, p0, Lmiui/maml/folme/MamlTransitionListener;->mTarget:Lmiui/maml/elements/AnimatedScreenElement;

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/folme/MamlTransitionListener;->mBeginCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/FunctionElement;

    invoke-virtual {v1}, Lmiui/maml/elements/FunctionElement;->perform()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/folme/MamlTransitionListener;->mTarget:Lmiui/maml/elements/AnimatedScreenElement;

    iget-object v0, v0, Lmiui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    iget-object v0, p0, Lmiui/maml/folme/MamlTransitionListener;->mCompleteCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/FunctionElement;

    invoke-virtual {v1}, Lmiui/maml/elements/FunctionElement;->perform()V

    goto :goto_d

    :cond_1d
    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiui/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/listener/UpdateInfo;

    iget-object v2, v1, Lmiui/animation/listener/UpdateInfo;->property:Lmiui/animation/property/FloatProperty;

    instance-of v3, v2, Lmiui/maml/folme/IAnimatedProperty;

    if-eqz v3, :cond_20

    move-object v3, v2

    check-cast v3, Lmiui/maml/folme/IAnimatedProperty;

    iget-object v4, p0, Lmiui/maml/folme/MamlTransitionListener;->mTarget:Lmiui/maml/elements/AnimatedScreenElement;

    iget v5, v1, Lmiui/animation/listener/UpdateInfo;->velocity:F

    invoke-interface {v3, v4, v5}, Lmiui/maml/folme/IAnimatedProperty;->setVelocityValue(Ljava/lang/Object;F)V

    :cond_20
    iget-boolean v3, v1, Lmiui/animation/listener/UpdateInfo;->isCompleted:Z

    if-eqz v3, :cond_2b

    iget-object v3, p0, Lmiui/maml/folme/MamlTransitionListener;->mTarget:Lmiui/maml/elements/AnimatedScreenElement;

    iget-object v3, v3, Lmiui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    :cond_2b
    goto :goto_4

    :cond_2c
    iget-object v0, p0, Lmiui/maml/folme/MamlTransitionListener;->mUpdateCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/FunctionElement;

    invoke-virtual {v1}, Lmiui/maml/elements/FunctionElement;->perform()V

    goto :goto_32

    :cond_42
    return-void
.end method
