.class public Lcom/android/camera/videoplayer/PlayerQueueLock;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final SHOW_LOGS:Z = false

.field private static final TAG:Ljava/lang/String; = "PlayerQueueLock"


# instance fields
.field private final mProcessQueueCondition:Ljava/util/concurrent/locks/Condition;

.field private final mQueueLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/camera/videoplayer/PlayerQueueLock;->mQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/videoplayer/PlayerQueueLock;->mProcessQueueCondition:Ljava/util/concurrent/locks/Condition;

    return-void
.end method


# virtual methods
.method public isLocked(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/videoplayer/PlayerQueueLock;->mQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result p0

    return p0
.end method

.method public lock(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/videoplayer/PlayerQueueLock;->mQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method public notify(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/videoplayer/PlayerQueueLock;->mProcessQueueCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Condition;->signal()V

    return-void
.end method

.method public unlock(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/videoplayer/PlayerQueueLock;->mQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public wait(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/videoplayer/PlayerQueueLock;->mProcessQueueCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Condition;->await()V

    return-void
.end method
