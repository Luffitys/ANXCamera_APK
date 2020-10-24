.class Landroidx/core/view/ViewPropertyAnimatorCompat$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field final synthetic val$listener:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/core/view/ViewPropertyAnimatorUpdateListener;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$2;->this$0:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iput-object p2, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$2;->val$listener:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    iput-object p3, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$2;->val$listener:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    iget-object p0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$2;->val$view:Landroid/view/View;

    invoke-interface {p1, p0}, Landroidx/core/view/ViewPropertyAnimatorUpdateListener;->onAnimationUpdate(Landroid/view/View;)V

    return-void
.end method
