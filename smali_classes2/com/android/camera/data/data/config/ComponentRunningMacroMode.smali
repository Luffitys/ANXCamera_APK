.class public Lcom/android/camera/data/data/config/ComponentRunningMacroMode;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningMacroMode.java"


# static fields
.field public static final VALUE_OFF:Ljava/lang/String; = "OFF"

.field public static final VALUE_ON:Ljava/lang/String; = "ON"


# instance fields
.field private mCacheValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraId:I

.field public mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
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

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->mCacheValues:Ljava/util/Map;

    return-void
.end method

.method private getMode(II)Ljava/lang/String;
    .locals 0

    const/16 p0, 0xa5

    if-ne p0, p1, :cond_0

    const/16 p1, 0xa3

    :cond_0
    const/16 p0, 0xa9

    if-ne p0, p1, :cond_1

    const/16 p1, 0xa2

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearArrayMap()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->mCacheValues:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string p0, "OFF"

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
    .locals 0

    const-string p0, "pref_camera_macro_scene_mode_key"

    return-object p0
.end method

.method public getResIcon(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p0, 0x7f08014d

    return p0

    :cond_0
    const p0, 0x7f08014c

    return p0
.end method

.method public getResText()I
    .locals 0

    const p0, 0x7f0f0164

    return p0
.end method

.method public isCacheSwitchOn(II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->mCacheValues:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->getMode(II)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public isSwitchOn(I)Z
    .locals 1

    iget v0, p0, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->mCameraId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isCacheSwitchOn(II)Z

    move-result p0

    return p0
.end method

.method public isSwitchOn(II)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->isCacheSwitchOn(II)Z

    move-result p0

    return p0
.end method

.method public reInit(IZ)V
    .locals 0

    iput p1, p0, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->mCameraId:I

    return-void
.end method

.method public setSwitchOff(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->mCacheValues:Ljava/util/Map;

    iget v1, p0, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->mCameraId:I

    invoke-direct {p0, p1, v1}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->getMode(II)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSwitchOn(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->mCacheValues:Ljava/util/Map;

    iget v1, p0, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->mCameraId:I

    invoke-direct {p0, p1, v1}, Lcom/android/camera/data/data/config/ComponentRunningMacroMode;->getMode(II)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
