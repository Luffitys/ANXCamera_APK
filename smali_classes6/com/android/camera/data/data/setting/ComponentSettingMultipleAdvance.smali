.class public Lcom/android/camera/data/data/setting/ComponentSettingMultipleAdvance;
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

    const p0, 0x7f1001de

    return p0
.end method

.method public initTypeElements(Landroid/content/Context;ILcom/android/camera2/CameraCapabilities;I)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/camera/data/data/setting/ComponentSettingMultipleAdvance;->getDisplayTitleString()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOO0o()Z

    move-result p4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_0

    new-instance p4, Lcom/android/camera/data/data/TypeItem;

    const v2, 0x7f10060f

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "pref_fingerprint_capture_key"

    invoke-direct {p4, v2, p3, v4, v3}, Lcom/android/camera/data/data/TypeItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-array v2, v1, [Lcom/android/camera/data/data/TypeItem;

    aput-object p4, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/camera/data/data/ComponentMultiple;->insert([Lcom/android/camera/data/data/TypeItem;)V

    :cond_0
    const/16 p4, 0xa2

    const v2, 0x7f1005e3

    if-eq p2, p4, :cond_2

    const/16 p4, 0xae

    if-eq p2, p4, :cond_1

    const/16 p4, 0xb7

    if-eq p2, p4, :cond_1

    new-instance p2, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f1005dc

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p4, "pref_camera_volumekey_function_key"

    invoke-direct {p2, v2, p3, p4, p1}, Lcom/android/camera/data/data/TypeItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const p1, 0x7f030024

    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/TypeItem;->setEntryArrayRes(I)Lcom/android/camera/data/data/TypeItem;

    move-result-object p1

    const p3, 0x7f030025

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f1005de

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p4, "pref_live_volumekey_function_key"

    invoke-direct {p2, v2, p3, p4, p1}, Lcom/android/camera/data/data/TypeItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const p1, 0x7f03002f

    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/TypeItem;->setEntryArrayRes(I)Lcom/android/camera/data/data/TypeItem;

    move-result-object p1

    const p3, 0x7f030030

    goto :goto_0

    :cond_2
    new-instance p2, Lcom/android/camera/data/data/TypeItem;

    const p4, 0x7f1005db

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p4, "pref_video_volumekey_function_key"

    invoke-direct {p2, v2, p3, p4, p1}, Lcom/android/camera/data/data/TypeItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const p1, 0x7f030040

    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/TypeItem;->setEntryArrayRes(I)Lcom/android/camera/data/data/TypeItem;

    move-result-object p1

    const p3, 0x7f030041

    :goto_0
    invoke-virtual {p1, p3}, Lcom/android/camera/data/data/TypeItem;->setValueArrayRes(I)Lcom/android/camera/data/data/TypeItem;

    new-array p1, v1, [Lcom/android/camera/data/data/TypeItem;

    aput-object p2, p1, v0

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentMultiple;->insert([Lcom/android/camera/data/data/TypeItem;)V

    return-void
.end method
