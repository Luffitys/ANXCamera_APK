.class public Lcom/android/internal/os/FuseAppLoop;
.super Ljava/lang/Object;
.source "FuseAppLoop.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/FuseAppLoop$Args;,
        Lcom/android/internal/os/FuseAppLoop$BytesMap;,
        Lcom/android/internal/os/FuseAppLoop$BytesMapEntry;,
        Lcom/android/internal/os/FuseAppLoop$CallbackEntry;,
        Lcom/android/internal/os/FuseAppLoop$UnmountedException;
    }
.end annotation


# static fields
.field private static final ARGS_POOL_SIZE:I = 0x32

.field private static final DEBUG:Z

.field private static final FUSE_FSYNC:I = 0x14

.field private static final FUSE_GETATTR:I = 0x3

.field private static final FUSE_LOOKUP:I = 0x1

.field private static final FUSE_MAX_WRITE:I = 0x20000

.field private static final FUSE_OK:I = 0x0

.field private static final FUSE_OPEN:I = 0xe

.field private static final FUSE_READ:I = 0xf

.field private static final FUSE_RELEASE:I = 0x12

.field private static final FUSE_WRITE:I = 0x10

.field private static final MIN_INODE:I = 0x2

.field public static final ROOT_INODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FuseAppLoop"

.field private static final sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mArgsPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/internal/os/FuseAppLoop$Args;",
            ">;"
        }
    .end annotation
.end field

.field private final mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

.field private final mCallbackMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/FuseAppLoop$CallbackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mInstance:J

.field private final mLock:Ljava/lang/Object;

.field private final mMountPointId:I

.field private mNextInode:I

.field private final mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "FuseAppLoop"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/FuseAppLoop;->DEBUG:Z

    new-instance v0, Lcom/android/internal/os/FuseAppLoop$1;

    invoke-direct {v0}, Lcom/android/internal/os/FuseAppLoop$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/FuseAppLoop;->sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(ILandroid/os/ParcelFileDescriptor;Ljava/util/concurrent/ThreadFactory;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/internal/os/FuseAppLoop$BytesMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/FuseAppLoop$BytesMap;-><init>(Lcom/android/internal/os/FuseAppLoop$1;)V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    iput p1, p0, Lcom/android/internal/os/FuseAppLoop;->mMountPointId:I

    if-nez p3, :cond_29

    sget-object p3, Lcom/android/internal/os/FuseAppLoop;->sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    :cond_29
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/FuseAppLoop;->native_new(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    new-instance v0, Lcom/android/internal/os/-$$Lambda$FuseAppLoop$e9Yru2f_btesWlxIgerkPnHibpg;

    invoke-direct {v0, p0}, Lcom/android/internal/os/-$$Lambda$FuseAppLoop$e9Yru2f_btesWlxIgerkPnHibpg;-><init>(Lcom/android/internal/os/FuseAppLoop;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static checkInode(J)I
    .registers 9

    const-wide/16 v2, 0x2

    const-wide/32 v4, 0x7fffffff

    const-string v6, "checkInode"

    move-wide v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    long-to-int v0, p0

    return v0
.end method

.method private getCallbackEntryOrThrowLocked(J)Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-static {p1, p2}, Lcom/android/internal/os/FuseAppLoop;->checkInode(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    if-eqz v0, :cond_f

    return-object v0

    :cond_f
    new-instance v1, Landroid/system/ErrnoException;

    sget v2, Landroid/system/OsConstants;->ENOENT:I

    const-string v3, "getCallbackEntryOrThrowLocked"

    invoke-direct {v1, v3, v2}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method private static getError(Ljava/lang/Exception;)I
    .registers 3

    instance-of v0, p0, Landroid/system/ErrnoException;

    if-eqz v0, :cond_f

    move-object v0, p0

    check-cast v0, Landroid/system/ErrnoException;

    iget v0, v0, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->ENOSYS:I

    if-eq v0, v1, :cond_f

    neg-int v1, v0

    return v1

    :cond_f
    sget v0, Landroid/system/OsConstants;->EBADF:I

    neg-int v0, v0

    return v0
.end method

.method private onCommand(IJJJI[B)V
    .registers 15

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/internal/os/FuseAppLoop$Args;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/os/FuseAppLoop$Args;-><init>(Lcom/android/internal/os/FuseAppLoop$1;)V

    goto :goto_1a

    :cond_12
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/FuseAppLoop$Args;

    :goto_1a
    iput-wide p2, v1, Lcom/android/internal/os/FuseAppLoop$Args;->unique:J

    iput-wide p4, v1, Lcom/android/internal/os/FuseAppLoop$Args;->inode:J

    iput-wide p6, v1, Lcom/android/internal/os/FuseAppLoop$Args;->offset:J

    iput p8, v1, Lcom/android/internal/os/FuseAppLoop$Args;->size:I

    iput-object p9, v1, Lcom/android/internal/os/FuseAppLoop$Args;->data:[B

    invoke-direct {p0, p4, p5}, Lcom/android/internal/os/FuseAppLoop;->getCallbackEntryOrThrowLocked(J)Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    iget-object v2, v1, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    iget-object v2, v2, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->handler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    iget-object v3, v3, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->handler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-static {v3, p1, v4, v4, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_3e

    goto :goto_53

    :cond_3e
    new-instance v2, Landroid/system/ErrnoException;

    const-string/jumbo v3, "onCommand"

    sget v4, Landroid/system/OsConstants;->EBADF:I

    invoke-direct {v2, v3, v4}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_49} :catch_4b
    .catchall {:try_start_3 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception v1

    goto :goto_55

    :catch_4b
    move-exception v1

    :try_start_4c
    invoke-static {v1}, Lcom/android/internal/os/FuseAppLoop;->getError(Ljava/lang/Exception;)I

    move-result v2

    invoke-direct {p0, p2, p3, v2}, Lcom/android/internal/os/FuseAppLoop;->replySimpleLocked(JI)V

    :goto_53
    monitor-exit v0

    return-void

    :goto_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_4c .. :try_end_56} :catchall_49

    throw v1
.end method

.method private onOpen(JJ)[B
    .registers 15

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p3, p4}, Lcom/android/internal/os/FuseAppLoop;->getCallbackEntryOrThrowLocked(J)Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    move-result-object v1

    iget-boolean v2, v1, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->opened:Z

    if-nez v2, :cond_27

    iget-wide v2, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_26

    iget-wide v4, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    move-object v3, p0

    move-wide v6, p1

    move-wide v8, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/os/FuseAppLoop;->native_replyOpen(JJJ)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->opened:Z

    iget-object v2, p0, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    invoke-virtual {v2, p3, p4}, Lcom/android/internal/os/FuseAppLoop$BytesMap;->startUsing(J)[B

    move-result-object v2
    :try_end_24
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_24} :catch_34
    .catchall {:try_start_3 .. :try_end_24} :catchall_32

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_32

    return-object v2

    :cond_26
    goto :goto_3c

    :cond_27
    :try_start_27
    new-instance v2, Landroid/system/ErrnoException;

    const-string/jumbo v3, "onOpen"

    sget v4, Landroid/system/OsConstants;->EMFILE:I

    invoke-direct {v2, v3, v4}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_32
    .catch Landroid/system/ErrnoException; {:try_start_27 .. :try_end_32} :catch_34
    .catchall {:try_start_27 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v1

    goto :goto_3f

    :catch_34
    move-exception v1

    :try_start_35
    invoke-static {v1}, Lcom/android/internal/os/FuseAppLoop;->getError(Ljava/lang/Exception;)I

    move-result v2

    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/os/FuseAppLoop;->replySimpleLocked(JI)V

    :goto_3c
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :goto_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_35 .. :try_end_40} :catchall_32

    throw v1
.end method

.method private recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method private replySimpleLocked(JI)V
    .registers 10

    iget-wide v1, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_e

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/FuseAppLoop;->native_replySimple(JJI)V

    :cond_e
    return-void
.end method


# virtual methods
.method public getMountPointId()I
    .registers 2

    iget v0, p0, Lcom/android/internal/os/FuseAppLoop;->mMountPointId:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 30

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/android/internal/os/FuseAppLoop$Args;

    iget-object v13, v12, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    iget-wide v14, v12, Lcom/android/internal/os/FuseAppLoop$Args;->inode:J

    iget-wide v8, v12, Lcom/android/internal/os/FuseAppLoop$Args;->unique:J

    iget v7, v12, Lcom/android/internal/os/FuseAppLoop$Args;->size:I

    iget-wide v4, v12, Lcom/android/internal/os/FuseAppLoop$Args;->offset:J

    iget-object v2, v12, Lcom/android/internal/os/FuseAppLoop$Args;->data:[B

    const/4 v3, 0x1

    :try_start_16
    iget v0, v11, Landroid/os/Message;->what:I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_18} :catch_21d

    const-wide/16 v16, 0x0

    if-eq v0, v3, :cond_1e2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_18f

    const/16 v1, 0x12

    if-eq v0, v1, :cond_144

    const/16 v1, 0x14

    if-eq v0, v1, :cond_110

    const/16 v1, 0xf

    if-eq v0, v1, :cond_b7

    const/16 v1, 0x10

    if-ne v0, v1, :cond_8d

    :try_start_2f
    iget-object v0, v13, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0, v4, v5, v7, v2}, Landroid/os/ProxyFileDescriptorCallback;->onWrite(JI[B)I

    move-result v6

    iget-object v1, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_38} :catch_7d

    move-wide/from16 v18, v4

    :try_start_3a
    iget-wide v3, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    cmp-long v0, v3, v16

    if-eqz v0, :cond_56

    iget-wide v3, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_6d

    move-object/from16 v16, v1

    move-object/from16 v1, p0

    move-object v5, v2

    const/16 v20, 0x1

    move-wide v2, v3

    move-wide/from16 v21, v14

    move-wide/from16 v14, v18

    move/from16 v18, v7

    move-object v7, v5

    move-wide v4, v8

    :try_start_52
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/FuseAppLoop;->native_replyWrite(JJI)V

    goto :goto_61

    :cond_56
    move-object/from16 v16, v1

    move-wide/from16 v21, v14

    move-wide/from16 v14, v18

    const/16 v20, 0x1

    move/from16 v18, v7

    move-object v7, v2

    :goto_61
    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    monitor-exit v16

    move-object/from16 v19, v7

    move-wide/from16 v24, v8

    move-wide/from16 v22, v21

    goto/16 :goto_211

    :catchall_6d
    move-exception v0

    move-object/from16 v16, v1

    move-wide/from16 v21, v14

    move-wide/from16 v14, v18

    const/16 v20, 0x1

    move/from16 v18, v7

    move-object v7, v2

    :goto_79
    monitor-exit v16
    :try_end_7a
    .catchall {:try_start_52 .. :try_end_7a} :catchall_7b

    :try_start_7a
    throw v0

    :catchall_7b
    move-exception v0

    goto :goto_79

    :catch_7d
    move-exception v0

    move/from16 v20, v3

    move/from16 v18, v7

    move-wide/from16 v21, v14

    move-wide v14, v4

    move-object/from16 v19, v2

    move-wide/from16 v24, v8

    move-wide/from16 v22, v21

    goto/16 :goto_229

    :cond_8d
    move/from16 v20, v3

    move/from16 v18, v7

    move-wide/from16 v21, v14

    move-object v7, v2

    move-wide v14, v4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown FUSE command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_ae} :catch_ae

    :catch_ae
    move-exception v0

    move-object/from16 v19, v7

    move-wide/from16 v24, v8

    move-wide/from16 v22, v21

    goto/16 :goto_229

    :cond_b7
    move/from16 v20, v3

    move/from16 v18, v7

    move-wide/from16 v21, v14

    move-object v7, v2

    move-wide v14, v4

    :try_start_bf
    iget-object v0, v13, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c1} :catch_107

    move/from16 v4, v18

    :try_start_c3
    invoke-virtual {v0, v14, v15, v4, v7}, Landroid/os/ProxyFileDescriptorCallback;->onRead(JI[B)I

    move-result v6

    iget-object v5, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_ca} :catch_fc

    :try_start_ca
    iget-wide v0, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    cmp-long v0, v0, v16

    if-eqz v0, :cond_e1

    iget-wide v2, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_d2
    .catchall {:try_start_ca .. :try_end_d2} :catchall_f1

    move-object/from16 v1, p0

    move/from16 v16, v4

    move-object/from16 v17, v5

    move-wide v4, v8

    move-object/from16 v19, v7

    move/from16 v18, v16

    :try_start_dd
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/FuseAppLoop;->native_replyRead(JJI[B)V

    goto :goto_e7

    :cond_e1
    move/from16 v18, v4

    move-object/from16 v17, v5

    move-object/from16 v19, v7

    :goto_e7
    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    monitor-exit v17

    move-wide/from16 v24, v8

    move-wide/from16 v22, v21

    goto/16 :goto_211

    :catchall_f1
    move-exception v0

    move/from16 v18, v4

    move-object/from16 v17, v5

    move-object/from16 v19, v7

    :goto_f8
    monitor-exit v17
    :try_end_f9
    .catchall {:try_start_dd .. :try_end_f9} :catchall_fa

    :try_start_f9
    throw v0

    :catchall_fa
    move-exception v0

    goto :goto_f8

    :catch_fc
    move-exception v0

    move/from16 v18, v4

    move-object/from16 v19, v7

    move-wide/from16 v24, v8

    move-wide/from16 v22, v21

    goto/16 :goto_229

    :catch_107
    move-exception v0

    move-object/from16 v19, v7

    move-wide/from16 v24, v8

    move-wide/from16 v22, v21

    goto/16 :goto_229

    :cond_110
    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v18, v7

    move-wide/from16 v21, v14

    move-wide v14, v4

    iget-object v0, v13, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0}, Landroid/os/ProxyFileDescriptorCallback;->onFsync()V

    iget-object v7, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_121} :catch_13d

    :try_start_121
    iget-wide v0, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    cmp-long v0, v0, v16

    if-eqz v0, :cond_130

    iget-wide v2, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-wide v4, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/FuseAppLoop;->native_replySimple(JJI)V

    :cond_130
    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    monitor-exit v7

    move-wide/from16 v24, v8

    move-wide/from16 v22, v21

    goto/16 :goto_211

    :catchall_13a
    move-exception v0

    monitor-exit v7
    :try_end_13c
    .catchall {:try_start_121 .. :try_end_13c} :catchall_13a

    :try_start_13c
    throw v0
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_13d} :catch_13d

    :catch_13d
    move-exception v0

    move-wide/from16 v24, v8

    move-wide/from16 v22, v21

    goto/16 :goto_229

    :cond_144
    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v18, v7

    move-wide/from16 v21, v14

    move-wide v14, v4

    :try_start_14d
    iget-object v0, v13, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0}, Landroid/os/ProxyFileDescriptorCallback;->onRelease()V

    iget-object v7, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_155} :catch_188

    :try_start_155
    iget-wide v0, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_157
    .catchall {:try_start_155 .. :try_end_157} :catchall_17a

    cmp-long v0, v0, v16

    if-eqz v0, :cond_169

    :try_start_15b
    iget-wide v2, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-wide v4, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/FuseAppLoop;->native_replySimple(JJI)V
    :try_end_164
    .catchall {:try_start_15b .. :try_end_164} :catchall_165

    goto :goto_169

    :catchall_165
    move-exception v0

    move-wide/from16 v4, v21

    goto :goto_17d

    :cond_169
    :goto_169
    :try_start_169
    iget-object v0, v10, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;
    :try_end_16b
    .catchall {:try_start_169 .. :try_end_16b} :catchall_17a

    move-wide/from16 v4, v21

    :try_start_16d
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/os/FuseAppLoop$BytesMap;->stopUsing(J)V

    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    monitor-exit v7

    move-wide/from16 v22, v4

    move-wide/from16 v24, v8

    goto/16 :goto_211

    :catchall_17a
    move-exception v0

    move-wide/from16 v4, v21

    :goto_17d
    monitor-exit v7
    :try_end_17e
    .catchall {:try_start_16d .. :try_end_17e} :catchall_186

    :try_start_17e
    throw v0
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_17e .. :try_end_17f} :catch_17f

    :catch_17f
    move-exception v0

    move-wide/from16 v22, v4

    move-wide/from16 v24, v8

    goto/16 :goto_229

    :catchall_186
    move-exception v0

    goto :goto_17d

    :catch_188
    move-exception v0

    move-wide/from16 v24, v8

    move-wide/from16 v22, v21

    goto/16 :goto_229

    :cond_18f
    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v18, v7

    move-wide/from16 v26, v4

    move-wide v4, v14

    move-wide/from16 v14, v26

    :try_start_19a
    iget-object v0, v13, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0}, Landroid/os/ProxyFileDescriptorCallback;->onGetSize()J

    move-result-wide v0
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_19a .. :try_end_1a0} :catch_1dc

    move-wide v6, v8

    move-wide v8, v0

    :try_start_1a2
    iget-object v2, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1a5
    .catch Ljava/lang/Exception; {:try_start_1a2 .. :try_end_1a5} :catch_1d6

    :try_start_1a5
    iget-wide v0, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    cmp-long v0, v0, v16

    if-eqz v0, :cond_1c0

    iget-wide v0, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_1ad
    .catchall {:try_start_1a5 .. :try_end_1ad} :catchall_1cb

    move-wide/from16 v16, v0

    move-object/from16 v1, p0

    move-object/from16 v21, v2

    move-wide/from16 v2, v16

    move-wide/from16 v22, v4

    move-wide v4, v6

    move-wide/from16 v24, v6

    move-wide/from16 v6, v22

    :try_start_1bc
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/os/FuseAppLoop;->native_replyGetAttr(JJJJ)V

    goto :goto_1c6

    :cond_1c0
    move-object/from16 v21, v2

    move-wide/from16 v22, v4

    move-wide/from16 v24, v6

    :goto_1c6
    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    monitor-exit v21

    goto :goto_211

    :catchall_1cb
    move-exception v0

    move-object/from16 v21, v2

    move-wide/from16 v22, v4

    move-wide/from16 v24, v6

    :goto_1d2
    monitor-exit v21
    :try_end_1d3
    .catchall {:try_start_1bc .. :try_end_1d3} :catchall_1d4

    :try_start_1d3
    throw v0

    :catchall_1d4
    move-exception v0

    goto :goto_1d2

    :catch_1d6
    move-exception v0

    move-wide/from16 v22, v4

    move-wide/from16 v24, v6

    goto :goto_229

    :catch_1dc
    move-exception v0

    move-wide/from16 v22, v4

    move-wide/from16 v24, v8

    goto :goto_229

    :cond_1e2
    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v18, v7

    move-wide/from16 v24, v8

    move-wide/from16 v22, v14

    move-wide v14, v4

    iget-object v0, v13, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0}, Landroid/os/ProxyFileDescriptorCallback;->onGetSize()J

    move-result-wide v8

    iget-object v6, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1f6
    .catch Ljava/lang/Exception; {:try_start_1d3 .. :try_end_1f6} :catch_21b

    :try_start_1f6
    iget-wide v0, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    cmp-long v0, v0, v16

    if-eqz v0, :cond_20a

    iget-wide v2, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_1fe
    .catchall {:try_start_1f6 .. :try_end_1fe} :catchall_214

    move-object/from16 v1, p0

    move-wide/from16 v4, v24

    move-object/from16 v16, v6

    move-wide/from16 v6, v22

    :try_start_206
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/os/FuseAppLoop;->native_replyLookup(JJJJ)V

    goto :goto_20c

    :cond_20a
    move-object/from16 v16, v6

    :goto_20c
    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    monitor-exit v16

    nop

    :goto_211
    move-wide/from16 v3, v24

    goto :goto_241

    :catchall_214
    move-exception v0

    move-object/from16 v16, v6

    :goto_217
    monitor-exit v16
    :try_end_218
    .catchall {:try_start_206 .. :try_end_218} :catchall_219

    :try_start_218
    throw v0
    :try_end_219
    .catch Ljava/lang/Exception; {:try_start_218 .. :try_end_219} :catch_21b

    :catchall_219
    move-exception v0

    goto :goto_217

    :catch_21b
    move-exception v0

    goto :goto_229

    :catch_21d
    move-exception v0

    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v18, v7

    move-wide/from16 v24, v8

    move-wide/from16 v22, v14

    move-wide v14, v4

    :goto_229
    move-object v1, v0

    iget-object v2, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_22d
    const-string v0, "FuseAppLoop"

    const-string v3, ""

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v1}, Lcom/android/internal/os/FuseAppLoop;->getError(Ljava/lang/Exception;)I

    move-result v0
    :try_end_238
    .catchall {:try_start_22d .. :try_end_238} :catchall_242

    move-wide/from16 v3, v24

    :try_start_23a
    invoke-direct {v10, v3, v4, v0}, Lcom/android/internal/os/FuseAppLoop;->replySimpleLocked(JI)V

    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    monitor-exit v2

    :goto_241
    return v20

    :catchall_242
    move-exception v0

    move-wide/from16 v3, v24

    :goto_245
    monitor-exit v2
    :try_end_246
    .catchall {:try_start_23a .. :try_end_246} :catchall_247

    throw v0

    :catchall_247
    move-exception v0

    goto :goto_245
.end method

.method public synthetic lambda$new$0$FuseAppLoop()V
    .registers 4

    iget-wide v0, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/FuseAppLoop;->native_start(J)V

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iget-wide v1, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/FuseAppLoop;->native_delete(J)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    invoke-virtual {v1}, Lcom/android/internal/os/FuseAppLoop$BytesMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method native native_delete(J)V
.end method

.method native native_new(I)J
.end method

.method native native_replyGetAttr(JJJJ)V
.end method

.method native native_replyLookup(JJJJ)V
.end method

.method native native_replyOpen(JJJ)V
.end method

.method native native_replyRead(JJI[B)V
.end method

.method native native_replySimple(JJI)V
.end method

.method native native_replyWrite(JJI)V
.end method

.method native native_start(J)V
.end method

.method public registerCallback(Landroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/FuseUnavailableMountException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const v2, 0x7ffffffd

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_18

    move v1, v4

    goto :goto_19

    :cond_18
    move v1, v3

    :goto_19
    const-string v2, "Too many opened files."

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-eqz v1, :cond_37

    move v3, v4

    :cond_37
    const-string v1, "Handler must be different from the current thread"

    invoke-static {v3, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-wide v1, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-eqz v1, :cond_6e

    :cond_44
    iget v1, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    iget v2, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    if-gez v2, :cond_50

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    :cond_50
    iget-object v2, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_44

    nop

    iget-object v2, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    new-instance v4, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {v3, p1, v4}, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;-><init>(Landroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return v1

    :cond_6e
    new-instance v1, Lcom/android/internal/os/FuseUnavailableMountException;

    iget v2, p0, Lcom/android/internal/os/FuseAppLoop;->mMountPointId:I

    invoke-direct {v1, v2}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    throw v1

    :catchall_76
    move-exception v1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_3 .. :try_end_78} :catchall_76

    throw v1
.end method

.method public unregisterCallback(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
