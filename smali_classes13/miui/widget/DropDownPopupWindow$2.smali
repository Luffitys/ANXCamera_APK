.class Lmiui/widget/DropDownPopupWindow$2;
.super Ljava/lang/Object;
.source "DropDownPopupWindow.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DropDownPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/DropDownPopupWindow;


# direct methods
.method constructor <init>(Lmiui/widget/DropDownPopupWindow;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow$2;->this$0:Lmiui/widget/DropDownPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private tryDismiss()V
    .registers 2

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$2;->this$0:Lmiui/widget/DropDownPopupWindow;

    # getter for: Lmiui/widget/DropDownPopupWindow;->mDismissPending:Z
    invoke-static {v0}, Lmiui/widget/DropDownPopupWindow;->access$500(Lmiui/widget/DropDownPopupWindow;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$2;->this$0:Lmiui/widget/DropDownPopupWindow;

    # invokes: Lmiui/widget/DropDownPopupWindow;->realDismiss()V
    invoke-static {v0}, Lmiui/widget/DropDownPopupWindow;->access$600(Lmiui/widget/DropDownPopupWindow;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    invoke-direct {p0}, Lmiui/widget/DropDownPopupWindow$2;->tryDismiss()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    invoke-direct {p0}, Lmiui/widget/DropDownPopupWindow$2;->tryDismiss()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$2;->this$0:Lmiui/widget/DropDownPopupWindow;

    # getter for: Lmiui/widget/DropDownPopupWindow;->mDismissPending:Z
    invoke-static {v0}, Lmiui/widget/DropDownPopupWindow;->access$500(Lmiui/widget/DropDownPopupWindow;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$2;->this$0:Lmiui/widget/DropDownPopupWindow;

    # getter for: Lmiui/widget/DropDownPopupWindow;->mDropDownController:Lmiui/widget/DropDownPopupWindow$Controller;
    invoke-static {v0}, Lmiui/widget/DropDownPopupWindow;->access$700(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$Controller;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$2;->this$0:Lmiui/widget/DropDownPopupWindow;

    # getter for: Lmiui/widget/DropDownPopupWindow;->mDropDownController:Lmiui/widget/DropDownPopupWindow$Controller;
    invoke-static {v0}, Lmiui/widget/DropDownPopupWindow;->access$700(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$Controller;

    move-result-object v0

    invoke-interface {v0}, Lmiui/widget/DropDownPopupWindow$Controller;->onDismiss()V

    :cond_19
    return-void
.end method
