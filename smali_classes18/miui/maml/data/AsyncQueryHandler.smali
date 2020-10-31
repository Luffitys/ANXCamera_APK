.class public abstract Lmiui/maml/data/AsyncQueryHandler;
.super Landroid/os/Handler;
.source "AsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/AsyncQueryHandler$WorkerHandler;,
        Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;
    }
.end annotation


# static fields
.field private static final EVENT_ARG_DELETE:I = 0x4

.field private static final EVENT_ARG_INSERT:I = 0x2

.field private static final EVENT_ARG_QUERY:I = 0x1

.field private static final EVENT_ARG_UPDATE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AsyncQuery"

.field private static final localLOGV:Z

.field private static sLooper:Landroid/os/Looper;


# instance fields
.field final mResolver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkerThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lmiui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .registers 5

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/maml/data/AsyncQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;

    const-class v0, Landroid/content/AsyncQueryHandler;

    monitor-enter v0

    :try_start_d
    sget-object v1, Lmiui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    if-nez v1, :cond_21

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "AsyncQueryWorker"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sput-object v2, Lmiui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_2b

    sget-object v0, Lmiui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    invoke-virtual {p0, v0}, Lmiui/maml/data/AsyncQueryHandler;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    return-void

    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/ContentResolver;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/maml/data/AsyncQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;

    const-class v0, Landroid/content/AsyncQueryHandler;

    monitor-enter v0

    :try_start_d
    sget-object v1, Lmiui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    if-nez v1, :cond_21

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "AsyncQueryWorker"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sput-object v2, Lmiui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_2b

    sget-object v0, Lmiui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    invoke-virtual {p0, v0}, Lmiui/maml/data/AsyncQueryHandler;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    return-void

    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method


# virtual methods
.method public final cancelOperation(I)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .registers 3

    new-instance v0, Lmiui/maml/data/AsyncQueryHandler$WorkerHandler;

    invoke-direct {v0, p0, p1}, Lmiui/maml/data/AsyncQueryHandler$WorkerHandler;-><init>(Lmiui/maml/data/AsyncQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3b

    const/4 v3, 0x2

    if-eq v2, v3, :cond_31

    const/4 v3, 0x3

    if-eq v2, v3, :cond_23

    const/4 v3, 0x4

    if-eq v2, v3, :cond_15

    goto :goto_45

    :cond_15
    iget-object v3, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v4, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v1, v3, v4}, Lmiui/maml/data/AsyncQueryHandler;->onDeleteComplete(ILjava/lang/Object;I)V

    goto :goto_45

    :cond_23
    iget-object v3, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v4, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v1, v3, v4}, Lmiui/maml/data/AsyncQueryHandler;->onUpdateComplete(ILjava/lang/Object;I)V

    goto :goto_45

    :cond_31
    iget-object v3, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v4, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {p0, v1, v3, v4}, Lmiui/maml/data/AsyncQueryHandler;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    goto :goto_45

    :cond_3b
    iget-object v3, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v4, v0, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v4, Landroid/database/Cursor;

    invoke-virtual {p0, v1, v3, v4}, Lmiui/maml/data/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    nop

    :goto_45
    return-void
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .registers 4

    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .registers 4

    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 4

    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .registers 4

    return-void
.end method

.method public final startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lmiui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->arg1:I

    new-instance v1, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v1}, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;-><init>()V

    iput-object p0, v1, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iput-object p3, v1, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iput-object p2, v1, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iput-object p4, v1, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iput-object p5, v1, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lmiui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 8

    iget-object v0, p0, Lmiui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    new-instance v1, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v1}, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;-><init>()V

    iput-object p0, v1, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iput-object p3, v1, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iput-object p2, v1, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iput-object p4, v1, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lmiui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    iget-object v0, p0, Lmiui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    new-instance v1, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v1}, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;-><init>()V

    iput-object p0, v1, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iput-object p3, v1, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iput-object p4, v1, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    iput-object p5, v1, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iput-object p6, v1, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iput-object p7, v1, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    iput-object p2, v1, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lmiui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10

    iget-object v0, p0, Lmiui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->arg1:I

    new-instance v1, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v1}, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;-><init>()V

    iput-object p0, v1, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iput-object p3, v1, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iput-object p2, v1, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iput-object p4, v1, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    iput-object p5, v1, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iput-object p6, v1, Lmiui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lmiui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
