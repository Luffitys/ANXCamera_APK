.class public Lcom/android/camera/dualvideo/util/CameraIDManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraIDManager"

.field private static mManager:Lcom/android/camera/dualvideo/util/CameraIDManager;


# instance fields
.field private final m6Patch2CameraId:Landroid/util/SparseIntArray;

.field private mIdZoomList:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/dualvideo/util/CameraIDManager;->m6Patch2CameraId:Landroid/util/SparseIntArray;

    invoke-direct {p0}, Lcom/android/camera/dualvideo/util/CameraIDManager;->init6PatchCameraIds()V

    return-void
.end method

.method static synthetic OooO00o(ILcom/android/camera/dualvideo/util/CameraIDManager$IdZoomMap;)Z
    .locals 0

    iget p1, p1, Lcom/android/camera/dualvideo/util/CameraIDManager$IdZoomMap;->mId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic OooO0O0(Lcom/android/camera/dualvideo/util/CameraIDManager$IdZoomMap;)Ljava/lang/Float;
    .locals 0

    iget p0, p0, Lcom/android/camera/dualvideo/util/CameraIDManager$IdZoomMap;->mZoom:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method private getIdByZoom(Ljava/util/ArrayList;F)I
    .locals 3

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, -0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/dualvideo/util/CameraIDManager$IdZoomMap;

    iget v1, v0, Lcom/android/camera/dualvideo/util/CameraIDManager$IdZoomMap;->mZoom:F

    const v2, 0x3c23d70a    # 0.01f

    sub-float/2addr v1, v2

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    iget p1, v0, Lcom/android/camera/dualvideo/util/CameraIDManager$IdZoomMap;->mId:I

    goto :goto_0

    :cond_0
    return p1
.end method

.method public static declared-synchronized getInstance()Lcom/android/camera/dualvideo/util/CameraIDManager;
    .locals 2

    const-class v0, Lcom/android/camera/dualvideo/util/CameraIDManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/camera/dualvideo/util/CameraIDManager;->mManager:Lcom/android/camera/dualvideo/util/CameraIDManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/camera/dualvideo/util/CameraIDManager;

    invoke-direct {v1}, Lcom/android/camera/dualvideo/util/CameraIDManager;-><init>()V

    sput-object v1, Lcom/android/camera/dualvideo/util/CameraIDManager;->mManager:Lcom/android/camera/dualvideo/util/CameraIDManager;

    :cond_0
    sget-object v1, Lcom/android/camera/dualvideo/util/CameraIDManager;->mManager:Lcom/android/camera/dualvideo/util/CameraIDManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getZoomDescription(Lcom/android/camera/dualvideo/render/LayoutType;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/dualvideo/util/CameraIDManager$1;->$SwitchMap$com$android$camera$dualvideo$render$LayoutType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "1X"

    return-object p0

    :cond_0
    const-string p0, "Front"

    return-object p0

    :cond_1
    const-string p0, "10X"

    return-object p0

    :cond_2
    const-string p0, "5X"

    return-object p0

    :cond_3
    const-string p0, "2X"

    return-object p0

    :cond_4
    const-string p0, "UW"

    return-object p0
.end method

.method public static getZoomValue(Lcom/android/camera/dualvideo/render/LayoutType;)F
    .locals 1

    sget-object v0, Lcom/android/camera/dualvideo/util/CameraIDManager$1;->$SwitchMap$com$android$camera$dualvideo$render$LayoutType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    const/high16 p0, 0x41200000    # 10.0f

    return p0

    :cond_1
    const/high16 p0, 0x40a00000    # 5.0f

    return p0

    :cond_2
    const/high16 p0, 0x40000000    # 2.0f

    return p0

    :cond_3
    const/high16 p0, 0x3f000000    # 0.5f

    return p0
.end method

.method private init6PatchCameraIds()V
    .locals 4

    invoke-direct {p0}, Lcom/android/camera/dualvideo/util/CameraIDManager;->initIdWithZoomList()V

    iget-object v0, p0, Lcom/android/camera/dualvideo/util/CameraIDManager;->m6Patch2CameraId:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_0:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/render/LayoutType;->getIndex()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/dualvideo/util/CameraIDManager;->mIdZoomList:Ljava/util/ArrayList;

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {p0, v2, v3}, Lcom/android/camera/dualvideo/util/CameraIDManager;->getIdByZoom(Ljava/util/ArrayList;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/util/CameraIDManager;->m6Patch2CameraId:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_1:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/render/LayoutType;->getIndex()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/dualvideo/util/CameraIDManager;->mIdZoomList:Ljava/util/ArrayList;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, v2, v3}, Lcom/android/camera/dualvideo/util/CameraIDManager;->getIdByZoom(Ljava/util/ArrayList;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/util/CameraIDManager;->m6Patch2CameraId:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_2:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/render/LayoutType;->getIndex()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/dualvideo/util/CameraIDManager;->mIdZoomList:Ljava/util/ArrayList;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {p0, v2, v3}, Lcom/android/camera/dualvideo/util/CameraIDManager;->getIdByZoom(Ljava/util/ArrayList;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/util/CameraIDManager;->m6Patch2CameraId:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_3:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/render/LayoutType;->getIndex()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/dualvideo/util/CameraIDManager;->mIdZoomList:Ljava/util/ArrayList;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-direct {p0, v2, v3}, Lcom/android/camera/dualvideo/util/CameraIDManager;->getIdByZoom(Ljava/util/ArrayList;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/util/CameraIDManager;->m6Patch2CameraId:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_4:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/render/LayoutType;->getIndex()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/dualvideo/util/CameraIDManager;->mIdZoomList:Ljava/util/ArrayList;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-direct {p0, v2, v3}, Lcom/android/camera/dualvideo/util/CameraIDManager;->getIdByZoom(Ljava/util/ArrayList;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/util/CameraIDManager;->m6Patch2CameraId:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_5:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v1}, Lcom/android/camera/dualvideo/render/LayoutType;->getIndex()I

    move-result v1

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getFrontCameraId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init6PatchCameraIds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/dualvideo/util/CameraIDManager;->m6Patch2CameraId:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraIDManager"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initIdWithZoomList()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v3, Lcom/android/camera/dualvideo/util/CameraIDManager$IdZoomMap;

    const v4, 0x3f19999a    # 0.6f

    invoke-direct {v3, v1, v4}, Lcom/android/camera/dualvideo/util/CameraIDManager$IdZoomMap;-><init>(IF)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v1

    if-eq v1, v2, :cond_1

    new-instance v3, Lcom/android/camera/dualvideo/util/CameraIDManager$IdZoomMap;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v1, v4}, Lcom/android/camera/dualvideo/util/CameraIDManager$IdZoomMap;-><init>(IF)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v1

    if-eq v1, v2, :cond_2

    new-instance v3, Lcom/android/camera/dualvideo/util/CameraIDManager$IdZoomMap;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v3, v1, v4}, Lcom/android/camera/dualvideo/util/CameraIDManager$IdZoomMap;-><init>(IF)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v1

    if-eq v1, v2, :cond_3

    new-instance v2, Lcom/android/camera/dualvideo/util/CameraIDManager$IdZoomMap;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-direct {v2, v1, v3}, Lcom/android/camera/dualvideo/util/CameraIDManager$IdZoomMap;-><init>(IF)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iput-object v0, p0, Lcom/android/camera/dualvideo/util/CameraIDManager;->mIdZoomList:Ljava/util/ArrayList;

    return-void
.end method

.method public static sortId([Ljava/lang/Integer;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 4

    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/android/camera/dualvideo/util/Assert;->check(Z)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sget-object v3, Lcom/android/camera/dualvideo/util/CameraTag;->MAIN:Lcom/android/camera/dualvideo/util/CameraTag;

    aget-object v2, p0, v2

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/camera/dualvideo/util/CameraTag;->SUB:Lcom/android/camera/dualvideo/util/CameraTag;

    aget-object p0, p0, v1

    invoke-virtual {v0, v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    sget-object v1, Lcom/android/camera/dualvideo/util/CameraTag;->SUB:Lcom/android/camera/dualvideo/util/CameraTag;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isFrontCameraId(I)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    sget-object v1, Lcom/android/camera/dualvideo/util/CameraTag;->MAIN:Lcom/android/camera/dualvideo/util/CameraTag;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isFrontCameraId(I)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_1
    invoke-static {v0}, Lcom/android/camera/dualvideo/util/CameraIDManager;->switchMainSubId(Ljava/util/concurrent/ConcurrentHashMap;)V

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/android/camera/dualvideo/util/CameraIDManager;->getInstance()Lcom/android/camera/dualvideo/util/CameraIDManager;

    move-result-object p0

    sget-object v1, Lcom/android/camera/dualvideo/util/CameraTag;->MAIN:Lcom/android/camera/dualvideo/util/CameraTag;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/dualvideo/util/CameraIDManager;->getZoomById(I)F

    move-result v1

    sget-object v2, Lcom/android/camera/dualvideo/util/CameraTag;->SUB:Lcom/android/camera/dualvideo/util/CameraTag;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/camera/dualvideo/util/CameraIDManager;->getZoomById(I)F

    move-result p0

    cmpl-float p0, p0, v1

    if-lez p0, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    return-object v0
.end method

.method private static switchMainSubId(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 3

    sget-object v0, Lcom/android/camera/dualvideo/util/CameraTag;->MAIN:Lcom/android/camera/dualvideo/util/CameraTag;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/android/camera/dualvideo/util/CameraTag;->SUB:Lcom/android/camera/dualvideo/util/CameraTag;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/android/camera/dualvideo/util/CameraTag;->MAIN:Lcom/android/camera/dualvideo/util/CameraTag;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/dualvideo/util/CameraTag;->SUB:Lcom/android/camera/dualvideo/util/CameraTag;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get6PatchToIdMap()Landroid/util/SparseIntArray;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/util/CameraIDManager;->m6Patch2CameraId:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public getZoomById(I)F
    .locals 1

    iget-object p0, p0, Lcom/android/camera/dualvideo/util/CameraIDManager;->mIdZoomList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/camera/dualvideo/util/OooO0O0;

    invoke-direct {v0, p1}, Lcom/android/camera/dualvideo/util/OooO0O0;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/camera/dualvideo/util/OooO00o;->OooO00o:Lcom/android/camera/dualvideo/util/OooO00o;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method
