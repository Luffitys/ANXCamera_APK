.class Lcom/android/camera/ui/drawable/AutoHibernationDrawable$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/drawable/AutoHibernationDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable$2;->this$0:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;

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

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable$2;->this$0:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;

    invoke-static {p1}, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->access$000(Lcom/android/camera/ui/drawable/AutoHibernationDrawable;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable$2;->this$0:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;

    iget-boolean p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mIsClockwise:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->mIsClockwise:Z

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
