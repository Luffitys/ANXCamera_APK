.class Lmiui/widget/Rotation3DLayout$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lmiui/widget/Rotation3DLayout;


# direct methods
.method constructor <init>(Lmiui/widget/Rotation3DLayout;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/Rotation3DLayout$1;->this$0:Lmiui/widget/Rotation3DLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/Rotation3DLayout$1;->this$0:Lmiui/widget/Rotation3DLayout;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lmiui/widget/Rotation3DLayout;->access$002(Lmiui/widget/Rotation3DLayout;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/Rotation3DLayout$1;->this$0:Lmiui/widget/Rotation3DLayout;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lmiui/widget/Rotation3DLayout;->access$002(Lmiui/widget/Rotation3DLayout;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/Rotation3DLayout$1;->this$0:Lmiui/widget/Rotation3DLayout;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lmiui/widget/Rotation3DLayout;->access$002(Lmiui/widget/Rotation3DLayout;Z)Z

    return-void
.end method
