.class Lcom/android/internal/app/ShutdownActivity$1;
.super Ljava/lang/Thread;
.source "ShutdownActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ShutdownActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ShutdownActivity;

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ShutdownActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/android/internal/app/ShutdownActivity$1;->this$0:Lcom/android/internal/app/ShutdownActivity;

    iput-object p3, p0, Lcom/android/internal/app/ShutdownActivity$1;->val$reason:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    nop

    const-string/jumbo v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    :try_start_c
    iget-object v1, p0, Lcom/android/internal/app/ShutdownActivity$1;->this$0:Lcom/android/internal/app/ShutdownActivity;

    # getter for: Lcom/android/internal/app/ShutdownActivity;->mReboot:Z
    invoke-static {v1}, Lcom/android/internal/app/ShutdownActivity;->access$000(Lcom/android/internal/app/ShutdownActivity;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/internal/app/ShutdownActivity$1;->this$0:Lcom/android/internal/app/ShutdownActivity;

    # getter for: Lcom/android/internal/app/ShutdownActivity;->mConfirm:Z
    invoke-static {v1}, Lcom/android/internal/app/ShutdownActivity;->access$100(Lcom/android/internal/app/ShutdownActivity;)Z

    move-result v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V

    goto :goto_2b

    :cond_20
    iget-object v1, p0, Lcom/android/internal/app/ShutdownActivity$1;->this$0:Lcom/android/internal/app/ShutdownActivity;

    # getter for: Lcom/android/internal/app/ShutdownActivity;->mConfirm:Z
    invoke-static {v1}, Lcom/android/internal/app/ShutdownActivity;->access$100(Lcom/android/internal/app/ShutdownActivity;)Z

    move-result v1

    iget-object v3, p0, Lcom/android/internal/app/ShutdownActivity$1;->val$reason:Ljava/lang/String;

    invoke-interface {v0, v1, v3, v2}, Landroid/os/IPowerManager;->shutdown(ZLjava/lang/String;Z)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_2b} :catch_2c

    :goto_2b
    goto :goto_2d

    :catch_2c
    move-exception v1

    :goto_2d
    return-void
.end method
