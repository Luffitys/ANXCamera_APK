.class Lmiui/widget/NavigationLayout$2;
.super Ljava/lang/Object;
.source "NavigationLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/NavigationLayout;->getScrimAnimatorListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/NavigationLayout;


# direct methods
.method constructor <init>(Lmiui/widget/NavigationLayout;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/NavigationLayout$2;->this$0:Lmiui/widget/NavigationLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7

    iget-object v0, p0, Lmiui/widget/NavigationLayout$2;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;
    invoke-static {v0}, Lmiui/widget/NavigationLayout;->access$500(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lmiui/widget/NavigationLayout$2;->this$0:Lmiui/widget/NavigationLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    # setter for: Lmiui/widget/NavigationLayout;->mScrimOpacityAnimatior:F
    invoke-static {v0, v1}, Lmiui/widget/NavigationLayout;->access$602(Lmiui/widget/NavigationLayout;F)F

    iget-object v0, p0, Lmiui/widget/NavigationLayout$2;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;
    invoke-static {v0}, Lmiui/widget/NavigationLayout;->access$500(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NavigationLayout$2;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;
    invoke-static {v2}, Lmiui/widget/NavigationLayout;->access$500(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/NavigationLayout$2;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;
    invoke-static {v3}, Lmiui/widget/NavigationLayout;->access$500(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lmiui/widget/NavigationLayout$2;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mScrimAnimationView:Landroid/view/View;
    invoke-static {v4}, Lmiui/widget/NavigationLayout;->access$500(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lmiui/widget/NavigationLayout;->postInvalidateOnAnimation(IIII)V

    :cond_42
    return-void
.end method
