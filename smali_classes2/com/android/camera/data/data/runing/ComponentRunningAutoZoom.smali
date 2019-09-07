.class public Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningAutoZoom.java"


# instance fields
.field private mCameraId:I

.field private mIsNormalIntent:Z

.field private mValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;->mValues:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clearArrayMap()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;->mValues:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const/4 p0, 0x0

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

    const/4 p0, 0x0

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1

    const/16 p0, 0xa2

    if-eq p1, p0, :cond_0

    const/16 p0, 0xa9

    if-eq p1, p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pref_camera_auto_zoom_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "pref_camera_auto_zoom"

    :goto_0
    return-object p0
.end method

.method public getResIcon(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p0, 0x7f08008d

    return p0

    :cond_0
    const p0, 0x7f08008c

    return p0
.end method

.method public getResText()I
    .locals 0

    const p0, 0x7f0f0056

    return p0
.end method

.method public isEnabled(I)Z
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->Cb()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;->mCameraId:I

    if-nez v0, :cond_4

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;->mIsNormalIntent:Z

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;->mValues:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;->getKey(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_4
    :goto_0
    return v1
.end method

.method public reInit(IZ)V
    .locals 0

    iput p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;->mCameraId:I

    iput-boolean p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;->mIsNormalIntent:Z

    return-void
.end method

.method public reInitIntentType(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;->mIsNormalIntent:Z

    return-void
.end method

.method public setEnabled(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;->mValues:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningAutoZoom;->getKey(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
