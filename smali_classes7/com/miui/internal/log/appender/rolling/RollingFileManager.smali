.class public Lcom/miui/internal/log/appender/rolling/RollingFileManager;
.super Lcom/miui/internal/log/appender/FileManager;
.source ""


# instance fields
.field private mLogPath:Ljava/lang/String;

.field private mRolloverStrategy:Lcom/miui/internal/log/appender/rolling/RolloverStrategy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/log/appender/FileManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkRollover()V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->mLogFile:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/log/appender/rolling/RollingFileManager;->mRolloverStrategy:Lcom/miui/internal/log/appender/rolling/RolloverStrategy;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Lcom/miui/internal/log/appender/rolling/RolloverStrategy;->rollover(Lcom/miui/internal/log/appender/rolling/RollingFileManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/log/appender/rolling/RollingFileManager;->mLogPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/internal/log/appender/FileManager;->close()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getRolloverStrategy()Lcom/miui/internal/log/appender/rolling/RolloverStrategy;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/log/appender/rolling/RollingFileManager;->mRolloverStrategy:Lcom/miui/internal/log/appender/rolling/RolloverStrategy;

    return-object p0
.end method

.method protected onBuildLogPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/log/appender/rolling/RollingFileManager;->mLogPath:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/miui/internal/log/appender/FileManager;->onBuildLogPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public declared-synchronized setRolloverStrategy(Lcom/miui/internal/log/appender/rolling/RolloverStrategy;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/miui/internal/log/appender/rolling/RollingFileManager;->mRolloverStrategy:Lcom/miui/internal/log/appender/rolling/RolloverStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/miui/internal/log/appender/rolling/RollingFileManager;->checkRollover()V

    invoke-super {p0, p1}, Lcom/miui/internal/log/appender/FileManager;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
