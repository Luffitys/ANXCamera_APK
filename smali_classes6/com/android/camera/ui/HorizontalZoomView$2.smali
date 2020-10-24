.class Lcom/android/camera/ui/HorizontalZoomView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/HorizontalZoomView;

.field final synthetic val$targetValue:F


# direct methods
.method constructor <init>(Lcom/android/camera/ui/HorizontalZoomView;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView$2;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    iput p2, p0, Lcom/android/camera/ui/HorizontalZoomView$2;->val$targetValue:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView$2;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    iget-object p1, p1, Lcom/android/camera/ui/HorizontalZoomView;->mOnPositionZoomSelectListener:Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView$2;->val$targetValue:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;->onChangeValue(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView$2;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    iget-object p1, p1, Lcom/android/camera/ui/HorizontalZoomView;->mTouchUpStateListener:Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;->onTouchUpState()V

    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView$2;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchUpStateListener:Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;

    invoke-interface {p0}, Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;->onScrollEnd()V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView$2;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    iget-object p1, p1, Lcom/android/camera/ui/HorizontalZoomView;->mOnPositionZoomSelectListener:Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/camera/ui/HorizontalZoomView$2;->val$targetValue:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;->onChangeValue(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView$2;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    iget-object p1, p1, Lcom/android/camera/ui/HorizontalZoomView;->mTouchUpStateListener:Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;->onTouchUpState()V

    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView$2;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    iget-object p0, p0, Lcom/android/camera/ui/HorizontalZoomView;->mTouchUpStateListener:Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;

    invoke-interface {p0}, Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;->onScrollEnd()V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView$2;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    iget-object p1, p1, Lcom/android/camera/ui/HorizontalZoomView;->mTouchUpStateListener:Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/camera/ui/HorizontalZoomView$2;->val$targetValue:F

    invoke-interface {p1, p0}, Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;->onScrollStart(F)V

    :cond_0
    return-void
.end method
