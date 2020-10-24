.class public Lcom/android/camera/data/data/setting/ComponentSettingMultipleCommon;
.super Lcom/android/camera/data/data/ComponentMultiple;
.source ""


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/DataItemBase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentMultiple;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method


# virtual methods
.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f1005a4

    return p0
.end method

.method public initTypeElements(Landroid/content/Context;ILcom/android/camera2/CameraCapabilities;I)V
    .locals 2

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/camera/data/data/setting/ComponentSettingMultipleCommon;->getDisplayTitleString()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f100592

    const-string v0, "pref_camera_recordlocation_key"

    invoke-direct {p3, p4, p1, v0, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p4, Lcom/android/camera/data/data/TypeItem;

    const v0, 0x7f1005bb

    const-string v1, "pref_camerasound_key"

    invoke-direct {p4, v0, p1, v1, p2}, Lcom/android/camera/data/data/TypeItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/android/camera/data/data/TypeItem;

    const/4 p2, 0x0

    aput-object p3, p1, p2

    const/4 p2, 0x1

    aput-object p4, p1, p2

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentMultiple;->insert([Lcom/android/camera/data/data/TypeItem;)V

    return-void
.end method
