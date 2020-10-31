.class public Landroid/hardware/SerialPort;
.super Ljava/lang/Object;
.source "SerialPort.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SerialPort"


# instance fields
.field private mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final mName:Ljava/lang/String;

.field private mNativeContext:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/SerialPort;->mName:Ljava/lang/String;

    return-void
.end method

.method private native native_close()V
.end method

.method private native native_open(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native native_read_array([BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native native_read_direct(Ljava/nio/ByteBuffer;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native native_send_break()V
.end method

.method private native native_write_array([BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native native_write_direct(Ljava/nio/ByteBuffer;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/SerialPort;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/SerialPort;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    :cond_a
    invoke-direct {p0}, Landroid/hardware/SerialPort;->native_close()V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/SerialPort;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public open(Landroid/os/ParcelFileDescriptor;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/hardware/SerialPort;->native_open(Ljava/io/FileDescriptor;I)V

    iput-object p1, p0, Landroid/hardware/SerialPort;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/SerialPort;->native_read_direct(Ljava/nio/ByteBuffer;I)I

    move-result v0

    return v0

    :cond_f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/SerialPort;->native_read_array([BI)I

    move-result v0

    return v0

    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer is not direct and has no array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendBreak()V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/SerialPort;->native_send_break()V

    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1, p2}, Landroid/hardware/SerialPort;->native_write_direct(Ljava/nio/ByteBuffer;I)V

    goto :goto_17

    :cond_a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/hardware/SerialPort;->native_write_array([BI)V

    :goto_17
    return-void

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer is not direct and has no array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
