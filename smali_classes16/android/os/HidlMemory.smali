.class public Landroid/os/HidlMemory;
.super Ljava/lang/Object;
.source "HidlMemory.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private mHandle:Landroid/os/NativeHandle;

.field private final mName:Ljava/lang/String;

.field private mNativeContext:J

.field private final mSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLandroid/os/NativeHandle;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/HidlMemory;->mName:Ljava/lang/String;

    iput-wide p2, p0, Landroid/os/HidlMemory;->mSize:J

    iput-object p4, p0, Landroid/os/HidlMemory;->mHandle:Landroid/os/NativeHandle;

    return-void
.end method

.method private native nativeFinalize()V
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/HidlMemory;->mHandle:Landroid/os/NativeHandle;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/os/NativeHandle;->close()V

    :cond_7
    return-void
.end method

.method public dup()Landroid/os/HidlMemory;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/os/HidlMemory;

    iget-object v1, p0, Landroid/os/HidlMemory;->mName:Ljava/lang/String;

    iget-wide v2, p0, Landroid/os/HidlMemory;->mSize:J

    iget-object v4, p0, Landroid/os/HidlMemory;->mHandle:Landroid/os/NativeHandle;

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Landroid/os/NativeHandle;->dup()Landroid/os/NativeHandle;

    move-result-object v4

    goto :goto_10

    :cond_f
    const/4 v4, 0x0

    :goto_10
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/HidlMemory;-><init>(Ljava/lang/String;JLandroid/os/NativeHandle;)V

    return-object v0
.end method

.method protected finalize()V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/os/HidlMemory;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_a
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    invoke-direct {p0}, Landroid/os/HidlMemory;->nativeFinalize()V

    nop

    return-void

    :catchall_8
    move-exception v0

    goto :goto_11

    :catch_a
    move-exception v0

    :try_start_b
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_8

    :goto_11
    invoke-direct {p0}, Landroid/os/HidlMemory;->nativeFinalize()V

    throw v0
.end method

.method public getHandle()Landroid/os/NativeHandle;
    .registers 2

    iget-object v0, p0, Landroid/os/HidlMemory;->mHandle:Landroid/os/NativeHandle;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/os/HidlMemory;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    iget-wide v0, p0, Landroid/os/HidlMemory;->mSize:J

    return-wide v0
.end method

.method public releaseHandle()Landroid/os/NativeHandle;
    .registers 3

    iget-object v0, p0, Landroid/os/HidlMemory;->mHandle:Landroid/os/NativeHandle;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/HidlMemory;->mHandle:Landroid/os/NativeHandle;

    return-object v0
.end method
