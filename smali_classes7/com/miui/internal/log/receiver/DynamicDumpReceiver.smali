.class public Lcom/miui/internal/log/receiver/DynamicDumpReceiver;
.super Lcom/miui/internal/log/receiver/DumpReceiver;
.source ""


# static fields
.field private static final LOCKER:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "DynamicDumpReceiver"

.field private static volatile sReceiverRegistered:Z

.field private static sStaticReceiverChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/internal/log/receiver/DynamicDumpReceiver;->LOCKER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/log/receiver/DumpReceiver;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/log/receiver/DumpReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private staticReceiverExists(Landroid/content/Context;)Z
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.miui.core.intent.ACTION_DUMP_CACHED_LOG"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    sget-boolean v0, Lcom/miui/internal/log/receiver/DynamicDumpReceiver;->sStaticReceiverChecked:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/internal/log/receiver/DynamicDumpReceiver;->staticReceiverExists(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "DynamicDumpReceiver"

    const-string v0, "Dynamic receiver removed"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/internal/log/receiver/DynamicDumpReceiver;->sStaticReceiverChecked:Z

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/miui/internal/log/receiver/DumpReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public register(Landroid/content/Context;)Z
    .locals 4

    sget-boolean v0, Lcom/miui/internal/log/receiver/DynamicDumpReceiver;->sReceiverRegistered:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/internal/log/receiver/DynamicDumpReceiver;->LOCKER:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/miui/internal/log/receiver/DynamicDumpReceiver;->sReceiverRegistered:Z

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.miui.core.intent.ACTION_DUMP_CACHED_LOG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "miui.permission.DUMP_CACHED_LOG"

    const/4 v3, 0x0

    invoke-virtual {p1, p0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 p0, 0x1

    sput-boolean p0, Lcom/miui/internal/log/receiver/DynamicDumpReceiver;->sReceiverRegistered:Z

    const-string p1, "DynamicDumpReceiver"

    const-string v1, "Dynamic receiver registered"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
