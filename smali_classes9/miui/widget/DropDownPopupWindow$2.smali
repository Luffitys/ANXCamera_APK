.class Lmiui/widget/DropDownPopupWindow$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lmiui/widget/DropDownPopupWindow;


# direct methods
.method constructor <init>(Lmiui/widget/DropDownPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow$2;->this$0:Lmiui/widget/DropDownPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private tryDismiss()V
    .locals 1

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$2;->this$0:Lmiui/widget/DropDownPopupWindow;

    invoke-static {v0}, Lmiui/widget/DropDownPopupWindow;->access$500(Lmiui/widget/DropDownPopupWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiui/widget/DropDownPopupWindow$2;->this$0:Lmiui/widget/DropDownPopupWindow;

    invoke-static {p0}, Lmiui/widget/DropDownPopupWindow;->access$600(Lmiui/widget/DropDownPopupWindow;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/DropDownPopupWindow$2;->tryDismiss()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/DropDownPopupWindow$2;->tryDismiss()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lmiui/widget/DropDownPopupWindow$2;->this$0:Lmiui/widget/DropDownPopupWindow;

    invoke-static {p1}, Lmiui/widget/DropDownPopupWindow;->access$500(Lmiui/widget/DropDownPopupWindow;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/widget/DropDownPopupWindow$2;->this$0:Lmiui/widget/DropDownPopupWindow;

    invoke-static {p1}, Lmiui/widget/DropDownPopupWindow;->access$700(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$Controller;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lmiui/widget/DropDownPopupWindow$2;->this$0:Lmiui/widget/DropDownPopupWindow;

    invoke-static {p0}, Lmiui/widget/DropDownPopupWindow;->access$700(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$Controller;

    move-result-object p0

    invoke-interface {p0}, Lmiui/widget/DropDownPopupWindow$Controller;->onDismiss()V

    :cond_0
    return-void
.end method
