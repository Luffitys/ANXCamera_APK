.class Lcom/android/camera/ui/ShapeBackGroundView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ShapeBackGroundView;

.field final synthetic val$newAlpha:I

.field final synthetic val$newHeigh:I

.field final synthetic val$newRadius:I

.field final synthetic val$oldAlpha:I

.field final synthetic val$oldHeight:I

.field final synthetic val$oldRadius:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ShapeBackGroundView;IIIIII)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/ShapeBackGroundView$1;->this$0:Lcom/android/camera/ui/ShapeBackGroundView;

    iput p2, p0, Lcom/android/camera/ui/ShapeBackGroundView$1;->val$oldHeight:I

    iput p3, p0, Lcom/android/camera/ui/ShapeBackGroundView$1;->val$newHeigh:I

    iput p4, p0, Lcom/android/camera/ui/ShapeBackGroundView$1;->val$oldRadius:I

    iput p5, p0, Lcom/android/camera/ui/ShapeBackGroundView$1;->val$newRadius:I

    iput p6, p0, Lcom/android/camera/ui/ShapeBackGroundView$1;->val$newAlpha:I

    iput p7, p0, Lcom/android/camera/ui/ShapeBackGroundView$1;->val$oldAlpha:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/camera/ui/ShapeBackGroundView$1;->this$0:Lcom/android/camera/ui/ShapeBackGroundView;

    iget v1, p0, Lcom/android/camera/ui/ShapeBackGroundView$1;->val$oldHeight:I

    int-to-float v2, v1

    iget v3, p0, Lcom/android/camera/ui/ShapeBackGroundView$1;->val$newHeigh:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, p1

    add-float/2addr v2, v1

    float-to-int v1, v2

    invoke-static {v0, v1}, Lcom/android/camera/ui/ShapeBackGroundView;->access$002(Lcom/android/camera/ui/ShapeBackGroundView;I)I

    iget-object v0, p0, Lcom/android/camera/ui/ShapeBackGroundView$1;->this$0:Lcom/android/camera/ui/ShapeBackGroundView;

    iget v1, p0, Lcom/android/camera/ui/ShapeBackGroundView$1;->val$oldRadius:I

    int-to-float v2, v1

    iget v3, p0, Lcom/android/camera/ui/ShapeBackGroundView$1;->val$newRadius:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, p1

    add-float/2addr v2, v1

    float-to-int v1, v2

    invoke-static {v0, v1}, Lcom/android/camera/ui/ShapeBackGroundView;->access$102(Lcom/android/camera/ui/ShapeBackGroundView;I)I

    iget v0, p0, Lcom/android/camera/ui/ShapeBackGroundView$1;->val$newAlpha:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/android/camera/ui/ShapeBackGroundView$1;->this$0:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {p1}, Lcom/android/camera/ui/ShapeBackGroundView;->access$000(Lcom/android/camera/ui/ShapeBackGroundView;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/ShapeBackGroundView$1;->this$0:Lcom/android/camera/ui/ShapeBackGroundView;

    iget v2, p0, Lcom/android/camera/ui/ShapeBackGroundView$1;->val$oldAlpha:I

    int-to-float v3, v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v3, v0

    float-to-int p1, v3

    invoke-static {v1, p1}, Lcom/android/camera/ui/ShapeBackGroundView;->access$302(Lcom/android/camera/ui/ShapeBackGroundView;I)I

    iget-object p1, p0, Lcom/android/camera/ui/ShapeBackGroundView$1;->this$0:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {p1}, Lcom/android/camera/ui/ShapeBackGroundView;->access$400(Lcom/android/camera/ui/ShapeBackGroundView;)Landroid/graphics/Paint;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/ui/ShapeBackGroundView$1;->this$0:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {v0}, Lcom/android/camera/ui/ShapeBackGroundView;->access$300(Lcom/android/camera/ui/ShapeBackGroundView;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/android/camera/ui/ShapeBackGroundView$1;->this$0:Lcom/android/camera/ui/ShapeBackGroundView;

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/android/camera/ui/ShapeBackGroundView;->access$202(Lcom/android/camera/ui/ShapeBackGroundView;I)I

    iget-object p0, p0, Lcom/android/camera/ui/ShapeBackGroundView$1;->this$0:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
