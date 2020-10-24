.class Lcom/android/camera/animation/FolmeUtils$2;
.super Lmiuix/animation/listener/TransitionListener;
.source ""


# instance fields
.field final synthetic val$onComplete:Ljava/lang/Runnable;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/animation/FolmeUtils$2;->val$onComplete:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/camera/animation/FolmeUtils$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/animation/FolmeUtils$2;->val$onComplete:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/animation/FolmeUtils$2;->val$view:Landroid/view/View;

    invoke-static {p0}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    return-void
.end method
