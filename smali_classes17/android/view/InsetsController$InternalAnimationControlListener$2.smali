.class Landroid/view/InsetsController$InternalAnimationControlListener$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InsetsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/InsetsController$InternalAnimationControlListener;->onReady(Landroid/view/WindowInsetsAnimationController;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/InsetsController$InternalAnimationControlListener;


# direct methods
.method constructor <init>(Landroid/view/InsetsController$InternalAnimationControlListener;)V
    .registers 2

    iput-object p1, p0, Landroid/view/InsetsController$InternalAnimationControlListener$2;->this$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener$2;->this$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    invoke-virtual {v0}, Landroid/view/InsetsController$InternalAnimationControlListener;->onAnimationFinish()V

    return-void
.end method
