.class public Lmiui/animation/physics/SpringAnimationSet;
.super Ljava/lang/Object;
.source "SpringAnimationSet.java"


# instance fields
.field private mAnimationContainer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/animation/physics/SpringAnimation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmiui/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    iget-object v0, p0, Lmiui/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lmiui/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/physics/SpringAnimation;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lmiui/animation/physics/SpringAnimation;->cancel()V

    :cond_1f
    goto :goto_e

    :cond_20
    iget-object v0, p0, Lmiui/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_25
    return-void
.end method

.method public endAnimation()V
    .registers 3

    iget-object v0, p0, Lmiui/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lmiui/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/physics/SpringAnimation;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lmiui/animation/physics/SpringAnimation;->skipToEnd()V

    :cond_1f
    goto :goto_e

    :cond_20
    iget-object v0, p0, Lmiui/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_25
    return-void
.end method

.method public play(Lmiui/animation/physics/SpringAnimation;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lmiui/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public varargs playTogether([Lmiui/animation/physics/SpringAnimation;)V
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    aget-object v2, p1, v1

    if-eqz v2, :cond_d

    iget-object v3, p0, Lmiui/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    return-void
.end method

.method public start()V
    .registers 3

    iget-object v0, p0, Lmiui/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lmiui/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/animation/physics/SpringAnimation;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lmiui/animation/physics/SpringAnimation;->start()V

    :cond_1f
    goto :goto_e

    :cond_20
    return-void
.end method
