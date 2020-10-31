.class Landroid/os/RevocableFileDescriptor$1;
.super Landroid/os/ProxyFileDescriptorCallback;
.source "RevocableFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/RevocableFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/RevocableFileDescriptor;


# direct methods
.method constructor <init>(Landroid/os/RevocableFileDescriptor;)V
    .registers 2

    iput-object p1, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-direct {p0}, Landroid/os/ProxyFileDescriptorCallback;-><init>()V

    return-void
.end method

.method private checkRevoked()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    # getter for: Landroid/os/RevocableFileDescriptor;->mRevoked:Z
    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->access$000(Landroid/os/RevocableFileDescriptor;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Landroid/system/ErrnoException;

    sget v1, Landroid/system/OsConstants;->EPERM:I

    const-string v2, "RevocableFileDescriptor"

    invoke-direct {v0, v2, v1}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method


# virtual methods
.method public onFsync()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    const-string v0, "RevocableFileDescriptor"

    const-string/jumbo v1, "onFsync()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/os/RevocableFileDescriptor$1;->checkRevoked()V

    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    # getter for: Landroid/os/RevocableFileDescriptor;->mInner:Ljava/io/FileDescriptor;
    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->access$100(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public onGetSize()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/RevocableFileDescriptor$1;->checkRevoked()V

    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    # getter for: Landroid/os/RevocableFileDescriptor;->mInner:Ljava/io/FileDescriptor;
    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->access$100(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    iget-wide v0, v0, Landroid/system/StructStat;->st_size:J

    return-wide v0
.end method

.method public onRead(JI[B)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/RevocableFileDescriptor$1;->checkRevoked()V

    const/4 v0, 0x0

    :goto_4
    if-ge v0, p3, :cond_1e

    :try_start_6
    iget-object v1, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    # getter for: Landroid/os/RevocableFileDescriptor;->mInner:Ljava/io/FileDescriptor;
    invoke-static {v1}, Landroid/os/RevocableFileDescriptor;->access$100(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v1

    sub-int v4, p3, v0

    int-to-long v2, v0

    add-long v5, p1, v2

    move-object v2, p4

    move v3, v0

    invoke-static/range {v1 .. v6}, Landroid/system/Os;->pread(Ljava/io/FileDescriptor;[BIIJ)I

    move-result v1
    :try_end_17
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_17} :catch_19

    add-int/2addr v0, v1

    goto :goto_1e

    :catch_19
    move-exception v1

    iget v2, v1, Ljava/io/InterruptedIOException;->bytesTransferred:I

    add-int/2addr v0, v2

    goto :goto_4

    :cond_1e
    :goto_1e
    return v0
.end method

.method public onRelease()V
    .registers 3

    const-string v0, "RevocableFileDescriptor"

    const-string/jumbo v1, "onRelease()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    const/4 v1, 0x1

    # setter for: Landroid/os/RevocableFileDescriptor;->mRevoked:Z
    invoke-static {v0, v1}, Landroid/os/RevocableFileDescriptor;->access$002(Landroid/os/RevocableFileDescriptor;Z)Z

    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    # getter for: Landroid/os/RevocableFileDescriptor;->mInner:Ljava/io/FileDescriptor;
    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->access$100(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    # getter for: Landroid/os/RevocableFileDescriptor;->mOnCloseListener:Landroid/os/ParcelFileDescriptor$OnCloseListener;
    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->access$200(Landroid/os/RevocableFileDescriptor;)Landroid/os/ParcelFileDescriptor$OnCloseListener;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    # getter for: Landroid/os/RevocableFileDescriptor;->mOnCloseListener:Landroid/os/ParcelFileDescriptor$OnCloseListener;
    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->access$200(Landroid/os/RevocableFileDescriptor;)Landroid/os/ParcelFileDescriptor$OnCloseListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/ParcelFileDescriptor$OnCloseListener;->onClose(Ljava/io/IOException;)V

    :cond_29
    return-void
.end method

.method public onWrite(JI[B)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/RevocableFileDescriptor$1;->checkRevoked()V

    const/4 v0, 0x0

    :goto_4
    if-ge v0, p3, :cond_1e

    :try_start_6
    iget-object v1, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    # getter for: Landroid/os/RevocableFileDescriptor;->mInner:Ljava/io/FileDescriptor;
    invoke-static {v1}, Landroid/os/RevocableFileDescriptor;->access$100(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v1

    sub-int v4, p3, v0

    int-to-long v2, v0

    add-long v5, p1, v2

    move-object v2, p4

    move v3, v0

    invoke-static/range {v1 .. v6}, Landroid/system/Os;->pwrite(Ljava/io/FileDescriptor;[BIIJ)I

    move-result v1
    :try_end_17
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_17} :catch_19

    add-int/2addr v0, v1

    goto :goto_1e

    :catch_19
    move-exception v1

    iget v2, v1, Ljava/io/InterruptedIOException;->bytesTransferred:I

    add-int/2addr v0, v2

    goto :goto_4

    :cond_1e
    :goto_1e
    return v0
.end method
