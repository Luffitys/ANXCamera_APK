.class Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;


# direct methods
.method constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask$1;->this$0:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask$1;->this$0:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;

    invoke-static {v0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->access$000(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask$1;->this$0:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;

    invoke-static {v1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->access$100(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;)V

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask$1;->this$0:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;

    invoke-static {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->access$000(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;)Ljava/lang/Object;

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
