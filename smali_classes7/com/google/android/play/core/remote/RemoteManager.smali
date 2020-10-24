.class public final Lcom/google/android/play/core/remote/RemoteManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final sHandlerMap:Ljava/util/Map;


# instance fields
.field mBindingService:Z

.field final mContext:Landroid/content/Context;

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field mIInterface:Landroid/os/IInterface;

.field private final mKey:Ljava/lang/String;

.field private final mOnBinderDiedListenerWkRef:Ljava/lang/ref/WeakReference;

.field final mPendingTasks:Ljava/util/List;

.field final mPlayCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

.field final mRemote:Lcom/google/android/play/core/remote/IRemote;

.field mServiceConnection:Landroid/content/ServiceConnection;

.field private final mSplitInstallServiceIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/play/core/remote/RemoteManager;->sHandlerMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/splitcompat/util/PlayCore;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/play/core/remote/IRemote;Lcom/google/android/play/core/remote/OnBinderDiedListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mPendingTasks:Ljava/util/List;

    new-instance v0, Lcom/google/android/play/core/remote/DeathRecipientImpl;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/remote/DeathRecipientImpl;-><init>(Lcom/google/android/play/core/remote/RemoteManager;)V

    iput-object v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    iput-object p1, p0, Lcom/google/android/play/core/remote/RemoteManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/play/core/remote/RemoteManager;->mPlayCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    iput-object p3, p0, Lcom/google/android/play/core/remote/RemoteManager;->mKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/play/core/remote/RemoteManager;->mSplitInstallServiceIntent:Landroid/content/Intent;

    iput-object p5, p0, Lcom/google/android/play/core/remote/RemoteManager;->mRemote:Lcom/google/android/play/core/remote/IRemote;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/play/core/remote/RemoteManager;->mOnBinderDiedListenerWkRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 5

    sget-object v0, Lcom/google/android/play/core/remote/RemoteManager;->sHandlerMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/play/core/remote/RemoteManager;->sHandlerMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/play/core/remote/RemoteManager;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/google/android/play/core/remote/RemoteManager;->mKey:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    sget-object v2, Lcom/google/android/play/core/remote/RemoteManager;->sHandlerMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/play/core/remote/RemoteManager;->mKey:Ljava/lang/String;

    new-instance v4, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v1, Lcom/google/android/play/core/remote/RemoteManager;->sHandlerMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mKey:Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public bindService(Lcom/google/android/play/core/remote/RemoteTask;)V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/remote/BindServiceTask;

    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/remote/BindServiceTask;-><init>(Lcom/google/android/play/core/remote/RemoteManager;Lcom/google/android/play/core/remote/RemoteTask;)V

    invoke-virtual {p0, v0}, Lcom/google/android/play/core/remote/RemoteManager;->post(Lcom/google/android/play/core/remote/RemoteTask;)V

    return-void
.end method

.method bindServiceInternal(Lcom/google/android/play/core/remote/RemoteTask;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mIInterface:Landroid/os/IInterface;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mBindingService:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mPlayCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Initiate binding to the service."

    invoke-virtual {v0, v3, v2}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mPendingTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/google/android/play/core/remote/ServiceConnectionImpl;

    invoke-direct {p1, p0}, Lcom/google/android/play/core/remote/ServiceConnectionImpl;-><init>(Lcom/google/android/play/core/remote/RemoteManager;)V

    iput-object p1, p0, Lcom/google/android/play/core/remote/RemoteManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mBindingService:Z

    iget-object v2, p0, Lcom/google/android/play/core/remote/RemoteManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/play/core/remote/RemoteManager;->mSplitInstallServiceIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3, p1, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/play/core/remote/RemoteManager;->mPlayCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Failed to bind to the service."

    invoke-virtual {p1, v2, v0}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    iput-boolean v1, p0, Lcom/google/android/play/core/remote/RemoteManager;->mBindingService:Z

    iget-object p1, p0, Lcom/google/android/play/core/remote/RemoteManager;->mPendingTasks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/remote/RemoteTask;

    invoke-virtual {v0}, Lcom/google/android/play/core/remote/RemoteTask;->getTask()Lcom/google/android/play/core/tasks/TaskWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/play/core/remote/RemoteServiceException;

    invoke-direct {v1}, Lcom/google/android/play/core/remote/RemoteServiceException;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/TaskWrapper;->setException(Ljava/lang/Exception;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mPendingTasks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mBindingService:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mPlayCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Waiting to bind to the service."

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mPendingTasks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/play/core/remote/RemoteTask;->run()V

    :cond_4
    :goto_1
    return-void
.end method

.method public getIInterface()Landroid/os/IInterface;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mIInterface:Landroid/os/IInterface;

    return-object p0
.end method

.method linkToDeath()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mPlayCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "linkToDeath"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mIInterface:Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/play/core/remote/RemoteManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    iget-object p0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mPlayCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "linkToDeath failed"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method post(Lcom/google/android/play/core/remote/RemoteTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/play/core/remote/RemoteManager;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method reportBinderDeath()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mPlayCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "reportBinderDeath"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mOnBinderDiedListenerWkRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/remote/OnBinderDiedListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mPlayCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "calling onBinderDied"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-interface {v0}, Lcom/google/android/play/core/remote/OnBinderDiedListener;->onBinderDied()V

    :cond_0
    return-void
.end method

.method public unbindService()V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/remote/UnbindServiceTask;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/remote/UnbindServiceTask;-><init>(Lcom/google/android/play/core/remote/RemoteManager;)V

    invoke-virtual {p0, v0}, Lcom/google/android/play/core/remote/RemoteManager;->post(Lcom/google/android/play/core/remote/RemoteTask;)V

    return-void
.end method

.method unlinkToDeath()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mPlayCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "unlinkToDeath"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mIInterface:Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
