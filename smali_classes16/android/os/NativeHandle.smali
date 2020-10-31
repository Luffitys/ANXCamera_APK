.class public final Landroid/os/NativeHandle;
.super Ljava/lang/Object;
.source "NativeHandle.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private mFds:[Ljava/io/FileDescriptor;

.field private mInts:[I

.field private mOwn:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/io/FileDescriptor;

    new-array v2, v0, [I

    invoke-direct {p0, v1, v2, v0}, Landroid/os/NativeHandle;-><init>([Ljava/io/FileDescriptor;[IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;Z)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-array v1, v1, [I

    invoke-direct {p0, v0, v1, p2}, Landroid/os/NativeHandle;-><init>([Ljava/io/FileDescriptor;[IZ)V

    return-void
.end method

.method private constructor <init>([I[IZ)V
    .registers 5

    invoke-static {p1}, Landroid/os/NativeHandle;->createFileDescriptorArray([I)[Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/os/NativeHandle;-><init>([Ljava/io/FileDescriptor;[IZ)V

    return-void
.end method

.method public constructor <init>([Ljava/io/FileDescriptor;[IZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/NativeHandle;->mOwn:Z

    invoke-virtual {p1}, [Ljava/io/FileDescriptor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/FileDescriptor;

    iput-object v0, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/os/NativeHandle;->mInts:[I

    iput-boolean p3, p0, Landroid/os/NativeHandle;->mOwn:Z

    return-void
.end method

.method private checkOpen()V
    .registers 3

    iget-object v0, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NativeHandle is invalidated after close."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createFileDescriptorArray([I)[Ljava/io/FileDescriptor;
    .registers 5

    array-length v0, p0

    new-array v0, v0, [Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_16

    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    aget v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/io/FileDescriptor;->setInt$(I)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_16
    return-object v0
.end method

.method private getFdsAsIntArray()[I
    .registers 5

    invoke-direct {p0}, Landroid/os/NativeHandle;->checkOpen()V

    iget-object v0, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_18

    iget-object v3, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_18
    return-object v1
.end method


# virtual methods
.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/NativeHandle;->checkOpen()V

    iget-boolean v0, p0, Landroid/os/NativeHandle;->mOwn:Z

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    :try_start_8
    iget-object v1, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    array-length v2, v1

    move v3, v0

    :goto_c
    if-ge v3, v2, :cond_16

    aget-object v4, v1, v3

    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_13
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_13} :catch_17

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_16
    goto :goto_1b

    :catch_17
    move-exception v1

    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    :goto_1b
    iput-boolean v0, p0, Landroid/os/NativeHandle;->mOwn:Z

    :cond_1d
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    iput-object v0, p0, Landroid/os/NativeHandle;->mInts:[I

    return-void
.end method

.method public dup()Landroid/os/NativeHandle;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    array-length v0, v0

    new-array v0, v0, [Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    :goto_6
    :try_start_6
    iget-object v2, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    array-length v2, v2

    if-ge v1, v2, :cond_23

    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    iget-object v3, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    aget-object v3, v3, v1

    sget v4, Landroid/system/OsConstants;->F_DUPFD_CLOEXEC:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/FileDescriptor;->setInt$(I)V

    aput-object v2, v0, v1
    :try_end_20
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_20} :catch_24

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_23
    goto :goto_28

    :catch_24
    move-exception v1

    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    :goto_28
    new-instance v1, Landroid/os/NativeHandle;

    iget-object v2, p0, Landroid/os/NativeHandle;->mInts:[I

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Landroid/os/NativeHandle;-><init>([Ljava/io/FileDescriptor;[IZ)V

    return-object v1
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .registers 3

    invoke-direct {p0}, Landroid/os/NativeHandle;->checkOpen()V

    invoke-virtual {p0}, Landroid/os/NativeHandle;->hasSingleFileDescriptor()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NativeHandle is not single file descriptor. Contents must be retreived through getFileDescriptors and getInts."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFileDescriptors()[Ljava/io/FileDescriptor;
    .registers 2

    invoke-direct {p0}, Landroid/os/NativeHandle;->checkOpen()V

    iget-object v0, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getInts()[I
    .registers 2

    invoke-direct {p0}, Landroid/os/NativeHandle;->checkOpen()V

    iget-object v0, p0, Landroid/os/NativeHandle;->mInts:[I

    return-object v0
.end method

.method public hasSingleFileDescriptor()Z
    .registers 3

    invoke-direct {p0}, Landroid/os/NativeHandle;->checkOpen()V

    iget-object v0, p0, Landroid/os/NativeHandle;->mFds:[Ljava/io/FileDescriptor;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Landroid/os/NativeHandle;->mInts:[I

    array-length v0, v0

    if-nez v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method
