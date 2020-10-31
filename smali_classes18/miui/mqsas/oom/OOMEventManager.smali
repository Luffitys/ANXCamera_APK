.class public Lmiui/mqsas/oom/OOMEventManager;
.super Ljava/lang/Object;
.source "OOMEventManager.java"


# static fields
.field public static final FILE_DATA_ANR_FOR_MTBF:Ljava/lang/String; = "/data/anr/system_server_"

.field public static final FILE_DIR_DATA_MQSAS_HPROF:Ljava/lang/String; = "/data/mqsas/hprof/"

.field public static final FILE_HPROF_SUFFIX:Ljava/lang/String; = ".hprof"

.field private static final TAG:Ljava/lang/String; = "OOMEventManagerFK"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkEventAndDumpIfNeeded(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->isSystem()Z

    move-result v1

    const-string v2, ".hprof"

    if-eqz v1, :cond_31

    invoke-static {}, Lmiui/mqsas/oom/OOMEventManager;->isMtbfTest()Z

    move-result v1

    if-eqz v1, :cond_31

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lmiui/mqsas/fdmonitor/FdInfoManager;->isInterestedFdLeakEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_31

    or-int/lit8 v0, v0, 0x7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/anr/system_server_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_52

    :cond_31
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v1

    invoke-virtual {v1, p0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->checkDumpForJavaException(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)I

    move-result v1

    or-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/mqsas/hprof/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkEventAndDumpForJE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OOMEventManagerFK"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v0}, Lmiui/mqsas/fdmonitor/FdInfoManager;->dumpIfNeeded(Lmiui/mqsas/sdk/event/JavaExceptionEvent;I)V

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_7e

    invoke-static {v1}, Lmiui/mqsas/oom/OOMEventManager;->doDumpheap(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->getJeCategroy()I

    move-result v2

    or-int/lit8 v2, v2, 0x4

    invoke-virtual {p0, v2}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->setJeCategroy(I)V

    :cond_7e
    return-void
.end method

.method private static declared-synchronized doDumpheap(Ljava/lang/String;)Z
    .registers 7

    const-class v0, Lmiui/mqsas/oom/OOMEventManager;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_18

    const-string v2, "OOMEventManagerFK"

    const-string v4, "dumpheap failed, outPutFileName already exists"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_40

    monitor-exit v0

    return v3

    :cond_18
    :try_start_18
    invoke-static {p0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    const/16 v2, 0x1b4

    const/4 v4, -0x1

    invoke-static {p0, v2, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    const-string v2, "OOMEventManagerFK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpheap success : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_37} :catch_3a
    .catchall {:try_start_18 .. :try_end_37} :catchall_40

    const/4 v2, 0x1

    monitor-exit v0

    return v2

    :catch_3a
    move-exception v2

    :try_start_3b
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_40

    monitor-exit v0

    return v3

    :catchall_40
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static isMtbfTest()Z
    .registers 3

    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_14

    const-string v0, "ro.miui.mtbftest"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_14

    move v1, v2

    goto :goto_15

    :cond_14
    nop

    :goto_15
    return v1
.end method
