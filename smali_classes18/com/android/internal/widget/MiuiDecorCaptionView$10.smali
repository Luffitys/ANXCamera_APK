.class Lcom/android/internal/widget/MiuiDecorCaptionView$10;
.super Ljava/lang/Object;
.source "MiuiDecorCaptionView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MiuiDecorCaptionView;->startAlphaAnimating(IJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

.field final synthetic val$isFocus:Z


# direct methods
.method constructor <init>(Lcom/android/internal/widget/MiuiDecorCaptionView;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$10;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    iput-boolean p2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$10;->val$isFocus:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 12

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$10;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-virtual {v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$10;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    # getter for: Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopCaption:Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$1200(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$10;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    # getter for: Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomCaption:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$1300(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$10;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    # getter for: Lcom/android/internal/widget/MiuiDecorCaptionView;->mTopImage:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$1400(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$10;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    # getter for: Lcom/android/internal/widget/MiuiDecorCaptionView;->mBottomImage:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$1500(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$10;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    # getter for: Lcom/android/internal/widget/MiuiDecorCaptionView;->mBorder:Landroid/graphics/drawable/Drawable;
    invoke-static {v6}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$1600(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$10;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    # getter for: Lcom/android/internal/widget/MiuiDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;
    invoke-static {v7}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$400(Lcom/android/internal/widget/MiuiDecorCaptionView;)Lcom/android/internal/policy/PhoneWindow;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$10;->val$isFocus:Z

    move v9, v0

    invoke-static/range {v1 .. v9}, Landroid/util/MiuiMultiWindowAdapter;->updateCaptionColor(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/android/internal/policy/PhoneWindow;ZF)V

    return-void
.end method
