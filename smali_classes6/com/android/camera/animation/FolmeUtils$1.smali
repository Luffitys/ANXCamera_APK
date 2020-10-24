.class Lcom/android/camera/animation/FolmeUtils$1;
.super Lmiuix/animation/listener/TransitionListener;
.source ""


# instance fields
.field final synthetic val$click:Landroid/view/View$OnClickListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/animation/FolmeUtils$1;->val$click:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/android/camera/animation/FolmeUtils$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    sget-object v0, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/camera/animation/FolmeUtils$1;->val$click:Landroid/view/View$OnClickListener;

    iget-object p0, p0, Lcom/android/camera/animation/FolmeUtils$1;->val$view:Landroid/view/View;

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
