.class public Lcom/ss/android/vesdk/runtime/VERuntime;
.super Ljava/lang/Object;
.source "VERuntime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/runtime/VERuntime$VERuntimeSingleton;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VERuntime"


# instance fields
.field private mAB:Lcom/ss/android/vesdk/VEAB;

.field mContext:Landroid/content/Context;

.field private mEnableGLES3:Z

.field private mEnv:Lcom/ss/android/vesdk/runtime/VEEnv;

.field private mExternalMonitorListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/android/vesdk/runtime/VEExternalMonitorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInited:Z

.field private mMoniter:Lcom/ss/android/ttve/monitor/IMonitor;

.field private mResManager:Lcom/ss/android/vesdk/runtime/VEResManager;

.field private mUseAssetManager:Z

.field private mUseCloudConfig:Z

.field private mUseResourceFinder:Z

.field private mVEMonitorListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/android/vesdk/VEListener$VEMonitorListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mUseCloudConfig:Z

    iput-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mUseAssetManager:Z

    iput-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mUseResourceFinder:Z

    iput-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnableGLES3:Z

    iput-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mIsInited:Z

    new-instance v0, Lcom/ss/android/vesdk/runtime/VERuntime$1;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime$1;-><init>(Lcom/ss/android/vesdk/runtime/VERuntime;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mMoniter:Lcom/ss/android/ttve/monitor/IMonitor;

    new-instance v0, Lcom/ss/android/vesdk/runtime/VERuntime$2;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime$2;-><init>(Lcom/ss/android/vesdk/runtime/VERuntime;)V

    invoke-static {v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->setExternalMonitorListener(Lcom/ss/android/ttve/monitor/MonitorUtils$IMonitorStatisticsListener;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/vesdk/runtime/VERuntime$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/vesdk/runtime/VERuntime;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/vesdk/runtime/VERuntime;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mVEMonitorListener:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/android/vesdk/runtime/VERuntime;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mExternalMonitorListenerRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ss/android/vesdk/runtime/VERuntime;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mUseCloudConfig:Z

    return p0
.end method

.method public static activate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/runtime/oauth/TEOAuthResult;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/vesdk/runtime/oauth/TEOAuth;->activate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/runtime/oauth/TEOAuthResult;

    move-result-object p0

    return-object p0
.end method

.method public static getActivationCode()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/ss/android/vesdk/runtime/oauth/TEOAuth;->getActivationCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/ss/android/vesdk/runtime/VERuntime$VERuntimeSingleton;->INSTANCE:Lcom/ss/android/vesdk/runtime/VERuntime$VERuntimeSingleton;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VERuntime$VERuntimeSingleton;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    return-object v0
.end method

.method private initConfig()V
    .locals 1

    new-instance v0, Lcom/ss/android/vesdk/runtime/VERuntime$3;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime$3;-><init>(Lcom/ss/android/vesdk/runtime/VERuntime;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static isValidAuthorization()Z
    .locals 4

    invoke-static {}, Lcom/ss/android/vesdk/runtime/oauth/TEOAuth;->isPermitted()Z

    move-result v0

    const-class v1, Lcom/ss/android/vesdk/runtime/oauth/TEOAuth;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FAILED. TEOAuth isPermitted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/Class;Ljava/lang/String;)V

    return v0
.end method

.method private native nativeEnableHDH264HWDecoder(ZI)V
.end method

.method private native nativeEnableTT265Decoder(Z)V
.end method

.method private native nativeSetVideoEncodeSetting(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)V
.end method


# virtual methods
.method public enableGLES3(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnableGLES3:Z

    return-void
.end method

.method public enableHDH264HWDecoder(ZI)I
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mIsInited:Z

    if-nez v0, :cond_0

    const-string p0, "VERuntime"

    const-string p1, "runtime not init"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x6c

    return p0

    :cond_0
    const/16 v0, 0x2d0

    if-gt p2, v0, :cond_1

    const/16 p2, 0x2da

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/ss/android/vesdk/runtime/VERuntime;->nativeEnableHDH264HWDecoder(ZI)V

    const/4 p0, 0x0

    return p0
.end method

.method public enableTT265Decoder(Z)I
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mIsInited:Z

    if-nez v0, :cond_0

    const-string p0, "VERuntime"

    const-string p1, "runtime not init"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x6c

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/runtime/VERuntime;->nativeEnableTT265Decoder(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public getAB()Lcom/ss/android/vesdk/VEAB;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mAB:Lcom/ss/android/vesdk/VEAB;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ss/android/vesdk/VEAB;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEAB;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mAB:Lcom/ss/android/vesdk/VEAB;

    :cond_0
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mAB:Lcom/ss/android/vesdk/VEAB;

    return-object p0
.end method

.method public getAssetManager()Landroid/content/res/AssetManager;
    .locals 2

    iget-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mUseAssetManager:Z

    const-string v1, "VERuntime"

    if-nez v0, :cond_0

    const-string v0, "disable use AssetManager!"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mContext:Landroid/content/Context;

    if-nez p0, :cond_1

    const-string p0, "context is null!"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getEnv()Lcom/ss/android/vesdk/runtime/VEEnv;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnv:Lcom/ss/android/vesdk/runtime/VEEnv;

    return-object p0
.end method

.method public getResManager()Lcom/ss/android/vesdk/runtime/VEResManager;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mResManager:Lcom/ss/android/vesdk/runtime/VEResManager;

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/ss/android/vesdk/runtime/VEEnv;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ss/android/vesdk/runtime/VEEnv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mIsInited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnv:Lcom/ss/android/vesdk/runtime/VEEnv;

    new-instance p2, Lcom/ss/android/vesdk/VEAB;

    invoke-direct {p2}, Lcom/ss/android/vesdk/VEAB;-><init>()V

    iput-object p2, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mAB:Lcom/ss/android/vesdk/VEAB;

    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->setContext(Landroid/content/Context;)V

    new-instance p2, Lcom/ss/android/vesdk/runtime/VEResManager;

    invoke-direct {p2}, Lcom/ss/android/vesdk/runtime/VEResManager;-><init>()V

    iput-object p2, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mResManager:Lcom/ss/android/vesdk/runtime/VEResManager;

    invoke-static {}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->getInstance()Lcom/ss/android/vesdk/runtime/persistence/VESP;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->init(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->getInstance()Lcom/ss/android/vesdk/runtime/persistence/VESP;

    move-result-object v0

    const-string v1, "KEY_DEVICEID"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/ss/android/ttve/monitor/TEMonitor;->init(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ss/android/medialib/VideoSdkCore;->init(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->initConfig()V

    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mIsInited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mIsInited:Z

    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->setContext(Landroid/content/Context;)V

    new-instance v1, Lcom/ss/android/vesdk/runtime/VEEnv;

    invoke-direct {v1}, Lcom/ss/android/vesdk/runtime/VEEnv;-><init>()V

    iput-object v1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnv:Lcom/ss/android/vesdk/runtime/VEEnv;

    iget-object v1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnv:Lcom/ss/android/vesdk/runtime/VEEnv;

    invoke-virtual {v1, p2}, Lcom/ss/android/vesdk/runtime/VEEnv;->setWorkspace(Ljava/lang/String;)V

    new-instance p2, Lcom/ss/android/vesdk/VEAB;

    invoke-direct {p2}, Lcom/ss/android/vesdk/VEAB;-><init>()V

    iput-object p2, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mAB:Lcom/ss/android/vesdk/VEAB;

    new-instance p2, Lcom/ss/android/vesdk/runtime/VEResManager;

    invoke-direct {p2}, Lcom/ss/android/vesdk/runtime/VEResManager;-><init>()V

    iput-object p2, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mResManager:Lcom/ss/android/vesdk/runtime/VEResManager;

    invoke-static {}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->getInstance()Lcom/ss/android/vesdk/runtime/persistence/VESP;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->init(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->getInstance()Lcom/ss/android/vesdk/runtime/persistence/VESP;

    move-result-object v1

    const-string v2, "KEY_DEVICEID"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->init(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ss/android/medialib/VideoSdkCore;->init(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->initConfig()V

    new-instance p0, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {p0}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    const-string p1, "iesve_vesdk_init_finish_result"

    const-string p2, "success"

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    const-string p1, "iesve_vesdk_init_finish_reason"

    const-string p2, "null"

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    const-string p1, "iesve_vesdk_init_finish"

    invoke-static {p1, v0, p0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    return-void
.end method

.method public isGLES3Enabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnableGLES3:Z

    return p0
.end method

.method public isUseAssetManager()Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mUseAssetManager:Z

    return p0
.end method

.method public isUseCloudConfig()Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mUseCloudConfig:Z

    return p0
.end method

.method public needUpdateEffectModelFiles()I
    .locals 3

    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnv:Lcom/ss/android/vesdk/runtime/VEEnv;

    const/16 v1, -0x6c

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VEEnv;->getWorkspace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mUseResourceFinder:Z

    const-string v1, "VERuntime"

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    const-string p0, "Use resource finder. Do not need update effect model files!"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    iget-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mUseAssetManager:Z

    if-eqz v0, :cond_3

    const-string p0, "Enable assetManager. Do not need update effect model files!"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnv:Lcom/ss/android/vesdk/runtime/VEEnv;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/runtime/VEEnv;->getEffectModelResourceDirPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bef/effectsdk/EffectSDKUtils;->needUpdate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnv:Lcom/ss/android/vesdk/runtime/VEEnv;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/runtime/VEEnv;->getEffectModelResourceDirPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "nexus"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->configEffect(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public registerMonitor(Lcom/ss/android/vesdk/VEListener$VEMonitorListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mVEMonitorListener:Ljava/lang/ref/WeakReference;

    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mMoniter:Lcom/ss/android/ttve/monitor/IMonitor;

    invoke-static {p0}, Lcom/ss/android/ttve/monitor/TEMonitor;->register(Lcom/ss/android/ttve/monitor/IMonitor;)V

    return-void
.end method

.method public setAB(Lcom/ss/android/vesdk/VEAB;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mAB:Lcom/ss/android/vesdk/VEAB;

    return-void
.end method

.method public setAssetManagerEnable(Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mUseAssetManager:Z

    invoke-static {p1}, Lcom/ss/android/medialib/VideoSdkCore;->setEnableAssetManager(Z)V

    iget-boolean p1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mUseAssetManager:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->enableAssetManager(Landroid/content/res/AssetManager;)Z

    const/4 p0, 0x0

    const-string p1, "nexus"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->configEffect(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "VERuntime"

    const-string p1, "mContext is null!!! need init"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public setCloudConfigEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mUseCloudConfig:Z

    return-void
.end method

.method public setEffectAmazingShareDir(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/ss/android/medialib/VideoSdkCore;->setAmazingShareDir(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->setShareDir(Ljava/lang/String;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setEffectCallback(Lcom/ss/android/vesdk/TEEffectCallback;)Z
    .locals 0

    invoke-static {p1}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->setEffectCallback(Lcom/ss/android/vesdk/TEEffectCallback;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setEffectModelsPath(Ljava/lang/String;)I
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnv:Lcom/ss/android/vesdk/runtime/VEEnv;

    if-nez p0, :cond_0

    const/16 p0, -0x6c

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/runtime/VEEnv;->setDetectModelsDir(Ljava/lang/String;)V

    const-string p0, "nexus"

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->configEffect(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setEffectResourceFinder(Lcom/bef/effectsdk/ResourceFinder;)Z
    .locals 1
    .param p1    # Lcom/bef/effectsdk/ResourceFinder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/ss/android/medialib/VideoSdkCore;->setResourceFinder(Lcom/bef/effectsdk/ResourceFinder;)V

    invoke-static {p1}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->setResourceFinder(Lcom/bef/effectsdk/ResourceFinder;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mUseAssetManager:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mUseResourceFinder:Z

    const-string p0, ""

    const-string v0, "nexus"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->configEffect(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public setEnv(Lcom/ss/android/vesdk/runtime/VEEnv;)V
    .locals 0
    .param p1    # Lcom/ss/android/vesdk/runtime/VEEnv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnv:Lcom/ss/android/vesdk/runtime/VEEnv;

    return-void
.end method

.method public setExternalMonitorListener(Lcom/ss/android/vesdk/runtime/VEExternalMonitorListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mExternalMonitorListenerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public updateEffectModelFiles()I
    .locals 3

    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnv:Lcom/ss/android/vesdk/runtime/VEEnv;

    const/16 v1, -0x6c

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VEEnv;->getWorkspace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnv:Lcom/ss/android/vesdk/runtime/VEEnv;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/runtime/VEEnv;->getWorkspace()Ljava/lang/String;

    move-result-object v1

    const-string v2, "models"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/bef/effectsdk/EffectSDKUtils;->flushAlgorithmModelFiles(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnv:Lcom/ss/android/vesdk/runtime/VEEnv;

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/runtime/VEEnv;->setDetectModelsDir(Ljava/lang/String;)V

    const-string p0, "nexus"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->configEffect(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public updateVideoEncodeSettings(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/runtime/VERuntime;->nativeSetVideoEncodeSetting(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)V

    return-void
.end method
