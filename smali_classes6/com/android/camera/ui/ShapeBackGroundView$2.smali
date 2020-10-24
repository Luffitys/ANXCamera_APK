.class Lcom/android/camera/ui/ShapeBackGroundView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ShapeBackGroundView;

.field final synthetic val$dstHeight:I

.field final synthetic val$startHeight:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ShapeBackGroundView;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/ShapeBackGroundView$2;->this$0:Lcom/android/camera/ui/ShapeBackGroundView;

    iput p2, p0, Lcom/android/camera/ui/ShapeBackGroundView$2;->val$startHeight:I

    iput p3, p0, Lcom/android/camera/ui/ShapeBackGroundView$2;->val$dstHeight:I

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

    iget-object v0, p0, Lcom/android/camera/ui/ShapeBackGroundView$2;->this$0:Lcom/android/camera/ui/ShapeBackGroundView;

    iget v1, p0, Lcom/android/camera/ui/ShapeBackGroundView$2;->val$startHeight:I

    int-to-float v2, v1

    iget v3, p0, Lcom/android/camera/ui/ShapeBackGroundView$2;->val$dstHeight:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, p1

    add-float/2addr v2, v1

    float-to-int p1, v2

    invoke-static {v0, p1}, Lcom/android/camera/ui/ShapeBackGroundView;->access$202(Lcom/android/camera/ui/ShapeBackGroundView;I)I

    iget-object p0, p0, Lcom/android/camera/ui/ShapeBackGroundView$2;->this$0:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
