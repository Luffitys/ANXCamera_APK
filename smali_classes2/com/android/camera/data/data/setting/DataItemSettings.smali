.class public Lcom/android/camera/data/data/setting/DataItemSettings;
.super Ljava/lang/Object;
.source "DataItemSettings.java"


# instance fields
.field private componentMultipleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentMultiple;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;ILcom/android/camera2/CameraCapabilities;I)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/setting/DataItemSettings;->componentMultipleList:Ljava/util/List;

    new-instance v0, Lcom/android/camera/data/data/setting/ComponentSettingMultipleCommon;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/data/data/setting/ComponentSettingMultipleCommon;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    new-instance v1, Lcom/android/camera/data/data/setting/ComponentSettingMultipleCapture;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v2

    invoke-interface {v2, p4}, Lcom/android/camera/data/provider/DataProvider;->dataConfig(I)Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/DataItemBase;

    invoke-direct {v1, v2}, Lcom/android/camera/data/data/setting/ComponentSettingMultipleCapture;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    new-instance v2, Lcom/android/camera/data/data/setting/ComponentSettingMultipleAdvance;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/camera/data/data/setting/ComponentSettingMultipleAdvance;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/camera/data/data/setting/ComponentSettingMultipleCommon;->initTypeElements(Landroid/content/Context;ILcom/android/camera2/CameraCapabilities;I)V

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/camera/data/data/setting/ComponentSettingMultipleCapture;->initTypeElements(Landroid/content/Context;ILcom/android/camera2/CameraCapabilities;I)V

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/camera/data/data/setting/ComponentSettingMultipleAdvance;->initTypeElements(Landroid/content/Context;ILcom/android/camera2/CameraCapabilities;I)V

    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentMultiple;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/data/data/setting/DataItemSettings;->componentMultipleList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/data/data/ComponentMultiple;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/data/data/setting/DataItemSettings;->componentMultipleList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v2}, Lcom/android/camera/data/data/ComponentMultiple;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/camera/data/data/setting/DataItemSettings;->componentMultipleList:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
