.class Lmiui/log/LogSwitchesConfigMonitor$2;
.super Ljava/lang/Object;
.source "LogSwitchesConfigMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/log/LogSwitchesConfigMonitor;->startMonitoring(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/log/LogSwitchesConfigMonitor;


# direct methods
.method constructor <init>(Lmiui/log/LogSwitchesConfigMonitor;)V
    .registers 2

    iput-object p1, p0, Lmiui/log/LogSwitchesConfigMonitor$2;->this$0:Lmiui/log/LogSwitchesConfigMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lmiui/log/LogSwitchesConfigMonitor$2;->this$0:Lmiui/log/LogSwitchesConfigMonitor;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/log/LogSwitchesConfigMonitor$2;->this$0:Lmiui/log/LogSwitchesConfigMonitor;

    iget-object v2, p0, Lmiui/log/LogSwitchesConfigMonitor$2;->this$0:Lmiui/log/LogSwitchesConfigMonitor;

    # getter for: Lmiui/log/LogSwitchesConfigMonitor;->applier:Lmiui/log/LogSwitchesConfigApplier;
    invoke-static {v2}, Lmiui/log/LogSwitchesConfigMonitor;->access$300(Lmiui/log/LogSwitchesConfigMonitor;)Lmiui/log/LogSwitchesConfigApplier;

    move-result-object v2

    iget-object v3, p0, Lmiui/log/LogSwitchesConfigMonitor$2;->this$0:Lmiui/log/LogSwitchesConfigMonitor;

    # getter for: Lmiui/log/LogSwitchesConfigMonitor;->logSwitchesFilePath:Ljava/lang/String;
    invoke-static {v3}, Lmiui/log/LogSwitchesConfigMonitor;->access$200(Lmiui/log/LogSwitchesConfigMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/log/LogSwitchesConfigApplier;->apply(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    # setter for: Lmiui/log/LogSwitchesConfigMonitor;->currentLogSwitchesConfig:Ljava/util/HashMap;
    invoke-static {v1, v2}, Lmiui/log/LogSwitchesConfigMonitor;->access$102(Lmiui/log/LogSwitchesConfigMonitor;Ljava/util/HashMap;)Ljava/util/HashMap;

    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method
