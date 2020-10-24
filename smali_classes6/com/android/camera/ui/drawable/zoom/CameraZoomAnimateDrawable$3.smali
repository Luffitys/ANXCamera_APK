.class Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$3;
.super Lmiui/view/animation/CubicEaseOutInterpolator;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

.field final synthetic val$isTouchAnimator:Z


# direct methods
.method constructor <init>(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$3;->this$0:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    iput-boolean p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$3;->val$isTouchAnimator:Z

    invoke-direct {p0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    invoke-super {p0, p1}, Lmiui/view/animation/CubicEaseOutInterpolator;->getInterpolation(F)F

    move-result p1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$3;->this$0:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->access$000(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;)Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$3;->val$isTouchAnimator:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->updateSliderPositionForBackAnim(FZ)V

    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$3;->this$0:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return p1
.end method
