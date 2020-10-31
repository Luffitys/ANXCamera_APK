.class Lmiui/widget/Rotation3DLayout$1;
.super Ljava/lang/Object;
.source "Rotation3DLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/Rotation3DLayout;->resetRotation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/Rotation3DLayout;


# direct methods
.method constructor <init>(Lmiui/widget/Rotation3DLayout;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/Rotation3DLayout$1;->this$0:Lmiui/widget/Rotation3DLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lmiui/widget/Rotation3DLayout$1;->this$0:Lmiui/widget/Rotation3DLayout;

    const/4 v1, 0x0

    # setter for: Lmiui/widget/Rotation3DLayout;->mIsDoingAnimation:Z
    invoke-static {v0, v1}, Lmiui/widget/Rotation3DLayout;->access$002(Lmiui/widget/Rotation3DLayout;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lmiui/widget/Rotation3DLayout$1;->this$0:Lmiui/widget/Rotation3DLayout;

    const/4 v1, 0x0

    # setter for: Lmiui/widget/Rotation3DLayout;->mIsDoingAnimation:Z
    invoke-static {v0, v1}, Lmiui/widget/Rotation3DLayout;->access$002(Lmiui/widget/Rotation3DLayout;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lmiui/widget/Rotation3DLayout$1;->this$0:Lmiui/widget/Rotation3DLayout;

    const/4 v1, 0x1

    # setter for: Lmiui/widget/Rotation3DLayout;->mIsDoingAnimation:Z
    invoke-static {v0, v1}, Lmiui/widget/Rotation3DLayout;->access$002(Lmiui/widget/Rotation3DLayout;Z)Z

    return-void
.end method
