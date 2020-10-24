.class public Lcom/xiaomi/idm/task/CallFuture;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Future;


# static fields
.field public static final DEFAULT_TIME_OUT:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "CallFuture"


# instance fields
.field private mExitCode:I

.field private mExitMsg:Ljava/lang/String;

.field private volatile mIsDone:Z

.field private mResult:Ljava/lang/Object;

.field private mSyncer:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/idm/task/CallFuture;->mSyncer:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/idm/task/CallFuture;->mResult:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/idm/task/CallFuture;->mIsDone:Z

    iput v0, p0, Lcom/xiaomi/idm/task/CallFuture;->mExitCode:I

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1

    const/16 p1, -0xb

    invoke-static {p1}, Lcom/xiaomi/idm/api/ResponseCode;->getResponseMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/idm/task/CallFuture;->setFailed(ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public get()Ljava/lang/Object;
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/idm/task/CallFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    :cond_0
    iget-object p3, p0, Lcom/xiaomi/idm/task/CallFuture;->mSyncer:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iget-boolean v2, p0, Lcom/xiaomi/idm/task/CallFuture;->mIsDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-nez v2, :cond_2

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/idm/task/CallFuture;->mSyncer:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/idm/task/CallFuture;->mSyncer:Ljava/lang/Object;

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iput-boolean v3, p0, Lcom/xiaomi/idm/task/CallFuture;->mIsDone:Z

    const/16 p1, -0xa

    iput p1, p0, Lcom/xiaomi/idm/task/CallFuture;->mExitCode:I

    invoke-static {p1}, Lcom/xiaomi/idm/api/ResponseCode;->getResponseMsg(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/task/CallFuture;->mExitMsg:Ljava/lang/String;

    :cond_2
    :goto_0
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean p1, p0, Lcom/xiaomi/idm/task/CallFuture;->mIsDone:Z

    if-nez p1, :cond_3

    iput-boolean v3, p0, Lcom/xiaomi/idm/task/CallFuture;->mIsDone:Z

    const/16 p1, -0x9

    iput p1, p0, Lcom/xiaomi/idm/task/CallFuture;->mExitCode:I

    invoke-static {p1}, Lcom/xiaomi/idm/api/ResponseCode;->getResponseMsg(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/idm/task/CallFuture;->mExitMsg:Ljava/lang/String;

    :cond_3
    iget p1, p0, Lcom/xiaomi/idm/task/CallFuture;->mExitCode:I

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/xiaomi/idm/task/CallFuture;->mResult:Ljava/lang/Object;

    return-object p0

    :cond_4
    new-instance p1, Lcom/xiaomi/idm/task/CallFuture$CallException;

    iget p2, p0, Lcom/xiaomi/idm/task/CallFuture;->mExitCode:I

    iget-object p0, p0, Lcom/xiaomi/idm/task/CallFuture;->mExitMsg:Ljava/lang/String;

    invoke-direct {p1, p2, p0}, Lcom/xiaomi/idm/task/CallFuture$CallException;-><init>(ILjava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public isCancelled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isDone()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/idm/task/CallFuture;->mIsDone:Z

    return p0
.end method

.method public setDone(Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CallFuture"

    invoke-static {v2, v0, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/idm/task/CallFuture;->mSyncer:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/xiaomi/idm/task/CallFuture;->mResult:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/idm/task/CallFuture;->mIsDone:Z

    iget-object p0, p0, Lcom/xiaomi/idm/task/CallFuture;->mSyncer:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setFailed(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "future task failed, code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CallFuture"

    invoke-static {v2, v0, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/idm/task/CallFuture;->mSyncer:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/xiaomi/idm/task/CallFuture;->mExitCode:I

    iput-object p2, p0, Lcom/xiaomi/idm/task/CallFuture;->mExitMsg:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/idm/task/CallFuture;->mIsDone:Z

    iget-object p0, p0, Lcom/xiaomi/idm/task/CallFuture;->mSyncer:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
