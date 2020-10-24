.class Lcom/android/camera/ui/CapsuleLayout$1;
.super Lmiuix/view/animation/CubicEaseOutInterpolator;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/CapsuleLayout;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/CapsuleLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/CapsuleLayout$1;->this$0:Lcom/android/camera/ui/CapsuleLayout;

    invoke-direct {p0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/CapsuleLayout$1;->this$0:Lcom/android/camera/ui/CapsuleLayout;

    invoke-super {p0, p1}, Lmiuix/view/animation/CubicEaseOutInterpolator;->getInterpolation(F)F

    move-result p1

    invoke-static {v0, p1}, Lcom/android/camera/ui/CapsuleLayout;->access$002(Lcom/android/camera/ui/CapsuleLayout;F)F

    iget-object p1, p0, Lcom/android/camera/ui/CapsuleLayout$1;->this$0:Lcom/android/camera/ui/CapsuleLayout;

    invoke-static {p1}, Lcom/android/camera/ui/CapsuleLayout;->access$000(Lcom/android/camera/ui/CapsuleLayout;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/camera/ui/CapsuleLayout$1;->this$0:Lcom/android/camera/ui/CapsuleLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    iget-object p1, p0, Lcom/android/camera/ui/CapsuleLayout$1;->this$0:Lcom/android/camera/ui/CapsuleLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    iget-object p0, p0, Lcom/android/camera/ui/CapsuleLayout$1;->this$0:Lcom/android/camera/ui/CapsuleLayout;

    invoke-static {p0}, Lcom/android/camera/ui/CapsuleLayout;->access$000(Lcom/android/camera/ui/CapsuleLayout;)F

    move-result p0

    return p0
.end method
