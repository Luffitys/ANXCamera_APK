.class Lmiui/media/LocalMediaRecorder$RecorderAppendThread;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field private mRunningLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSrcFd:Landroid/os/ParcelFileDescriptor;

.field final synthetic this$0:Lmiui/media/LocalMediaRecorder;


# direct methods
.method constructor <init>(Lmiui/media/LocalMediaRecorder;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->this$0:Lmiui/media/LocalMediaRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mSrcFd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method static synthetic access$200(Lmiui/media/LocalMediaRecorder$RecorderAppendThread;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mRunningLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->this$0:Lmiui/media/LocalMediaRecorder;

    invoke-virtual {v0}, Lmiui/media/LocalMediaRecorder;->canPause()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mRunningLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v0, 0x400

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mSrcFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->this$0:Lmiui/media/LocalMediaRecorder;

    invoke-static {v6}, Lmiui/media/LocalMediaRecorder;->access$100(Lmiui/media/LocalMediaRecorder;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->this$0:Lmiui/media/LocalMediaRecorder;

    invoke-virtual {v1}, Lmiui/media/LocalMediaRecorder;->getHeaderLen()I

    move-result v1

    move v2, v3

    :goto_0
    sub-int v2, v1, v2

    if-lez v2, :cond_1

    invoke-virtual {v4, v0, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v5, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mSrcFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Media:LocalMediaRecorder"

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iget-object v0, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mRunningLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_4
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mRunningLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mRunningLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_9

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v5, v2

    :goto_3
    move-object v2, v4

    goto :goto_a

    :catch_2
    move-exception v0

    move-object v5, v2

    :goto_4
    move-object v2, v4

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v5, v2

    goto :goto_a

    :catch_3
    move-exception v0

    move-object v5, v2

    :goto_5
    :try_start_5
    const-string v1, "Media:LocalMediaRecorder"

    const-string v4, "IOException"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_7

    :cond_3
    :goto_6
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    :cond_4
    iget-object v0, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mSrcFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    :goto_7
    const-string v1, "Media:LocalMediaRecorder"

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    iget-object v0, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mRunningLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mRunningLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mRunningLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    :goto_9
    return-void

    :catchall_4
    move-exception p0

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p0

    :catchall_5
    move-exception v0

    :goto_a
    if-eqz v2, :cond_5

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_b

    :catch_5
    move-exception v1

    goto :goto_c

    :cond_5
    :goto_b
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    :cond_6
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mSrcFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_d

    :goto_c
    const-string v2, "Media:LocalMediaRecorder"

    const-string v4, "IOException"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mRunningLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    :try_start_9
    iget-object v2, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mRunningLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mRunningLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    throw v0

    :catchall_6
    move-exception p0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    throw p0
.end method
