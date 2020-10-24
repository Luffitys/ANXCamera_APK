.class Lmiui/app/transition/ScaleUpOrDown$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lmiui/app/transition/ScaleUpOrDown;

.field final synthetic val$bottomRoundedCorner:I

.field final synthetic val$frameLayout:Lmiui/view/RoundedFrameLayout;

.field final synthetic val$isScaleDownToCenter:Z

.field final synthetic val$scaleX:F

.field final synthetic val$scaleY:F

.field final synthetic val$topRoundedCorner:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lmiui/app/transition/ScaleUpOrDown;ZLandroid/view/View;IIFFLmiui/view/RoundedFrameLayout;)V
    .locals 0

    iput-object p1, p0, Lmiui/app/transition/ScaleUpOrDown$3;->this$0:Lmiui/app/transition/ScaleUpOrDown;

    iput-boolean p2, p0, Lmiui/app/transition/ScaleUpOrDown$3;->val$isScaleDownToCenter:Z

    iput-object p3, p0, Lmiui/app/transition/ScaleUpOrDown$3;->val$view:Landroid/view/View;

    iput p4, p0, Lmiui/app/transition/ScaleUpOrDown$3;->val$topRoundedCorner:I

    iput p5, p0, Lmiui/app/transition/ScaleUpOrDown$3;->val$bottomRoundedCorner:I

    iput p6, p0, Lmiui/app/transition/ScaleUpOrDown$3;->val$scaleX:F

    iput p7, p0, Lmiui/app/transition/ScaleUpOrDown$3;->val$scaleY:F

    iput-object p8, p0, Lmiui/app/transition/ScaleUpOrDown$3;->val$frameLayout:Lmiui/view/RoundedFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 11

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-boolean v0, p0, Lmiui/app/transition/ScaleUpOrDown$3;->val$isScaleDownToCenter:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    const v0, -0x41333334    # -0.39999998f

    mul-float/2addr p1, v0

    add-float v5, p1, v1

    iget-object v2, p0, Lmiui/app/transition/ScaleUpOrDown$3;->this$0:Lmiui/app/transition/ScaleUpOrDown;

    iget-object v3, p0, Lmiui/app/transition/ScaleUpOrDown$3;->val$view:Landroid/view/View;

    iget p1, p0, Lmiui/app/transition/ScaleUpOrDown$3;->val$topRoundedCorner:I

    int-to-float v6, p1

    iget p0, p0, Lmiui/app/transition/ScaleUpOrDown$3;->val$bottomRoundedCorner:I

    int-to-float v7, p0

    move v4, v5

    invoke-static/range {v2 .. v7}, Lmiui/app/transition/ScaleUpOrDown;->access$100(Lmiui/app/transition/ScaleUpOrDown;Landroid/view/View;FFFF)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lmiui/app/transition/ScaleUpOrDown$3;->val$topRoundedCorner:I

    int-to-float v0, v0

    iget-object v2, p0, Lmiui/app/transition/ScaleUpOrDown$3;->this$0:Lmiui/app/transition/ScaleUpOrDown;

    invoke-static {v2}, Lmiui/app/transition/ScaleUpOrDown;->access$000(Lmiui/app/transition/ScaleUpOrDown;)I

    move-result v2

    iget v3, p0, Lmiui/app/transition/ScaleUpOrDown$3;->val$topRoundedCorner:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float v9, v0, v2

    iget v0, p0, Lmiui/app/transition/ScaleUpOrDown$3;->val$bottomRoundedCorner:I

    int-to-float v0, v0

    iget-object v2, p0, Lmiui/app/transition/ScaleUpOrDown$3;->this$0:Lmiui/app/transition/ScaleUpOrDown;

    invoke-static {v2}, Lmiui/app/transition/ScaleUpOrDown;->access$000(Lmiui/app/transition/ScaleUpOrDown;)I

    move-result v2

    iget v3, p0, Lmiui/app/transition/ScaleUpOrDown$3;->val$bottomRoundedCorner:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float v10, v0, v2

    iget v0, p0, Lmiui/app/transition/ScaleUpOrDown$3;->val$scaleX:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    iget v2, p0, Lmiui/app/transition/ScaleUpOrDown$3;->val$scaleY:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v2, v1

    iget-object v3, p0, Lmiui/app/transition/ScaleUpOrDown$3;->this$0:Lmiui/app/transition/ScaleUpOrDown;

    iget-object v4, p0, Lmiui/app/transition/ScaleUpOrDown$3;->val$view:Landroid/view/View;

    move v5, v0

    move v6, v2

    move v7, v9

    move v8, v10

    invoke-static/range {v3 .. v8}, Lmiui/app/transition/ScaleUpOrDown;->access$100(Lmiui/app/transition/ScaleUpOrDown;Landroid/view/View;FFFF)V

    iget-object p1, p0, Lmiui/app/transition/ScaleUpOrDown$3;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    const/16 v1, 0x9

    new-array v1, v1, [F

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p1, p0, Lmiui/app/transition/ScaleUpOrDown$3;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int v7, p1

    iget-object p1, p0, Lmiui/app/transition/ScaleUpOrDown$3;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v2

    float-to-int v8, p1

    iget-object v3, p0, Lmiui/app/transition/ScaleUpOrDown$3;->this$0:Lmiui/app/transition/ScaleUpOrDown;

    iget-object v4, p0, Lmiui/app/transition/ScaleUpOrDown$3;->val$frameLayout:Lmiui/view/RoundedFrameLayout;

    const/4 p0, 0x2

    aget v5, v1, p0

    const/4 p0, 0x5

    aget v6, v1, p0

    invoke-static/range {v3 .. v10}, Lmiui/app/transition/ScaleUpOrDown;->access$200(Lmiui/app/transition/ScaleUpOrDown;Lmiui/view/RoundedFrameLayout;FFIIFF)V

    :goto_0
    return-void
.end method
