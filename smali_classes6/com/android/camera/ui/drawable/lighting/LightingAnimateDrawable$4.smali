.class Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable$4;->this$0:Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable$4;->this$0:Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;->animateAlphaIn()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
