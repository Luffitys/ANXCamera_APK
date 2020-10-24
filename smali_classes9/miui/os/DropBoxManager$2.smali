.class Lmiui/os/DropBoxManager$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lmiui/os/DropBoxManager;


# direct methods
.method constructor <init>(Lmiui/os/DropBoxManager;)V
    .locals 0

    iput-object p1, p0, Lmiui/os/DropBoxManager$2;->this$0:Lmiui/os/DropBoxManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p2}, Lcom/miui/internal/server/IDropBoxManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/internal/server/IDropBoxManagerService;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lmiui/os/DropBoxManager$2;->this$0:Lmiui/os/DropBoxManager;

    invoke-static {p2}, Lmiui/os/DropBoxManager;->access$100(Lmiui/os/DropBoxManager;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p2

    :goto_0
    check-cast p2, Lmiui/os/DropBoxManager$Entry;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    :try_start_1
    invoke-interface {p1, p2}, Lcom/miui/internal/server/IDropBoxManagerService;->add(Lmiui/os/DropBoxManager$Entry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p2}, Lmiui/os/DropBoxManager$Entry;->close()V

    iget-object p2, p0, Lmiui/os/DropBoxManager$2;->this$0:Lmiui/os/DropBoxManager;

    invoke-static {p2}, Lmiui/os/DropBoxManager;->access$100(Lmiui/os/DropBoxManager;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Lmiui/os/DropBoxManager$Entry;->close()V

    throw p0

    :cond_0
    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Application;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "DropBoxManager"

    const-string p2, "Call remote method \'add\' failed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
