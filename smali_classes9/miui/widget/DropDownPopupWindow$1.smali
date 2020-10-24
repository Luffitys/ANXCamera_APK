.class Lmiui/widget/DropDownPopupWindow$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lmiui/widget/DropDownPopupWindow;


# direct methods
.method constructor <init>(Lmiui/widget/DropDownPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow$1;->this$0:Lmiui/widget/DropDownPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object p1, p0, Lmiui/widget/DropDownPopupWindow$1;->this$0:Lmiui/widget/DropDownPopupWindow;

    invoke-static {p1}, Lmiui/widget/DropDownPopupWindow;->access$000(Lmiui/widget/DropDownPopupWindow;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$1;->this$0:Lmiui/widget/DropDownPopupWindow;

    invoke-static {v0}, Lmiui/widget/DropDownPopupWindow;->access$100(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContainerController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$1;->this$0:Lmiui/widget/DropDownPopupWindow;

    invoke-static {v0}, Lmiui/widget/DropDownPopupWindow;->access$100(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContainerController;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow$1;->this$0:Lmiui/widget/DropDownPopupWindow;

    invoke-static {v1}, Lmiui/widget/DropDownPopupWindow;->access$200(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContainerView;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lmiui/widget/DropDownPopupWindow$Controller;->onAniamtionUpdate(Landroid/view/View;F)V

    :cond_0
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$1;->this$0:Lmiui/widget/DropDownPopupWindow;

    invoke-static {v0}, Lmiui/widget/DropDownPopupWindow;->access$300(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContentController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$1;->this$0:Lmiui/widget/DropDownPopupWindow;

    invoke-static {v0}, Lmiui/widget/DropDownPopupWindow;->access$300(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContentController;

    move-result-object v0

    iget-object p0, p0, Lmiui/widget/DropDownPopupWindow$1;->this$0:Lmiui/widget/DropDownPopupWindow;

    invoke-static {p0}, Lmiui/widget/DropDownPopupWindow;->access$400(Lmiui/widget/DropDownPopupWindow;)Landroid/view/View;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lmiui/widget/DropDownPopupWindow$Controller;->onAniamtionUpdate(Landroid/view/View;F)V

    :cond_1
    return-void
.end method
