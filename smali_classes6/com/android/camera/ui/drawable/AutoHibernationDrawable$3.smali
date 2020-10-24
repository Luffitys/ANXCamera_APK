.class Lcom/android/camera/ui/drawable/AutoHibernationDrawable$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/drawable/AutoHibernationDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable$3;->this$0:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable$3;->this$0:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mTimeAngle:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
