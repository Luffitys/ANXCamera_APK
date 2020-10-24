.class Lcom/android/camera/dualvideo/render/RenderTrigger$1;
.super Ljava/util/TimerTask;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/dualvideo/render/RenderTrigger;


# direct methods
.method constructor <init>(Lcom/android/camera/dualvideo/render/RenderTrigger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/RenderTrigger$1;->this$0:Lcom/android/camera/dualvideo/render/RenderTrigger;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderTrigger$1;->this$0:Lcom/android/camera/dualvideo/render/RenderTrigger;

    invoke-static {v0}, Lcom/android/camera/dualvideo/render/RenderTrigger;->access$000(Lcom/android/camera/dualvideo/render/RenderTrigger;)Lio/reactivex/ObservableEmitter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderTrigger$1;->this$0:Lcom/android/camera/dualvideo/render/RenderTrigger;

    invoke-static {v0}, Lcom/android/camera/dualvideo/render/RenderTrigger;->access$000(Lcom/android/camera/dualvideo/render/RenderTrigger;)Lio/reactivex/ObservableEmitter;

    move-result-object v0

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RenderTrigger$1;->this$0:Lcom/android/camera/dualvideo/render/RenderTrigger;

    invoke-static {v0}, Lcom/android/camera/dualvideo/render/RenderTrigger;->access$100(Lcom/android/camera/dualvideo/render/RenderTrigger;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RenderTrigger$1;->this$0:Lcom/android/camera/dualvideo/render/RenderTrigger;

    invoke-static {p0}, Lcom/android/camera/dualvideo/render/RenderTrigger;->access$000(Lcom/android/camera/dualvideo/render/RenderTrigger;)Lio/reactivex/ObservableEmitter;

    move-result-object p0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method
