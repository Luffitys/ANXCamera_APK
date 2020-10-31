.class Lmiui/slide/SlideAnimationView$1;
.super Ljava/lang/Object;
.source "SlideAnimationView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/slide/SlideAnimationView;->startAnimating(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/slide/SlideAnimationView;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lmiui/slide/SlideAnimationView;I)V
    .registers 3

    iput-object p1, p0, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    iput p2, p0, Lmiui/slide/SlideAnimationView$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 20

    move-object/from16 v1, p0

    :try_start_2
    iget-object v0, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # getter for: Lmiui/slide/SlideAnimationView;->mFlowingAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lmiui/slide/SlideAnimationView;->access$000(Lmiui/slide/SlideAnimationView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v8, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    iget-object v2, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    const/4 v4, 0x0

    const/16 v5, 0x64

    const/16 v6, 0x96

    const/16 v7, 0x384

    move v3, v0

    # invokes: Lmiui/slide/SlideAnimationView;->rangeAlpha(IIIII)F
    invoke-static/range {v2 .. v7}, Lmiui/slide/SlideAnimationView;->access$200(Lmiui/slide/SlideAnimationView;IIIII)F

    move-result v2

    # setter for: Lmiui/slide/SlideAnimationView;->mTopAlpha:F
    invoke-static {v8, v2}, Lmiui/slide/SlideAnimationView;->access$102(Lmiui/slide/SlideAnimationView;F)F

    iget-object v2, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # getter for: Lmiui/slide/SlideAnimationView;->mTopAlpha:F
    invoke-static {v2}, Lmiui/slide/SlideAnimationView;->access$100(Lmiui/slide/SlideAnimationView;)F

    move-result v2

    const/4 v8, 0x0

    cmpg-float v2, v2, v8

    const/4 v9, 0x1

    if-ltz v2, :cond_35

    iget v2, v1, Lmiui/slide/SlideAnimationView$1;->val$type:I

    if-ne v2, v9, :cond_3a

    :cond_35
    iget-object v2, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # setter for: Lmiui/slide/SlideAnimationView;->mTopAlpha:F
    invoke-static {v2, v8}, Lmiui/slide/SlideAnimationView;->access$102(Lmiui/slide/SlideAnimationView;F)F

    :cond_3a
    iget-object v10, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    iget-object v2, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    const/4 v4, 0x0

    const/16 v5, 0x64

    const/16 v6, 0x96

    const/16 v7, 0x384

    move v3, v0

    # invokes: Lmiui/slide/SlideAnimationView;->rangeAlpha(IIIII)F
    invoke-static/range {v2 .. v7}, Lmiui/slide/SlideAnimationView;->access$200(Lmiui/slide/SlideAnimationView;IIIII)F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v2, v4

    const-wide v4, 0x3fd999999999999aL    # 0.4

    add-double/2addr v2, v4

    double-to-float v2, v2

    # setter for: Lmiui/slide/SlideAnimationView;->mTopScaleY:F
    invoke-static {v10, v2}, Lmiui/slide/SlideAnimationView;->access$302(Lmiui/slide/SlideAnimationView;F)F

    iget-object v2, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # getter for: Lmiui/slide/SlideAnimationView;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v2}, Lmiui/slide/SlideAnimationView;->access$400(Lmiui/slide/SlideAnimationView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # getter for: Lmiui/slide/SlideAnimationView;->mTopScaleY:F
    invoke-static {v3}, Lmiui/slide/SlideAnimationView;->access$300(Lmiui/slide/SlideAnimationView;)F

    move-result v3

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v2, v10, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v2, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # getter for: Lmiui/slide/SlideAnimationView;->mTopOri:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lmiui/slide/SlideAnimationView;->access$500(Lmiui/slide/SlideAnimationView;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_c8

    iget-object v2, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # getter for: Lmiui/slide/SlideAnimationView;->mTopOri:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lmiui/slide/SlideAnimationView;->access$500(Lmiui/slide/SlideAnimationView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lez v2, :cond_c8

    iget-object v2, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # getter for: Lmiui/slide/SlideAnimationView;->mTopOri:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lmiui/slide/SlideAnimationView;->access$500(Lmiui/slide/SlideAnimationView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # getter for: Lmiui/slide/SlideAnimationView;->mTopScaleY:F
    invoke-static {v3}, Lmiui/slide/SlideAnimationView;->access$300(Lmiui/slide/SlideAnimationView;)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-lez v2, :cond_c8

    iget-object v2, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    iget-object v3, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # getter for: Lmiui/slide/SlideAnimationView;->mTopOri:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lmiui/slide/SlideAnimationView;->access$500(Lmiui/slide/SlideAnimationView;)Landroid/graphics/Bitmap;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v3, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # getter for: Lmiui/slide/SlideAnimationView;->mTopOri:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lmiui/slide/SlideAnimationView;->access$500(Lmiui/slide/SlideAnimationView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    iget-object v3, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # getter for: Lmiui/slide/SlideAnimationView;->mTopOri:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lmiui/slide/SlideAnimationView;->access$500(Lmiui/slide/SlideAnimationView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    iget-object v3, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # getter for: Lmiui/slide/SlideAnimationView;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v3}, Lmiui/slide/SlideAnimationView;->access$400(Lmiui/slide/SlideAnimationView;)Landroid/graphics/Matrix;

    move-result-object v16

    const/16 v17, 0x1

    invoke-static/range {v11 .. v17}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    # setter for: Lmiui/slide/SlideAnimationView;->mTop:Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lmiui/slide/SlideAnimationView;->access$602(Lmiui/slide/SlideAnimationView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_c8
    iget-object v2, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    int-to-double v3, v0

    const-wide v5, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v3, v5

    const-wide v5, 0x4072c00000000000L    # 300.0

    sub-double/2addr v3, v5

    const-wide v5, 0x4092480000000000L    # 1170.0

    sub-double/2addr v3, v5

    double-to-float v3, v3

    # setter for: Lmiui/slide/SlideAnimationView;->mEdgeY:F
    invoke-static {v2, v3}, Lmiui/slide/SlideAnimationView;->access$702(Lmiui/slide/SlideAnimationView;F)F

    iget-object v11, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    iget-object v2, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    const/16 v4, 0x1e0

    const/16 v5, 0x3c0

    const/16 v6, 0x5c8

    const/16 v7, 0x780

    move v3, v0

    # invokes: Lmiui/slide/SlideAnimationView;->rangeAlpha(IIIII)F
    invoke-static/range {v2 .. v7}, Lmiui/slide/SlideAnimationView;->access$200(Lmiui/slide/SlideAnimationView;IIIII)F

    move-result v2

    # setter for: Lmiui/slide/SlideAnimationView;->mEdgeAlpha:F
    invoke-static {v11, v2}, Lmiui/slide/SlideAnimationView;->access$802(Lmiui/slide/SlideAnimationView;F)F

    iget-object v11, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    const-wide v12, 0x3fb999999999999aL    # 0.1

    iget-object v2, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    const/16 v4, 0x190

    const/16 v5, 0x320

    const/16 v6, 0x3e8

    const/16 v7, 0x708

    move v3, v0

    # invokes: Lmiui/slide/SlideAnimationView;->rangeAlpha(IIIII)F
    invoke-static/range {v2 .. v7}, Lmiui/slide/SlideAnimationView;->access$200(Lmiui/slide/SlideAnimationView;IIIII)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v4

    add-double/2addr v2, v12

    double-to-float v2, v2

    # setter for: Lmiui/slide/SlideAnimationView;->mEdgeScaleX:F
    invoke-static {v11, v2}, Lmiui/slide/SlideAnimationView;->access$902(Lmiui/slide/SlideAnimationView;F)F

    iget-object v2, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # getter for: Lmiui/slide/SlideAnimationView;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v2}, Lmiui/slide/SlideAnimationView;->access$400(Lmiui/slide/SlideAnimationView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # getter for: Lmiui/slide/SlideAnimationView;->mEdgeScaleX:F
    invoke-static {v3}, Lmiui/slide/SlideAnimationView;->access$900(Lmiui/slide/SlideAnimationView;)F

    move-result v3

    invoke-virtual {v2, v3, v10}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v2, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # getter for: Lmiui/slide/SlideAnimationView;->mEdgeLeftOri:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lmiui/slide/SlideAnimationView;->access$1000(Lmiui/slide/SlideAnimationView;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_17f

    iget-object v2, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # getter for: Lmiui/slide/SlideAnimationView;->mEdgeLeftOri:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lmiui/slide/SlideAnimationView;->access$1000(Lmiui/slide/SlideAnimationView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # getter for: Lmiui/slide/SlideAnimationView;->mEdgeScaleX:F
    invoke-static {v3}, Lmiui/slide/SlideAnimationView;->access$900(Lmiui/slide/SlideAnimationView;)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-lez v2, :cond_17f

    iget-object v2, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # getter for: Lmiui/slide/SlideAnimationView;->mEdgeLeftOri:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lmiui/slide/SlideAnimationView;->access$1000(Lmiui/slide/SlideAnimationView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-lez v2, :cond_17f

    iget-object v2, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    iget-object v3, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # getter for: Lmiui/slide/SlideAnimationView;->mEdgeLeftOri:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lmiui/slide/SlideAnimationView;->access$1000(Lmiui/slide/SlideAnimationView;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v3, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # getter for: Lmiui/slide/SlideAnimationView;->mEdgeLeftOri:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lmiui/slide/SlideAnimationView;->access$1000(Lmiui/slide/SlideAnimationView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    iget-object v3, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # getter for: Lmiui/slide/SlideAnimationView;->mEdgeLeftOri:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lmiui/slide/SlideAnimationView;->access$1000(Lmiui/slide/SlideAnimationView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    iget-object v3, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # getter for: Lmiui/slide/SlideAnimationView;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v3}, Lmiui/slide/SlideAnimationView;->access$400(Lmiui/slide/SlideAnimationView;)Landroid/graphics/Matrix;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    # setter for: Lmiui/slide/SlideAnimationView;->mEdgeLeft:Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lmiui/slide/SlideAnimationView;->access$1102(Lmiui/slide/SlideAnimationView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_17f
    iget-object v2, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # getter for: Lmiui/slide/SlideAnimationView;->mEdgeRightOri:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lmiui/slide/SlideAnimationView;->access$1200(Lmiui/slide/SlideAnimationView;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1d8

    iget-object v2, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # getter for: Lmiui/slide/SlideAnimationView;->mEdgeRightOri:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lmiui/slide/SlideAnimationView;->access$1200(Lmiui/slide/SlideAnimationView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # getter for: Lmiui/slide/SlideAnimationView;->mEdgeScaleX:F
    invoke-static {v3}, Lmiui/slide/SlideAnimationView;->access$900(Lmiui/slide/SlideAnimationView;)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-lez v2, :cond_1d8

    iget-object v2, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # getter for: Lmiui/slide/SlideAnimationView;->mEdgeRightOri:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lmiui/slide/SlideAnimationView;->access$1200(Lmiui/slide/SlideAnimationView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-lez v2, :cond_1d8

    iget-object v2, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    iget-object v3, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # getter for: Lmiui/slide/SlideAnimationView;->mEdgeRightOri:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lmiui/slide/SlideAnimationView;->access$1200(Lmiui/slide/SlideAnimationView;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v3, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # getter for: Lmiui/slide/SlideAnimationView;->mEdgeRightOri:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lmiui/slide/SlideAnimationView;->access$1200(Lmiui/slide/SlideAnimationView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    iget-object v3, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # getter for: Lmiui/slide/SlideAnimationView;->mEdgeRightOri:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lmiui/slide/SlideAnimationView;->access$1200(Lmiui/slide/SlideAnimationView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    iget-object v3, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # getter for: Lmiui/slide/SlideAnimationView;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v3}, Lmiui/slide/SlideAnimationView;->access$400(Lmiui/slide/SlideAnimationView;)Landroid/graphics/Matrix;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    # setter for: Lmiui/slide/SlideAnimationView;->mEdgeRight:Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lmiui/slide/SlideAnimationView;->access$1302(Lmiui/slide/SlideAnimationView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_1d8
    iget-object v2, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # getter for: Lmiui/slide/SlideAnimationView;->mEdgeAlpha:F
    invoke-static {v2}, Lmiui/slide/SlideAnimationView;->access$800(Lmiui/slide/SlideAnimationView;)F

    move-result v2

    cmpg-float v2, v2, v8

    if-gez v2, :cond_1e7

    iget-object v2, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # setter for: Lmiui/slide/SlideAnimationView;->mEdgeAlpha:F
    invoke-static {v2, v8}, Lmiui/slide/SlideAnimationView;->access$802(Lmiui/slide/SlideAnimationView;F)F

    :cond_1e7
    iget-object v10, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    iget-object v2, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    const/4 v4, 0x0

    const/16 v5, 0x1c2

    const/16 v6, 0x1c2

    const/16 v7, 0x5c8

    move v3, v0

    # invokes: Lmiui/slide/SlideAnimationView;->rangeAlpha(IIIII)F
    invoke-static/range {v2 .. v7}, Lmiui/slide/SlideAnimationView;->access$200(Lmiui/slide/SlideAnimationView;IIIII)F

    move-result v2

    # setter for: Lmiui/slide/SlideAnimationView;->mEdgeColorAlpha:F
    invoke-static {v10, v2}, Lmiui/slide/SlideAnimationView;->access$1402(Lmiui/slide/SlideAnimationView;F)F

    iget-object v2, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # getter for: Lmiui/slide/SlideAnimationView;->mEdgeColorAlpha:F
    invoke-static {v2}, Lmiui/slide/SlideAnimationView;->access$1400(Lmiui/slide/SlideAnimationView;)F

    move-result v2

    cmpg-float v2, v2, v8

    if-ltz v2, :cond_208

    iget v2, v1, Lmiui/slide/SlideAnimationView$1;->val$type:I

    if-ne v2, v9, :cond_20d

    :cond_208
    iget-object v2, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    # setter for: Lmiui/slide/SlideAnimationView;->mEdgeColorAlpha:F
    invoke-static {v2, v8}, Lmiui/slide/SlideAnimationView;->access$1402(Lmiui/slide/SlideAnimationView;F)F

    :cond_20d
    iget-object v2, v1, Lmiui/slide/SlideAnimationView$1;->this$0:Lmiui/slide/SlideAnimationView;

    invoke-virtual {v2}, Lmiui/slide/SlideAnimationView;->invalidate()V
    :try_end_212
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_212} :catch_213

    goto :goto_217

    :catch_213
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_217
    return-void
.end method
