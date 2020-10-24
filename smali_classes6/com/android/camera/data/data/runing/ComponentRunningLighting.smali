.class public Lcom/android/camera/data/data/runing/ComponentRunningLighting;
.super Lcom/android/camera/data/data/ComponentData;
.source ""


# instance fields
.field private mCapabilities:Lcom/android/camera2/CameraCapabilities;

.field private mTotalDataItems:Landroidx/collection/SimpleArrayMap;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    new-instance p1, Landroidx/collection/SimpleArrayMap;

    invoke-direct {p1}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f08024e

    const v2, 0x7f100311

    const-string v3, "1"

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p1, v3, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f080252

    const v2, 0x7f100315

    const-string v3, "2"

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p1, v3, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f08024d

    const v2, 0x7f100310

    const-string v3, "3"

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p1, v3, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f080250

    const v2, 0x7f100313

    const-string v3, "4"

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p1, v3, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f080251

    const v2, 0x7f100314

    const-string v3, "5"

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p1, v3, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f08024a

    const v2, 0x7f10030d

    const-string v3, "6"

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p1, v3, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f08024c

    const v2, 0x7f10030f

    const-string v3, "7"

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p1, v3, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f08024b

    const v2, 0x7f10030e

    const-string v3, "8"

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p1, v3, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f080146

    const v2, 0x7f10030b

    const-string v3, "9"

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p1, v3, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f080149

    const v2, 0x7f100316

    const-string v3, "10"

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p1, v3, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f080148

    const v2, 0x7f10030c

    const-string v3, "11"

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-virtual {p1, v3, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f08014a

    const v2, 0x7f08014a

    const v3, 0x7f100317

    const-string v4, "12"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const-string v1, "12"

    invoke-virtual {p1, v1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f080145

    const v2, 0x7f080145

    const v3, 0x7f100309

    const-string v4, "13"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const-string v1, "13"

    invoke-virtual {p1, v1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f080142

    const v2, 0x7f080142

    const v3, 0x7f100301

    const-string v4, "14"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const-string v1, "14"

    invoke-virtual {p1, v1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f080144

    const v2, 0x7f080144

    const v3, 0x7f100303

    const-string v4, "15"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const-string v1, "15"

    invoke-virtual {p1, v1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f080141

    const v2, 0x7f080141

    const v3, 0x7f100300

    const-string v4, "16"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const-string v1, "16"

    invoke-virtual {p1, v1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f080143

    const v1, 0x7f080143

    const v2, 0x7f100302

    const-string v3, "17"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const-string v0, "17"

    invoke-virtual {p0, v0, p1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public checkValueValid(ILjava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->getItems()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object p1, p1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p0, "0"

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->initItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string p0, "pref_portrait_lighting"

    return-object p0
.end method

.method public getPortraitLightVersion()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getPortraitLightingVersion()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public initItems()Ljava/util/List;
    .locals 8

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->getPortraitLightingVersion()I

    move-result v1

    const/4 v2, 0x2

    const-string v3, "0"

    const/4 v4, -0x1

    if-ge v1, v2, :cond_2

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f100312

    const v5, 0x7f08024f

    invoke-direct {v1, v5, v5, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f080147

    invoke-direct {v1, v2, v2, v4, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->getPortraitLightingArray()[I

    move-result-object v1

    if-eqz v1, :cond_6

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_6

    aget v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehFrontCameraId()I

    move-result v6

    if-ne v6, v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "8"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v6

    invoke-virtual {v6}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o0ooOO()Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mTotalDataItems:Landroidx/collection/SimpleArrayMap;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public isSwitchOn(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "0"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public reInit(Lcom/android/camera2/CameraCapabilities;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningLighting;->initItems()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-void
.end method
