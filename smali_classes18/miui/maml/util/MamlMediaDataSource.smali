.class public Lmiui/maml/util/MamlMediaDataSource;
.super Landroid/media/MediaDataSource;
.source "MamlMediaDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;
    }
.end annotation


# static fields
.field private static final MAX_VIDEO_SIZE:I = 0x3200000

.field private static final MEMORY_THRESHOLD:I = 0x6400000

.field private static final TAG:Ljava/lang/String; = "MamlMediaDataSource"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentPosition:J

.field private mFile:Landroid/os/MemoryFile;

.field private final mLock:Ljava/lang/Object;

.field private mManager:Lmiui/maml/ResourceManager;

.field private mPath:Ljava/lang/String;

.field private mSize:J

.field private mStream:Ljava/io/InputStream;

.field private mSupportMark:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/util/MamlMediaDataSource;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lmiui/maml/util/MamlMediaDataSource;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lmiui/maml/util/MamlMediaDataSource;->mManager:Lmiui/maml/ResourceManager;

    iput-object p3, p0, Lmiui/maml/util/MamlMediaDataSource;->mPath:Ljava/lang/String;

    invoke-direct {p0}, Lmiui/maml/util/MamlMediaDataSource;->init()V

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/util/MamlMediaDataSource;Landroid/os/MemoryFile;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/util/MamlMediaDataSource;->setMemoryFile(Landroid/os/MemoryFile;)V

    return-void
.end method

.method private closeStream()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/util/MamlMediaDataSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_16

    if-eqz v1, :cond_14

    :try_start_7
    iget-object v1, p0, Lmiui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_d
    .catchall {:try_start_7 .. :try_end_c} :catchall_16

    goto :goto_11

    :catch_d
    move-exception v1

    :try_start_e
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_11
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    :cond_14
    monitor-exit v0

    return-void

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw v1
.end method

.method private generateMemoryFile()V
    .registers 4

    iget-object v0, p0, Lmiui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lmiui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;

    iget-object v1, p0, Lmiui/maml/util/MamlMediaDataSource;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lmiui/maml/util/MamlMediaDataSource;->mManager:Lmiui/maml/ResourceManager;

    invoke-direct {v0, v1, v2, p0}, Lmiui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;-><init>(Ljava/lang/String;Lmiui/maml/ResourceManager;Lmiui/maml/util/MamlMediaDataSource;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lmiui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private init()V
    .registers 6

    iget-object v0, p0, Lmiui/maml/util/MamlMediaDataSource;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lmiui/maml/util/MamlMediaDataSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_c
    new-array v1, v1, [J

    iget-object v2, p0, Lmiui/maml/util/MamlMediaDataSource;->mManager:Lmiui/maml/ResourceManager;

    iget-object v3, p0, Lmiui/maml/util/MamlMediaDataSource;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lmiui/maml/ResourceManager;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    const/4 v3, 0x0

    aget-wide v3, v1, v3

    iput-wide v3, p0, Lmiui/maml/util/MamlMediaDataSource;->mSize:J

    if-eqz v2, :cond_32

    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    iput-boolean v2, p0, Lmiui/maml/util/MamlMediaDataSource;->mSupportMark:Z

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lmiui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->mark(I)V

    :cond_2f
    invoke-virtual {p0}, Lmiui/maml/util/MamlMediaDataSource;->tryToGenerateMemoryFile()V

    :cond_32
    monitor-exit v0

    goto :goto_37

    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_c .. :try_end_36} :catchall_34

    throw v1

    :cond_37
    :goto_37
    return-void
.end method

.method private isFileSizeValid()Z
    .registers 5

    iget-wide v0, p0, Lmiui/maml/util/MamlMediaDataSource;->mSize:J

    const-wide/32 v2, 0x3200000

    cmp-long v0, v0, v2

    if-gez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private isMemoryEnough()Z
    .registers 7

    iget-object v0, p0, Lmiui/maml/util/MamlMediaDataSource;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-boolean v2, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    if-nez v2, :cond_24

    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x6400000

    cmp-long v2, v2, v4

    if-lez v2, :cond_24

    const/4 v2, 0x1

    return v2

    :cond_24
    const/4 v2, 0x0

    return v2
.end method

.method private resetStream()Z
    .registers 5

    iget-object v0, p0, Lmiui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-boolean v2, p0, Lmiui/maml/util/MamlMediaDataSource;->mSupportMark:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_14

    :try_start_b
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_24

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return v1

    :cond_14
    :try_start_14
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_25

    nop

    new-array v0, v3, [J

    iget-object v1, p0, Lmiui/maml/util/MamlMediaDataSource;->mManager:Lmiui/maml/ResourceManager;

    iget-object v2, p0, Lmiui/maml/util/MamlMediaDataSource;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lmiui/maml/ResourceManager;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    :goto_24
    return v3

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return v1
.end method

.method private setMemoryFile(Landroid/os/MemoryFile;)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/util/MamlMediaDataSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lmiui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 1

    invoke-direct {p0}, Lmiui/maml/util/MamlMediaDataSource;->closeStream()V

    invoke-virtual {p0}, Lmiui/maml/util/MamlMediaDataSource;->releaseMemoryFile()V

    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lmiui/maml/util/MamlMediaDataSource;->close()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/maml/util/MamlMediaDataSource;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    iget-wide v0, p0, Lmiui/maml/util/MamlMediaDataSource;->mSize:J

    return-wide v0
.end method

.method public onLowMemory()V
    .registers 1

    invoke-virtual {p0}, Lmiui/maml/util/MamlMediaDataSource;->releaseMemoryFile()V

    return-void
.end method

.method public onTrimMemory(I)V
    .registers 3

    const/16 v0, 0xa

    if-lt p1, v0, :cond_7

    invoke-virtual {p0}, Lmiui/maml/util/MamlMediaDataSource;->releaseMemoryFile()V

    :cond_7
    return-void
.end method

.method public readAt(J[BII)I
    .registers 14

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    if-nez v1, :cond_c

    iget-object v1, p0, Lmiui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    if-nez v1, :cond_c

    invoke-direct {p0}, Lmiui/maml/util/MamlMediaDataSource;->init()V

    :cond_c
    iget-object v1, p0, Lmiui/maml/util/MamlMediaDataSource;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_f
    iget-object v2, p0, Lmiui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_8a

    const/4 v3, 0x0

    if-eqz v2, :cond_51

    int-to-long v4, p5

    add-long/2addr v4, p1

    :try_start_16
    iget-wide v6, p0, Lmiui/maml/util/MamlMediaDataSource;->mSize:J

    cmp-long v2, v4, v6

    if-lez v2, :cond_37

    iget-wide v4, p0, Lmiui/maml/util/MamlMediaDataSource;->mSize:J

    cmp-long v2, p1, v4

    if-gez v2, :cond_2e

    const-string v2, "MamlMediaDataSource"

    const-string v4, "readAt: position+size is larger than file size, read left data"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v4, p0, Lmiui/maml/util/MamlMediaDataSource;->mSize:J

    sub-long/2addr v4, p1

    long-to-int p5, v4

    goto :goto_37

    :cond_2e
    const-string v2, "MamlMediaDataSource"

    const-string v4, "readAt: position is larger than file size, return 0"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/nio/BufferUnderflowException; {:try_start_16 .. :try_end_35} :catch_4e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_35} :catch_40
    .catchall {:try_start_16 .. :try_end_35} :catchall_8a

    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_8a

    return v3

    :cond_37
    :goto_37
    :try_start_37
    iget-object v2, p0, Lmiui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    long-to-int v4, p1

    invoke-virtual {v2, p3, v4, p4, p5}, Landroid/os/MemoryFile;->readBytes([BIII)I

    move-result v2
    :try_end_3e
    .catch Ljava/nio/BufferUnderflowException; {:try_start_37 .. :try_end_3e} :catch_4e
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3e} :catch_40
    .catchall {:try_start_37 .. :try_end_3e} :catchall_8a

    move v0, v2

    goto :goto_82

    :catch_40
    move-exception v2

    :try_start_41
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v4, p0, Lmiui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    invoke-virtual {v4}, Landroid/os/MemoryFile;->close()V

    const/4 v4, 0x0

    iput-object v4, p0, Lmiui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    monitor-exit v1

    return v3

    :catch_4e
    move-exception v2

    monitor-exit v1

    return v3

    :cond_51
    iget-object v2, p0, Lmiui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    if-eqz v2, :cond_82

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lmiui/maml/util/MamlMediaDataSource;->mCurrentPosition:J

    cmp-long v2, v6, p1

    if-lez v2, :cond_67

    invoke-direct {p0}, Lmiui/maml/util/MamlMediaDataSource;->resetStream()Z

    move-result v2

    if-eqz v2, :cond_65

    move-wide v2, p1

    goto :goto_6b

    :cond_65
    monitor-exit v1

    return v3

    :cond_67
    iget-wide v2, p0, Lmiui/maml/util/MamlMediaDataSource;->mCurrentPosition:J
    :try_end_69
    .catchall {:try_start_41 .. :try_end_69} :catchall_8a

    sub-long v2, p1, v2

    :goto_6b
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_76

    :try_start_71
    iget-object v4, p0, Lmiui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    invoke-virtual {v4, v2, v3}, Ljava/io/InputStream;->skip(J)J

    :cond_76
    iget-object v4, p0, Lmiui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    invoke-virtual {v4, p3, p4, p5}, Ljava/io/InputStream;->read([BII)I

    move-result v4
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_7c} :catch_7e
    .catchall {:try_start_71 .. :try_end_7c} :catchall_8a

    move v0, v4

    goto :goto_82

    :catch_7e
    move-exception v4

    :try_start_7f
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_82
    :goto_82
    monitor-exit v1
    :try_end_83
    .catchall {:try_start_7f .. :try_end_83} :catchall_8a

    if-lez v0, :cond_89

    int-to-long v1, v0

    add-long/2addr v1, p1

    iput-wide v1, p0, Lmiui/maml/util/MamlMediaDataSource;->mCurrentPosition:J

    :cond_89
    return v0

    :catchall_8a
    move-exception v2

    :try_start_8b
    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw v2
.end method

.method public releaseMemoryFile()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/util/MamlMediaDataSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lmiui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lmiui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    invoke-virtual {v1}, Landroid/os/MemoryFile;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public tryToGenerateMemoryFile()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    if-nez v0, :cond_19

    iget-object v0, p0, Lmiui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/util/zip/InflaterInputStream;

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lmiui/maml/util/MamlMediaDataSource;->isMemoryEnough()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lmiui/maml/util/MamlMediaDataSource;->isFileSizeValid()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lmiui/maml/util/MamlMediaDataSource;->generateMemoryFile()V

    :cond_19
    return-void
.end method
