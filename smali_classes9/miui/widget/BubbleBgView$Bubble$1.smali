.class Lmiui/widget/BubbleBgView$Bubble$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lmiui/widget/BubbleBgView$Bubble;


# direct methods
.method constructor <init>(Lmiui/widget/BubbleBgView$Bubble;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/BubbleBgView$Bubble$1;->this$0:Lmiui/widget/BubbleBgView$Bubble;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/BubbleBgView$Bubble$1;->this$0:Lmiui/widget/BubbleBgView$Bubble;

    invoke-static {p0}, Lmiui/widget/BubbleBgView$Bubble;->access$500(Lmiui/widget/BubbleBgView$Bubble;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
