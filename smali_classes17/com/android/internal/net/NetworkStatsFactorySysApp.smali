.class public Lcom/android/internal/net/NetworkStatsFactorySysApp;
.super Ljava/lang/Object;
.source "NetworkStatsFactorySysApp.java"


# static fields
.field private static final CLATD_INTERFACE_PREFIX:Ljava/lang/String; = "v4-"

.field private static final IPV4V6_HEADER_DELTA:I = 0x14


# instance fields
.field private final mStatsXtSysApp:Ljava/io/File;

.field private mUseBpfStats:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/"

    const-string/jumbo v2, "net/xt_qtaguid/system_app_stats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactorySysApp;->mStatsXtSysApp:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/fs/bpf/map_netd_app_uid_stats_map"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/net/NetworkStatsFactorySysApp;->mUseBpfStats:Z

    return-void
.end method

.method public static native nativeReadNSDForSysApp(Landroid/net/NetworkStatsSysApp;[Ljava/lang/String;)I
.end method

.method public static readNetworkStatsDetail(Ljava/io/File;Landroid/net/NetworkStatsSysApp;[Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    new-instance v1, Landroid/net/NetworkStatsSysApp$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStatsSysApp$Entry;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_c
    new-instance v5, Lcom/android/internal/util/ProcFileReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V

    move-object v4, v5

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    :goto_1a
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v5

    if-eqz v5, :cond_82

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v5

    move v2, v5

    add-int/lit8 v5, v3, 0x1

    if-ne v2, v5, :cond_63

    move v3, v2

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroid/net/NetworkStatsSysApp$Entry;->iface:Ljava/lang/String;

    if-eqz p2, :cond_3e

    iget-object v5, v1, Landroid/net/NetworkStatsSysApp$Entry;->iface:Ljava/lang/String;

    invoke-static {p2, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3e

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    goto :goto_1a

    :cond_3e
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroid/net/NetworkStatsSysApp$Entry;->nameOrHash:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v5

    iput-wide v5, v1, Landroid/net/NetworkStatsSysApp$Entry;->rxBytes:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v5

    iput-wide v5, v1, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v5

    iput-wide v5, v1, Landroid/net/NetworkStatsSysApp$Entry;->txBytes:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v5

    iput-wide v5, v1, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    invoke-virtual {p1, v1}, Landroid/net/NetworkStatsSysApp;->combineValues(Landroid/net/NetworkStatsSysApp$Entry;)Landroid/net/NetworkStatsSysApp;

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    goto :goto_1a

    :cond_63
    new-instance v5, Ljava/net/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inconsistent idx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " after lastIdx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_82
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_82} :catch_8c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_82} :catch_8c
    .catchall {:try_start_c .. :try_end_82} :catchall_8a

    :cond_82
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    return-void

    :catchall_8a
    move-exception v5

    goto :goto_a5

    :catch_8c
    move-exception v5

    :try_start_8d
    new-instance v6, Ljava/net/ProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "problem parsing idx "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_a5
    .catchall {:try_start_8d .. :try_end_a5} :catchall_8a

    :goto_a5
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v5
.end method


# virtual methods
.method public readNSDForSystemApp([Ljava/lang/String;Landroid/net/NetworkStatsSysApp;)Landroid/net/NetworkStatsSysApp;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_b

    move-object v0, p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStatsSysApp;->setElapsedRealtime(J)V

    goto :goto_15

    :cond_b
    new-instance v0, Landroid/net/NetworkStatsSysApp;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStatsSysApp;-><init>(JI)V

    :goto_15
    iget-boolean v1, p0, Lcom/android/internal/net/NetworkStatsFactorySysApp;->mUseBpfStats:Z

    if-eqz v1, :cond_1d

    invoke-static {v0, p1}, Lcom/android/internal/net/NetworkStatsFactorySysApp;->nativeReadNSDForSysApp(Landroid/net/NetworkStatsSysApp;[Ljava/lang/String;)I

    goto :goto_22

    :cond_1d
    iget-object v1, p0, Lcom/android/internal/net/NetworkStatsFactorySysApp;->mStatsXtSysApp:Ljava/io/File;

    invoke-static {v1, v0, p1}, Lcom/android/internal/net/NetworkStatsFactorySysApp;->readNetworkStatsDetail(Ljava/io/File;Landroid/net/NetworkStatsSysApp;[Ljava/lang/String;)V

    :goto_22
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_24
    invoke-virtual {v0}, Landroid/net/NetworkStatsSysApp;->size()I

    move-result v3

    if-ge v2, v3, :cond_56

    invoke-virtual {v0, v2, v1}, Landroid/net/NetworkStatsSysApp;->getValues(ILandroid/net/NetworkStatsSysApp$Entry;)Landroid/net/NetworkStatsSysApp$Entry;

    move-result-object v1

    iget-object v3, v1, Landroid/net/NetworkStatsSysApp$Entry;->iface:Ljava/lang/String;

    if-eqz v3, :cond_53

    iget-object v3, v1, Landroid/net/NetworkStatsSysApp$Entry;->iface:Ljava/lang/String;

    const-string/jumbo v4, "v4-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3e

    goto :goto_53

    :cond_3e
    iget-wide v3, v1, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    const-wide/16 v5, 0x14

    mul-long/2addr v3, v5

    iput-wide v3, v1, Landroid/net/NetworkStatsSysApp$Entry;->rxBytes:J

    iget-wide v3, v1, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    mul-long/2addr v3, v5

    iput-wide v3, v1, Landroid/net/NetworkStatsSysApp$Entry;->txBytes:J

    const-wide/16 v3, 0x0

    iput-wide v3, v1, Landroid/net/NetworkStatsSysApp$Entry;->rxPackets:J

    iput-wide v3, v1, Landroid/net/NetworkStatsSysApp$Entry;->txPackets:J

    invoke-virtual {v0, v1}, Landroid/net/NetworkStatsSysApp;->combineValues(Landroid/net/NetworkStatsSysApp$Entry;)Landroid/net/NetworkStatsSysApp;

    :cond_53
    :goto_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stats="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkStatsFactorySysApp"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
