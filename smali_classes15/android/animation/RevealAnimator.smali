.class public Landroid/animation/RevealAnimator;
.super Landroid/view/RenderNodeAnimator;
.source "RevealAnimator.java"


# instance fields
.field private mClipView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IIFF)V
    .registers 6

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/view/RenderNodeAnimator;-><init>(IIFF)V

    iput-object p1, p0, Landroid/animation/RevealAnimator;->mClipView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/animation/RevealAnimator;->setTarget(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected onFinished()V
    .registers 4

    iget-object v0, p0, Landroid/animation/RevealAnimator;->mClipView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/view/View;->setRevealClip(ZFFF)V

    invoke-super {p0}, Landroid/view/RenderNodeAnimator;->onFinished()V

    return-void
.end method
