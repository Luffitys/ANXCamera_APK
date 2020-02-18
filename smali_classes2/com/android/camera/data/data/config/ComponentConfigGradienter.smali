.class public Lcom/android/camera/data/data/config/ComponentConfigGradienter;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigGradienter.java"


# static fields
.field private static final SCOPE_NS_PHOTO:Ljava/lang/String; = "photo"

.field private static final SCOPE_NS_PHOTO_PRO:Ljava/lang/String; = "photo_pro"

.field private static final SCOPE_NS_UNSUPPORTED:Ljava/lang/String; = "unsupported"

.field private static final SCOPE_NS_VIDEO:Ljava/lang/String; = "video"

.field private static final SCOPE_NS_VIDEO_PRO:Ljava/lang/String; = "video_pro"

.field private static final TAG:Ljava/lang/String; = "CCGradienter"

.field public static final VALUE_GRADIENTER_OFF:Ljava/lang/String; = "off"

.field public static final VALUE_GRADIENTER_ON:Ljava/lang/String; = "on"


# instance fields
.field private mCameraId:I

.field private mCapturingMode:I


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    iput p2, p0, Lcom/android/camera/data/data/config/ComponentConfigGradienter;->mCameraId:I

    return-void
.end method


# virtual methods
.method public getComponentValue(I)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/camera/data/data/config/ComponentConfigGradienter;->mCameraId:I

    const-string v1, "off"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigGradienter;->getKey(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "unsupported"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string p0, "off"

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "CCGradienter#getItems() not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const/16 p0, 0xa3

    if-eq p1, p0, :cond_5

    const/16 p0, 0xa5

    if-ne p1, p0, :cond_0

    goto :goto_1

    :cond_0
    const/16 p0, 0xa7

    if-ne p1, p0, :cond_1

    const-string p0, "pref_camera_gradienter_key_photo_pro"

    return-object p0

    :cond_1
    const/16 p0, 0xa9

    if-eq p1, p0, :cond_4

    const/16 p0, 0xa8

    if-eq p1, p0, :cond_4

    const/16 p0, 0xa2

    if-ne p1, p0, :cond_2

    goto :goto_0

    :cond_2
    const/16 p0, 0xb4

    if-ne p1, p0, :cond_3

    const-string p0, "pref_camera_gradienter_key_video_pro"

    return-object p0

    :cond_3
    const-string p0, "pref_camera_gradienter_key_unsupported"

    return-object p0

    :cond_4
    :goto_0
    const-string p0, "pref_camera_gradienter_key_video"

    return-object p0

    :cond_5
    :goto_1
    const-string p0, "pref_camera_gradienter_key_photo"

    return-object p0
.end method

.method public reInit(II)V
    .locals 0

    iput p1, p0, Lcom/android/camera/data/data/config/ComponentConfigGradienter;->mCapturingMode:I

    iput p2, p0, Lcom/android/camera/data/data/config/ComponentConfigGradienter;->mCameraId:I

    return-void
.end method

.method public reset(Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V
    .locals 2

    const/16 v0, 0xa3

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigGradienter;->getKey(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-interface {p1, v0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const/16 v0, 0xa7

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigGradienter;->getKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const/16 v0, 0xa2

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigGradienter;->getKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const/16 v0, 0xb4

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigGradienter;->getKey(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public setComponentValue(ILjava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/android/camera/data/data/config/ComponentConfigGradienter;->mCameraId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigGradienter;->getKey(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "unsupported"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method
