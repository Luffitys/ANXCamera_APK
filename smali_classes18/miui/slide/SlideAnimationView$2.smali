.class Lmiui/slide/SlideAnimationView$2;
.super Ljava/lang/Object;
.source "SlideAnimationView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/slide/SlideAnimationView;->startAnimating(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/slide/SlideAnimationView;


# direct methods
.method constructor <init>(Lmiui/slide/SlideAnimationView;)V
    .registers 2

    iput-object p1, p0, Lmiui/slide/SlideAnimationView$2;->this$0:Lmiui/slide/SlideAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object v0, p0, Lmiui/slide/SlideAnimationView$2;->this$0:Lmiui/slide/SlideAnimationView;

    invoke-virtual {v0}, Lmiui/slide/SlideAnimationView;->reset()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
