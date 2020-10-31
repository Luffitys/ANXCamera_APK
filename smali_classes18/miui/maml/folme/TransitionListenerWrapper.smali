.class public Lmiui/maml/folme/TransitionListenerWrapper;
.super Lmiui/animation/listener/TransitionListener;
.source "TransitionListenerWrapper.java"


# instance fields
.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/maml/folme/MamlTransitionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiui/maml/folme/MamlTransitionListener;)V
    .registers 3

    invoke-direct {p0}, Lmiui/animation/listener/TransitionListener;-><init>()V

    if-eqz p1, :cond_c

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/maml/folme/TransitionListenerWrapper;->mRef:Ljava/lang/ref/WeakReference;

    :cond_c
    return-void
.end method


# virtual methods
.method public getListener()Lmiui/maml/folme/MamlTransitionListener;
    .registers 2

    iget-object v0, p0, Lmiui/maml/folme/TransitionListenerWrapper;->mRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/folme/MamlTransitionListener;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public onBegin(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/folme/TransitionListenerWrapper;->getListener()Lmiui/maml/folme/MamlTransitionListener;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lmiui/maml/folme/MamlTransitionListener;->onBegin(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/folme/TransitionListenerWrapper;->getListener()Lmiui/maml/folme/MamlTransitionListener;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lmiui/maml/folme/MamlTransitionListener;->onComplete(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiui/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lmiui/maml/folme/TransitionListenerWrapper;->getListener()Lmiui/maml/folme/MamlTransitionListener;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2}, Lmiui/maml/folme/MamlTransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    :cond_9
    return-void
.end method
