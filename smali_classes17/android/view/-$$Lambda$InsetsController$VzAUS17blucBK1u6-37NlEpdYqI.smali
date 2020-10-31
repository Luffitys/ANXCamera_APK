.class public final synthetic Landroid/view/-$$Lambda$InsetsController$VzAUS17blucBK1u6-37NlEpdYqI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/InsetsController;

.field public final synthetic f$1:Landroid/view/InsetsAnimationControlImpl;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/view/WindowInsetsAnimation;

.field public final synthetic f$4:Landroid/view/WindowInsetsAnimation$Bounds;

.field public final synthetic f$5:Landroid/view/WindowInsetsAnimationControlListener;


# direct methods
.method public synthetic constructor <init>(Landroid/view/InsetsController;Landroid/view/InsetsAnimationControlImpl;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$InsetsController$VzAUS17blucBK1u6-37NlEpdYqI;->f$0:Landroid/view/InsetsController;

    iput-object p2, p0, Landroid/view/-$$Lambda$InsetsController$VzAUS17blucBK1u6-37NlEpdYqI;->f$1:Landroid/view/InsetsAnimationControlImpl;

    iput p3, p0, Landroid/view/-$$Lambda$InsetsController$VzAUS17blucBK1u6-37NlEpdYqI;->f$2:I

    iput-object p4, p0, Landroid/view/-$$Lambda$InsetsController$VzAUS17blucBK1u6-37NlEpdYqI;->f$3:Landroid/view/WindowInsetsAnimation;

    iput-object p5, p0, Landroid/view/-$$Lambda$InsetsController$VzAUS17blucBK1u6-37NlEpdYqI;->f$4:Landroid/view/WindowInsetsAnimation$Bounds;

    iput-object p6, p0, Landroid/view/-$$Lambda$InsetsController$VzAUS17blucBK1u6-37NlEpdYqI;->f$5:Landroid/view/WindowInsetsAnimationControlListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Landroid/view/-$$Lambda$InsetsController$VzAUS17blucBK1u6-37NlEpdYqI;->f$0:Landroid/view/InsetsController;

    iget-object v1, p0, Landroid/view/-$$Lambda$InsetsController$VzAUS17blucBK1u6-37NlEpdYqI;->f$1:Landroid/view/InsetsAnimationControlImpl;

    iget v2, p0, Landroid/view/-$$Lambda$InsetsController$VzAUS17blucBK1u6-37NlEpdYqI;->f$2:I

    iget-object v3, p0, Landroid/view/-$$Lambda$InsetsController$VzAUS17blucBK1u6-37NlEpdYqI;->f$3:Landroid/view/WindowInsetsAnimation;

    iget-object v4, p0, Landroid/view/-$$Lambda$InsetsController$VzAUS17blucBK1u6-37NlEpdYqI;->f$4:Landroid/view/WindowInsetsAnimation$Bounds;

    iget-object v5, p0, Landroid/view/-$$Lambda$InsetsController$VzAUS17blucBK1u6-37NlEpdYqI;->f$5:Landroid/view/WindowInsetsAnimationControlListener;

    invoke-virtual/range {v0 .. v5}, Landroid/view/InsetsController;->lambda$startAnimation$6$InsetsController(Landroid/view/InsetsAnimationControlImpl;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;Landroid/view/WindowInsetsAnimationControlListener;)V

    return-void
.end method
