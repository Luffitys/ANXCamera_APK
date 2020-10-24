.class public Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;
.super Lcom/android/camera/data/data/ComponentData;
.source ""


# static fields
.field private static ITEMS_FROM_WIDE_FAST_MOTION:Ljava/util/List; = null

.field private static ITEMS_FROM_WIDE_RECORD_VIDEO:Ljava/util/List; = null

.field public static final QUALITY_1080P:Ljava/lang/String; = "6"

.field public static final QUALITY_1080P_60FPS:Ljava/lang/String; = "6,60"

.field public static final QUALITY_4K:Ljava/lang/String; = "8"

.field public static final QUALITY_4K_60FPS:Ljava/lang/String; = "8,60"

.field public static final QUALITY_720P:Ljava/lang/String; = "5"

.field public static final QUALITY_8K:Ljava/lang/String; = "3001"

.field public static final QUALITY_8K_24FPS:Ljava/lang/String; = "3001,24"

.field private static final QUALITY_ALL:Ljava/util/List;

.field private static final TAG:Ljava/lang/String; = "ComponentConfigVideoQuality"


# instance fields
.field private mComponentConfigVideoSubFps:Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;

.field private mComponentConfigVideoSubQuality:Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;

.field private mConfigType:I

.field private mDefaultValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->QUALITY_ALL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->QUALITY_ALL:Ljava/util/List;

    const-string v1, "8,60"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->QUALITY_ALL:Ljava/util/List;

    const-string v1, "8"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->QUALITY_ALL:Ljava/util/List;

    const-string v1, "6,60"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->QUALITY_ALL:Ljava/util/List;

    const-string v1, "6"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->QUALITY_ALL:Ljava/util/List;

    const-string v1, "5"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->ITEMS_FROM_WIDE_RECORD_VIDEO:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->ITEMS_FROM_WIDE_FAST_MOTION:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    const/16 v0, 0xd0

    iput v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mConfigType:I

    const-string v0, "6"

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    new-instance v0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;

    invoke-direct {v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mComponentConfigVideoSubQuality:Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;

    new-instance v0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;

    invoke-direct {v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mComponentConfigVideoSubFps:Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;

    return-void
.end method

.method private filterAllQualities(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;ILjava/util/List;Ljava/util/List;)V
    .locals 2

    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->getCameraId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getVideoSATCameraId()I

    move-result v0

    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->getCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez p4, :cond_3

    if-eqz p6, :cond_2

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p4

    if-nez p4, :cond_3

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p6}, Lcom/android/camera/data/data/ComponentData;->copyList(Ljava/util/List;Ljava/util/List;)V

    :cond_3
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p4

    if-lez p4, :cond_4

    if-nez p2, :cond_4

    if-eqz p6, :cond_4

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_4

    sget-object p2, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->QUALITY_ALL:Ljava/util/List;

    invoke-virtual {p0, p6, p2}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    invoke-virtual {p0, p6, p1}, Lcom/android/camera/data/data/ComponentData;->copyList(Ljava/util/List;Ljava/util/List;)V

    if-nez v0, :cond_4

    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->getCameraId()I

    move-result p2

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result p4

    if-eq p2, p4, :cond_4

    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->getCameraId()I

    move-result p2

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result p3

    if-eq p2, p3, :cond_4

    invoke-virtual {p0, p1, p5}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    :cond_4
    return-void
.end method

.method public static getQualityMappedValue(Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "8,60"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :sswitch_1
    const-string v0, "6,60"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :sswitch_2
    const-string v0, "3001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_3
    const-string v0, "8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v4

    goto :goto_1

    :sswitch_5
    const-string v0, "5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :sswitch_6
    const-string v0, "3001,24"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    return v1

    :pswitch_0
    const/16 p0, 0x40

    return p0

    :pswitch_1
    const/16 p0, 0x20

    return p0

    :pswitch_2
    const/16 p0, 0x10

    return p0

    :pswitch_3
    const/16 p0, 0x8

    return p0

    :pswitch_4
    return v2

    :pswitch_5
    return v3

    :pswitch_6
    return v4

    :sswitch_data_0
    .sparse-switch
        -0x217e3a70 -> :sswitch_6
        0x35 -> :sswitch_5
        0x36 -> :sswitch_4
        0x38 -> :sswitch_3
        0x17e91e -> :sswitch_2
        0x1937f0 -> :sswitch_1
        0x1a20ae -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSupportMaxValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-boolean v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mIsDisabled:Z

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method private initItem(Ljava/util/List;IILcom/android/camera2/CameraCapabilities;I)Ljava/util/List;
    .locals 14

    move-object v7, p1

    move/from16 v8, p2

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0xa1

    const v1, 0x7f100669

    const/16 v10, 0xa9

    const/16 v11, 0xa2

    const-string v2, "6"

    const v3, 0x7f0801c4

    if-eq v8, v0, :cond_3

    if-eq v8, v11, :cond_2

    if-eq v8, v10, :cond_2

    const/16 v0, 0xb4

    if-eq v8, v0, :cond_2

    const/16 v0, 0xcc

    if-eq v8, v0, :cond_1

    const/16 v0, 0xd4

    if-eq v8, v0, :cond_0

    packed-switch v8, :pswitch_data_0

    :goto_0
    move-object/from16 v4, p4

    goto/16 :goto_1

    :cond_0
    :pswitch_0
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f10066c

    const v2, 0x7f0801cd

    const-string v3, "8"

    invoke-direct {v0, v2, v2, v1, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :pswitch_1
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->initVideoMode(Ljava/util/List;IILcom/android/camera2/CameraCapabilities;ILjava/util/List;)V

    goto :goto_1

    :cond_3
    :pswitch_2
    const-class v0, Landroid/graphics/SurfaceTexture;

    move-object/from16 v4, p4

    invoke-virtual {v4, v0}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithAssignedMode(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    new-instance v5, Lcom/android/camera/CameraSize;

    const/16 v6, 0x500

    const/16 v12, 0x2d0

    invoke-direct {v5, v6, v12}, Lcom/android/camera/CameraSize;-><init>(II)V

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Lcom/android/camera/data/data/ComponentDataItem;

    const v6, 0x7f10066e

    const v12, 0x7f0801d1

    const-string v13, "5"

    invoke-direct {v5, v12, v12, v6, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-boolean v5, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OoooO0:Z

    if-nez v5, :cond_5

    sget-boolean v5, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OoooO0O:Z

    if-nez v5, :cond_5

    new-instance v5, Lcom/android/camera/CameraSize;

    const/16 v6, 0x780

    const/16 v12, 0x438

    invoke-direct {v5, v6, v12}, Lcom/android/camera/CameraSize;-><init>(II)V

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    if-ne v8, v11, :cond_6

    sget-object v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->ITEMS_FROM_WIDE_RECORD_VIDEO:Ljava/util/List;

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->filterAllQualities(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;ILjava/util/List;Ljava/util/List;)V

    goto :goto_3

    :cond_6
    if-ne v8, v10, :cond_7

    sget-object v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->ITEMS_FROM_WIDE_FAST_MOTION:Ljava/util/List;

    goto :goto_2

    :cond_7
    :goto_3
    return-object v9

    nop

    :pswitch_data_0
    .packed-switch 0xcf
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private initTwoComponent(IILcom/android/camera2/CameraCapabilities;I)Z
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa2

    if-ne p1, v1, :cond_1

    :cond_0
    if-nez p2, :cond_1

    if-nez p4, :cond_1

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->is8KCamcorderSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xad

    iput v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mConfigType:I

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mComponentConfigVideoSubQuality:Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->reInit(IILcom/android/camera2/CameraCapabilities;I)V

    iget-object v1, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mComponentConfigVideoSubFps:Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;

    iget-object v6, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mComponentConfigVideoSubQuality:Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->reInit(IILcom/android/camera2/CameraCapabilities;ILcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private initVideoMode(Ljava/util/List;IILcom/android/camera2/CameraCapabilities;ILjava/util/List;)V
    .locals 7

    const-class p0, Landroid/media/MediaRecorder;

    const v0, 0x8004

    invoke-virtual {p4, p0, v0}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSizeWithTargetMode(Ljava/lang/Class;I)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/android/camera/CameraSize;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraSize;-><init>(II)V

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-static {p3, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f10066e

    const v2, 0x7f0801d1

    const-string v3, "5"

    invoke-direct {v0, v2, v2, v1, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lcom/android/camera/CameraSize;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraSize;-><init>(II)V

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0xa9

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    invoke-static {p3, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f100669

    const v5, 0x7f0801c4

    const-string v6, "6"

    invoke-direct {v0, v5, v5, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p6, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq p2, v3, :cond_1

    invoke-static {v1, v2, p5, p4}, Lcom/android/camera/CameraSettings;->isSupportFpsRange(IIILcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f10066a

    const v2, 0x7f0801c5

    const-string v4, "6,60"

    invoke-direct {v0, v2, v2, v1, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->get4kProfile()I

    move-result v0

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o0000O00()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/camera/CameraSize;

    const/16 v2, 0xf00

    const/16 v4, 0x870

    invoke-direct {v1, v2, v4}, Lcom/android/camera/CameraSize;-><init>(II)V

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p3, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const p3, 0x7f10066c

    const v0, 0x7f0801cd

    const-string v1, "8"

    invoke-direct {p0, v0, v0, p3, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq p2, v3, :cond_2

    invoke-static {v2, v4, p5, p4}, Lcom/android/camera/CameraSettings;->isSupportFpsRange(IIILcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const p2, 0x7f10066d

    const p3, 0x7f0801ce

    const-string p4, "8,60"

    invoke-direct {p0, p3, p3, p2, p4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p6, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private isContain(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2

    const/4 p0, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lcom/android/camera/data/data/ComponentDataItem;->mIsDisabled:Z

    if-nez v0, :cond_1

    const/4 p0, 0x1

    :cond_2
    :goto_0
    return p0
.end method


# virtual methods
.method protected checkValueValid(ILjava/lang/String;)Z
    .locals 1

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, p2, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->isContain(Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkValueValid: invalid value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public disableUpdate()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/ComponentData;->supprotedItemsSize(Ljava/util/List;)I

    move-result p0

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public getComponentConfigVideoSubFps()Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mComponentConfigVideoSubFps:Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;

    return-object p0
.end method

.method public getComponentConfigVideoSubQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mComponentConfigVideoSubQuality:Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;

    return-object p0
.end method

.method public getComponentValue(I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getComponentValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getComponentValue(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mConfigType:I

    const/16 v1, 0xad

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd0

    if-eq v0, v1, :cond_0

    return-object p2

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->checkValueValid(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->checkValueValid(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-class p1, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset invalid value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getSupportMaxValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    iget-object p2, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mComponentConfigVideoSubQuality:Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;

    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->getComponentValue(I)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mComponentConfigVideoSubFps:Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "30"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_4
    return-object p2
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "6"

    :cond_0
    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f10067f

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->TAG:Ljava/lang/String;

    const-string v1, "List is empty!"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    :goto_0
    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const/16 p0, 0xa1

    if-eq p1, p0, :cond_2

    const/16 p0, 0xa9

    if-eq p1, p0, :cond_1

    const/16 p0, 0xb4

    if-eq p1, p0, :cond_0

    const-string p0, "pref_video_quality_key"

    return-object p0

    :cond_0
    const-string p0, "pref_camera_pro_video_quality"

    return-object p0

    :cond_1
    const-string p0, "pref_camera_fastmotion_quality"

    return-object p0

    :cond_2
    const-string p0, "pref_camera_fun_video_quality"

    return-object p0
.end method

.method public isSupportVideoQuality(II)Z
    .locals 11

    iget v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mConfigType:I

    const/16 v1, 0xad

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd0

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_0
    const/16 v0, 0xa2

    if-eq p1, v0, :cond_1

    return v2

    :cond_1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v8

    if-nez v8, :cond_2

    return v3

    :cond_2
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isVideoQuality8KOpen(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->is8KCamcorderSupported(I)Z

    move-result p0

    return p0

    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move v6, p1

    move-object v10, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->initVideoMode(Ljava/util/List;IILcom/android/camera2/CameraCapabilities;ILjava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    :goto_0
    return v3
.end method

.method public isTwoComponent()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mConfigType:I

    const/16 v0, 0xad

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;I)V
    .locals 7

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->initTwoComponent(IILcom/android/camera2/CameraCapabilities;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xd0

    iput v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mConfigType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p0

    move-object v2, v0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->initItem(Ljava/util/List;IILcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p4

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    const/16 v2, 0xa1

    const-string v3, "6"

    if-eq p1, v2, :cond_9

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    iput-object v3, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    :cond_1
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isAiEnhancedVideoEnabled(I)Z

    move-result v4

    const-string v5, "5"

    if-eqz v4, :cond_2

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    iput-object v3, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    :cond_2
    invoke-static {p3, p1}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result p3

    const-string v4, "8"

    if-eqz p3, :cond_3

    filled-new-array {v5, v3, v4}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v0, p3}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    iput-object v3, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    :cond_3
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result p3

    if-eqz p3, :cond_4

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v0, p3}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    iput-object v3, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    :cond_4
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isMasterFilterOn(I)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoMasterFilter()I

    move-result p3

    const/16 v6, 0xc8

    if-ne p3, v6, :cond_5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v0, p3}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    iput-object v5, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    goto :goto_0

    :cond_5
    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v0, p3}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    iput-object v3, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    :cond_6
    :goto_0
    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result p3

    if-eqz p3, :cond_7

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v0, p3}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    iput-object v5, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    :cond_7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result p3

    if-eqz p3, :cond_8

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v0, p3}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    iput-object v5, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    :cond_8
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isProVideoLogOpen(I)Z

    move-result p3

    if-eqz p3, :cond_9

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v0, p3}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    iput-object v4, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    :cond_9
    iget-object p3, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez p3, :cond_c

    if-ne v2, p1, :cond_a

    :goto_1
    iput-object v3, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    goto :goto_2

    :cond_a
    if-ne p2, v1, :cond_b

    goto :goto_1

    :cond_b
    if-nez p2, :cond_c

    const-string p1, "pref_video_quality_key"

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getDefaultValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    :cond_c
    :goto_2
    if-eqz p4, :cond_d

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_d

    iget-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    if-eqz p1, :cond_d

    invoke-interface {p4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_d

    sub-int/2addr p1, v1

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    :cond_d
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-void
.end method

.method public reset()V
    .locals 1

    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->ITEMS_FROM_WIDE_RECORD_VIDEO:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->ITEMS_FROM_WIDE_FAST_MOTION:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->setForceValueOverlay(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mComponentConfigVideoSubFps:Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->reset()V

    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mComponentConfigVideoSubQuality:Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->reset()V

    return-void
.end method

.method public setComponentValue(ILjava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mConfigType:I

    const/16 v1, 0xad

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd0

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mComponentConfigVideoSubQuality:Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    array-length v0, p2

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mComponentConfigVideoSubFps:Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;

    if-le v0, v1, :cond_2

    aget-object p2, p2, v1

    goto :goto_0

    :cond_2
    const-string p2, "30"

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setForceValueOverlay(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->QUALITY_ALL:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    return-void
.end method
