.class Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;
.super Ljava/lang/Object;
.source "RenderNodeAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/animation/RenderNodeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayedAnimationHelper"
.end annotation


# instance fields
.field private mCallbackScheduled:Z

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mDelayedAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/animation/RenderNodeAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method private scheduleCallback()V
    .registers 4

    iget-boolean v0, p0, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->mCallbackScheduled:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->mCallbackScheduled:Z

    iget-object v1, p0, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->mChoreographer:Landroid/view/Choreographer;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p0, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public addDelayedAnimation(Landroid/graphics/animation/RenderNodeAnimator;)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->scheduleCallback()V

    return-void
.end method

.method public removeDelayedAnimation(Landroid/graphics/animation/RenderNodeAnimator;)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .registers 7

    iget-object v0, p0, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide v0

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->mCallbackScheduled:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    iget-object v4, p0, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2d

    iget-object v4, p0, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/animation/RenderNodeAnimator;

    # invokes: Landroid/graphics/animation/RenderNodeAnimator;->processDelayed(J)Z
    invoke-static {v4, v0, v1}, Landroid/graphics/animation/RenderNodeAnimator;->access$000(Landroid/graphics/animation/RenderNodeAnimator;J)Z

    move-result v5

    if-nez v5, :cond_2a

    if-eq v2, v3, :cond_28

    iget-object v5, p0, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v5, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_28
    add-int/lit8 v2, v2, 0x1

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_2d
    :goto_2d
    iget-object v3, p0, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_41

    iget-object v3, p0, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2d

    :cond_41
    iget-object v3, p0, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4c

    invoke-direct {p0}, Landroid/graphics/animation/RenderNodeAnimator$DelayedAnimationHelper;->scheduleCallback()V

    :cond_4c
    return-void
.end method
