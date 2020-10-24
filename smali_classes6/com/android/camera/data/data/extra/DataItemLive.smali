.class public Lcom/android/camera/data/data/extra/DataItemLive;
.super Lcom/android/camera/data/data/DataItemBase;
.source ""


# static fields
.field public static final DATA_FILM_VERSION:Ljava/lang/String; = "film_version"

.field public static final DATA_LIVE_ACTIVATION:Ljava/lang/String; = "live_activation"

.field public static final DATA_LIVE_START_ORIENTATION:Ljava/lang/String; = "live_start_orientation"

.field public static final DATA_VV_CHECK_TIME:Ljava/lang/String; = "vv_update_time"

.field public static final DATA_VV_VERSION:Ljava/lang/String; = "vv_version"

.field private static final KEY:Ljava/lang/String; = "camera_settings_live"


# instance fields
.field private mAmbilightModeIndex:I

.field private mComponentLiveVideoQuality:Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;

.field private mFilmItem:Lcom/android/camera/fragment/film/FilmItem;

.field private mKaleidoscope:Ljava/lang/String;

.field private mMiLiveFilterId:Ljava/lang/String;

.field private mMiLiveSegmentData:Ljava/util/List;

.field private mMimojiStatusManager:Lcom/android/camera/module/impl/component/MimojiStatusManager;

.field private mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

.field private mRecordSegmentTimeInfo:Ljava/util/List;

.field private mTimeFreezeFilmRatioEnabled:Z

.field private mTimerBurstController:Lcom/android/camera/timerburst/TimerBurstController;

.field private mVVItem:Lcom/android/camera/fragment/vv/VVItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/data/data/DataItemBase;-><init>()V

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMiLiveFilterId:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mKaleidoscope:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mAmbilightModeIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mTimeFreezeFilmRatioEnabled:Z

    new-instance v0, Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;

    invoke-direct {v0, p0}, Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;-><init>(Lcom/android/camera/data/data/extra/DataItemLive;)V

    iput-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mComponentLiveVideoQuality:Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;

    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    iput-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mRecordSegmentTimeInfo:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMimojiStatusManager:Lcom/android/camera/module/impl/component/MimojiStatusManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->reset()V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->reset()V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMiLiveSegmentData:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMiLiveSegmentData:Ljava/util/List;

    :cond_2
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMiLiveFilterId:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mKaleidoscope:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mAmbilightModeIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mTimeFreezeFilmRatioEnabled:Z

    iget-object p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mTimerBurstController:Lcom/android/camera/timerburst/TimerBurstController;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/camera/timerburst/TimerBurstController;->setInTimerBurstShotting(Z)V

    :cond_3
    return-void
.end method

.method public getActivation()Ljava/lang/String;
    .locals 2

    const-string v0, "live_activation"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAmbilightMode()I
    .locals 0

    iget p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mAmbilightModeIndex:I

    return p0
.end method

.method public getComponentLiveVideoQuality()Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mComponentLiveVideoQuality:Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;

    return-object p0
.end method

.method public getCurrentFilmItem()Lcom/android/camera/fragment/film/FilmItem;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mFilmItem:Lcom/android/camera/fragment/film/FilmItem;

    return-object p0
.end method

.method public getCurrentVVItem()Lcom/android/camera/fragment/vv/VVItem;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    return-object p0
.end method

.method public getKaleidoscope()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mKaleidoscope:Ljava/lang/String;

    return-object p0
.end method

.method public getLiveFilter()I
    .locals 2

    const-string v0, "key_live_filter"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLiveStartOrientation()I
    .locals 2

    const-string v0, "live_start_orientation"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getMiLiveFilterId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMiLiveFilterId:Ljava/lang/String;

    return-object p0
.end method

.method public getMiLiveSegmentData()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMiLiveSegmentData:Ljava/util/List;

    return-object p0
.end method

.method public getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMimojiStatusManager:Lcom/android/camera/module/impl/component/MimojiStatusManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/module/impl/component/MimojiStatusManager;

    invoke-direct {v0}, Lcom/android/camera/module/impl/component/MimojiStatusManager;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMimojiStatusManager:Lcom/android/camera/module/impl/component/MimojiStatusManager;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMimojiStatusManager:Lcom/android/camera/module/impl/component/MimojiStatusManager;

    return-object p0
.end method

.method public getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-direct {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    return-object p0
.end method

.method public getRecordSegmentTimeInfo()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mRecordSegmentTimeInfo:Ljava/util/List;

    return-object p0
.end method

.method public getTimeFreezeFilmRatioEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mTimeFreezeFilmRatioEnabled:Z

    return p0
.end method

.method public getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mTimerBurstController:Lcom/android/camera/timerburst/TimerBurstController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/timerburst/TimerBurstController;

    invoke-direct {v0}, Lcom/android/camera/timerburst/TimerBurstController;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mTimerBurstController:Lcom/android/camera/timerburst/TimerBurstController;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mTimerBurstController:Lcom/android/camera/timerburst/TimerBurstController;

    return-object p0
.end method

.method public getVVVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "vv_version"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isTransient()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public provideKey()Ljava/lang/String;
    .locals 0

    const-string p0, "camera_settings_live"

    return-object p0
.end method

.method public reInitComponent(IILcom/android/camera2/CameraCapabilities;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mComponentLiveVideoQuality:Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/data/data/extra/ComponentLiveVideoQuality;->reInit(IILcom/android/camera2/CameraCapabilities;)V

    return-void
.end method

.method public resetAll()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->clear()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    invoke-virtual {p0}, Lcom/android/camera/data/data/extra/DataItemLive;->clearAll()V

    return-void
.end method

.method public resetMimojiIfNeed(I)V
    .locals 1

    const/16 v0, 0xb1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMimojiStatusManager:Lcom/android/camera/module/impl/component/MimojiStatusManager;

    :cond_0
    const/16 v0, 0xb8

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->setMimojiPanelState(I)V

    :cond_1
    return-void
.end method

.method public setActivation(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string v0, "live_activation"

    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public setAmbilightMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mAmbilightModeIndex:I

    return-void
.end method

.method public setCurrentFilmItem(Lcom/android/camera/fragment/film/FilmItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mFilmItem:Lcom/android/camera/fragment/film/FilmItem;

    return-void
.end method

.method public setCurrentVVItem(Lcom/android/camera/fragment/vv/VVItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mVVItem:Lcom/android/camera/fragment/vv/VVItem;

    return-void
.end method

.method public setKaleidoscope(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mKaleidoscope:Ljava/lang/String;

    return-void
.end method

.method public setLiveFilter(I)V
    .locals 1

    const-string v0, "key_live_filter"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/DataItemBase;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public setLiveStartOrientation(I)V
    .locals 1

    const-string v0, "live_start_orientation"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/DataItemBase;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public setMiLiveFilterId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMiLiveFilterId:Ljava/lang/String;

    return-void
.end method

.method public setMiLiveSegmentData(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mMiLiveSegmentData:Ljava/util/List;

    return-void
.end method

.method public setRecordSegmentTimeInfo(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mRecordSegmentTimeInfo:Ljava/util/List;

    return-void
.end method

.method public setTimeFreezeFilmRatioEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mTimeFreezeFilmRatioEnabled:Z

    return-void
.end method

.method public setTimerBurstController(Lcom/android/camera/timerburst/TimerBurstController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/data/data/extra/DataItemLive;->mTimerBurstController:Lcom/android/camera/timerburst/TimerBurstController;

    return-void
.end method

.method public setVVVersion(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string v0, "vv_version"

    invoke-interface {p0, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method
