.class public Lcom/ss/android/vesdk/VESDK;
.super Ljava/lang/Object;
.source "VESDK.java"


# static fields
.field public static MONITOR_ACTION_CANCEL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/ss/android/ttve/monitor/TEMonitor;->MONITOR_ACTION_CANCEL:I

    sput v0, Lcom/ss/android/vesdk/VESDK;->MONITOR_ACTION_CANCEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deInit()V
    .locals 1

    invoke-static {}, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->getInstance()Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->closeCloudControlRes()V

    return-void
.end method

.method public static enableGLES3(Z)V
    .locals 1

    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->enableGLES3(Z)V

    invoke-static {p0}, Lcom/ss/android/medialib/VideoSdkCore;->enableGLES3(Z)V

    return-void
.end method

.method public static enableHDH264HWDecoder(ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/vesdk/VEException;
        }
    .end annotation

    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/vesdk/runtime/VERuntime;->enableHDH264HWDecoder(ZI)I

    move-result p0

    const/16 p1, -0x6c

    if-eq p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/ss/android/vesdk/VEException;

    const-string v0, "please set VEEnv or VEEnv#init"

    invoke-direct {p1, p0, v0}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public static enableTT265Decoder(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/vesdk/VEException;
        }
    .end annotation

    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->enableTT265Decoder(Z)I

    move-result p0

    const/16 v0, -0x6c

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/ss/android/vesdk/VEException;

    const-string v1, "please set VEEnv or VEEnv#init"

    invoke-direct {v0, p0, v1}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static getCurrentLoadModule()Ljava/lang/String;
    .locals 1

    const-string v0, "recedit"

    return-object v0
.end method

.method public static getEffectSDKVer()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEEffectUtils;->getEffectVersion()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Effect Ver is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Steven"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getVeLoadLib()I
    .locals 1

    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->getLibraryLoadedVersion()I

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;Lcom/ss/android/vesdk/runtime/VEEnv;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ss/android/vesdk/runtime/VEEnv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/ss/android/vesdk/runtime/VERuntime;->init(Landroid/content/Context;Lcom/ss/android/vesdk/runtime/VEEnv;)V

    invoke-static {}, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->getInstance()Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->execStoredCommands(Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/vesdk/runtime/VERuntime;->init(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->getInstance()Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->execStoredCommands(Ljava/lang/String;)V

    return-void
.end method

.method public static monitorClear()V
    .locals 0

    invoke-static {}, Lcom/ss/android/ttve/monitor/TEMonitor;->clear()V

    return-void
.end method

.method public static monitorRegister(Lcom/ss/android/vesdk/VEListener$VEMonitorListener;)V
    .locals 1

    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->registerMonitor(Lcom/ss/android/vesdk/VEListener$VEMonitorListener;)V

    return-void
.end method

.method public static monitorReport(I)V
    .locals 0

    invoke-static {p0}, Lcom/ss/android/ttve/monitor/TEMonitor;->report(I)V

    return-void
.end method

.method public static needUpdateEffectModelFiles()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/vesdk/VEException;
        }
    .end annotation

    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VERuntime;->needUpdateEffectModelFiles()I

    move-result v0

    const/16 v1, -0x6c

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v1, Lcom/ss/android/vesdk/VEException;

    const-string v2, "please set setWorkspace in VESDK init"

    invoke-direct {v1, v0, v2}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public static registerLogger(Lcom/ss/android/vesdk/VELogProtocol;)V
    .locals 0

    invoke-static {p0}, Lcom/ss/android/ttve/log/TELog2Client;->registerLogger(Lcom/ss/android/vesdk/VELogProtocol;)V

    invoke-static {}, Lcom/ss/android/ttve/log/TELog2Client;->init()V

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/ss/android/ttve/log/TELog2Client;->setLog2ClientSwitch(Z)V

    return-void
.end method

.method public static setAB(Lcom/ss/android/vesdk/VEAB;)V
    .locals 1
    .param p0    # Lcom/ss/android/vesdk/VEAB;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->setAB(Lcom/ss/android/vesdk/VEAB;)V

    return-void
.end method

.method public static setAppFiled(Lcom/ss/android/vesdk/VEAppField;)V
    .locals 4
    .param p0    # Lcom/ss/android/vesdk/VEAppField;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/ss/android/vesdk/VEAppField;->userId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->setUserId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/vesdk/VEAppField;->deviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->setDeviceId(Ljava/lang/String;)V

    invoke-static {}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->getInstance()Lcom/ss/android/vesdk/runtime/persistence/VESP;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/vesdk/VEAppField;->deviceId:Ljava/lang/String;

    const-string v2, "KEY_DEVICEID"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object p0, p0, Lcom/ss/android/vesdk/VEAppField;->version:Ljava/lang/String;

    invoke-static {p0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->setAppVersion(Ljava/lang/String;)V

    return-void
.end method

.method public static setAssetManagerEnable(Z)Z
    .locals 1

    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->setAssetManagerEnable(Z)Z

    move-result p0

    return p0
.end method

.method public static setCloudConfigEnable(Z)V
    .locals 1

    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->setCloudConfigEnable(Z)V

    return-void
.end method

.method public static setCloudConfigServer(I)V
    .locals 0

    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/cloudconfig/PerformanceConfig;->setServerLocation(I)V

    return-void
.end method

.method public static setEffectAmazingShareDir(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->setEffectAmazingShareDir(Ljava/lang/String;)Z

    return-void
.end method

.method public static setEffectModelsPath(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/vesdk/VEException;
        }
    .end annotation

    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->setEffectModelsPath(Ljava/lang/String;)I

    move-result p0

    const/16 v0, -0x6c

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/ss/android/vesdk/VEException;

    const-string v1, "please set VEEnv or VEEnv#init"

    invoke-direct {v0, p0, v1}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static setEffectResourceFinder(Lcom/bef/effectsdk/ResourceFinder;)V
    .locals 1
    .param p0    # Lcom/bef/effectsdk/ResourceFinder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->setEffectResourceFinder(Lcom/bef/effectsdk/ResourceFinder;)Z

    return-void
.end method

.method public static setExternalMonitorListener(Lcom/ss/android/vesdk/runtime/VEExternalMonitorListener;)V
    .locals 1
    .param p0    # Lcom/ss/android/vesdk/runtime/VEExternalMonitorListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->setExternalMonitorListener(Lcom/ss/android/vesdk/runtime/VEExternalMonitorListener;)V

    return-void
.end method

.method public static setLogLevel(B)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->setUp(Ljava/lang/String;B)V

    invoke-static {p0}, Lcom/ss/android/medialib/common/LogUtil;->getAndroidLogLevel(B)I

    move-result p0

    invoke-static {p0}, Lcom/ss/android/medialib/VideoSdkCore;->setLogLevel(I)V

    return-void
.end method

.method public static setMonitorServer(I)V
    .locals 0

    invoke-static {p0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->setServerLocation(I)V

    return-void
.end method

.method public static setSDKMonitorEnable(Z)V
    .locals 0

    invoke-static {p0}, Lcom/ss/android/ttve/monitor/TEMonitor;->setSDKMonitorEnable(Z)V

    return-void
.end method

.method public static setVeLoadLib(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->enableLoadOptLibrary(Z)V

    return-void
.end method

.method public static transfCloudControlCommand(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->getInstance()Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->storeCloudControlCommand(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static updateEffectModelFiles()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/vesdk/VEException;
        }
    .end annotation

    invoke-static {}, Lcom/ss/android/vesdk/VESDK;->needUpdateEffectModelFiles()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VERuntime;->updateEffectModelFiles()I

    move-result v0

    const/16 v1, -0x6c

    if-eq v0, v1, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/ss/android/vesdk/VEException;

    const-string v2, "fail when updating model files"

    invoke-direct {v1, v0, v2}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Lcom/ss/android/vesdk/VEException;

    const-string v2, "please set VEEnv or VEEnv#init"

    invoke-direct {v1, v0, v2}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    return-void
.end method
