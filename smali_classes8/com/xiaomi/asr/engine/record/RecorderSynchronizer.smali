.class public Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ourInstance:Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;


# instance fields
.field private latch:Ljava/util/concurrent/CountDownLatch;

.field private final mSyncObj:Ljava/lang/Object;

.field private volatile recording:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;

    invoke-direct {v0}, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;-><init>()V

    sput-object v0, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->ourInstance:Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->latch:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->mSyncObj:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->recording:Z

    return-void
.end method

.method public static getInstance()Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;
    .locals 1

    sget-object v0, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->ourInstance:Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;

    return-object v0
.end method


# virtual methods
.method public countDown()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCountDownLatch()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->latch:Ljava/util/concurrent/CountDownLatch;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isRecording()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->recording:Z

    return p0
.end method

.method public start()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->recording:Z

    iget-object v1, p0, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->latch:Ljava/util/concurrent/CountDownLatch;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/asr/engine/record/RecorderSynchronizer;->recording:Z

    return-void
.end method
