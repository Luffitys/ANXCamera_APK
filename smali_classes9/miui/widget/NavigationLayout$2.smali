.class Lmiui/widget/NavigationLayout$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lmiui/widget/NavigationLayout;


# direct methods
.method constructor <init>(Lmiui/widget/NavigationLayout;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/NavigationLayout$2;->this$0:Lmiui/widget/NavigationLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lmiui/widget/NavigationLayout$2;->this$0:Lmiui/widget/NavigationLayout;

    invoke-static {v0}, Lmiui/widget/NavigationLayout;->access$500(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/NavigationLayout$2;->this$0:Lmiui/widget/NavigationLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lmiui/widget/NavigationLayout;->access$602(Lmiui/widget/NavigationLayout;F)F

    iget-object p1, p0, Lmiui/widget/NavigationLayout$2;->this$0:Lmiui/widget/NavigationLayout;

    invoke-static {p1}, Lmiui/widget/NavigationLayout;->access$500(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NavigationLayout$2;->this$0:Lmiui/widget/NavigationLayout;

    invoke-static {v1}, Lmiui/widget/NavigationLayout;->access$500(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NavigationLayout$2;->this$0:Lmiui/widget/NavigationLayout;

    invoke-static {v2}, Lmiui/widget/NavigationLayout;->access$500(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object p0, p0, Lmiui/widget/NavigationLayout$2;->this$0:Lmiui/widget/NavigationLayout;

    invoke-static {p0}, Lmiui/widget/NavigationLayout;->access$500(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation(IIII)V

    :cond_0
    return-void
.end method
