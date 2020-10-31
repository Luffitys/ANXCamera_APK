.class public Landroid/hardware/camera2/impl/CameraDeviceImplInjector;
.super Ljava/lang/Object;
.source "CameraDeviceImplInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final XIAOMI_SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v1, [Landroid/hardware/camera2/params/StreamConfiguration;

    const-string/jumbo v2, "xiaomi.scaler.availableStreamConfigurations"

    invoke-direct {v0, v2, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->XIAOMI_SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAllVendorKeys(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/HashSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    nop

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v0

    const-class v1, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getAllVendorKeys(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_2c
    return-object v1
.end method

.method private static getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/HashSet;)Landroid/hardware/camera2/params/StreamConfigurationMap;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    sget-object v2, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->XIAOMI_SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    new-instance v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    sget-object v4, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->XIAOMI_SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, [Landroid/hardware/camera2/params/StreamConfiguration;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, [Landroid/hardware/camera2/params/StreamConfiguration;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v17, v4

    check-cast v17, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_INPUT_OUTPUT_FORMATS_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    const/16 v19, 0x1

    move-object v4, v2

    invoke-direct/range {v4 .. v19}, Landroid/hardware/camera2/params/StreamConfigurationMap;-><init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;Z)V

    move-object v1, v2

    :cond_6b
    return-object v1
.end method

.method public static initCamera(Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/hardware/CameraInjector;->notifyCameraStateChange(Z)V

    return-void
.end method

.method public static initCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)V
    .registers 4

    invoke-static {p0, p1}, Landroid/hardware/CameraInjector;->initCameraRoleIdApi2(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)V

    invoke-static {p0}, Landroid/hardware/CameraInjector;->getCameraRoleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/hardware/CameraInjector;->notifyCameraStateChange(Ljava/lang/String;Z)V

    return-void
.end method

.method private static isFormatValid(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroid/hardware/camera2/params/InputConfiguration;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    move-result-object v1

    if-eqz v1, :cond_1a

    array-length v2, v1

    move v3, v0

    :goto_b
    if-ge v3, v2, :cond_1a

    aget v4, v1, v3

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v5

    if-ne v4, v5, :cond_17

    const/4 v0, 0x1

    return v0

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_1a
    return v0
.end method

.method public static isInputConfigurationFormatValid(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/params/InputConfiguration;)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p0, :cond_4a

    if-nez p1, :cond_6

    goto :goto_4a

    :cond_6
    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->getAllVendorKeys(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/HashSet;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/HashSet;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->isFormatValid(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroid/hardware/camera2/params/InputConfiguration;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_30

    sget-object v3, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    const-string/jumbo v0, "valid format: %d"

    invoke-static {v5, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_30
    sget-object v3, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    const-string v6, "invalid format: %d"

    invoke-static {v5, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4a
    :goto_4a
    sget-object v1, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_5b

    const-string v3, "CameraCharacteristics"

    goto :goto_5d

    :cond_5b
    const-string v3, "InputConfiguration"

    :goto_5d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isInputConfigurationSizeValid(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/params/InputConfiguration;)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p0, :cond_5f

    if-nez p1, :cond_6

    goto :goto_5f

    :cond_6
    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->getAllVendorKeys(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/HashSet;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/HashSet;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->isSizeValid(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroid/hardware/camera2/params/InputConfiguration;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3b

    sget-object v3, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->TAG:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v0

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const-string/jumbo v0, "valid size: %dx%d"

    invoke-static {v6, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_3b
    sget-object v3, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->TAG:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v0

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    const-string v5, "invalid size: %dx%d"

    invoke-static {v6, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_5f
    :goto_5f
    sget-object v1, Landroid/hardware/camera2/impl/CameraDeviceImplInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_70

    const-string v3, "CameraCharacteristics"

    goto :goto_72

    :cond_70
    const-string v3, "InputConfiguration"

    :goto_72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static isSizeValid(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroid/hardware/camera2/params/InputConfiguration;)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p0, :cond_2c

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_2c

    array-length v2, v1

    move v3, v0

    :goto_f
    if-ge v3, v2, :cond_2c

    aget-object v4, v1, v3

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v6

    if-ne v5, v6, :cond_29

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v6

    if-ne v5, v6, :cond_29

    const/4 v0, 0x1

    return v0

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_2c
    return v0
.end method

.method public static releaseCamera(Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/hardware/CameraInjector;->notifyCameraStateChange(Z)V

    return-void
.end method

.method public static releaseCamera(Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Landroid/hardware/CameraInjector;->getCameraRoleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/hardware/CameraInjector;->notifyCameraStateChange(Ljava/lang/String;Z)V

    invoke-static {p0}, Landroid/hardware/CameraInjector;->releaseCameraRoleId(Ljava/lang/String;)V

    return-void
.end method
