.class Lmiui/media/LocalMediaRecorder$RecorderAppendThread;
.super Ljava/lang/Thread;
.source "LocalMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/media/LocalMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecorderAppendThread"
.end annotation


# instance fields
.field private mRunningLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSrcFd:Landroid/os/ParcelFileDescriptor;

.field final synthetic this$0:Lmiui/media/LocalMediaRecorder;


# direct methods
.method constructor <init>(Lmiui/media/LocalMediaRecorder;Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    iput-object p1, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->this$0:Lmiui/media/LocalMediaRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mSrcFd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method static synthetic access$200(Lmiui/media/LocalMediaRecorder$RecorderAppendThread;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mRunningLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 9

    iget-object v0, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->this$0:Lmiui/media/LocalMediaRecorder;

    invoke-virtual {v0}, Lmiui/media/LocalMediaRecorder;->canPause()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mRunningLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x400

    new-array v3, v3, [B

    const/4 v4, 0x0

    :try_start_18
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mSrcFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v0, v5

    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->this$0:Lmiui/media/LocalMediaRecorder;

    # getter for: Lmiui/media/LocalMediaRecorder;->mDestFilePath:Ljava/lang/String;
    invoke-static {v6}, Lmiui/media/LocalMediaRecorder;->access$100(Lmiui/media/LocalMediaRecorder;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    move-object v2, v5

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->this$0:Lmiui/media/LocalMediaRecorder;

    invoke-virtual {v1}, Lmiui/media/LocalMediaRecorder;->getHeaderLen()I

    move-result v1

    const/4 v5, 0x0

    :goto_37
    sub-int v6, v1, v5

    if-lez v6, :cond_42

    invoke-virtual {v0, v3, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    move v5, v6

    sub-int/2addr v1, v5

    goto :goto_37

    :cond_42
    :goto_42
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v5, v6

    if-lez v6, :cond_4d

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_4c} :catch_77
    .catchall {:try_start_18 .. :try_end_4c} :catchall_75

    goto :goto_42

    :cond_4d
    nop

    :try_start_4e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    nop

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    iget-object v1, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mSrcFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_5a} :catch_5b

    goto :goto_63

    :catch_5b
    move-exception v1

    const-string v5, "Media:LocalMediaRecorder"

    const-string v6, "IOException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_63
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mRunningLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    :try_start_66
    iget-object v5, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mRunningLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v4, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mRunningLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    goto :goto_a7

    :catchall_72
    move-exception v4

    monitor-exit v1
    :try_end_74
    .catchall {:try_start_66 .. :try_end_74} :catchall_72

    throw v4

    :catchall_75
    move-exception v1

    goto :goto_ac

    :catch_77
    move-exception v1

    :try_start_78
    const-string v5, "Media:LocalMediaRecorder"

    const-string v6, "IOException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7f
    .catchall {:try_start_78 .. :try_end_7f} :catchall_75

    if-eqz v0, :cond_87

    :try_start_81
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_87

    :catch_85
    move-exception v1

    goto :goto_92

    :cond_87
    :goto_87
    if-eqz v2, :cond_8c

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_8c
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mSrcFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_91} :catch_85

    goto :goto_99

    :goto_92
    const-string v5, "Media:LocalMediaRecorder"

    const-string v6, "IOException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_99
    iget-object v1, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mRunningLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    :try_start_9c
    iget-object v5, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mRunningLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v4, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mRunningLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    :goto_a7
    nop

    return-void

    :catchall_a9
    move-exception v4

    monitor-exit v1
    :try_end_ab
    .catchall {:try_start_9c .. :try_end_ab} :catchall_a9

    throw v4

    :goto_ac
    if-eqz v0, :cond_b4

    :try_start_ae
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_b4

    :catch_b2
    move-exception v5

    goto :goto_bf

    :cond_b4
    :goto_b4
    if-eqz v2, :cond_b9

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_b9
    iget-object v5, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mSrcFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_be} :catch_b2

    goto :goto_c6

    :goto_bf
    const-string v6, "Media:LocalMediaRecorder"

    const-string v7, "IOException"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c6
    iget-object v5, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mRunningLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v5

    :try_start_c9
    iget-object v6, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mRunningLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v4, p0, Lmiui/media/LocalMediaRecorder$RecorderAppendThread;->mRunningLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    monitor-exit v5
    :try_end_d4
    .catchall {:try_start_c9 .. :try_end_d4} :catchall_d5

    throw v1

    :catchall_d5
    move-exception v1

    :try_start_d6
    monitor-exit v5
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d5

    throw v1
.end method
