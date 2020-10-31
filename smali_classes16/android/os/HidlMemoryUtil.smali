.class public final Landroid/os/HidlMemoryUtil;
.super Ljava/lang/Object;
.source "HidlMemoryUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HidlMemoryUtil"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToHidlMemory([B)Landroid/os/HidlMemory;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/HidlMemoryUtil;->byteArrayToHidlMemory([BLjava/lang/String;)Landroid/os/HidlMemory;

    move-result-object v0

    return-object v0
.end method

.method public static byteArrayToHidlMemory([BLjava/lang/String;)Landroid/os/HidlMemory;
    .registers 7

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p0

    if-nez v0, :cond_11

    new-instance v0, Landroid/os/HidlMemory;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const-string v4, "ashmem"

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/os/HidlMemory;-><init>(Ljava/lang/String;JLandroid/os/NativeHandle;)V

    return-object v0

    :cond_11
    if-eqz p1, :cond_15

    move-object v0, p1

    goto :goto_17

    :cond_15
    :try_start_15
    const-string v0, ""

    :goto_17
    array-length v1, p0

    invoke-static {v0, v1}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-static {v1}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    invoke-static {v0}, Landroid/os/HidlMemoryUtil;->sharedMemoryToHidlMemory(Landroid/os/SharedMemory;)Landroid/os/HidlMemory;

    move-result-object v2
    :try_end_2a
    .catch Landroid/system/ErrnoException; {:try_start_15 .. :try_end_2a} :catch_2b

    return-object v2

    :catch_2b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static byteListToHidlMemory(Ljava/util/List;)Landroid/os/HidlMemory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)",
            "Landroid/os/HidlMemory;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/HidlMemoryUtil;->byteListToHidlMemory(Ljava/util/List;Ljava/lang/String;)Landroid/os/HidlMemory;

    move-result-object v0

    return-object v0
.end method

.method public static byteListToHidlMemory(Ljava/util/List;Ljava/lang/String;)Landroid/os/HidlMemory;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/HidlMemory;"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Landroid/os/HidlMemory;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const-string v4, "ashmem"

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/os/HidlMemory;-><init>(Ljava/lang/String;JLandroid/os/NativeHandle;)V

    return-object v0

    :cond_14
    if-eqz p1, :cond_18

    move-object v0, p1

    goto :goto_1a

    :cond_18
    :try_start_18
    const-string v0, ""

    :goto_1a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    nop

    goto :goto_2a

    :cond_3f
    invoke-static {v1}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    invoke-static {v0}, Landroid/os/HidlMemoryUtil;->sharedMemoryToHidlMemory(Landroid/os/SharedMemory;)Landroid/os/HidlMemory;

    move-result-object v2
    :try_end_46
    .catch Landroid/system/ErrnoException; {:try_start_18 .. :try_end_46} :catch_47

    return-object v2

    :catch_47
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static fileDescriptorToHidlMemory(Ljava/io/FileDescriptor;I)Landroid/os/HidlMemory;
    .registers 7

    const/4 v0, 0x1

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    goto :goto_8

    :cond_6
    const/4 v1, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    move v1, v0

    :goto_9
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    const-string v1, "ashmem"

    if-nez p0, :cond_19

    new-instance v0, Landroid/os/HidlMemory;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/HidlMemory;-><init>(Ljava/lang/String;JLandroid/os/NativeHandle;)V

    return-object v0

    :cond_19
    new-instance v2, Landroid/os/NativeHandle;

    invoke-direct {v2, p0, v0}, Landroid/os/NativeHandle;-><init>(Ljava/io/FileDescriptor;Z)V

    move-object v0, v2

    new-instance v2, Landroid/os/HidlMemory;

    int-to-long v3, p1

    invoke-direct {v2, v1, v3, v4, v0}, Landroid/os/HidlMemory;-><init>(Ljava/lang/String;JLandroid/os/NativeHandle;)V

    return-object v2
.end method

.method private static getBuffer(Landroid/os/HidlMemory;)Ljava/nio/ByteBuffer;
    .registers 13

    :try_start_0
    invoke-virtual {p0}, Landroid/os/HidlMemory;->getSize()J

    move-result-wide v0

    long-to-int v0, v0

    if-nez v0, :cond_f

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    :cond_f
    invoke-virtual {p0}, Landroid/os/HidlMemory;->getHandle()Landroid/os/NativeHandle;

    move-result-object v1

    const-wide/16 v2, 0x0

    int-to-long v4, v0

    sget v6, Landroid/system/OsConstants;->PROT_READ:I

    sget v7, Landroid/system/OsConstants;->MAP_SHARED:I

    invoke-virtual {v1}, Landroid/os/NativeHandle;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-static/range {v2 .. v10}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v2

    move-wide v9, v2

    new-instance v11, Ljava/nio/DirectByteBuffer;

    invoke-virtual {v1}, Landroid/os/NativeHandle;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    new-instance v7, Landroid/os/-$$Lambda$HidlMemoryUtil$ymiTJHj4VkgK-My_r0e1J5wmQVI;

    invoke-direct {v7, v9, v10, v0}, Landroid/os/-$$Lambda$HidlMemoryUtil$ymiTJHj4VkgK-My_r0e1J5wmQVI;-><init>(JI)V

    const/4 v8, 0x1

    move-object v2, v11

    move v3, v0

    move-wide v4, v9

    invoke-direct/range {v2 .. v8}, Ljava/nio/DirectByteBuffer;-><init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V
    :try_end_37
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_37} :catch_38

    return-object v11

    :catch_38
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static hidlMemoryToByteArray(Landroid/os/HidlMemory;)[B
    .registers 8

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/HidlMemory;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x7fffffff

    const-string v6, "Memory size"

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    invoke-virtual {p0}, Landroid/os/HidlMemory;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Landroid/os/HidlMemory;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ashmem"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_2a

    :cond_28
    move v0, v4

    goto :goto_2b

    :cond_2a
    :goto_2a
    move v0, v1

    :goto_2b
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/HidlMemory;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const-string v5, "Unsupported memory type: %s"

    invoke-static {v0, v5, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/os/HidlMemory;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_43

    new-array v0, v4, [B

    return-object v0

    :cond_43
    invoke-static {p0}, Landroid/os/HidlMemoryUtil;->getBuffer(Landroid/os/HidlMemory;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method public static hidlMemoryToByteList(Landroid/os/HidlMemory;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HidlMemory;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/HidlMemory;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x7fffffff

    const-string v6, "Memory size"

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    invoke-virtual {p0}, Landroid/os/HidlMemory;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Landroid/os/HidlMemory;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ashmem"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_2a

    :cond_28
    move v0, v1

    goto :goto_2b

    :cond_2a
    :goto_2a
    move v0, v4

    :goto_2b
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/HidlMemory;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v1, "Unsupported memory type: %s"

    invoke-static {v0, v1, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/os/HidlMemory;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_46

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_46
    invoke-static {p0}, Landroid/os/HidlMemoryUtil;->getBuffer(Landroid/os/HidlMemory;)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_53
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_53

    :cond_65
    return-object v1
.end method

.method static synthetic lambda$getBuffer$0(JI)V
    .registers 5

    int-to-long v0, p2

    :try_start_1
    invoke-static {p0, p1, v0, v1}, Landroid/system/Os;->munmap(JJ)V
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_4} :catch_5

    goto :goto_b

    :catch_5
    move-exception v0

    const-string v1, "HidlMemoryUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b
    return-void
.end method

.method public static sharedMemoryToHidlMemory(Landroid/os/SharedMemory;)Landroid/os/HidlMemory;
    .registers 6

    if-nez p0, :cond_d

    new-instance v0, Landroid/os/HidlMemory;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const-string v4, "ashmem"

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/os/HidlMemory;-><init>(Ljava/lang/String;JLandroid/os/NativeHandle;)V

    return-object v0

    :cond_d
    invoke-virtual {p0}, Landroid/os/SharedMemory;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/SharedMemory;->getSize()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/HidlMemoryUtil;->fileDescriptorToHidlMemory(Ljava/io/FileDescriptor;I)Landroid/os/HidlMemory;

    move-result-object v0

    return-object v0
.end method
