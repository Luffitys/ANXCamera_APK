.class public Lcom/miui/internal/log/appender/rolling/RollingFileManager;
.super Lcom/miui/internal/log/appender/FileManager;
.source "RollingFileManager.java"


# instance fields
.field private mLogPath:Ljava/lang/String;

.field private mRolloverStrategy:Lcom/miui/internal/log/appender/rolling/RolloverStrategy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/log/appender/FileManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkRollover()V
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/log/appender/rolling/RollingFileManager;->mLogFile:Ljava/io/File;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/miui/internal/log/appender/rolling/RollingFileManager;->mRolloverStrategy:Lcom/miui/internal/log/appender/rolling/RolloverStrategy;

    if-nez v0, :cond_9

    goto :goto_15

    :cond_9
    invoke-interface {v0, p0}, Lcom/miui/internal/log/appender/rolling/RolloverStrategy;->rollover(Lcom/miui/internal/log/appender/rolling/RollingFileManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/log/appender/rolling/RollingFileManager;->mLogPath:Ljava/lang/String;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/miui/internal/log/appender/rolling/RollingFileManager;->close()V

    :cond_14
    return-void

    :cond_15
    :goto_15
    return-void
.end method


# virtual methods
.method public getRolloverStrategy()Lcom/miui/internal/log/appender/rolling/RolloverStrategy;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/log/appender/rolling/RollingFileManager;->mRolloverStrategy:Lcom/miui/internal/log/appender/rolling/RolloverStrategy;

    return-object v0
.end method

.method protected onBuildLogPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/log/appender/rolling/RollingFileManager;->mLogPath:Ljava/lang/String;

    if-nez v0, :cond_9

    invoke-super {p0}, Lcom/miui/internal/log/appender/FileManager;->onBuildLogPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    return-object v0
.end method

.method public declared-synchronized setRolloverStrategy(Lcom/miui/internal/log/appender/rolling/RolloverStrategy;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/miui/internal/log/appender/rolling/RollingFileManager;->mRolloverStrategy:Lcom/miui/internal/log/appender/rolling/RolloverStrategy;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/miui/internal/log/appender/rolling/RollingFileManager;->checkRollover()V

    invoke-super {p0, p1}, Lcom/miui/internal/log/appender/FileManager;->write(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method
