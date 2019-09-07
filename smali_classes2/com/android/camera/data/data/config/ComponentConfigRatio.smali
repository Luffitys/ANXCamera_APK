.class public Lcom/android/camera/data/data/config/ComponentConfigRatio;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigRatio.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/data/config/ComponentConfigRatio$CameraRatio;
    }
.end annotation


# static fields
.field public static final RATIO_16X9:Ljava/lang/String; = "16x9"

.field public static final RATIO_1X1:Ljava/lang/String; = "1x1"

.field public static final RATIO_4X3:Ljava/lang/String; = "4x3"

.field public static final RATIO_FULL_18X9:Ljava/lang/String; = "18x9"

.field public static final RATIO_FULL_18_7_5X9:Ljava/lang/String; = "18.75x9"

.field public static final RATIO_FULL_195X9:Ljava/lang/String; = "19.5x9"

.field public static final RATIO_FULL_19X9:Ljava/lang/String; = "19x9"


# instance fields
.field public final mCurrentScreenRatio:F

.field private mDefaultValue:Ljava/lang/String;
    .annotation build Lcom/android/camera/data/data/config/ComponentConfigRatio$CameraRatio;
    .end annotation
.end field

.field private mForceValue:Ljava/lang/String;

.field private sEntryValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sSupport18_7_5x9:Z

.field private sSupport18x9:Z

.field private sSupport195x9:Z

.field private sSupport19x9:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    sget p1, Lcom/android/camera/Util;->sWindowHeight:I

    int-to-float p1, p1

    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mCurrentScreenRatio:F

    const-string p1, "4x3"

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mDefaultValue:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getComponentValue(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    const/16 v1, 0xa5

    if-eqz v0, :cond_0

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-ne v1, p1, :cond_1

    const-string p1, "1x1"

    if-ne v0, p1, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_3
    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mDefaultValue:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDisplayMode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "16x9"

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mDefaultValue:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mDefaultValue:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f0f0284

    return p0
.end method

.method public getFullSupportRatioValues()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    const-string v1, "4x3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    const-string v1, "16x9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/mi/config/b;->Vh()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    const-string v1, "18x9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->Hc()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    const-string v1, "19x9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->Gc()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    const-string v1, "19.5x9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->Fc()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    const-string v1, "18.75x9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sEntryValues:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItemsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->reInit(IILcom/android/camera2/CameraCapabilities;)V

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
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const/16 p0, 0xa5

    if-eq p1, p0, :cond_0

    const-string p0, "pref_camera_picturesize_key"

    return-object p0

    :cond_0
    const-string p0, "is_square"

    return-object p0
.end method

.method public getMappingModeByRatio(I)I
    .locals 4

    const/16 v0, 0xa3

    const/16 v1, 0xa5

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->isSquareModule()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0xc6aa

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "1x1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p1, 0x0

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    return v0

    :cond_4
    return v1
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
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPictureSizeRatioString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initSensorRatio(Ljava/util/List;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;II)V"
        }
    .end annotation

    new-instance v0, Lcom/android/camera/CameraSize;

    invoke-direct {v0}, Lcom/android/camera/CameraSize;-><init>()V

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraSize;->parseSize(Lcom/android/camera/CameraSize;)Lcom/android/camera/CameraSize;

    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->area()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->area()I

    move-result v2

    move v3, v2

    move v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/CameraSize;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraSize;->parseSize(Lcom/android/camera/CameraSize;)Lcom/android/camera/CameraSize;

    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->getRatio()F

    move-result p1

    const v0, 0x3faaaaaa

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p1, v0, v2

    if-gez p1, :cond_2

    const-string p1, "4x3"

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mDefaultValue:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string p1, "16x9"

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mDefaultValue:Ljava/lang/String;

    :goto_1
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->reInit(IILcom/android/camera2/CameraCapabilities;)V

    return-void
.end method

.method public isSquareModule()Z
    .locals 1

    const/16 v0, 0xa5

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "1x1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {}, Lcom/mi/config/b;->Vh()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iput-boolean v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18x9:Z

    goto :goto_0

    :cond_0
    iput-boolean v3, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18x9:Z

    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/a;->Gc()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport195x9:Z

    goto :goto_1

    :cond_1
    iput-boolean v3, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport195x9:Z

    :goto_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/a;->Hc()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport19x9:Z

    goto :goto_2

    :cond_2
    iput-boolean v3, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport19x9:Z

    :goto_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/config/a;->Fc()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18_7_5x9:Z

    goto :goto_3

    :cond_3
    iput-boolean v3, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18_7_5x9:Z

    :goto_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    const-string v3, "18.75x9"

    const-string v6, "19x9"

    const-string v7, "18x9"

    const v8, 0x7f0f0281

    const v9, 0x7f0f027f

    const-string v10, "16x9"

    const-string v11, "19.5x9"

    const v12, 0x7f0800a3

    const v13, 0x7f0800a5

    const-string v14, "4x3"

    const v15, 0x7f0f0282

    const v5, 0x7f0800b4

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_6

    :pswitch_1
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v1, v13, v13, v9, v14}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v1, v12, v12, v8, v10}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18x9:Z

    if-eqz v1, :cond_4

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v1, v5, v5, v15, v7}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_4
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport195x9:Z

    if-eqz v1, :cond_5

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v1, v5, v5, v15, v11}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_5
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport19x9:Z

    if-eqz v1, :cond_1a

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v1, v5, v5, v15, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :pswitch_2
    iput-object v14, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v1, v13, v13, v9, v14}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :pswitch_3
    if-nez p2, :cond_6

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/a;->jb()Z

    move-result v1

    if-eqz v1, :cond_6

    iput-object v14, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v1, v13, v13, v9, v14}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDisplayMode()I

    move-result v1

    if-ne v1, v4, :cond_7

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v1, v13, v13, v9, v14}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v1, v12, v12, v8, v10}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18_7_5x9:Z

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDisplayMode()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_8

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v1, v5, v5, v15, v11}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_8
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v1, v5, v5, v15, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_9
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18x9:Z

    if-eqz v1, :cond_a

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v1, v5, v5, v15, v7}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_a
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport195x9:Z

    if-eqz v1, :cond_b

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v1, v5, v5, v15, v11}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_b
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport19x9:Z

    if-eqz v1, :cond_1a

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v1, v5, v5, v15, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :pswitch_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v1

    if-eqz v1, :cond_c

    iput-object v14, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    :cond_c
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v1, v13, v13, v9, v14}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v1, v12, v12, v8, v10}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18_7_5x9:Z

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDisplayMode()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_d

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v1, v5, v5, v15, v11}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_d
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v1, v5, v5, v15, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_e
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18x9:Z

    if-eqz v1, :cond_f

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v1, v5, v5, v15, v7}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_f
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport195x9:Z

    if-eqz v1, :cond_10

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v1, v5, v5, v15, v11}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_10
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport19x9:Z

    if-eqz v1, :cond_1a

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v1, v5, v5, v15, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :pswitch_5
    iput-object v10, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v1, v12, v12, v8, v10}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :pswitch_6
    iput-object v14, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    :pswitch_7
    if-nez p2, :cond_11

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v16

    if-eqz v16, :cond_12

    iput-object v14, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    goto :goto_4

    :cond_11
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v16

    if-eqz v16, :cond_12

    iput-object v14, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    :cond_12
    :goto_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDisplayMode()I

    move-result v5

    if-ne v5, v4, :cond_13

    new-instance v5, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v5, v13, v13, v9, v14}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    new-instance v5, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v5, v12, v12, v8, v10}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v5, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18_7_5x9:Z

    if-eqz v5, :cond_15

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDisplayMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_14

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f0800b4

    invoke-direct {v3, v5, v5, v15, v11}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_14
    const v5, 0x7f0800b4

    new-instance v6, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v6, v5, v5, v15, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_15
    const v5, 0x7f0800b4

    iget-boolean v3, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18x9:Z

    if-eqz v3, :cond_16

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v3, v5, v5, v15, v7}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_16
    iget-boolean v3, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport195x9:Z

    if-eqz v3, :cond_17

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v3, v5, v5, v15, v11}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_17
    iget-boolean v3, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport19x9:Z

    if-eqz v3, :cond_18

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v3, v5, v5, v15, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    :goto_5
    const/16 v3, 0xa5

    if-eq v1, v3, :cond_19

    const/16 v3, 0xa3

    if-ne v1, v3, :cond_1a

    :cond_19
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getDisplayMode()I

    move-result v1

    if-ne v1, v4, :cond_1a

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f0800a4

    const v4, 0x7f0800a4

    const v5, 0x7f0f027e

    const-string v6, "1x1"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    :goto_6
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-void

    :pswitch_data_0
    .packed-switch 0xa3
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setComponentValue(ILjava/lang/String;)V
    .locals 2

    const-string v0, "1x1"

    const/16 v1, 0xa5

    if-ne p1, v1, :cond_0

    if-eq p2, v0, :cond_0

    const/16 p1, 0xa3

    :cond_0
    if-ne p2, v0, :cond_1

    invoke-super {p0, v1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-super {p0, v1, v0}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public supportRatioSwitch()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
