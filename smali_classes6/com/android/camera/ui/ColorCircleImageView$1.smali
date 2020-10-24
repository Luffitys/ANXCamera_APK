.class Lcom/android/camera/ui/ColorCircleImageView$1;
.super Lmiui/view/animation/CubicEaseOutInterpolator;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ColorCircleImageView;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ColorCircleImageView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/ColorCircleImageView$1;->this$0:Lcom/android/camera/ui/ColorCircleImageView;

    iput p2, p0, Lcom/android/camera/ui/ColorCircleImageView$1;->val$index:I

    invoke-direct {p0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5

    invoke-super {p0, p1}, Lmiui/view/animation/CubicEaseOutInterpolator;->getInterpolation(F)F

    move-result p1

    iget-object v0, p0, Lcom/android/camera/ui/ColorCircleImageView$1;->this$0:Lcom/android/camera/ui/ColorCircleImageView;

    invoke-static {v0}, Lcom/android/camera/ui/ColorCircleImageView;->access$200(Lcom/android/camera/ui/ColorCircleImageView;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/ColorCircleImageView$1;->this$0:Lcom/android/camera/ui/ColorCircleImageView;

    invoke-static {v1}, Lcom/android/camera/ui/ColorCircleImageView;->access$100(Lcom/android/camera/ui/ColorCircleImageView;)Landroid/animation/ArgbEvaluator;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/ui/ColorCircleImageView;->access$000()[I

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ui/ColorCircleImageView$1;->val$index:I

    rsub-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/ui/ColorCircleImageView;->access$000()[I

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/ColorCircleImageView$1;->val$index:I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/ColorCircleImageView$1;->this$0:Lcom/android/camera/ui/ColorCircleImageView;

    invoke-static {v0}, Lcom/android/camera/ui/ColorCircleImageView;->access$400(Lcom/android/camera/ui/ColorCircleImageView;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/ColorCircleImageView$1;->this$0:Lcom/android/camera/ui/ColorCircleImageView;

    invoke-static {v1}, Lcom/android/camera/ui/ColorCircleImageView;->access$100(Lcom/android/camera/ui/ColorCircleImageView;)Landroid/animation/ArgbEvaluator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ColorCircleImageView$1;->this$0:Lcom/android/camera/ui/ColorCircleImageView;

    iget v3, p0, Lcom/android/camera/ui/ColorCircleImageView$1;->val$index:I

    rsub-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/android/camera/ui/ColorCircleImageView;->access$300(Lcom/android/camera/ui/ColorCircleImageView;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/ColorCircleImageView$1;->this$0:Lcom/android/camera/ui/ColorCircleImageView;

    iget v4, p0, Lcom/android/camera/ui/ColorCircleImageView$1;->val$index:I

    invoke-static {v3, v4}, Lcom/android/camera/ui/ColorCircleImageView;->access$300(Lcom/android/camera/ui/ColorCircleImageView;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/android/camera/ui/ColorCircleImageView$1;->this$0:Lcom/android/camera/ui/ColorCircleImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return p1
.end method
