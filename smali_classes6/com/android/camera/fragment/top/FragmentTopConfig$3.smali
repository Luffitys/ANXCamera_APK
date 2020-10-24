.class Lcom/android/camera/fragment/top/FragmentTopConfig$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

.field final synthetic val$backgroundOriginHeight:I

.field final synthetic val$fromAlpha:I

.field final synthetic val$toAlpha:I


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/top/FragmentTopConfig;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$3;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    iput p2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$3;->val$backgroundOriginHeight:I

    iput p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$3;->val$fromAlpha:I

    iput p4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$3;->val$toAlpha:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$3;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$300(Lcom/android/camera/fragment/top/FragmentTopConfig;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$3;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-static {v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$400(Lcom/android/camera/fragment/top/FragmentTopConfig;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$3;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-static {v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$500(Lcom/android/camera/fragment/top/FragmentTopConfig;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$3;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-static {v3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$400(Lcom/android/camera/fragment/top/FragmentTopConfig;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$3;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-static {v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$300(Lcom/android/camera/fragment/top/FragmentTopConfig;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$3;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$600(Lcom/android/camera/fragment/top/FragmentTopConfig;)Lcom/android/camera/ui/ShapeBackGroundView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$3;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-static {v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$700(Lcom/android/camera/fragment/top/FragmentTopConfig;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$3;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-static {v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$500(Lcom/android/camera/fragment/top/FragmentTopConfig;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$3;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-static {v3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$700(Lcom/android/camera/fragment/top/FragmentTopConfig;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$3;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-static {v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$600(Lcom/android/camera/fragment/top/FragmentTopConfig;)Lcom/android/camera/ui/ShapeBackGroundView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$3;->val$backgroundOriginHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$3;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-static {v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$500(Lcom/android/camera/fragment/top/FragmentTopConfig;)I

    move-result v1

    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$3;->val$backgroundOriginHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$3;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-static {v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->access$600(Lcom/android/camera/fragment/top/FragmentTopConfig;)Lcom/android/camera/ui/ShapeBackGroundView;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$3;->val$fromAlpha:I

    int-to-float v4, v3

    iget p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$3;->val$toAlpha:I

    sub-int/2addr p0, v3

    int-to-float p0, p0

    mul-float/2addr p0, p1

    add-float/2addr v4, p0

    float-to-int p0, v4

    const/high16 v3, 0x42840000    # 66.0f

    mul-float/2addr p1, v3

    float-to-int p1, p1

    invoke-virtual {v2, p0, p1, v0, v1}, Lcom/android/camera/ui/ShapeBackGroundView;->setBackgroundAlphaAndRadius(IIII)V

    return-void
.end method
