.class public Landroid/hardware/CameraInjector;
.super Ljava/lang/Object;
.source "CameraInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/CameraInjector$CameraOrientationEventListener;,
        Landroid/hardware/CameraInjector$CameraExInfo;
    }
.end annotation


# static fields
.field private static final ACTION_CAMERA_STATE_TO_POWER_KEEPER:Ljava/lang/String; = "com.miui.powerkeeper.CAMERA_STATE"

.field private static final CAMERA_ACTIVE_SEND_BROADCAST_DEVICES_LIST:Ljava/lang/String; = "atom,bomb,apricot,banana,cannon,cannong"

.field private static final CAMERA_BROADCAST_ACTION:Ljava/lang/String; = "android.intent.action.ANT_FORCE"

.field private static final CAMERA_CONFIG_KEY:Ljava/lang/String; = "camera"

.field private static final CAMERA_ROLE_ID:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final CAMERA_STATE_INIT:I = 0x1

.field private static final CAMERA_STATE_RELEASE:I = 0x2

.field private static final EXTRA_BEAUTIFY_VALUE:Ljava/lang/String; = "extra_still_beautify_value"

.field private static final EXTRA_MIN_PREVIEW_SIZE:Ljava/lang/String; = "extra_min_preview_size"

.field private static final KEY_BEAUTIFY:Ljava/lang/String; = "xiaomi-still-beautify-values"

.field private static final KEY_CAMERA_ID:Ljava/lang/String; = "camera-id"

.field private static final KEY_PICTURE_SIZE:Ljava/lang/String; = "picture-size"

.field private static final KEY_PREVIEW_SIZE:Ljava/lang/String; = "preview-size"

.field private static final MIN_VIRTUAL_CAMERA_ROLE_ID:I = 0x64

.field private static final SUPPORTED_VALUES_SUFFIX:Ljava/lang/String; = "-values"

.field private static final TAG:Ljava/lang/String; = "CameraInjector"

.field private static sCameraIdRoleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCameraInfoMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/hardware/Camera;",
            "Landroid/hardware/CameraInjector$CameraExInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/hardware/CameraInjector;->sCameraIdRoleMap:Ljava/util/HashMap;

    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "com.xiaomi.cameraid.role.cameraId"

    invoke-direct {v0, v2, v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/CameraInjector;->CAMERA_ROLE_ID:Landroid/hardware/camera2/CameraCharacteristics$Key;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(II)I
    .registers 3

    invoke-static {p0, p1}, Landroid/hardware/CameraInjector;->roundOrientation(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$400()Ljava/util/WeakHashMap;
    .registers 1

    sget-object v0, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method protected static convertSizeToString(Landroid/hardware/Camera$Size;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1c
    const-string v0, ""

    return-object v0
.end method

.method private static createOrientationListener(Landroid/hardware/Camera;)V
    .registers 4

    sget-object v0, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/CameraInjector$CameraExInfo;

    invoke-static {}, Landroid/hardware/CameraInjector;->isInRotateWhiteList()Z

    move-result v1

    if-eqz v1, :cond_2a

    if-eqz v0, :cond_2a

    const-string v1, "CameraInjector"

    const-string v2, "Listener orientation"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/hardware/CameraInjector$CameraOrientationEventListener;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/hardware/CameraInjector$CameraOrientationEventListener;-><init>(Landroid/hardware/Camera;Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->enable()V

    # setter for: Landroid/hardware/CameraInjector$CameraExInfo;->mCameraOrientationEventListener:Landroid/hardware/CameraInjector$CameraOrientationEventListener;
    invoke-static {v0, v1}, Landroid/hardware/CameraInjector$CameraExInfo;->access$202(Landroid/hardware/CameraInjector$CameraExInfo;Landroid/hardware/CameraInjector$CameraOrientationEventListener;)Landroid/hardware/CameraInjector$CameraOrientationEventListener;

    :cond_2a
    return-void
.end method

.method private static destoryOrientationListener(Landroid/hardware/Camera;)V
    .registers 5

    sget-object v0, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/CameraInjector$CameraExInfo;

    if-eqz v0, :cond_1f

    # getter for: Landroid/hardware/CameraInjector$CameraExInfo;->mCameraOrientationEventListener:Landroid/hardware/CameraInjector$CameraOrientationEventListener;
    invoke-static {v0}, Landroid/hardware/CameraInjector$CameraExInfo;->access$200(Landroid/hardware/CameraInjector$CameraExInfo;)Landroid/hardware/CameraInjector$CameraOrientationEventListener;

    move-result-object v1

    if-eqz v1, :cond_1f

    const-string v2, "CameraInjector"

    const-string/jumbo v3, "release orientation listener"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/hardware/CameraInjector$CameraOrientationEventListener;->disable()V

    const/4 v2, 0x0

    # setter for: Landroid/hardware/CameraInjector$CameraExInfo;->mCameraOrientationEventListener:Landroid/hardware/CameraInjector$CameraOrientationEventListener;
    invoke-static {v0, v2}, Landroid/hardware/CameraInjector$CameraExInfo;->access$202(Landroid/hardware/CameraInjector$CameraExInfo;Landroid/hardware/CameraInjector$CameraOrientationEventListener;)Landroid/hardware/CameraInjector$CameraOrientationEventListener;

    :cond_1f
    return-void
.end method

.method private static getCameraParameterInfo(Landroid/hardware/Camera;)Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/CameraInjector$CameraExInfo;

    if-eqz v0, :cond_f

    # getter for: Landroid/hardware/CameraInjector$CameraExInfo;->mCameraParameterInfo:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/hardware/CameraInjector$CameraExInfo;->access$500(Landroid/hardware/CameraInjector$CameraExInfo;)Ljava/util/HashMap;

    move-result-object v1

    return-object v1

    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getCameraRoleId(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    sget-object v0, Landroid/hardware/CameraInjector;->sCameraIdRoleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getNumberOfCameras(I)I
    .registers 2

    invoke-static {}, Landroid/hardware/CameraInjector;->isExposeAuxCamera()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x2

    if-le p0, v0, :cond_a

    const/4 p0, 0x2

    :cond_a
    invoke-static {}, Landroid/hardware/CameraInjector;->limitCamera()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    if-le p0, v0, :cond_14

    const/4 p0, 0x1

    :cond_14
    return p0
.end method

.method public static getParametersEx(Landroid/hardware/Camera$Parameters;)V
    .registers 8

    const-string/jumbo v0, "remove_lower_perview_size_list"

    invoke-static {v0}, Landroid/hardware/CameraInjector;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const v2, 0xe1000

    const-string v3, "extra_min_preview_size"

    invoke-static {v3, v2}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    iget v6, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v5, v6

    if-gt v2, v5, :cond_39

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_39
    goto :goto_23

    :cond_3a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_4f

    nop

    invoke-static {v1}, Landroid/hardware/CameraInjector;->getValueString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "preview-size-values"

    invoke-virtual {p0, v4, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    return-void
.end method

.method private static getValueString(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_38

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_30

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_38
    const-string v0, ""

    return-object v0
.end method

.method public static hideLogicalAndVirtualCamera()Z
    .registers 1

    const-string v0, "camera_hide_logical_package_list"

    invoke-static {v0}, Landroid/hardware/CameraInjector;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static initCamera(Landroid/hardware/Camera;I)V
    .registers 5

    new-instance v0, Landroid/hardware/CameraInjector$CameraExInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/CameraInjector$CameraExInfo;-><init>(ILandroid/hardware/CameraInjector$1;)V

    sget-object v1, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "atom,bomb,apricot,banana,cannon,cannong"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/hardware/CameraInjector;->initCameraRoleIdApi1(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)V

    :cond_20
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/hardware/CameraInjector;->onCameraStateChange(Landroid/hardware/Camera;Z)V

    return-void
.end method

.method public static initCameraRoleIdApi1(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)V
    .registers 5

    sget-object v0, Landroid/hardware/CameraInjector;->CAMERA_ROLE_ID:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    sget-object v1, Landroid/hardware/CameraInjector;->sCameraIdRoleMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/hardware/CameraInjector;->CAMERA_ROLE_ID:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2e
    return-void
.end method

.method public static initCameraRoleIdApi2(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)V
    .registers 5

    :try_start_0
    sget-object v0, Landroid/hardware/CameraInjector;->CAMERA_ROLE_ID:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_13

    sget-object v1, Landroid/hardware/CameraInjector;->sCameraIdRoleMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_13} :catch_14

    :cond_13
    goto :goto_31

    :catch_14
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/hardware/CameraInjector;->CAMERA_ROLE_ID:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    return-void
.end method

.method public static isExposeAuxCamera()Z
    .registers 1

    const-string v0, "camera_aux_package_list"

    invoke-static {v0}, Landroid/hardware/CameraInjector;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_1a

    :cond_f
    const-string v0, "camera.aux.packagelist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/CameraInjector;->limitByPackageName(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    return v0
.end method

.method private static isInRotateWhiteList()Z
    .registers 7

    const-string v0, "camera_rotate_packagelist"

    invoke-static {v0}, Landroid/hardware/CameraInjector;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "camera.rotate.packagelist"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_23

    :cond_1c
    const-string/jumbo v3, "vendor.camera.rotate.packagelist"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInRotateWhiteList whiteList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " processName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CameraInjector"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_69

    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x2c

    invoke-direct {v3, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-interface {v3, v2}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    invoke-interface {v3}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_55
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_69

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_68

    return v1

    :cond_68
    goto :goto_55

    :cond_69
    const/4 v1, 0x0

    return v1
.end method

.method private static isInWhiteList(Ljava/lang/String;)Z
    .registers 8

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_27

    invoke-static {p0}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_27

    array-length v3, v2

    if-lez v3, :cond_27

    array-length v3, v2

    move v4, v1

    :goto_18
    if-ge v4, v3, :cond_27

    aget-object v5, v2, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    const/4 v1, 0x1

    return v1

    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_27
    return v1
.end method

.method public static isLogicalCamera(Landroid/hardware/camera2/impl/CameraMetadataNative;)Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public static isVirtualCamera(Landroid/hardware/camera2/impl/CameraMetadataNative;)Z
    .registers 4

    if-eqz p0, :cond_34

    :try_start_2
    sget-object v0, Landroid/hardware/CameraInjector;->CAMERA_ROLE_ID:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_10} :catch_17

    const/16 v2, 0x64

    if-ge v1, v2, :cond_16

    const/4 v1, 0x0

    return v1

    :cond_16
    goto :goto_34

    :catch_17
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/hardware/CameraInjector;->CAMERA_ROLE_ID:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    :goto_34
    const/4 v0, 0x1

    return v0
.end method

.method public static limitByCameraId(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    const/4 v0, 0x1

    :cond_4
    invoke-static {}, Landroid/hardware/CameraInjector;->isExposeAuxCamera()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_12

    const/4 v0, 0x1

    :cond_12
    invoke-static {}, Landroid/hardware/CameraInjector;->limitCamera()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_20

    const/4 v0, 0x1

    :cond_20
    return v0
.end method

.method private static limitByPackageName(Ljava/lang/String;)Z
    .registers 7

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p0, :cond_38

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_38

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_38

    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v3, 0x2c

    invoke-direct {v2, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-interface {v2, p0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    const/4 v1, 0x1

    goto :goto_38

    :cond_37
    goto :goto_23

    :cond_38
    :goto_38
    return v1
.end method

.method public static limitCamera()Z
    .registers 1

    const-string v0, "camera.limit.packagelist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/CameraInjector;->limitByPackageName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static notifyCameraStateChange(Ljava/lang/String;Z)V
    .registers 11

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "CameraInjector"

    if-nez v0, :cond_e

    const-string v2, "Current application is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const-string v2, "fpsList"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    const-string v3, "camera_state"

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v2, :cond_48

    array-length v6, v2

    if-lez v6, :cond_48

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.miui.powerkeeper.CAMERA_STATE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "package_name"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v8, "application_uid"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p1, :cond_3d

    move v7, v4

    goto :goto_3e

    :cond_3d
    move v7, v5

    :goto_3e
    invoke-virtual {v6, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_48
    if-eqz p0, :cond_bd

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "atom,bomb,apricot,banana,cannon,cannong"

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_bd

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendBroadcast device id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", active:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0x31

    if-eq v6, v7, :cond_97

    const/16 v7, 0x63f

    if-eq v6, v7, :cond_8d

    const/16 v7, 0x6ba

    if-eq v6, v7, :cond_83

    :cond_82
    goto :goto_a0

    :cond_83
    const-string v6, "60"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    move v1, v4

    goto :goto_a0

    :cond_8d
    const-string v6, "21"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    move v1, v5

    goto :goto_a0

    :cond_97
    const-string v6, "1"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    const/4 v1, 0x0

    :goto_a0
    if-eqz v1, :cond_a7

    if-eq v1, v4, :cond_a7

    if-eq v1, v5, :cond_a7

    goto :goto_bd

    :cond_a7
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.ANT_FORCE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.android.phone"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_bd
    :goto_bd
    return-void
.end method

.method public static notifyCameraStateChange(Z)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/hardware/CameraInjector;->notifyCameraStateChange(Ljava/lang/String;Z)V

    return-void
.end method

.method private static onCameraStateChange(Landroid/hardware/Camera;Z)V
    .registers 4

    if-eqz p1, :cond_5

    invoke-static {}, Lmiui/process/ProcessManager;->boostCameraIfNeed()V

    :cond_5
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "atom,bomb,apricot,banana,cannon,cannong"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p0}, Landroid/hardware/CameraInjector;->getCameraParameterInfo(Landroid/hardware/Camera;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-static {p0}, Landroid/hardware/CameraInjector;->getCameraParameterInfo(Landroid/hardware/Camera;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "camera-id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/hardware/CameraInjector;->getCameraRoleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/hardware/CameraInjector;->notifyCameraStateChange(Ljava/lang/String;Z)V

    goto :goto_2d

    :cond_29
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/hardware/CameraInjector;->notifyCameraStateChange(Ljava/lang/String;Z)V

    :cond_2d
    :goto_2d
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "chiron"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "lithium"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "polaris"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    :cond_4c
    if-eqz p1, :cond_52

    invoke-static {p0}, Landroid/hardware/CameraInjector;->createOrientationListener(Landroid/hardware/Camera;)V

    goto :goto_55

    :cond_52
    invoke-static {p0}, Landroid/hardware/CameraInjector;->destoryOrientationListener(Landroid/hardware/Camera;)V

    :cond_55
    :goto_55
    return-void
.end method

.method public static processPreviewFrame(Landroid/hardware/Camera;[B)V
    .registers 4

    sget-object v0, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/CameraInjector$CameraExInfo;

    if-eqz v0, :cond_13

    # getter for: Landroid/hardware/CameraInjector$CameraExInfo;->mReverseFrameData:Z
    invoke-static {v0}, Landroid/hardware/CameraInjector$CameraExInfo;->access$100(Landroid/hardware/CameraInjector$CameraExInfo;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {p1}, Landroid/hardware/CameraInjector;->reversePreviewFrame([B)V

    :cond_13
    return-void
.end method

.method public static releaseCamera(Landroid/hardware/Camera;)V
    .registers 3

    sget-object v0, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/hardware/CameraInjector;->onCameraStateChange(Landroid/hardware/Camera;Z)V

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "atom,bomb,apricot,banana,cannon,cannong"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {p0}, Landroid/hardware/CameraInjector;->getCameraParameterInfo(Landroid/hardware/Camera;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "camera-id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/hardware/CameraInjector;->releaseCameraRoleId(Ljava/lang/String;)V

    :cond_25
    sget-object v0, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    return-void
.end method

.method public static releaseCameraRoleId(Ljava/lang/String;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    :cond_3
    sget-object v0, Landroid/hardware/CameraInjector;->sCameraIdRoleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static reverse([BII)V
    .registers 5

    if-eqz p0, :cond_21

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_21

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-gt p2, v0, :cond_21

    if-ltz p1, :cond_21

    if-gez p2, :cond_11

    goto :goto_21

    :cond_11
    :goto_11
    if-le p2, p1, :cond_20

    aget-byte v0, p0, p2

    aget-byte v1, p0, p1

    aput-byte v1, p0, p2

    aput-byte v0, p0, p1

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    :cond_20
    return-void

    :cond_21
    :goto_21
    return-void
.end method

.method private static reversePreviewFrame([B)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/hardware/CameraInjector;->reverse([BII)V

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/hardware/CameraInjector;->reverseUV([BII)V

    return-void
.end method

.method private static reverseUV([BII)V
    .registers 7

    if-eqz p0, :cond_31

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_31

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-gt p2, v0, :cond_31

    if-ltz p1, :cond_31

    if-gez p2, :cond_11

    goto :goto_31

    :cond_11
    :goto_11
    if-le p2, p1, :cond_30

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    aget-byte v1, p0, p2

    add-int/lit8 v2, p2, -0x1

    aget-byte v3, p0, p1

    aput-byte v3, p0, v2

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aput-byte v2, p0, p2

    aput-byte v0, p0, p1

    add-int/lit8 v2, p1, 0x1

    aput-byte v1, p0, v2

    add-int/lit8 p2, p2, -0x2

    add-int/lit8 p1, p1, 0x2

    goto :goto_11

    :cond_30
    return-void

    :cond_31
    :goto_31
    return-void
.end method

.method private static roundOrientation(II)I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_6

    const/4 v0, 0x1

    goto :goto_1a

    :cond_6
    sub-int v1, p0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_18

    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    move v0, v2

    :goto_1a
    if-eqz v0, :cond_25

    add-int/lit8 v1, p0, 0x2d

    div-int/lit8 v1, v1, 0x5a

    mul-int/lit8 v1, v1, 0x5a

    rem-int/lit16 v1, v1, 0x168

    return v1

    :cond_25
    return p1
.end method

.method public static setParametersEx(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    .registers 6

    const-string v0, "add_still_beautify_list"

    invoke-static {v0}, Landroid/hardware/CameraInjector;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string/jumbo v0, "xiaomi-still-beautify-values"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2b

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    if-eqz v1, :cond_2b

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    const/16 v3, 0x2d0

    if-le v2, v3, :cond_21

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    if-gt v2, v3, :cond_2b

    :cond_21
    nop

    const-string v2, "extra_still_beautify_value"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    invoke-static {p0}, Landroid/hardware/CameraInjector;->getCameraParameterInfo(Landroid/hardware/Camera;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/CameraInjector;->convertSizeToString(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "preview-size"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/CameraInjector;->convertSizeToString(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "picture-size"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    :cond_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setParametersEx: Lost camera info "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_65
    return-void
.end method

.method public static setTorchMode(Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Landroid/hardware/CameraInjector;->limitByCameraId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid cameraId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static startPreview(Landroid/hardware/Camera;)V
    .registers 4

    invoke-static {p0}, Landroid/hardware/CameraInjector;->getCameraParameterInfo(Landroid/hardware/Camera;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_18

    const-string v1, "camera-id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "preview-size"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_2f

    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPreview: Lost camera info "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    return-void
.end method

.method public static takePicture(Landroid/hardware/Camera;)V
    .registers 4

    invoke-static {p0}, Landroid/hardware/CameraInjector;->getCameraParameterInfo(Landroid/hardware/Camera;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_18

    const-string v1, "camera-id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "picture-size"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_2f

    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "takePicture: Lost camera info "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    return-void
.end method
