.class Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe$1;
.super Lmiuix/animation/listener/TransitionListener;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;


# direct methods
.method constructor <init>(Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe$1;->this$0:Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;Lmiuix/animation/listener/UpdateInfo;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;Lmiuix/animation/listener/UpdateInfo;)V

    iget-object p1, p0, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe$1;->this$0:Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;

    invoke-virtual {p1}, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;->onAnimationEnd()V

    iget-object p1, p0, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe$1;->this$0:Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;->access$000(Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;)Lio/reactivex/CompletableEmitter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe$1;->this$0:Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;

    invoke-static {p0}, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;->access$000(Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;)Lio/reactivex/CompletableEmitter;

    move-result-object p0

    invoke-interface {p0}, Lio/reactivex/CompletableEmitter;->onComplete()V

    :cond_0
    return-void
.end method
