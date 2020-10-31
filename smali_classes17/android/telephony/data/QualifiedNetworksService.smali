.class public abstract Landroid/telephony/data/QualifiedNetworksService;
.super Landroid/app/Service;
.source "QualifiedNetworksService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/QualifiedNetworksService$IQualifiedNetworksServiceWrapper;,
        Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;,
        Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;
    }
.end annotation


# static fields
.field private static final QNS_CREATE_NETWORK_AVAILABILITY_PROVIDER:I = 0x1

.field private static final QNS_REMOVE_ALL_NETWORK_AVAILABILITY_PROVIDERS:I = 0x3

.field private static final QNS_REMOVE_NETWORK_AVAILABILITY_PROVIDER:I = 0x2

.field private static final QNS_UPDATE_QUALIFIED_NETWORKS:I = 0x4

.field public static final QUALIFIED_NETWORKS_SERVICE_INTERFACE:Ljava/lang/String; = "android.telephony.data.QualifiedNetworksService"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final mBinder:Landroid/telephony/data/QualifiedNetworksService$IQualifiedNetworksServiceWrapper;

.field private final mHandler:Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mProviders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/telephony/data/QualifiedNetworksService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/data/QualifiedNetworksService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/QualifiedNetworksService;->mProviders:Landroid/util/SparseArray;

    new-instance v0, Landroid/telephony/data/QualifiedNetworksService$IQualifiedNetworksServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/data/QualifiedNetworksService$IQualifiedNetworksServiceWrapper;-><init>(Landroid/telephony/data/QualifiedNetworksService;Landroid/telephony/data/QualifiedNetworksService$1;)V

    iput-object v0, p0, Landroid/telephony/data/QualifiedNetworksService;->mBinder:Landroid/telephony/data/QualifiedNetworksService$IQualifiedNetworksServiceWrapper;

    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Landroid/telephony/data/QualifiedNetworksService;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/telephony/data/QualifiedNetworksService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;

    iget-object v1, p0, Landroid/telephony/data/QualifiedNetworksService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;-><init>(Landroid/telephony/data/QualifiedNetworksService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telephony/data/QualifiedNetworksService;->mHandler:Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;

    const-string v0, "Qualified networks service created"

    invoke-direct {p0, v0}, Landroid/telephony/data/QualifiedNetworksService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/telephony/data/QualifiedNetworksService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/data/QualifiedNetworksService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/telephony/data/QualifiedNetworksService;)Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;
    .registers 2

    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService;->mHandler:Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/telephony/data/QualifiedNetworksService;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService;->mProviders:Landroid/util/SparseArray;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Landroid/telephony/data/QualifiedNetworksService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Landroid/telephony/data/QualifiedNetworksService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.data.QualifiedNetworksService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_12

    :cond_f
    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService;->mBinder:Landroid/telephony/data/QualifiedNetworksService$IQualifiedNetworksServiceWrapper;

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

    invoke-direct {p0, v0}, Landroid/telephony/data/QualifiedNetworksService;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onCreateNetworkAvailabilityProvider(I)Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 4

    iget-object v0, p0, Landroid/telephony/data/QualifiedNetworksService;->mHandler:Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/telephony/data/QualifiedNetworksService$QualifiedNetworksServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    return v0
.end method
