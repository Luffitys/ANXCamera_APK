.class Lmiui/widget/DropDownPopupWindow$1;
.super Ljava/lang/Object;
.source "DropDownPopupWindow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow$1;->this$0:Lmiui/widget/DropDownPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$1;->this$0:Lmiui/widget/DropDownPopupWindow;

    # getter for: Lmiui/widget/DropDownPopupWindow;->mAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lmiui/widget/DropDownPopupWindow;->access$000(Lmiui/widget/DropDownPopupWindow;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow$1;->this$0:Lmiui/widget/DropDownPopupWindow;

    # getter for: Lmiui/widget/DropDownPopupWindow;->mContainerController:Lmiui/widget/DropDownPopupWindow$ContainerController;
    invoke-static {v1}, Lmiui/widget/DropDownPopupWindow;->access$100(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContainerController;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow$1;->this$0:Lmiui/widget/DropDownPopupWindow;

    # getter for: Lmiui/widget/DropDownPopupWindow;->mContainerController:Lmiui/widget/DropDownPopupWindow$ContainerController;
    invoke-static {v1}, Lmiui/widget/DropDownPopupWindow;->access$100(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContainerController;

    move-result-object v1

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow$1;->this$0:Lmiui/widget/DropDownPopupWindow;

    # getter for: Lmiui/widget/DropDownPopupWindow;->mContainer:Lmiui/widget/DropDownPopupWindow$ContainerView;
    invoke-static {v2}, Lmiui/widget/DropDownPopupWindow;->access$200(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContainerView;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lmiui/widget/DropDownPopupWindow$ContainerController;->onAniamtionUpdate(Landroid/view/View;F)V

    :cond_27
    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow$1;->this$0:Lmiui/widget/DropDownPopupWindow;

    # getter for: Lmiui/widget/DropDownPopupWindow;->mContentController:Lmiui/widget/DropDownPopupWindow$ContentController;
    invoke-static {v1}, Lmiui/widget/DropDownPopupWindow;->access$300(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContentController;

    move-result-object v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lmiui/widget/DropDownPopupWindow$1;->this$0:Lmiui/widget/DropDownPopupWindow;

    # getter for: Lmiui/widget/DropDownPopupWindow;->mContentController:Lmiui/widget/DropDownPopupWindow$ContentController;
    invoke-static {v1}, Lmiui/widget/DropDownPopupWindow;->access$300(Lmiui/widget/DropDownPopupWindow;)Lmiui/widget/DropDownPopupWindow$ContentController;

    move-result-object v1

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow$1;->this$0:Lmiui/widget/DropDownPopupWindow;

    # getter for: Lmiui/widget/DropDownPopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v2}, Lmiui/widget/DropDownPopupWindow;->access$400(Lmiui/widget/DropDownPopupWindow;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lmiui/widget/DropDownPopupWindow$ContentController;->onAniamtionUpdate(Landroid/view/View;F)V

    :cond_3e
    return-void
.end method
