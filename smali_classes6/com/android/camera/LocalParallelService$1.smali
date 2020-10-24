.class Lcom/android/camera/LocalParallelService$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;


# instance fields
.field final synthetic this$0:Lcom/android/camera/LocalParallelService;


# direct methods
.method constructor <init>(Lcom/android/camera/LocalParallelService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/LocalParallelService$1;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImagePostProcessEnd(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 1

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getServiceStatusListener()Lcom/android/camera/LocalParallelService$ServiceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getServiceStatusListener()Lcom/android/camera/LocalParallelService$ServiceStatusListener;

    move-result-object p0

    :goto_0
    invoke-interface {p0, p1}, Lcom/android/camera/LocalParallelService$ServiceStatusListener;->onImagePostProcessEnd(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/LocalParallelService$1;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {v0}, Lcom/android/camera/LocalParallelService;->access$000(Lcom/android/camera/LocalParallelService;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/LocalParallelService$1;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {v0}, Lcom/android/camera/LocalParallelService;->access$000(Lcom/android/camera/LocalParallelService;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/LocalParallelService$1;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {p0}, Lcom/android/camera/LocalParallelService;->access$000(Lcom/android/camera/LocalParallelService;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/LocalParallelService$ServiceStatusListener;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onImagePostProcessStart(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 1

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getServiceStatusListener()Lcom/android/camera/LocalParallelService$ServiceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getServiceStatusListener()Lcom/android/camera/LocalParallelService$ServiceStatusListener;

    move-result-object p0

    :goto_0
    invoke-interface {p0, p1}, Lcom/android/camera/LocalParallelService$ServiceStatusListener;->onImagePostProcessStart(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/LocalParallelService$1;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {v0}, Lcom/android/camera/LocalParallelService;->access$000(Lcom/android/camera/LocalParallelService;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/LocalParallelService$1;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {v0}, Lcom/android/camera/LocalParallelService;->access$000(Lcom/android/camera/LocalParallelService;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/LocalParallelService$1;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {p0}, Lcom/android/camera/LocalParallelService;->access$000(Lcom/android/camera/LocalParallelService;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/LocalParallelService$ServiceStatusListener;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onPostProcessorClosed(Lcom/xiaomi/camera/core/PostProcessor;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/LocalParallelService$1;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {v0}, Lcom/android/camera/LocalParallelService;->access$100(Lcom/android/camera/LocalParallelService;)Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/LocalParallelService$1;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {p0}, Lcom/android/camera/LocalParallelService;->access$100(Lcom/android/camera/LocalParallelService;)Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/camera/LocalParallelService$LocalBinder;->access$200(Lcom/android/camera/LocalParallelService$LocalBinder;Lcom/xiaomi/camera/core/PostProcessor;)V

    :cond_0
    return-void
.end method
