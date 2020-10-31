.class Lmiui/provider/MiCloudSmsCmd$1;
.super Landroid/content/BroadcastReceiver;
.source "MiCloudSmsCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/provider/MiCloudSmsCmd;->transferToFindDevice(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/PowerManager$WakeLock;)V
    .registers 4

    iput-object p1, p0, Lmiui/provider/MiCloudSmsCmd$1;->val$address:Ljava/lang/String;

    iput-object p2, p0, Lmiui/provider/MiCloudSmsCmd$1;->val$body:Ljava/lang/String;

    iput-object p3, p0, Lmiui/provider/MiCloudSmsCmd$1;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lmiui/provider/MiCloudSmsCmd$1;->getResultCode()I

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lmiui/provider/MiCloudSmsCmd$1;->val$address:Ljava/lang/String;

    iget-object v1, p0, Lmiui/provider/MiCloudSmsCmd$1;->val$body:Ljava/lang/String;

    # invokes: Lmiui/provider/MiCloudSmsCmd;->transferToOldVersionFindDevice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v0, v1}, Lmiui/provider/MiCloudSmsCmd;->access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_14

    :cond_d
    iget-object v0, p0, Lmiui/provider/MiCloudSmsCmd$1;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    nop

    return-void

    :catchall_14
    move-exception v0

    iget-object v1, p0, Lmiui/provider/MiCloudSmsCmd$1;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
