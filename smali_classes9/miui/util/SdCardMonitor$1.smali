.class Lmiui/util/SdCardMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic this$0:Lmiui/util/SdCardMonitor;


# direct methods
.method constructor <init>(Lmiui/util/SdCardMonitor;)V
    .locals 0

    iput-object p1, p0, Lmiui/util/SdCardMonitor$1;->this$0:Lmiui/util/SdCardMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result p1

    iget-object p2, p0, Lmiui/util/SdCardMonitor$1;->this$0:Lmiui/util/SdCardMonitor;

    invoke-static {p2}, Lmiui/util/SdCardMonitor;->access$100(Lmiui/util/SdCardMonitor;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lmiui/util/SdCardMonitor$1;->this$0:Lmiui/util/SdCardMonitor;

    invoke-static {p2}, Lmiui/util/SdCardMonitor;->access$100(Lmiui/util/SdCardMonitor;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eq p2, p1, :cond_1

    :cond_0
    iget-object p2, p0, Lmiui/util/SdCardMonitor$1;->this$0:Lmiui/util/SdCardMonitor;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2, v0}, Lmiui/util/SdCardMonitor;->access$102(Lmiui/util/SdCardMonitor;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object p0, p0, Lmiui/util/SdCardMonitor$1;->this$0:Lmiui/util/SdCardMonitor;

    invoke-static {p0, p1}, Lmiui/util/SdCardMonitor;->access$200(Lmiui/util/SdCardMonitor;Z)V

    :cond_1
    return-void
.end method
