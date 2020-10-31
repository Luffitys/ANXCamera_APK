.class Lmiui/os/DropBoxManager$2;
.super Ljava/lang/Object;
.source "DropBoxManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/os/DropBoxManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/os/DropBoxManager;


# direct methods
.method constructor <init>(Lmiui/os/DropBoxManager;)V
    .registers 2

    iput-object p1, p0, Lmiui/os/DropBoxManager$2;->this$0:Lmiui/os/DropBoxManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    invoke-static {p2}, Lcom/miui/internal/server/IDropBoxManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/internal/server/IDropBoxManagerService;

    move-result-object v0

    :try_start_4
    iget-object v1, p0, Lmiui/os/DropBoxManager$2;->this$0:Lmiui/os/DropBoxManager;

    # getter for: Lmiui/os/DropBoxManager;->mEntries:Ljava/util/concurrent/ArrayBlockingQueue;
    invoke-static {v1}, Lmiui/os/DropBoxManager;->access$100(Lmiui/os/DropBoxManager;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/os/DropBoxManager$Entry;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_35

    :goto_10
    if-eqz v1, :cond_2d

    :try_start_12
    invoke-interface {v0, v1}, Lcom/miui/internal/server/IDropBoxManagerService;->add(Lmiui/os/DropBoxManager$Entry;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_27

    :try_start_15
    invoke-virtual {v1}, Lmiui/os/DropBoxManager$Entry;->close()V

    nop

    iget-object v2, p0, Lmiui/os/DropBoxManager$2;->this$0:Lmiui/os/DropBoxManager;

    # getter for: Lmiui/os/DropBoxManager;->mEntries:Ljava/util/concurrent/ArrayBlockingQueue;
    invoke-static {v2}, Lmiui/os/DropBoxManager;->access$100(Lmiui/os/DropBoxManager;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/os/DropBoxManager$Entry;

    move-object v1, v2

    goto :goto_10

    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Lmiui/os/DropBoxManager$Entry;->close()V

    nop

    throw v2

    :cond_2d
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/Application;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_34} :catch_35

    goto :goto_3d

    :catch_35
    move-exception v1

    const-string v2, "DropBoxManager"

    const-string v3, "Call remote method \'add\' failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3d
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
