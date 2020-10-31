.class Lmiui/app/transition/ScaleUpOrDown$1;
.super Ljava/lang/Object;
.source "ScaleUpOrDown.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/transition/ScaleUpOrDown;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


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
    .registers 8

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
    .registers 20

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    iget-object v2, v0, Lmiui/app/transition/ScaleUpOrDown$1;->this$0:Lmiui/app/transition/ScaleUpOrDown;

    # getter for: Lmiui/app/transition/ScaleUpOrDown;->mRadius:I
    invoke-static {v2}, Lmiui/app/transition/ScaleUpOrDown;->access$000(Lmiui/app/transition/ScaleUpOrDown;)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lmiui/app/transition/ScaleUpOrDown$1;->val$topRoundedCorner:I

    iget-object v4, v0, Lmiui/app/transition/ScaleUpOrDown$1;->this$0:Lmiui/app/transition/ScaleUpOrDown;

    # getter for: Lmiui/app/transition/ScaleUpOrDown;->mRadius:I
    invoke-static {v4}, Lmiui/app/transition/ScaleUpOrDown;->access$000(Lmiui/app/transition/ScaleUpOrDown;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget-object v3, v0, Lmiui/app/transition/ScaleUpOrDown$1;->this$0:Lmiui/app/transition/ScaleUpOrDown;

    # getter for: Lmiui/app/transition/ScaleUpOrDown;->mRadius:I
    invoke-static {v3}, Lmiui/app/transition/ScaleUpOrDown;->access$000(Lmiui/app/transition/ScaleUpOrDown;)I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lmiui/app/transition/ScaleUpOrDown$1;->val$bottomRoundedCorner:I

    iget-object v5, v0, Lmiui/app/transition/ScaleUpOrDown$1;->this$0:Lmiui/app/transition/ScaleUpOrDown;

    # getter for: Lmiui/app/transition/ScaleUpOrDown;->mRadius:I
    invoke-static {v5}, Lmiui/app/transition/ScaleUpOrDown;->access$000(Lmiui/app/transition/ScaleUpOrDown;)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, v0, Lmiui/app/transition/ScaleUpOrDown$1;->val$scaleX:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v6, v5, v4

    mul-float/2addr v6, v1

    add-float v12, v4, v6

    iget v4, v0, Lmiui/app/transition/ScaleUpOrDown$1;->val$scaleY:F

    sub-float/2addr v5, v4

    mul-float/2addr v5, v1

    add-float v13, v4, v5

    iget-object v4, v0, Lmiui/app/transition/ScaleUpOrDown$1;->this$0:Lmiui/app/transition/ScaleUpOrDown;

    iget-object v5, v0, Lmiui/app/transition/ScaleUpOrDown$1;->val$view:Landroid/view/View;

    move v6, v12

    move v7, v13

    move v8, v2

    move v9, v3

    # invokes: Lmiui/app/transition/ScaleUpOrDown;->animViewProgress(Landroid/view/View;FFFF)V
    invoke-static/range {v4 .. v9}, Lmiui/app/transition/ScaleUpOrDown;->access$100(Lmiui/app/transition/ScaleUpOrDown;Landroid/view/View;FFFF)V

    iget-object v4, v0, Lmiui/app/transition/ScaleUpOrDown$1;->val$view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v14

    const/16 v4, 0x9

    new-array v15, v4, [F

    invoke-virtual {v14, v15}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v4, v0, Lmiui/app/transition/ScaleUpOrDown$1;->val$view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v12

    float-to-int v11, v4

    iget-object v4, v0, Lmiui/app/transition/ScaleUpOrDown$1;->val$view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v13

    float-to-int v10, v4

    iget-object v4, v0, Lmiui/app/transition/ScaleUpOrDown$1;->this$0:Lmiui/app/transition/ScaleUpOrDown;

    iget-object v5, v0, Lmiui/app/transition/ScaleUpOrDown$1;->val$frameLayout:Lmiui/view/RoundedFrameLayout;

    const/4 v6, 0x2

    aget v6, v15, v6

    const/4 v7, 0x5

    aget v7, v15, v7

    move v8, v11

    move v9, v10

    move/from16 v16, v10

    move v10, v2

    move/from16 v17, v11

    move v11, v3

    # invokes: Lmiui/app/transition/ScaleUpOrDown;->animOverlayViewProgress(Lmiui/view/RoundedFrameLayout;FFIIFF)V
    invoke-static/range {v4 .. v11}, Lmiui/app/transition/ScaleUpOrDown;->access$200(Lmiui/app/transition/ScaleUpOrDown;Lmiui/view/RoundedFrameLayout;FFIIFF)V

    return-void
.end method
