.class public Lcom/android/camera/data/data/global/ComponentModuleList;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentModuleList.java"


# instance fields
.field private mIntentType:I

.field private mLastCameraId:I


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/global/DataItemGlobal;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method

.method public static final getTransferredMode(I)I
    .locals 1

    const/16 v0, 0xa5

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb0

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb3

    if-eq p0, v0, :cond_1

    return p0

    :cond_0
    const/16 p0, 0xa6

    return p0

    :cond_1
    const/16 p0, 0xa2

    return p0

    :cond_2
    const/16 p0, 0xa3

    return p0
.end method

.method private initItems()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mIntentType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/config/a;->Xb()Z

    move-result v3

    const/16 v4, 0xb1

    const v5, 0x7f0f018b

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mIntentType:I

    if-nez v3, :cond_0

    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v1, v5, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    iget v3, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mIntentType:I

    const/4 v6, 0x1

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/mi/config/a;->nd()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDisplayMode()I

    move-result v3

    if-ne v3, v6, :cond_1

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v7, 0x7f0f018d

    const/16 v8, 0xac

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v1, v1, v7, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v2}, Lcom/mi/config/a;->Rb()Z

    move-result v3

    const v7, 0x7f0f018a

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mIntentType:I

    if-nez v3, :cond_2

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const/16 v8, 0xa1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v1, v1, v7, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v2}, Lcom/mi/config/a;->Rb()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mIntentType:I

    if-nez v3, :cond_3

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const/16 v8, 0xae

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v1, v1, v7, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget v3, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mIntentType:I

    const/4 v7, 0x2

    if-eq v3, v7, :cond_4

    if-nez v3, :cond_5

    :cond_4
    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v7, 0x7f0f0193

    const/16 v8, 0xa2

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v1, v1, v7, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget v3, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mIntentType:I

    const/4 v7, 0x3

    const/16 v8, 0xa3

    const v9, 0x7f0f0189

    if-ne v3, v7, :cond_6

    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v1, v9, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    if-eq v3, v6, :cond_7

    if-nez v3, :cond_10

    :cond_7
    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v1, v1, v9, v7}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mIntentType:I

    if-nez v3, :cond_8

    invoke-virtual {v2}, Lcom/mi/config/a;->fd()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDisplayMode()I

    move-result v3

    if-ne v3, v6, :cond_8

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0f018f

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lcom/android/camera/data/data/ComponentDataItem;

    const/16 v8, 0xaf

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v1, v1, v3, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual {v2}, Lcom/mi/config/a;->nc()Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mIntentType:I

    if-nez v3, :cond_9

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v7, 0x7f0f0190

    const/16 v8, 0xab

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v1, v1, v7, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    sget-boolean v3, Lcom/mi/config/b;->Kn:Z

    if-nez v3, :cond_a

    sget-boolean v3, Lcom/mi/config/b;->Ln:Z

    if-nez v3, :cond_a

    sget-boolean v3, Lcom/mi/config/b;->Mn:Z

    if-eqz v3, :cond_b

    :cond_a
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/config/a;->Nb()Z

    move-result v3

    if-eqz v3, :cond_b

    iget v3, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mIntentType:I

    if-nez v3, :cond_b

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v1, v1, v5, v7}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-virtual {v2}, Lcom/mi/config/a;->uc()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v2}, Lcom/mi/config/a;->Zc()Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_c
    iget v3, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mIntentType:I

    if-nez v3, :cond_d

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDisplayMode()I

    move-result v3

    if-ne v3, v6, :cond_d

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v7, 0x7f0f029a

    const/16 v8, 0xad

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v1, v1, v7, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    sget-boolean v3, Lcom/mi/config/b;->Kn:Z

    if-nez v3, :cond_e

    sget-boolean v3, Lcom/mi/config/b;->Ln:Z

    if-nez v3, :cond_e

    sget-boolean v3, Lcom/mi/config/b;->Mn:Z

    if-nez v3, :cond_e

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/config/a;->Nb()Z

    move-result v3

    if-eqz v3, :cond_e

    iget v3, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mIntentType:I

    if-nez v3, :cond_e

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v1, v5, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-virtual {v2}, Lcom/mi/config/a;->tc()Z

    move-result v2

    if-eqz v2, :cond_f

    iget v2, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mIntentType:I

    if-nez v2, :cond_f

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f0f018e

    const/16 v4, 0xa6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v1, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDisplayMode()I

    move-result v2

    if-ne v2, v6, :cond_10

    iget p0, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mIntentType:I

    if-nez p0, :cond_10

    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f0f0191

    const/16 v3, 0xa7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_0
    return-object v0

    :cond_11
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "parse intent first!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/a;->cc()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mLastCameraId:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mLastCameraId:I

    invoke-direct {p0}, Lcom/android/camera/data/data/global/ComponentModuleList;->initItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/data/data/global/ComponentModuleList;->initItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pref_camera_mode_key_intent_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mIntentType:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMode(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public needShowLiveRedDot()Z
    .locals 0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveModuleClicked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public reInit()V
    .locals 0

    return-void
.end method

.method public setIntentType(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/data/data/global/ComponentModuleList;->mIntentType:I

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/data/data/global/ComponentModuleList;->initItems()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-void
.end method
