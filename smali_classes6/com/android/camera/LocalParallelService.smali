.class public Lcom/android/camera/LocalParallelService;
.super Landroid/app/Service;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sReprocessorTypeIndex:I


# instance fields
.field private mLocalBinder:Lcom/android/camera/LocalParallelService$LocalBinder;

.field private mMaxParallelRequestNumber:I

.field private mPostProcessStatusCallback:Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

.field private final mPostProcessorLock:Ljava/lang/Object;

.field private mSRRequireReprocess:Z

.field private mServiceStatusListenerRef:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/LocalParallelService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/LocalParallelService;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/android/camera/LocalParallelService;->sReprocessorTypeIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/LocalParallelService;->mPostProcessorLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/camera/LocalParallelService$1;

    invoke-direct {v0, p0}, Lcom/android/camera/LocalParallelService$1;-><init>(Lcom/android/camera/LocalParallelService;)V

    iput-object v0, p0, Lcom/android/camera/LocalParallelService;->mPostProcessStatusCallback:Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/LocalParallelService;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/LocalParallelService;->mServiceStatusListenerRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/camera/LocalParallelService;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/LocalParallelService;->mServiceStatusListenerRef:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/LocalParallelService;)Lcom/android/camera/LocalParallelService$LocalBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/LocalParallelService;->mLocalBinder:Lcom/android/camera/LocalParallelService$LocalBinder;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/LocalParallelService;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/LocalParallelService;->mMaxParallelRequestNumber:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/camera/LocalParallelService;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/LocalParallelService;->mMaxParallelRequestNumber:I

    return p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/LocalParallelService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/LocalParallelService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/LocalParallelService;->mSRRequireReprocess:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/camera/LocalParallelService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/LocalParallelService;->mSRRequireReprocess:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/LocalParallelService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/LocalParallelService;->mPostProcessorLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/camera/LocalParallelService;)Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/LocalParallelService;->mPostProcessStatusCallback:Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

    return-object p0
.end method

.method public static getReprocessor()Lcom/xiaomi/camera/imagecodec/Reprocessor;
    .locals 2

    sget v0, Lcom/android/camera/LocalParallelService;->sReprocessorTypeIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00Ooo00()I

    move-result v0

    sput v0, Lcom/android/camera/LocalParallelService;->sReprocessorTypeIndex:I

    :cond_0
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;->values()[Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;

    move-result-object v0

    sget v1, Lcom/android/camera/LocalParallelService;->sReprocessorTypeIndex:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory;->getReprocessor(Lcom/xiaomi/camera/imagecodec/ReprocessorFactory$ReprocessorType;)Lcom/xiaomi/camera/imagecodec/Reprocessor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    sget-object p1, Lcom/android/camera/LocalParallelService;->TAG:Ljava/lang/String;

    const-string v0, "onBind: start"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/LocalParallelService;->mLocalBinder:Lcom/android/camera/LocalParallelService$LocalBinder;

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    sget-object v0, Lcom/android/camera/LocalParallelService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate: start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o00()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/LocalParallelService;->TAG:Ljava/lang/String;

    const-string v1, "This device does not support Algo up, do nothing."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    :cond_0
    new-instance v0, Lcom/android/camera/LocalParallelService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/android/camera/LocalParallelService$LocalBinder;-><init>(Lcom/android/camera/LocalParallelService;)V

    iput-object v0, p0, Lcom/android/camera/LocalParallelService;->mLocalBinder:Lcom/android/camera/LocalParallelService$LocalBinder;

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/android/camera/LocalParallelService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy: start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/LocalParallelService;->mLocalBinder:Lcom/android/camera/LocalParallelService$LocalBinder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->onServiceDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/LocalParallelService;->mLocalBinder:Lcom/android/camera/LocalParallelService$LocalBinder;

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    sget-object v0, Lcom/android/camera/LocalParallelService;->TAG:Ljava/lang/String;

    const-string v1, "onStartCommand: start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    sget-object v0, Lcom/android/camera/LocalParallelService;->TAG:Ljava/lang/String;

    const-string v1, "onUnbind: start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
