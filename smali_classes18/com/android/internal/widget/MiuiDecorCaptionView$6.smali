.class Lcom/android/internal/widget/MiuiDecorCaptionView$6;
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


# direct methods
.method constructor <init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$6;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$6;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    # getter for: Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeBorder:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$800(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$6;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    # getter for: Lcom/android/internal/widget/MiuiDecorCaptionView;->mScaledResizeReminder:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$900(Lcom/android/internal/widget/MiuiDecorCaptionView;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$6;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    # setter for: Lcom/android/internal/widget/MiuiDecorCaptionView;->mResizeBorderReminderAlpha:I
    invoke-static {v1, v0}, Lcom/android/internal/widget/MiuiDecorCaptionView;->access$1002(Lcom/android/internal/widget/MiuiDecorCaptionView;I)I

    return-void
.end method
