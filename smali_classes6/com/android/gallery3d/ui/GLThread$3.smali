.class Lcom/android/gallery3d/ui/GLThread$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/GLThread;

.field final synthetic val$waitDoneLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/GLThread;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/ui/GLThread$3;->this$0:Lcom/android/gallery3d/ui/GLThread;

    iput-object p2, p0, Lcom/android/gallery3d/ui/GLThread$3;->val$waitDoneLock:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/ui/GLThread$3;->val$waitDoneLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/gallery3d/ui/GLThread$3;->val$waitDoneLock:Ljava/lang/Object;

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
