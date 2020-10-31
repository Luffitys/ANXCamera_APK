.class public Lcom/miui/internal/log/receiver/DynamicDumpReceiver;
.super Lcom/miui/internal/log/receiver/DumpReceiver;
.source "DynamicDumpReceiver.java"


# static fields
.field private static final LOCKER:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "DynamicDumpReceiver"

.field private static volatile sReceiverRegistered:Z

.field private static sStaticReceiverChecked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/internal/log/receiver/DynamicDumpReceiver;->LOCKER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/miui/internal/log/receiver/DumpReceiver;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/log/receiver/DumpReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private staticReceiverExists(Landroid/content/Context;)Z
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.core.intent.ACTION_DUMP_CACHED_LOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_20

    const/4 v2, 0x1

    :cond_20
    return v2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    sget-boolean v0, Lcom/miui/internal/log/receiver/DynamicDumpReceiver;->sStaticReceiverChecked:Z

    if-nez v0, :cond_18

    invoke-direct {p0, p1}, Lcom/miui/internal/log/receiver/DynamicDumpReceiver;->staticReceiverExists(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "DynamicDumpReceiver"

    const-string v1, "Dynamic receiver removed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :cond_15
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/internal/log/receiver/DynamicDumpReceiver;->sStaticReceiverChecked:Z

    :cond_18
    invoke-super {p0, p1, p2}, Lcom/miui/internal/log/receiver/DumpReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public register(Landroid/content/Context;)Z
    .registers 6

    sget-boolean v0, Lcom/miui/internal/log/receiver/DynamicDumpReceiver;->sReceiverRegistered:Z

    if-nez v0, :cond_29

    sget-object v0, Lcom/miui/internal/log/receiver/DynamicDumpReceiver;->LOCKER:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-boolean v1, Lcom/miui/internal/log/receiver/DynamicDumpReceiver;->sReceiverRegistered:Z

    if-nez v1, :cond_24

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.miui.core.intent.ACTION_DUMP_CACHED_LOG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "miui.permission.DUMP_CACHED_LOG"

    const/4 v3, 0x0

    invoke-virtual {p1, p0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/miui/internal/log/receiver/DynamicDumpReceiver;->sReceiverRegistered:Z

    const-string v2, "DynamicDumpReceiver"

    const-string v3, "Dynamic receiver registered"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v1

    :cond_24
    monitor-exit v0

    goto :goto_29

    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_26

    throw v1

    :cond_29
    :goto_29
    const/4 v0, 0x0

    return v0
.end method
