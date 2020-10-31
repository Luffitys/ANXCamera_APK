.class public Landroid/os/FileBridge;
.super Ljava/lang/Thread;
.source "FileBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/FileBridge$FileBridgeOutputStream;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CMD_CLOSE:I = 0x3

.field private static final CMD_FSYNC:I = 0x2

.field private static final CMD_WRITE:I = 0x1

.field private static final MSG_LENGTH:I = 0x8

.field private static final TAG:Ljava/lang/String; = "FileBridge"


# instance fields
.field private final mClient:Ljava/io/FileDescriptor;

.field private volatile mClosed:Z

.field private final mServer:Ljava/io/FileDescriptor;

.field private mTarget:Ljava/io/FileDescriptor;


# direct methods
.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Landroid/os/FileBridge;->mClient:Ljava/io/FileDescriptor;

    :try_start_11
    sget v0, Landroid/system/OsConstants;->AF_UNIX:I

    sget v1, Landroid/system/OsConstants;->SOCK_STREAM:I

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    iget-object v4, p0, Landroid/os/FileBridge;->mClient:Ljava/io/FileDescriptor;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/system/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    :try_end_1d
    .catch Landroid/system/ErrnoException; {:try_start_11 .. :try_end_1d} :catch_1f

    nop

    return-void

    :catch_1f
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create bridge"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public forceClose()V
    .registers 2

    iget-object v0, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    iget-object v0, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    iget-object v0, p0, Landroid/os/FileBridge;->mClient:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/FileBridge;->mClosed:Z

    return-void
.end method

.method public getClientSocket()Ljava/io/FileDescriptor;
    .registers 4

    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iget-object v1, p0, Landroid/os/FileBridge;->mClient:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    iget-object v1, p0, Landroid/os/FileBridge;->mClient:Ljava/io/FileDescriptor;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/io/FileDescriptor;->setInt$(I)V

    return-object v0
.end method

.method public isClosed()Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/FileBridge;->mClosed:Z

    return v0
.end method

.method public run()V
    .registers 8

    const/16 v0, 0x2000

    new-array v0, v0, [B

    :goto_4
    :try_start_4
    iget-object v1, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    if-ne v1, v2, :cond_77

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v3, v1}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_53

    const/4 v2, 0x4

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, v4}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v2

    :goto_1f
    if-lez v2, :cond_52

    iget-object v4, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    array-length v5, v0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v0, v3, v5}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_36

    iget-object v5, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    invoke-static {v5, v0, v3, v4}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    sub-int/2addr v2, v4

    goto :goto_1f

    :cond_36
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected EOF; still expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_52
    goto :goto_76

    :cond_53
    const/4 v5, 0x2

    if-ne v1, v5, :cond_61

    iget-object v4, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    invoke-static {v4}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    iget-object v4, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    invoke-static {v4, v0, v3, v2}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    goto :goto_76

    :cond_61
    const/4 v5, 0x3

    if-ne v1, v5, :cond_76

    iget-object v5, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    invoke-static {v5}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    iget-object v5, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    invoke-static {v5}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    iput-boolean v4, p0, Landroid/os/FileBridge;->mClosed:Z

    iget-object v4, p0, Landroid/os/FileBridge;->mServer:Ljava/io/FileDescriptor;

    invoke-static {v4, v0, v3, v2}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V
    :try_end_75
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_75} :catch_7e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_75} :catch_7e
    .catchall {:try_start_4 .. :try_end_75} :catchall_7c

    goto :goto_77

    :cond_76
    :goto_76
    goto :goto_4

    :cond_77
    :goto_77
    nop

    :goto_78
    invoke-virtual {p0}, Landroid/os/FileBridge;->forceClose()V

    goto :goto_88

    :catchall_7c
    move-exception v1

    goto :goto_89

    :catch_7e
    move-exception v1

    :try_start_7f
    const-string v2, "FileBridge"

    const-string v3, "Failed during bridge"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_7c

    nop

    goto :goto_78

    :goto_88
    return-void

    :goto_89
    invoke-virtual {p0}, Landroid/os/FileBridge;->forceClose()V

    throw v1
.end method

.method public setTargetFile(Ljava/io/FileDescriptor;)V
    .registers 2

    iput-object p1, p0, Landroid/os/FileBridge;->mTarget:Ljava/io/FileDescriptor;

    return-void
.end method
