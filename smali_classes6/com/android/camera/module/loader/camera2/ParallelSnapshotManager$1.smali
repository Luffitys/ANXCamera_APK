.class Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$1;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;


# direct methods
.method constructor <init>(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$1;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager$1;->this$0:Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    invoke-static {p0, p1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->access$000(Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;Landroid/os/Message;)V

    return-void
.end method
