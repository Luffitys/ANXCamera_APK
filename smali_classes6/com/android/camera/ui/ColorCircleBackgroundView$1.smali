.class Lcom/android/camera/ui/ColorCircleBackgroundView$1;
.super Lmiui/view/animation/CubicEaseOutInterpolator;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ColorCircleBackgroundView;

.field final synthetic val$srcColor:I

.field final synthetic val$targetColor:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ColorCircleBackgroundView;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/ColorCircleBackgroundView$1;->this$0:Lcom/android/camera/ui/ColorCircleBackgroundView;

    iput p2, p0, Lcom/android/camera/ui/ColorCircleBackgroundView$1;->val$srcColor:I

    iput p3, p0, Lcom/android/camera/ui/ColorCircleBackgroundView$1;->val$targetColor:I

    invoke-direct {p0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4

    invoke-super {p0, p1}, Lmiui/view/animation/CubicEaseOutInterpolator;->getInterpolation(F)F

    move-result p1

    iget-object v0, p0, Lcom/android/camera/ui/ColorCircleBackgroundView$1;->this$0:Lcom/android/camera/ui/ColorCircleBackgroundView;

    invoke-static {v0}, Lcom/android/camera/ui/ColorCircleBackgroundView;->access$100(Lcom/android/camera/ui/ColorCircleBackgroundView;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/ColorCircleBackgroundView$1;->this$0:Lcom/android/camera/ui/ColorCircleBackgroundView;

    invoke-static {v1}, Lcom/android/camera/ui/ColorCircleBackgroundView;->access$000(Lcom/android/camera/ui/ColorCircleBackgroundView;)Landroid/animation/ArgbEvaluator;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/ColorCircleBackgroundView$1;->val$srcColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ui/ColorCircleBackgroundView$1;->val$targetColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/android/camera/ui/ColorCircleBackgroundView$1;->this$0:Lcom/android/camera/ui/ColorCircleBackgroundView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return p1
.end method
