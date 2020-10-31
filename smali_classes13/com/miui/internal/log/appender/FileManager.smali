.class public Lcom/miui/internal/log/appender/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# static fields
.field private static final FILE_CHECK_INTERVAL:I = 0x3e8

.field private static final LOG_EXTENSION:Ljava/lang/String; = ".log"

.field private static final PREPARE_RETRY_INTERVAL:I = 0x7530

.field private static final RETRY_LIMIT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "FileManager"


# instance fields
.field private mFileCheckStamp:J

.field protected mLogFile:Ljava/io/File;

.field private mLogLength:J

.field protected mLogName:Ljava/lang/String;

.field protected mLogRoot:Ljava/lang/String;

.field private mOutputStream:Ljava/io/FileOutputStream;

.field private mPrepareRetryStamp:J

.field private mRetryCount:I

.field private mWriter:Ljava/io/OutputStreamWriter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/log/appender/FileManager;->mLogRoot:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/internal/log/appender/FileManager;->mLogName:Ljava/lang/String;

    return-void
.end method

.method private doWrite(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->mWriter:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->mWriter:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    iget-wide v0, p0, Lcom/miui/internal/log/appender/FileManager;->mLogLength:J

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/internal/log/appender/FileManager;->mLogLength:J

    return-void
.end method

.method private prepareWriter()V
    .registers 7

    iget v0, p0, Lcom/miui/internal/log/appender/FileManager;->mRetryCount:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/internal/log/appender/FileManager;->mPrepareRetryStamp:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_17

    iput-wide v0, p0, Lcom/miui/internal/log/appender/FileManager;->mPrepareRetryStamp:J

    goto :goto_18

    :cond_17
    return-void

    :cond_18
    :goto_18
    iget v0, p0, Lcom/miui/internal/log/appender/FileManager;->mRetryCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/internal/log/appender/FileManager;->mRetryCount:I

    invoke-virtual {p0}, Lcom/miui/internal/log/appender/FileManager;->onCreateLogFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->mLogFile:Ljava/io/File;

    if-eqz v0, :cond_61

    :try_start_26
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/miui/internal/log/appender/FileManager;->mLogFile:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->mOutputStream:Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/miui/internal/log/appender/FileManager;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->mWriter:Ljava/io/OutputStreamWriter;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/log/appender/FileManager;->mRetryCount:I

    iget-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->mLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/internal/log/appender/FileManager;->mLogLength:J
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_43} :catch_44

    goto :goto_61

    :catch_44
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to create writer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/internal/log/appender/FileManager;->mLogFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FileManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_61
    :goto_61
    return-void
.end method

.method private repairWriter()V
    .registers 1

    invoke-virtual {p0}, Lcom/miui/internal/log/appender/FileManager;->close()V

    invoke-direct {p0}, Lcom/miui/internal/log/appender/FileManager;->prepareWriter()V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->mLogFile:Ljava/io/File;

    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/internal/log/appender/FileManager;->mRetryCount:I

    iput-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->mOutputStream:Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/miui/internal/log/appender/FileManager;->mWriter:Ljava/io/OutputStreamWriter;

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->mWriter:Ljava/io/OutputStreamWriter;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/internal/log/appender/FileManager;->mLogLength:J
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLogExtension()Ljava/lang/String;
    .registers 2

    const-string v0, ".log"

    return-object v0
.end method

.method public getLogFile()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->mLogFile:Ljava/io/File;

    return-object v0
.end method

.method public getLogName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->mLogName:Ljava/lang/String;

    return-object v0
.end method

.method public getLogRoot()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->mLogRoot:Ljava/lang/String;

    return-object v0
.end method

.method public getLogSize()J
    .registers 3

    iget-wide v0, p0, Lcom/miui/internal/log/appender/FileManager;->mLogLength:J

    return-wide v0
.end method

.method protected onBuildLogPath()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/internal/log/appender/FileManager;->mLogRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/internal/log/appender/FileManager;->mLogName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateLogFile()Ljava/io/File;
    .registers 9

    const-string v0, "Fail to create LogFile: "

    invoke-virtual {p0}, Lcom/miui/internal/log/appender/FileManager;->onBuildLogPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "FileManager"

    if-nez v1, :cond_11

    const-string v0, "Fail to build log path"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_11
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_64

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LogDir is not a directory: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3f
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_64

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_64

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail to create directory: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_64
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_85

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_a5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LogFile is not a file: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_85
    :try_start_85
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v6

    if-nez v6, :cond_a4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_a4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_a3} :catch_a6

    return-object v2

    :cond_a4
    nop

    :cond_a5
    return-object v4

    :catch_a6
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public declared-synchronized write(Ljava/lang/String;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->mWriter:Ljava/io/OutputStreamWriter;

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/miui/internal/log/appender/FileManager;->prepareWriter()V

    goto :goto_2f

    :cond_9
    iget-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->mWriter:Ljava/io/OutputStreamWriter;

    if-eqz v0, :cond_2f

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/internal/log/appender/FileManager;->mFileCheckStamp:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_2f

    iput-wide v0, p0, Lcom/miui/internal/log/appender/FileManager;->mFileCheckStamp:J

    iget-object v2, p0, Lcom/miui/internal/log/appender/FileManager;->mLogFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "FileManager"

    const-string v3, "Repair writer for log file is missing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/internal/log/appender/FileManager;->repairWriter()V

    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/miui/internal/log/appender/FileManager;->mWriter:Ljava/io/OutputStreamWriter;

    if-nez v0, :cond_3b

    const-string v0, "FileManager"

    const-string v1, "Fail to append log for writer is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_64

    goto :goto_62

    :cond_3b
    :try_start_3b
    invoke-direct {p0, p1}, Lcom/miui/internal/log/appender/FileManager;->doWrite(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f
    .catchall {:try_start_3b .. :try_end_3e} :catchall_64

    goto :goto_62

    :catch_3f
    move-exception v0

    :try_start_40
    const-string v1, "FileManager"

    const-string v2, "Retry to write log"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/miui/internal/log/appender/FileManager;->repairWriter()V

    iget-object v1, p0, Lcom/miui/internal/log/appender/FileManager;->mWriter:Ljava/io/OutputStreamWriter;

    if-nez v1, :cond_56

    const-string v1, "FileManager"

    const-string v2, "Fail to append log for writer is null when retry"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_40 .. :try_end_55} :catchall_64

    goto :goto_62

    :cond_56
    :try_start_56
    invoke-direct {p0, p1}, Lcom/miui/internal/log/appender/FileManager;->doWrite(Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a
    .catchall {:try_start_56 .. :try_end_59} :catchall_64

    goto :goto_62

    :catch_5a
    move-exception v1

    :try_start_5b
    const-string v2, "FileManager"

    const-string v3, "Fail to append log for writer is null when retry"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_64

    :goto_62
    monitor-exit p0

    return-void

    :catchall_64
    move-exception p1

    monitor-exit p0

    throw p1
.end method
