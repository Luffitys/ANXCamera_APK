.class Lmiui/app/transition/ScaleUpOrDown$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lmiui/app/transition/ScaleUpOrDown;

.field final synthetic val$bottomRoundedCorner:I

.field final synthetic val$frameLayout:Lmiui/view/RoundedFrameLayout;

.field final synthetic val$scaleX:F

.field final synthetic val$scaleY:F

.field final synthetic val$topRoundedCorner:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lmiui/app/transition/ScaleUpOrDown;IIFFLandroid/view/View;Lmiui/view/RoundedFrameLayout;)V
    .locals 0

    iput-object p1, p0, Lmiui/app/transition/ScaleUpOrDown$1;->this$0:Lmiui/app/transition/ScaleUpOrDown;

    iput p2, p0, Lmiui/app/transition/ScaleUpOrDown$1;->val$topRoundedCorner:I

    iput p3, p0, Lmiui/app/transition/ScaleUpOrDown$1;->val$bottomRoundedCorner:I

    iput p4, p0, Lmiui/app/transition/ScaleUpOrDown$1;->val$scaleX:F

    iput p5, p0, Lmiui/app/transition/ScaleUpOrDown$1;->val$scaleY:F

    iput-object p6, p0, Lmiui/app/transition/ScaleUpOrDown$1;->val$view:Landroid/view/View;

    iput-object p7, p0, Lmiui/app/transition/ScaleUpOrDown$1;->val$frameLayout:Lmiui/view/RoundedFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v0, p0, Lmiui/app/transition/ScaleUpOrDown$1;->this$0:Lmiui/app/transition/ScaleUpOrDown;

    invoke-static {v0}, Lmiui/app/transition/ScaleUpOrDown;->access$000(Lmiui/app/transition/ScaleUpOrDown;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lmiui/app/transition/ScaleUpOrDown$1;->val$topRoundedCorner:I

    iget-object v2, p0, Lmiui/app/transition/ScaleUpOrDown$1;->this$0:Lmiui/app/transition/ScaleUpOrDown;

    invoke-static {v2}, Lmiui/app/transition/ScaleUpOrDown;->access$000(Lmiui/app/transition/ScaleUpOrDown;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float v8, v0, v1

    iget-object v0, p0, Lmiui/app/transition/ScaleUpOrDown$1;->this$0:Lmiui/app/transition/ScaleUpOrDown;

    invoke-static {v0}, Lmiui/app/transition/ScaleUpOrDown;->access$000(Lmiui/app/transition/ScaleUpOrDown;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lmiui/app/transition/ScaleUpOrDown$1;->val$bottomRoundedCorner:I

    iget-object v2, p0, Lmiui/app/transition/ScaleUpOrDown$1;->this$0:Lmiui/app/transition/ScaleUpOrDown;

    invoke-static {v2}, Lmiui/app/transition/ScaleUpOrDown;->access$000(Lmiui/app/transition/ScaleUpOrDown;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float v9, v0, v1

    iget v0, p0, Lmiui/app/transition/ScaleUpOrDown$1;->val$scaleX:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, v0

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    iget v2, p0, Lmiui/app/transition/ScaleUpOrDown$1;->val$scaleY:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float p1, v2, v1

    iget-object v2, p0, Lmiui/app/transition/ScaleUpOrDown$1;->this$0:Lmiui/app/transition/ScaleUpOrDown;

    iget-object v3, p0, Lmiui/app/transition/ScaleUpOrDown$1;->val$view:Landroid/view/View;

    move v4, v0

    move v5, p1

    move v6, v8

    move v7, v9

    invoke-static/range {v2 .. v7}, Lmiui/app/transition/ScaleUpOrDown;->access$100(Lmiui/app/transition/ScaleUpOrDown;Landroid/view/View;FFFF)V

    iget-object v1, p0, Lmiui/app/transition/ScaleUpOrDown$1;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v1, p0, Lmiui/app/transition/ScaleUpOrDown$1;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v6, v1

    iget-object v0, p0, Lmiui/app/transition/ScaleUpOrDown$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v7, v0

    iget-object p1, p0, Lmiui/app/transition/ScaleUpOrDown$1;->this$0:Lmiui/app/transition/ScaleUpOrDown;

    iget-object v3, p0, Lmiui/app/transition/ScaleUpOrDown$1;->val$frameLayout:Lmiui/view/RoundedFrameLayout;

    const/4 p0, 0x2

    aget v4, v2, p0

    const/4 p0, 0x5

    aget v5, v2, p0

    move-object v2, p1

    invoke-static/range {v2 .. v9}, Lmiui/app/transition/ScaleUpOrDown;->access$200(Lmiui/app/transition/ScaleUpOrDown;Lmiui/view/RoundedFrameLayout;FFIIFF)V

    return-void
.end method
