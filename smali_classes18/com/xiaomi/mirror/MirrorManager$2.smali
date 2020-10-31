.class Lcom/xiaomi/mirror/MirrorManager$2;
.super Lcom/xiaomi/mirror/IMirrorDelegate$Stub;
.source "MirrorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/MirrorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/mirror/MirrorManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/mirror/MirrorManager;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorManager$2;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    invoke-direct {p0}, Lcom/xiaomi/mirror/IMirrorDelegate$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcceptableChanged(IZ)V
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager$2;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    # getter for: Lcom/xiaomi/mirror/MirrorManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/xiaomi/mirror/MirrorManager;->access$300(Lcom/xiaomi/mirror/MirrorManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager$2;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    # getter for: Lcom/xiaomi/mirror/MirrorManager;->mDelegate:Lcom/xiaomi/mirror/MirrorDelegate;
    invoke-static {v1}, Lcom/xiaomi/mirror/MirrorManager;->access$400(Lcom/xiaomi/mirror/MirrorManager;)Lcom/xiaomi/mirror/MirrorDelegate;

    move-result-object v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_14

    if-eqz v1, :cond_13

    invoke-virtual {v1, p1, p2}, Lcom/xiaomi/mirror/MirrorDelegate;->onAcceptableChanged(IZ)V

    :cond_13
    return-void

    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public onDelegatePermissionReleased(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager$2;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    # getter for: Lcom/xiaomi/mirror/MirrorManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/xiaomi/mirror/MirrorManager;->access$300(Lcom/xiaomi/mirror/MirrorManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager$2;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    # getter for: Lcom/xiaomi/mirror/MirrorManager;->mDelegate:Lcom/xiaomi/mirror/MirrorDelegate;
    invoke-static {v1}, Lcom/xiaomi/mirror/MirrorManager;->access$400(Lcom/xiaomi/mirror/MirrorManager;)Lcom/xiaomi/mirror/MirrorDelegate;

    move-result-object v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_14

    if-eqz v1, :cond_13

    invoke-virtual {v1, p1}, Lcom/xiaomi/mirror/MirrorDelegate;->onDelegatePermissionReleased(Ljava/util/List;)V

    :cond_13
    return-void

    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public onDragResult(Z)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager$2;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    # getter for: Lcom/xiaomi/mirror/MirrorManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/xiaomi/mirror/MirrorManager;->access$300(Lcom/xiaomi/mirror/MirrorManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager$2;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    # getter for: Lcom/xiaomi/mirror/MirrorManager;->mDelegate:Lcom/xiaomi/mirror/MirrorDelegate;
    invoke-static {v1}, Lcom/xiaomi/mirror/MirrorManager;->access$400(Lcom/xiaomi/mirror/MirrorManager;)Lcom/xiaomi/mirror/MirrorDelegate;

    move-result-object v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_14

    if-eqz v1, :cond_13

    invoke-virtual {v1, p1}, Lcom/xiaomi/mirror/MirrorDelegate;->onDragResult(Z)V

    :cond_13
    return-void

    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public onDragStart(Landroid/content/ClipData;III)V
    .registers 7

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager$2;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    # getter for: Lcom/xiaomi/mirror/MirrorManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/xiaomi/mirror/MirrorManager;->access$300(Lcom/xiaomi/mirror/MirrorManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager$2;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    # getter for: Lcom/xiaomi/mirror/MirrorManager;->mDelegate:Lcom/xiaomi/mirror/MirrorDelegate;
    invoke-static {v1}, Lcom/xiaomi/mirror/MirrorManager;->access$400(Lcom/xiaomi/mirror/MirrorManager;)Lcom/xiaomi/mirror/MirrorDelegate;

    move-result-object v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_14

    if-eqz v1, :cond_13

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/xiaomi/mirror/MirrorDelegate;->onDragStart(Landroid/content/ClipData;III)V

    :cond_13
    return-void

    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public onRemoteMenuActionCall(Lcom/xiaomi/mirror/MirrorMenu;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager$2;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    # getter for: Lcom/xiaomi/mirror/MirrorManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/xiaomi/mirror/MirrorManager;->access$300(Lcom/xiaomi/mirror/MirrorManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager$2;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    # getter for: Lcom/xiaomi/mirror/MirrorManager;->mDelegate:Lcom/xiaomi/mirror/MirrorDelegate;
    invoke-static {v1}, Lcom/xiaomi/mirror/MirrorManager;->access$400(Lcom/xiaomi/mirror/MirrorManager;)Lcom/xiaomi/mirror/MirrorDelegate;

    move-result-object v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_14

    if-eqz v1, :cond_13

    invoke-virtual {v1, p1, p2}, Lcom/xiaomi/mirror/MirrorDelegate;->onRemoteMenuActionCall(Lcom/xiaomi/mirror/MirrorMenu;I)V

    :cond_13
    return-void

    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public onShadowChanged(Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager$2;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    # getter for: Lcom/xiaomi/mirror/MirrorManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/xiaomi/mirror/MirrorManager;->access$300(Lcom/xiaomi/mirror/MirrorManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager$2;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    # getter for: Lcom/xiaomi/mirror/MirrorManager;->mDelegate:Lcom/xiaomi/mirror/MirrorDelegate;
    invoke-static {v1}, Lcom/xiaomi/mirror/MirrorManager;->access$400(Lcom/xiaomi/mirror/MirrorManager;)Lcom/xiaomi/mirror/MirrorDelegate;

    move-result-object v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_14

    if-eqz v1, :cond_13

    invoke-virtual {v1, p1}, Lcom/xiaomi/mirror/MirrorDelegate;->onShadowChanged(Landroid/graphics/Bitmap;)V

    :cond_13
    return-void

    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public tryToShareDrag(Ljava/lang/String;ILandroid/content/ClipData;)Z
    .registers 6

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManager$2;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    # getter for: Lcom/xiaomi/mirror/MirrorManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/xiaomi/mirror/MirrorManager;->access$300(Lcom/xiaomi/mirror/MirrorManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager$2;->this$0:Lcom/xiaomi/mirror/MirrorManager;

    # getter for: Lcom/xiaomi/mirror/MirrorManager;->mDelegate:Lcom/xiaomi/mirror/MirrorDelegate;
    invoke-static {v1}, Lcom/xiaomi/mirror/MirrorManager;->access$400(Lcom/xiaomi/mirror/MirrorManager;)Lcom/xiaomi/mirror/MirrorDelegate;

    move-result-object v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_17

    if-eqz v1, :cond_15

    invoke-virtual {v1, p1, p2, p3}, Lcom/xiaomi/mirror/MirrorDelegate;->tryToShareDrag(Ljava/lang/String;ILandroid/content/ClipData;)Z

    move-result v0

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0

    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method
