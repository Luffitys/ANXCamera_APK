.class public Landroid/view/RenderNodeAnimator;
.super Landroid/graphics/animation/RenderNodeAnimator;
.source "RenderNodeAnimator.java"

# interfaces
.implements Landroid/graphics/animation/RenderNodeAnimator$ViewListener;


# instance fields
.field private mViewTarget:Landroid/view/View;


# direct methods
.method public constructor <init>(IF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/graphics/animation/RenderNodeAnimator;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IIFF)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/animation/RenderNodeAnimator;-><init>(IIFF)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/CanvasProperty;F)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/graphics/animation/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/CanvasProperty;IF)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Landroid/graphics/Paint;",
            ">;IF)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/animation/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    return-void
.end method


# virtual methods
.method public invalidateParent(Z)V
    .registers 5

    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    return-void
.end method

.method public onAlphaAnimationStart(F)V
    .registers 3

    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->ensureTransformationInfo()V

    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlphaInternal(F)V

    return-void
.end method

.method public setTarget(Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    invoke-virtual {p0, p0}, Landroid/view/RenderNodeAnimator;->setViewListener(Landroid/graphics/animation/RenderNodeAnimator$ViewListener;)V

    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0, v0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/graphics/RenderNode;)V

    return-void
.end method
