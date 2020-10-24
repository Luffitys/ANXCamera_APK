.class Lcom/iqiyi/android/qigsaw/core/common/FileLockHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final LOCK_WAIT_EACH_TIME:I = 0xa

.field private static final TAG:Ljava/lang/String; = "Split.FileLockHelper"


# instance fields
.field private final fileLock:Ljava/nio/channels/FileLock;

.field private final outputStream:Ljava/io/FileOutputStream;


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 7

    const-string v0, "Split.FileLockHelper"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/iqiyi/android/qigsaw/core/common/FileLockHelper;->outputStream:Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move v4, v2

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    :try_start_0
    iget-object v5, p0, Lcom/iqiyi/android/qigsaw/core/common/FileLockHelper;->outputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    if-eqz v5, :cond_1

    goto :goto_2

    :catch_0
    move-exception v3

    const-string v5, "getInfoLock Thread failed time:10"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-wide/16 v5, 0xa

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v5

    const-string v6, "getInfoLock Thread sleep exception"

    invoke-static {v0, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    iput-object v1, p0, Lcom/iqiyi/android/qigsaw/core/common/FileLockHelper;->fileLock:Ljava/nio/channels/FileLock;

    return-void

    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tinker Exception:FileLockHelper lock file failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method static getFileLock(Ljava/io/File;)Lcom/iqiyi/android/qigsaw/core/common/FileLockHelper;
    .locals 1

    new-instance v0, Lcom/iqiyi/android/qigsaw/core/common/FileLockHelper;

    invoke-direct {v0, p0}, Lcom/iqiyi/android/qigsaw/core/common/FileLockHelper;-><init>(Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/common/FileLockHelper;->fileLock:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/common/FileLockHelper;->fileLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/common/FileLockHelper;->outputStream:Ljava/io/FileOutputStream;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/common/FileLockHelper;->outputStream:Ljava/io/FileOutputStream;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    throw v0
.end method
