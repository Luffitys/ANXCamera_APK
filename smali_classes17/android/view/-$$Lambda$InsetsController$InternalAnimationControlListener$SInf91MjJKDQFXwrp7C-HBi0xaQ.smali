.class public final synthetic Landroid/view/-$$Lambda$InsetsController$InternalAnimationControlListener$SInf91MjJKDQFXwrp7C-HBi0xaQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/view/InsetsController$InternalAnimationControlListener;

.field public final synthetic f$1:Landroid/view/animation/Interpolator;

.field public final synthetic f$2:Landroid/view/WindowInsetsAnimationController;

.field public final synthetic f$3:Landroid/graphics/Insets;

.field public final synthetic f$4:Landroid/graphics/Insets;

.field public final synthetic f$5:Landroid/view/animation/Interpolator;


# direct methods
.method public synthetic constructor <init>(Landroid/view/InsetsController$InternalAnimationControlListener;Landroid/view/animation/Interpolator;Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;Landroid/graphics/Insets;Landroid/view/animation/Interpolator;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$InsetsController$InternalAnimationControlListener$SInf91MjJKDQFXwrp7C-HBi0xaQ;->f$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    iput-object p2, p0, Landroid/view/-$$Lambda$InsetsController$InternalAnimationControlListener$SInf91MjJKDQFXwrp7C-HBi0xaQ;->f$1:Landroid/view/animation/Interpolator;

    iput-object p3, p0, Landroid/view/-$$Lambda$InsetsController$InternalAnimationControlListener$SInf91MjJKDQFXwrp7C-HBi0xaQ;->f$2:Landroid/view/WindowInsetsAnimationController;

    iput-object p4, p0, Landroid/view/-$$Lambda$InsetsController$InternalAnimationControlListener$SInf91MjJKDQFXwrp7C-HBi0xaQ;->f$3:Landroid/graphics/Insets;

    iput-object p5, p0, Landroid/view/-$$Lambda$InsetsController$InternalAnimationControlListener$SInf91MjJKDQFXwrp7C-HBi0xaQ;->f$4:Landroid/graphics/Insets;

    iput-object p6, p0, Landroid/view/-$$Lambda$InsetsController$InternalAnimationControlListener$SInf91MjJKDQFXwrp7C-HBi0xaQ;->f$5:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 9

    iget-object v0, p0, Landroid/view/-$$Lambda$InsetsController$InternalAnimationControlListener$SInf91MjJKDQFXwrp7C-HBi0xaQ;->f$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    iget-object v1, p0, Landroid/view/-$$Lambda$InsetsController$InternalAnimationControlListener$SInf91MjJKDQFXwrp7C-HBi0xaQ;->f$1:Landroid/view/animation/Interpolator;

    iget-object v2, p0, Landroid/view/-$$Lambda$InsetsController$InternalAnimationControlListener$SInf91MjJKDQFXwrp7C-HBi0xaQ;->f$2:Landroid/view/WindowInsetsAnimationController;

    iget-object v3, p0, Landroid/view/-$$Lambda$InsetsController$InternalAnimationControlListener$SInf91MjJKDQFXwrp7C-HBi0xaQ;->f$3:Landroid/graphics/Insets;

    iget-object v4, p0, Landroid/view/-$$Lambda$InsetsController$InternalAnimationControlListener$SInf91MjJKDQFXwrp7C-HBi0xaQ;->f$4:Landroid/graphics/Insets;

    iget-object v5, p0, Landroid/view/-$$Lambda$InsetsController$InternalAnimationControlListener$SInf91MjJKDQFXwrp7C-HBi0xaQ;->f$5:Landroid/view/animation/Interpolator;

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Landroid/view/InsetsController$InternalAnimationControlListener;->lambda$onReady$0$InsetsController$InternalAnimationControlListener(Landroid/view/animation/Interpolator;Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;Landroid/graphics/Insets;Landroid/view/animation/Interpolator;Landroid/animation/ValueAnimator;)V

    return-void
.end method
