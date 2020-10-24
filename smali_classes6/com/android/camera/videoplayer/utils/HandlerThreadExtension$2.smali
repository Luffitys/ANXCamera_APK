.class Lcom/android/camera/videoplayer/utils/HandlerThreadExtension$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;


# direct methods
.method constructor <init>(Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension$2;->this$0:Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension$2;->this$0:Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;

    invoke-static {v0}, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->access$000(Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension$2;->this$0:Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;

    invoke-static {p0}, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->access$000(Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
