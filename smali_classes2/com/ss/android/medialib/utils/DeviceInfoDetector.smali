.class public Lcom/ss/android/medialib/utils/DeviceInfoDetector;
.super Ljava/lang/Object;
.source "DeviceInfoDetector.java"


# static fields
.field private static abi:Ljava/lang/String;

.field private static appid:Ljava/lang/String;

.field private static cpu:Ljava/lang/String;

.field private static cpu_core:Ljava/lang/String;

.field private static cpu_freq:Ljava/lang/String;

.field private static deviceid:Ljava/lang/String;

.field private static external_storage:Ljava/lang/String;

.field private static gpu:Ljava/lang/String;

.field private static gpu_ver:Ljava/lang/String;

.field private static inited:Z

.field private static locale:Ljava/lang/String;

.field private static memory:Ljava/lang/String;

.field private static model:Ljava/lang/String;

.field private static nativeInited:Z

.field private static opengl_version:Ljava/lang/String;

.field private static os_sdk_int:Ljava/lang/String;

.field private static screen_height:Ljava/lang/String;

.field private static screen_width:Ljava/lang/String;

.field private static sim_operator:Ljava/lang/String;

.field private static storage:Ljava/lang/String;

.field private static ve_version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->toMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static getCpuAbi()Ljava/lang/String;
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, ","

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->inited:Z

    if-nez v0, :cond_1

    const-class v0, Lcom/ss/android/medialib/utils/DeviceInfoDetector;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->inited:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->initInternal(Landroid/content/Context;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->inited:Z

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static initInternal(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v2, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->model:Ljava/lang/String;

    invoke-static {}, Lcom/ss/android/medialib/utils/DeviceInfoUtils;->readCpuHardware()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->cpu:Ljava/lang/String;

    invoke-static {}, Lcom/ss/android/medialib/utils/DeviceInfoUtils;->getMaxCpuFreq()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->cpu_freq:Ljava/lang/String;

    invoke-static {}, Lcom/ss/android/medialib/utils/DeviceInfoUtils;->getNumOfCores()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->cpu_core:Ljava/lang/String;

    invoke-static {}, Lcom/ss/android/medialib/utils/DeviceInfoUtils;->getTotalMemory()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->memory:Ljava/lang/String;

    invoke-static {}, Lcom/ss/android/medialib/utils/DeviceInfoUtils;->getInternalStorage()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->storage:Ljava/lang/String;

    invoke-static {p0}, Lcom/ss/android/medialib/utils/DeviceInfoUtils;->getExternalStorage(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->external_storage:Ljava/lang/String;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->os_sdk_int:Ljava/lang/String;

    invoke-static {p0}, Lcom/ss/android/medialib/utils/DeviceInfoUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->screen_width:Ljava/lang/String;

    invoke-static {p0}, Lcom/ss/android/medialib/utils/DeviceInfoUtils;->getRealScreenHeight(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->screen_height:Ljava/lang/String;

    invoke-static {p0}, Lcom/ss/android/medialib/utils/DeviceIdHelper;->getIdentity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->deviceid:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->appid:Ljava/lang/String;

    invoke-static {}, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->getCpuAbi()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->abi:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->locale:Ljava/lang/String;

    invoke-static {p0}, Lcom/ss/android/medialib/utils/DeviceInfoUtils;->getSimOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->sim_operator:Ljava/lang/String;

    return-void
.end method

.method public static toMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->model:Ljava/lang/String;

    const-string v2, "model"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->cpu:Ljava/lang/String;

    const-string v2, "cpu"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->cpu_freq:Ljava/lang/String;

    const-string v2, "cpu_freq"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->cpu_core:Ljava/lang/String;

    const-string v2, "cpu_core"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->memory:Ljava/lang/String;

    const-string v2, "memory"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->storage:Ljava/lang/String;

    const-string v2, "storage"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->external_storage:Ljava/lang/String;

    const-string v2, "external_storage"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->screen_width:Ljava/lang/String;

    const-string v2, "screen_width"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->screen_height:Ljava/lang/String;

    const-string v2, "screen_height"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->os_sdk_int:Ljava/lang/String;

    const-string v2, "os_sdk_int"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->deviceid:Ljava/lang/String;

    const-string v2, "deviceid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->appid:Ljava/lang/String;

    const-string v2, "appid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->abi:Ljava/lang/String;

    const-string v2, "abi"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->locale:Ljava/lang/String;

    const-string v2, "locale"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->sim_operator:Ljava/lang/String;

    const-string v2, "sim_operator"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->nativeInited:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/ss/android/medialib/config/GPUModelDetector;->getInstance()Lcom/ss/android/medialib/config/GPUModelDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/medialib/config/GPUModelDetector;->getGPUModel()Lcom/ss/android/medialib/config/GPUModelDetector$GPUModelInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/medialib/config/GPUModelDetector$GPUModelInfo;->getGPUSubModel()Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ss/android/medialib/config/GPUModelDetector$GPUModelInfo;->getGPUModelNumber()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->gpu:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->gpu_ver:Ljava/lang/String;

    invoke-static {}, Lcom/ss/android/medialib/config/GPUModelDetector;->getInstance()Lcom/ss/android/medialib/config/GPUModelDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/medialib/config/GPUModelDetector;->getGLVersion()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->opengl_version:Ljava/lang/String;

    invoke-static {}, Lcom/ss/android/medialib/VideoSdkCore;->getSdkVersionCode()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->ve_version:Ljava/lang/String;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->nativeInited:Z

    :cond_0
    sget-object v1, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->gpu:Ljava/lang/String;

    const-string v2, "gpu"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->gpu_ver:Ljava/lang/String;

    const-string v2, "gpu_ver"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->opengl_version:Ljava/lang/String;

    const-string v2, "opengl_version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/ss/android/medialib/utils/DeviceInfoDetector;->ve_version:Ljava/lang/String;

    const-string v2, "ve_version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
