.class Lmiui/app/transition/ScaleUpOrDown$3;
.super Ljava/lang/Object;
.source "ScaleUpOrDown.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/transition/ScaleUpOrDown;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


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
    .registers 9

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
    .registers 20

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    iget-boolean v2, v0, Lmiui/app/transition/ScaleUpOrDown$3;->val$isScaleDownToCenter:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_21

    const v2, -0x41333334    # -0.39999998f

    mul-float/2addr v2, v1

    add-float/2addr v2, v3

    iget-object v4, v0, Lmiui/app/transition/ScaleUpOrDown$3;->this$0:Lmiui/app/transition/ScaleUpOrDown;

    iget-object v5, v0, Lmiui/app/transition/ScaleUpOrDown$3;->val$view:Landroid/view/View;

    iget v3, v0, Lmiui/app/transition/ScaleUpOrDown$3;->val$topRoundedCorner:I

    int-to-float v8, v3

    iget v3, v0, Lmiui/app/transition/ScaleUpOrDown$3;->val$bottomRoundedCorner:I

    int-to-float v9, v3

    move v6, v2

    move v7, v2

    # invokes: Lmiui/app/transition/ScaleUpOrDown;->animViewProgress(Landroid/view/View;FFFF)V
    invoke-static/range {v4 .. v9}, Lmiui/app/transition/ScaleUpOrDown;->access$100(Lmiui/app/transition/ScaleUpOrDown;Landroid/view/View;FFFF)V

    goto :goto_89

    :cond_21
    iget v2, v0, Lmiui/app/transition/ScaleUpOrDown$3;->val$topRoundedCorner:I

    int-to-float v2, v2

    iget-object v4, v0, Lmiui/app/transition/ScaleUpOrDown$3;->this$0:Lmiui/app/transition/ScaleUpOrDown;

    # getter for: Lmiui/app/transition/ScaleUpOrDown;->mRadius:I
    invoke-static {v4}, Lmiui/app/transition/ScaleUpOrDown;->access$000(Lmiui/app/transition/ScaleUpOrDown;)I

    move-result v4

    iget v5, v0, Lmiui/app/transition/ScaleUpOrDown$3;->val$topRoundedCorner:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v1

    add-float/2addr v2, v4

    iget v4, v0, Lmiui/app/transition/ScaleUpOrDown$3;->val$bottomRoundedCorner:I

    int-to-float v4, v4

    iget-object v5, v0, Lmiui/app/transition/ScaleUpOrDown$3;->this$0:Lmiui/app/transition/ScaleUpOrDown;

    # getter for: Lmiui/app/transition/ScaleUpOrDown;->mRadius:I
    invoke-static {v5}, Lmiui/app/transition/ScaleUpOrDown;->access$000(Lmiui/app/transition/ScaleUpOrDown;)I

    move-result v5

    iget v6, v0, Lmiui/app/transition/ScaleUpOrDown$3;->val$bottomRoundedCorner:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    iget v5, v0, Lmiui/app/transition/ScaleUpOrDown$3;->val$scaleX:F

    sub-float/2addr v5, v3

    mul-float/2addr v5, v1

    add-float v13, v5, v3

    iget v5, v0, Lmiui/app/transition/ScaleUpOrDown$3;->val$scaleY:F

    sub-float/2addr v5, v3

    mul-float/2addr v5, v1

    add-float/2addr v3, v5

    iget-object v5, v0, Lmiui/app/transition/ScaleUpOrDown$3;->this$0:Lmiui/app/transition/ScaleUpOrDown;

    iget-object v6, v0, Lmiui/app/transition/ScaleUpOrDown$3;->val$view:Landroid/view/View;

    move v7, v13

    move v8, v3

    move v9, v2

    move v10, v4

    # invokes: Lmiui/app/transition/ScaleUpOrDown;->animViewProgress(Landroid/view/View;FFFF)V
    invoke-static/range {v5 .. v10}, Lmiui/app/transition/ScaleUpOrDown;->access$100(Lmiui/app/transition/ScaleUpOrDown;Landroid/view/View;FFFF)V

    iget-object v5, v0, Lmiui/app/transition/ScaleUpOrDown$3;->val$view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v14

    const/16 v5, 0x9

    new-array v15, v5, [F

    invoke-virtual {v14, v15}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v5, v0, Lmiui/app/transition/ScaleUpOrDown$3;->val$view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v13

    float-to-int v12, v5

    iget-object v5, v0, Lmiui/app/transition/ScaleUpOrDown$3;->val$view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v11, v5

    iget-object v5, v0, Lmiui/app/transition/ScaleUpOrDown$3;->this$0:Lmiui/app/transition/ScaleUpOrDown;

    iget-object v6, v0, Lmiui/app/transition/ScaleUpOrDown$3;->val$frameLayout:Lmiui/view/RoundedFrameLayout;

    const/4 v7, 0x2

    aget v7, v15, v7

    const/4 v8, 0x5

    aget v8, v15, v8

    move v9, v12

    move v10, v11

    move/from16 v16, v11

    move v11, v2

    move/from16 v17, v12

    move v12, v4

    # invokes: Lmiui/app/transition/ScaleUpOrDown;->animOverlayViewProgress(Lmiui/view/RoundedFrameLayout;FFIIFF)V
    invoke-static/range {v5 .. v12}, Lmiui/app/transition/ScaleUpOrDown;->access$200(Lmiui/app/transition/ScaleUpOrDown;Lmiui/view/RoundedFrameLayout;FFIIFF)V

    :goto_89
    return-void
.end method
