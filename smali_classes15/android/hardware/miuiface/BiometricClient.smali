.class public Landroid/hardware/miuiface/BiometricClient;
.super Ljava/lang/Object;
.source "BiometricClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/miuiface/BiometricClient$ConnectHandler;,
        Landroid/hardware/miuiface/BiometricClient$ServiceCallback;,
        Landroid/hardware/miuiface/BiometricClient$ClientLister;,
        Landroid/hardware/miuiface/BiometricClient$MyHandler;,
        Landroid/hardware/miuiface/BiometricClient$MyServiceConnection;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BiometricClient"

.field private static final MSG_GET_VERSION:I = 0x138a

.field private static final MSG_RELEASE_SERVICE:I = 0x1389

.field private static final MSG_RELEASE_TIMEOUT:I = 0x5

.field private static final MSG_REPLAY_TIMEOUT:I = 0x2

.field private static final MSG_SEND_SERVEICE:I = 0x138b

.field private static final MSG_START_SERVICE:I = 0x1388

.field private static final SERVICE_READY_TIMEOUT:I = 0x2

.field private static final SERVICE_STATUS_CONNECTED:I = 0x2

.field private static final SERVICE_STATUS_CONNECTING:I = 0x1

.field private static final SERVICE_STATUS_CONNECTING_ERROR:I = 0xc

.field private static final SERVICE_STATUS_CONNECTING_TIME_OUT:I = 0xb

.field private static final SERVICE_STATUS_DISCONNECT:I = 0x5

.field private static final SERVICE_STATUS_DISCONNECTING:I = 0x3

.field private static final SERVICE_STATUS_NONE:I = 0x0

.field private static final SERVICE_STATUS_UNBIND:I = 0x4


# instance fields
.field private final accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

.field private mCallbackThread:Landroid/os/HandlerThread;

.field private mClientContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mClientLister:Landroid/hardware/miuiface/BiometricClient$ClientLister;

.field private mConnectHandler:Landroid/hardware/miuiface/BiometricClient$ConnectHandler;

.field private mHandler:Landroid/os/Handler;

.field private mMainThread:Landroid/os/HandlerThread;

.field private mReplyMessager:Landroid/os/Messenger;

.field private mSendMessager:Landroid/os/Messenger;

.field private mServiceCallback:Landroid/hardware/miuiface/BiometricClient$ServiceCallback;

.field private mServiceConnectStatus:I

.field private mServiceConnection:Landroid/hardware/miuiface/BiometricClient$MyServiceConnection;

.field private mTagInfo:Ljava/lang/String;

.field private replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

.field private serviceReadyLatch_:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    iput-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->serviceReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/miuiface/BiometricClient;->mServiceConnectStatus:I

    iput-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mServiceCallback:Landroid/hardware/miuiface/BiometricClient$ServiceCallback;

    iput-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mClientContext:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mSendMessager:Landroid/os/Messenger;

    iput-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mServiceConnection:Landroid/hardware/miuiface/BiometricClient$MyServiceConnection;

    iput-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mReplyMessager:Landroid/os/Messenger;

    iput-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mConnectHandler:Landroid/hardware/miuiface/BiometricClient$ConnectHandler;

    iput-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mCallbackThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mClientLister:Landroid/hardware/miuiface/BiometricClient$ClientLister;

    iput-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mMainThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BiometricMainThread_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mMainThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/hardware/miuiface/BiometricClient$MyHandler;

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->mMainThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/hardware/miuiface/BiometricClient$MyHandler;-><init>(Landroid/hardware/miuiface/BiometricClient;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mClientContext:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BiometricClientCBThread_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/hardware/miuiface/BiometricClient$ConnectHandler;

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/hardware/miuiface/BiometricClient$ConnectHandler;-><init>(Landroid/hardware/miuiface/BiometricClient;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mConnectHandler:Landroid/hardware/miuiface/BiometricClient$ConnectHandler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->mConnectHandler:Landroid/hardware/miuiface/BiometricClient$ConnectHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mReplyMessager:Landroid/os/Messenger;

    invoke-static {}, Landroid/miui/BiometricConnect;->syncDebugLog()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":BiometricClient MainThread id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->mMainThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " CallbackThread id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/miuiface/BiometricClient;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/miuiface/BiometricClient;)I
    .registers 2

    iget v0, p0, Landroid/hardware/miuiface/BiometricClient;->mServiceConnectStatus:I

    return v0
.end method

.method static synthetic access$1000(Landroid/hardware/miuiface/BiometricClient;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 2

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/hardware/miuiface/BiometricClient;)Landroid/hardware/miuiface/BiometricClient$ServiceCallback;
    .registers 2

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mServiceCallback:Landroid/hardware/miuiface/BiometricClient$ServiceCallback;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/hardware/miuiface/BiometricClient;)Landroid/hardware/miuiface/BiometricClient$ClientLister;
    .registers 2

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mClientLister:Landroid/hardware/miuiface/BiometricClient$ClientLister;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/miuiface/BiometricClient;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/miuiface/BiometricClient;->onServiceBind(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$300(Landroid/hardware/miuiface/BiometricClient;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/miuiface/BiometricClient;->onServiceUnbind(Z)V

    return-void
.end method

.method static synthetic access$400(Landroid/hardware/miuiface/BiometricClient;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/miuiface/BiometricClient;->handle_releaseService()V

    return-void
.end method

.method static synthetic access$500(Landroid/hardware/miuiface/BiometricClient;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/miuiface/BiometricClient;->handle_startService()V

    return-void
.end method

.method static synthetic access$600(Landroid/hardware/miuiface/BiometricClient;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/miuiface/BiometricClient;->handle_getServiceVersion(I)V

    return-void
.end method

.method static synthetic access$700(Landroid/hardware/miuiface/BiometricClient;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/miuiface/BiometricClient;->handle_sendService(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$900(Landroid/hardware/miuiface/BiometricClient;)Ljava/util/concurrent/CountDownLatch;
    .registers 2

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private handle_getServiceVersion(I)V
    .registers 9

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget v0, p0, Landroid/hardware/miuiface/BiometricClient;->mServiceConnectStatus:I

    const-string v1, ":"

    const-string v2, "BiometricClient"

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":handle_getServiceVersion error: service not Connected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_2d
    :try_start_2d
    sget-boolean v0, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v0, :cond_4a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":handle_getServiceVersion"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    const/4 v0, 0x0

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    invoke-static {v0, v3, p1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    iget-object v3, p0, Landroid/hardware/miuiface/BiometricClient;->mReplyMessager:Landroid/os/Messenger;

    iput-object v3, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Landroid/hardware/miuiface/BiometricClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    iget-object v3, p0, Landroid/hardware/miuiface/BiometricClient;->mSendMessager:Landroid/os/Messenger;

    invoke-virtual {v3, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    iget-object v3, p0, Landroid/hardware/miuiface/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_68} :catch_d0
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_68} :catch_af

    :try_start_68
    iget-object v3, p0, Landroid/hardware/miuiface/BiometricClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_8d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":handle_getServiceVersion - ERROR: timeout!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catch Ljava/lang/InterruptedException; {:try_start_68 .. :try_end_8d} :catch_8e
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_8d} :catch_d0
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_8d} :catch_af

    :cond_8d
    goto :goto_f0

    :catch_8e
    move-exception v3

    :try_start_8f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":handle_getServiceVersion - ERROR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_8f .. :try_end_ae} :catch_d0
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_ae} :catch_af

    goto :goto_f0

    :catch_af
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":handle_getServiceVersion - Exception ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f1

    :catch_d0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":handle_getServiceVersion - RemoteException ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_f0
    nop

    :goto_f1
    sget-boolean v0, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v0, :cond_10e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":handle_getServiceVersion end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10e
    return-void
.end method

.method private handle_releaseService()V
    .registers 6

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    const-string v1, ":"

    const-string v2, "BiometricClient"

    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":handle_releaseService mClientInfoList is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":handle_releaseService mServiceConnectStatus:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/hardware/miuiface/BiometricClient;->mServiceConnectStatus:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    iget v3, p0, Landroid/hardware/miuiface/BiometricClient;->mServiceConnectStatus:I

    if-eq v0, v3, :cond_58

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/miuiface/BiometricClient;->onServiceUnbind(Z)V

    :cond_58
    :try_start_58
    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mClientContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v3, p0, Landroid/hardware/miuiface/BiometricClient;->mServiceConnection:Landroid/hardware/miuiface/BiometricClient$MyServiceConnection;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_65
    .catch Ljava/lang/IllegalArgumentException; {:try_start_58 .. :try_end_65} :catch_aa
    .catch Ljava/lang/NullPointerException; {:try_start_58 .. :try_end_65} :catch_88
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_65} :catch_66

    goto :goto_cb

    :catch_66
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":handle_releaseService Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cc

    :catch_88
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":handle_releaseService NullPointerException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cb

    :catch_aa
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":handle_releaseService IllegalArgumentException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_cb
    nop

    :goto_cc
    const/4 v0, 0x5

    iput v0, p0, Landroid/hardware/miuiface/BiometricClient;->mServiceConnectStatus:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mServiceConnection:Landroid/hardware/miuiface/BiometricClient$MyServiceConnection;

    invoke-direct {p0}, Landroid/hardware/miuiface/BiometricClient;->release()V

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-boolean v0, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v0, :cond_f7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":handle_releaseService end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f7
    return-void
.end method

.method private handle_sendService(Landroid/os/Message;)V
    .registers 9

    const-string v0, ":handle_sendService - ERROR: "

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget v1, p0, Landroid/hardware/miuiface/BiometricClient;->mServiceConnectStatus:I

    const-string v2, ":"

    const-string v3, "BiometricClient"

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":handle_sendService error: service not Connected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_2f
    sget-boolean v1, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v1, :cond_4c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":handle_sendService"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    :try_start_4c
    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->mReplyMessager:Landroid/os/Messenger;

    iput-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->mSendMessager:Landroid/os/Messenger;

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_62} :catch_d7
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_62} :catch_b6

    :try_start_62
    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->replayReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_96

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":handle_sendService - ERROR: timeout! cmd:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " arg:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catch Ljava/lang/InterruptedException; {:try_start_62 .. :try_end_96} :catch_97
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_96} :catch_d7
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_96} :catch_b6

    :cond_96
    goto :goto_f5

    :catch_97
    move-exception v1

    :try_start_98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_b5} :catch_d7
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_b5} :catch_b6

    goto :goto_f5

    :catch_b6
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":handle_sendService - Exception ERROR: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f6

    :catch_d7
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_f5
    nop

    :goto_f6
    sget-boolean v0, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v0, :cond_113

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":handle_sendService end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_113
    return-void
.end method

.method private handle_startService()V
    .registers 8

    sget-boolean v0, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    const-string v1, ":"

    const-string v2, "BiometricClient"

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":handle_startService"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/miuiface/BiometricClient;->mServiceConnectStatus:I

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Landroid/hardware/miuiface/BiometricClient;->serviceReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.xiaomi.biometric.BiometricService"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.xiaomi.biometric"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Landroid/hardware/miuiface/BiometricClient$MyServiceConnection;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/hardware/miuiface/BiometricClient$MyServiceConnection;-><init>(Landroid/hardware/miuiface/BiometricClient;Landroid/hardware/miuiface/BiometricClient$1;)V

    iput-object v3, p0, Landroid/hardware/miuiface/BiometricClient;->mServiceConnection:Landroid/hardware/miuiface/BiometricClient$MyServiceConnection;

    :try_start_44
    iget-object v3, p0, Landroid/hardware/miuiface/BiometricClient;->mClientContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iget-object v4, p0, Landroid/hardware/miuiface/BiometricClient;->mServiceConnection:Landroid/hardware/miuiface/BiometricClient$MyServiceConnection;

    const/16 v5, 0x41

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_53} :catch_54

    goto :goto_74

    :catch_54
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":handle_startService - bindService Exception ERROR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_74
    iget-object v3, p0, Landroid/hardware/miuiface/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-boolean v3, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v3, :cond_96

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":handle_startService await..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_96
    :try_start_96
    iget-object v3, p0, Landroid/hardware/miuiface/BiometricClient;->serviceReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_c9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":handle_startService - ERROR: tmeout!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/hardware/miuiface/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/16 v3, 0xb

    iput v3, p0, Landroid/hardware/miuiface/BiometricClient;->mServiceConnectStatus:I

    iget-object v3, p0, Landroid/hardware/miuiface/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_c9} :catch_ca

    :cond_c9
    goto :goto_f8

    :catch_ca
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":handle_startService - ERROR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v4, p0, Landroid/hardware/miuiface/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/16 v4, 0xc

    iput v4, p0, Landroid/hardware/miuiface/BiometricClient;->mServiceConnectStatus:I

    iget-object v4, p0, Landroid/hardware/miuiface/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_f8
    sget-boolean v3, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v3, :cond_115

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":handle_startService ok"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_115
    return-void
.end method

.method private onServiceBind(Landroid/os/IBinder;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":onServiceBind begin"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BiometricClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    if-nez v0, :cond_45

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":onServiceBind mTagInfo is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_45
    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/miuiface/BiometricClient;->mServiceConnectStatus:I

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mSendMessager:Landroid/os/Messenger;

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->serviceReadyLatch_:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mServiceCallback:Landroid/hardware/miuiface/BiometricClient$ServiceCallback;

    if-eqz v0, :cond_62

    const-string v0, "mServiceCallback yes"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mServiceCallback:Landroid/hardware/miuiface/BiometricClient$ServiceCallback;

    invoke-interface {v0}, Landroid/hardware/miuiface/BiometricClient$ServiceCallback;->onBiometricServiceConnected()V

    :cond_62
    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":onServiceBind end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onServiceUnbind(Z)V
    .registers 7

    if-eqz p1, :cond_7

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :cond_7
    iget v0, p0, Landroid/hardware/miuiface/BiometricClient;->mServiceConnectStatus:I

    const-string v1, ":"

    const-string v2, "BiometricClient"

    const/4 v3, 0x4

    if-eq v3, v0, :cond_43

    const/4 v4, 0x5

    if-ne v4, v0, :cond_14

    goto :goto_43

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":onServiceUnbind mServiceConnectStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/miuiface/BiometricClient;->mServiceConnectStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Landroid/hardware/miuiface/BiometricClient;->mServiceConnectStatus:I

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mServiceCallback:Landroid/hardware/miuiface/BiometricClient$ServiceCallback;

    if-eqz v0, :cond_3b

    invoke-interface {v0}, Landroid/hardware/miuiface/BiometricClient$ServiceCallback;->onBiometricServiceDisconnected()V

    :cond_3b
    if-eqz p1, :cond_42

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_42
    return-void

    :cond_43
    :goto_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":onServiceUnbind ignore mServiceConnectStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/miuiface/BiometricClient;->mServiceConnectStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_68

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->accessLock_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_68
    return-void
.end method

.method private release()V
    .registers 3

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":release"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mCallbackThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_36
    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->mCallbackThread:Landroid/os/HandlerThread;

    :cond_3d
    iput-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->mConnectHandler:Landroid/hardware/miuiface/BiometricClient$ConnectHandler;

    iput-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->mReplyMessager:Landroid/os/Messenger;

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mMainThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mMainThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_54
    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mMainThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->mMainThread:Landroid/os/HandlerThread;

    :cond_5b
    iput-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private removeAllMessage()V
    .registers 6

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":removeAllMessage"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BiometricClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1388

    :goto_24
    const/16 v3, 0x138b

    if-gt v0, v3, :cond_55

    :goto_28
    iget-object v3, p0, Landroid/hardware/miuiface/BiometricClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_52

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":removeAllMessage arg\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/hardware/miuiface/BiometricClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_28

    :cond_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_55
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":finalize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/hardware/miuiface/BiometricClient;->release()V

    return-void
.end method

.method public getServiceVersion(ILandroid/hardware/miuiface/BiometricClient$ClientLister;)V
    .registers 5

    sget-boolean v0, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":getServiceVersion module_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    iput-object p2, p0, Landroid/hardware/miuiface/BiometricClient;->mClientLister:Landroid/hardware/miuiface/BiometricClient$ClientLister;

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x138a

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public releaseService(Landroid/hardware/miuiface/BiometricClient$ServiceCallback;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":releaseService  mServiceConnectStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/miuiface/BiometricClient;->mServiceConnectStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/hardware/miuiface/BiometricClient;->removeAllMessage()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/hardware/miuiface/BiometricClient;->sendCommand(I)V

    iget-object v0, p0, Landroid/hardware/miuiface/BiometricClient;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1389

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public sendBundle(ILandroid/os/Bundle;)V
    .registers 6

    sget-boolean v0, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":Send MSG: sendBundle key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3ea

    iput v1, v0, Landroid/os/Message;->what:I

    const-string/jumbo v1, "tag"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x138b

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Landroid/hardware/miuiface/BiometricClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendCommand(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/miuiface/BiometricClient;->sendCommand(II)V

    return-void
.end method

.method public sendCommand(II)V
    .registers 9

    sget-boolean v0, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    const-string v1, ":Send MSG: sendCommand cmd:"

    const-string v2, ":"

    const-string v3, "BiometricClient"

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",arg:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v4, 0x3e9

    iput v4, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v4, p0, Landroid/hardware/miuiface/BiometricClient;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x138b

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v5, p0, Landroid/hardware/miuiface/BiometricClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-boolean v5, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v5, :cond_6a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ok"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    return-void
.end method

.method public startService(Landroid/hardware/miuiface/BiometricClient$ServiceCallback;)V
    .registers 6

    iput-object p1, p0, Landroid/hardware/miuiface/BiometricClient;->mServiceCallback:Landroid/hardware/miuiface/BiometricClient$ServiceCallback;

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/miuiface/BiometricClient;->mServiceConnectStatus:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->mSendMessager:Landroid/os/Messenger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":startService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricClient"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/hardware/miuiface/BiometricClient;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Landroid/hardware/miuiface/BiometricClient;->mTagInfo:Ljava/lang/String;

    const-string v3, "info"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/hardware/miuiface/BiometricClient;->sendBundle(ILandroid/os/Bundle;)V

    return-void
.end method
