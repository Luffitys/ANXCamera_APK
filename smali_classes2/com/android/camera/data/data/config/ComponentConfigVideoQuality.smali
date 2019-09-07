.class public Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigVideoQuality.java"


# static fields
.field public static final QUALITY_1080P:Ljava/lang/String; = "6"

.field public static final QUALITY_1080P_60FPS:Ljava/lang/String; = "6,60"

.field public static final QUALITY_4K:Ljava/lang/String; = "8"

.field public static final QUALITY_4K_60FPS:Ljava/lang/String; = "8,60"

.field public static final QUALITY_720P:Ljava/lang/String; = "5"

.field private static final TAG:Ljava/lang/String; = "ComponentConfigVideoQuality"


# instance fields
.field private mDefaultValue:Ljava/lang/String;

.field private mForceValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    const-string p1, "6"

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    return-void
.end method

.method private isContain(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)Z"
        }
    .end annotation

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

    iget-object v0, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    :cond_2
    :goto_0
    return p0
.end method

.method public static isSupportFpsRange(IIILcom/android/camera2/CameraCapabilities;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p3}, Lcom/android/camera2/CameraCapabilities;->getSupportedCustomFpsRange()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/camera2/MiCustomFpsRange;

    invoke-virtual {p3}, Lcom/android/camera2/MiCustomFpsRange;->getWidth()I

    move-result v1

    if-ne v1, p0, :cond_2

    invoke-virtual {p3}, Lcom/android/camera2/MiCustomFpsRange;->getHeight()I

    move-result p3

    if-ne p3, p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method protected checkValueValid(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->isContain(Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkValueValid: invalid value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public disableUpdate()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
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

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->checkValueValid(Ljava/lang/String;)Z

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

    if-eqz v0, :cond_4

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->checkValueValid(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    const-class p2, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset invalid value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, p2, v0}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->isContain(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_0
    return-object v0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:Ljava/lang/String;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f0f0344

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string p0, "pref_video_quality_key"

    return-object p0
.end method

.method public getNextValue(I)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getPersistValue(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v3, v3, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    add-int/lit8 v2, v2, 0x1

    rem-int/2addr v2, v1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:Ljava/lang/String;

    const-class v7, Landroid/media/MediaRecorder;

    invoke-virtual {v3, v7}, Lcom/android/camera2/CameraCapabilities;->getSupportedOutputSize(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v7

    invoke-static {}, Lcom/android/camera/CameraSettings;->get4kProfile()I

    move-result v8

    const/16 v9, 0xa2

    const v11, 0x7f0f033e

    const/16 v12, 0xa9

    const v13, 0x7f0800a1

    const v14, 0x7f0800a9

    const-string v15, "5"

    const-string v10, "6"

    if-eq v1, v9, :cond_0

    if-eq v1, v12, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    iput-object v10, v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:Ljava/lang/String;

    :cond_2
    invoke-static {v1, v6}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    iput-object v15, v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:Ljava/lang/String;

    :cond_4
    new-instance v6, Lcom/android/camera/CameraSize;

    const/16 v9, 0x500

    const/16 v12, 0x2d0

    invoke-direct {v6, v9, v12}, Lcom/android/camera/CameraSize;-><init>(II)V

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x5

    invoke-static {v2, v6}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:Ljava/lang/String;

    if-eqz v6, :cond_5

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v6, v14, v14, v11, v15}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v9, 0x7f0800a8

    invoke-direct {v6, v9, v9, v11, v15}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_0
    new-instance v6, Lcom/android/camera/CameraSize;

    const/16 v9, 0x438

    const/16 v12, 0x780

    invoke-direct {v6, v12, v9}, Lcom/android/camera/CameraSize;-><init>(II)V

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x6

    invoke-static {v2, v6}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:Ljava/lang/String;

    if-eqz v6, :cond_7

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v11, 0x7f0f0339

    invoke-direct {v6, v13, v13, v11, v10}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    const v11, 0x7f0f0339

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v13, 0x7f0800a0

    const v14, 0x7f0800a0

    invoke-direct {v6, v13, v14, v11, v10}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    const/16 v6, 0xa9

    if-eq v1, v6, :cond_8

    invoke-static {v12, v9, v4, v3}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->isSupportFpsRange(IIILcom/android/camera2/CameraCapabilities;)Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v9, 0x7f0800a2

    const v11, 0x7f0800a2

    const v12, 0x7f0f033a

    const-string v13, "6,60"

    invoke-direct {v6, v9, v11, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-static {}, Lcom/mi/config/b;->Cj()Z

    move-result v6

    if-eqz v6, :cond_9

    new-instance v6, Lcom/android/camera/CameraSize;

    const/16 v9, 0x870

    const/16 v11, 0xf00

    invoke-direct {v6, v11, v9}, Lcom/android/camera/CameraSize;-><init>(II)V

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {v2, v8}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v6

    if-eqz v6, :cond_9

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    const v7, 0x7f0800a6

    const v8, 0x7f0800a6

    const v12, 0x7f0f033c

    const-string v13, "8"

    invoke-direct {v6, v7, v8, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v6, 0xa9

    if-eq v1, v6, :cond_9

    invoke-static {v11, v9, v4, v3}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->isSupportFpsRange(IIILcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f0800a7

    const v4, 0x7f0800a7

    const v6, 0x7f0f033d

    const-string v7, "8,60"

    invoke-direct {v1, v3, v4, v6, v7}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_b

    const/4 v1, 0x0

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iput-object v15, v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f0f033e

    const v3, 0x7f0800a9

    invoke-direct {v1, v3, v3, v2, v15}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iput-object v10, v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f0f0339

    const v3, 0x7f0800a1

    invoke-direct {v1, v3, v3, v2, v10}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    if-ne v2, v3, :cond_c

    iput-object v10, v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    goto :goto_3

    :cond_c
    if-nez v2, :cond_e

    const v1, 0x7f0f0338

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->isContain(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e

    sub-int/2addr v1, v3

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    goto :goto_3

    :cond_d
    iput-object v1, v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    :cond_e
    :goto_3
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-void
.end method
