.class Lcom/android/camera/fragment/dialog/AutoHibernationFragment$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/dialog/AutoHibernationFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/dialog/AutoHibernationFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment$2;->this$0:Lcom/android/camera/fragment/dialog/AutoHibernationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment$2;->this$0:Lcom/android/camera/fragment/dialog/AutoHibernationFragment;

    invoke-static {v0, p1}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->access$302(Lcom/android/camera/fragment/dialog/AutoHibernationFragment;I)I

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment$2;->this$0:Lcom/android/camera/fragment/dialog/AutoHibernationFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->access$400(Lcom/android/camera/fragment/dialog/AutoHibernationFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment$2;->this$0:Lcom/android/camera/fragment/dialog/AutoHibernationFragment;

    invoke-static {p0}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->access$300(Lcom/android/camera/fragment/dialog/AutoHibernationFragment;)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setRotation(F)V

    return-void
.end method
