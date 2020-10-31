.class public abstract Landroid/telephony/NetworkService;
.super Landroid/app/Service;
.source "NetworkService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/NetworkService$INetworkServiceWrapper;,
        Landroid/telephony/NetworkService$NetworkServiceHandler;,
        Landroid/telephony/NetworkService$NetworkServiceProvider;
    }
.end annotation


# static fields
.field private static final NETWORK_SERVICE_CREATE_NETWORK_SERVICE_PROVIDER:I = 0x1

.field private static final NETWORK_SERVICE_GET_REGISTRATION_INFO:I = 0x4

.field private static final NETWORK_SERVICE_INDICATION_NETWORK_INFO_CHANGED:I = 0x7

.field private static final NETWORK_SERVICE_REGISTER_FOR_INFO_CHANGE:I = 0x5

.field private static final NETWORK_SERVICE_REMOVE_ALL_NETWORK_SERVICE_PROVIDERS:I = 0x3

.field private static final NETWORK_SERVICE_REMOVE_NETWORK_SERVICE_PROVIDER:I = 0x2

.field private static final NETWORK_SERVICE_UNREGISTER_FOR_INFO_CHANGE:I = 0x6

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.telephony.NetworkService"


# instance fields
.field private final TAG:Ljava/lang/String;

.field public final mBinder:Landroid/telephony/NetworkService$INetworkServiceWrapper;

.field private final mHandler:Landroid/telephony/NetworkService$NetworkServiceHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mServiceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/NetworkService$NetworkServiceProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-class v0, Landroid/telephony/NetworkService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/NetworkService;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/NetworkService;->mServiceMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/telephony/NetworkService$INetworkServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/NetworkService$INetworkServiceWrapper;-><init>(Landroid/telephony/NetworkService;Landroid/telephony/NetworkService$1;)V

    iput-object v0, p0, Landroid/telephony/NetworkService;->mBinder:Landroid/telephony/NetworkService$INetworkServiceWrapper;

    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Landroid/telephony/NetworkService;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/telephony/NetworkService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/telephony/NetworkService$NetworkServiceHandler;

    iget-object v1, p0, Landroid/telephony/NetworkService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telephony/NetworkService$NetworkServiceHandler;-><init>(Landroid/telephony/NetworkService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telephony/NetworkService;->mHandler:Landroid/telephony/NetworkService$NetworkServiceHandler;

    const-string/jumbo v0, "network service created"

    invoke-direct {p0, v0}, Landroid/telephony/NetworkService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/telephony/NetworkService;)Landroid/telephony/NetworkService$NetworkServiceHandler;
    .registers 2

    iget-object v0, p0, Landroid/telephony/NetworkService;->mHandler:Landroid/telephony/NetworkService$NetworkServiceHandler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/telephony/NetworkService;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Landroid/telephony/NetworkService;->mServiceMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method private final log(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/NetworkService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final loge(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/NetworkService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.NetworkService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_12

    :cond_f
    iget-object v0, p0, Landroid/telephony/NetworkService;->mBinder:Landroid/telephony/NetworkService$INetworkServiceWrapper;

    return-object v0

    :cond_12
    :goto_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/telephony/NetworkService;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onCreateNetworkServiceProvider(I)Landroid/telephony/NetworkService$NetworkServiceProvider;
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Landroid/telephony/NetworkService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 6

    iget-object v0, p0, Landroid/telephony/NetworkService;->mHandler:Landroid/telephony/NetworkService$NetworkServiceHandler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/telephony/NetworkService$NetworkServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return v2
.end method
