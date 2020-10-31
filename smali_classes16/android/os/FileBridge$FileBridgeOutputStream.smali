.class public Landroid/os/FileBridge$FileBridgeOutputStream;
.super Ljava/io/OutputStream;
.source "FileBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/FileBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileBridgeOutputStream"
.end annotation


# instance fields
.field private final mClient:Ljava/io/FileDescriptor;

.field private final mClientPfd:Landroid/os/ParcelFileDescriptor;

.field private final mTemp:[B


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    iput-object p1, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClientPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClient:Ljava/io/FileDescriptor;

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClientPfd:Landroid/os/ParcelFileDescriptor;

    iput-object p1, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClient:Ljava/io/FileDescriptor;

    return-void
.end method

.method private writeCommandAndBlock(ILjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v1}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClient:Ljava/io/FileDescriptor;

    iget-object v1, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClient:Ljava/io/FileDescriptor;

    iget-object v1, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    invoke-static {v0, v1, v2, v3}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    if-ne v0, v3, :cond_26

    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v2, v1}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    if-ne v0, p1, :cond_26

    return-void

    :cond_26
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to execute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " across bridge"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    :try_start_1
    const-string v1, "close()"

    invoke-direct {p0, v0, v1}, Landroid/os/FileBridge$FileBridgeOutputStream;->writeCommandAndBlock(ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClient:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClientPfd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void

    :catchall_12
    move-exception v0

    iget-object v1, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClient:Ljava/io/FileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    iget-object v1, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClientPfd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method public fsync()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const-string v1, "fsync()"

    invoke-direct {p0, v0, v1}, Landroid/os/FileBridge$FileBridgeOutputStream;->writeCommandAndBlock(ILjava/lang/String;)V

    return-void
.end method

.method public write(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Llibcore/io/Streams;->writeSingleByte(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public write([BII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    invoke-static {v0, p2, p3}, Llibcore/util/ArrayUtils;->throwsIfOutOfBounds(III)V

    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v3, 0x4

    invoke-static {v0, v3, p3, v1}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClient:Ljava/io/FileDescriptor;

    iget-object v1, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mTemp:[B

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    iget-object v0, p0, Landroid/os/FileBridge$FileBridgeOutputStream;->mClient:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2, p3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    return-void
.end method
