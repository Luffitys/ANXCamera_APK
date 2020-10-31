.class public Lcom/android/ims/internal/uce/uceservice/ImsUceManager;
.super Ljava/lang/Object;
.source "ImsUceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;
    }
.end annotation


# static fields
.field public static final ACTION_UCE_SERVICE_DOWN:Ljava/lang/String; = "com.android.ims.internal.uce.UCE_SERVICE_DOWN"

.field public static final ACTION_UCE_SERVICE_UP:Ljava/lang/String; = "com.android.ims.internal.uce.UCE_SERVICE_UP"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsUceManager"

.field private static final UCE_SERVICE:Ljava/lang/String; = "uce"

.field public static final UCE_SERVICE_STATUS_CLOSED:I = 0x2

.field public static final UCE_SERVICE_STATUS_FAILURE:I = 0x0

.field public static final UCE_SERVICE_STATUS_ON:I = 0x1

.field public static final UCE_SERVICE_STATUS_READY:I = 0x3

.field private static final sLock:Ljava/lang/Object;

.field private static sUceManager:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeathReceipient:Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;

.field private mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;

    new-instance v1, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;

    invoke-direct {v1, p0, v0}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;-><init>(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;Lcom/android/ims/internal/uce/uceservice/ImsUceManager$1;)V

    iput-object v1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mDeathReceipient:Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;

    iput-object p1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->createUceService(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;Lcom/android/ims/internal/uce/uceservice/IUceService;)Lcom/android/ims/internal/uce/uceservice/IUceService;
    .registers 2

    iput-object p1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/ims/internal/uce/uceservice/ImsUceManager;
    .registers 3

    sget-object v0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sUceManager:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    if-nez v1, :cond_10

    if-eqz p0, :cond_10

    new-instance v1, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sUceManager:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    :cond_10
    sget-object v1, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->sUceManager:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    monitor-exit v0

    return-object v1

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private getUceServiceName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "uce"

    return-object v0
.end method


# virtual methods
.method public createUceService(Z)V
    .registers 5

    if-eqz p1, :cond_d

    invoke-direct {p0}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->getUceServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-direct {p0}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->getUceServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_17
    iget-object v1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mDeathReceipient:Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1d} :catch_1e

    goto :goto_1f

    :catch_1e
    move-exception v1

    :cond_1f
    :goto_1f
    invoke-static {v0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/uceservice/IUceService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;

    return-void
.end method

.method public getUceServiceInstance()Lcom/android/ims/internal/uce/uceservice/IUceService;
    .registers 2

    iget-object v0, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->mUceService:Lcom/android/ims/internal/uce/uceservice/IUceService;

    return-object v0
.end method
