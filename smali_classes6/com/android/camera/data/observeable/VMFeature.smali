.class public Lcom/android/camera/data/observeable/VMFeature;
.super Lcom/android/camera/data/observeable/VMBase;
.source ""


# static fields
.field public static final ERROR_CODE_INSTALL:I = 0x102

.field public static final ERROR_CODE_NETWORK:I = 0x101

.field public static final MODULE_DOC2:Ljava/lang/String; = "doc2"

.field public static final MODULE_VLOG2:Ljava/lang/String; = "vlog2"

.field public static final SCOPE_DOWNLOADING_PROGRESS:I = 0x1000

.field public static final SCOPE_ERROR:I = 0x100

.field public static final SCOPE_NORMAL_STATE:I = 0x10

.field public static final STATE_CANCELLED:I = 0x12

.field public static final STATE_INSTALL_ALL_READY:I = 0x16

.field public static final STATE_INSTALL_OK:I = 0x15

.field public static final STATE_PENDING_DOWNLOAD:I = 0x11

.field public static final STATE_PENDING_INSTALL:I = 0x13

.field public static final STATE_START_INSTALL:I = 0x14


# instance fields
.field public mRxLoadingState:Lcom/android/camera/data/observeable/RxData;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/data/observeable/VMBase;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/android/camera/data/observeable/RxData;

    invoke-direct {v1, v0}, Lcom/android/camera/data/observeable/RxData;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/data/observeable/VMFeature;->mRxLoadingState:Lcom/android/camera/data/observeable/RxData;

    return-void
.end method

.method public static final getDownloadingProgress(I)I
    .locals 0
    .annotation build Landroidx/annotation/IntRange;
        from = 0x1L
        to = 0x64L
    .end annotation

    add-int/lit16 p0, p0, -0x1000

    return p0
.end method

.method public static final getFeatureNameByLocalMode(I)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/android/camera/data/observeable/VMFeature$FeatureModule;
    .end annotation

    const/16 v0, 0xb3

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "vlog2"

    return-object p0
.end method

.method public static final getLocalModeByFeatureName(Ljava/lang/String;)I
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lcom/android/camera/data/observeable/VMFeature$FeatureModule;
        .end annotation
    .end param

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    const v2, 0x6b19ae4

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "vlog2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/16 p0, 0xd1

    return p0
.end method

.method public static final getScope(I)I
    .locals 1

    and-int/lit16 v0, p0, 0x1000

    if-eqz v0, :cond_0

    const/16 p0, 0x1000

    return p0

    :cond_0
    const/16 v0, 0x100

    and-int/2addr p0, v0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/16 p0, 0x10

    return p0
.end method

.method public static final wrapDownloadingProgress(I)I
    .locals 0
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x64L
        .end annotation
    .end param

    add-int/lit16 p0, p0, 0x1000

    return p0
.end method


# virtual methods
.method protected achieveEndOfCycle()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getState()Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/observeable/VMFeature;->mRxLoadingState:Lcom/android/camera/data/observeable/RxData;

    invoke-virtual {p0}, Lcom/android/camera/data/observeable/RxData;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    return-object p0
.end method

.method public removeFeature(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/android/camera/data/observeable/VMFeature$FeatureModule;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/camera/data/observeable/VMFeature;->mRxLoadingState:Lcom/android/camera/data/observeable/RxData;

    invoke-virtual {p0}, Lcom/android/camera/data/observeable/RxData;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected rollbackData()V
    .locals 0

    return-void
.end method

.method public startObservable(Landroidx/lifecycle/LifecycleOwner;Lio/reactivex/functions/Consumer;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/observeable/VMFeature;->mRxLoadingState:Lcom/android/camera/data/observeable/RxData;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/observeable/RxData;->observable(Landroidx/lifecycle/LifecycleOwner;)Lcom/android/camera/data/observeable/RxData$DataObservable;

    move-result-object p0

    invoke-virtual {p0, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public updateState(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/android/camera/data/observeable/VMFeature$FeatureModule;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/data/observeable/VMFeature;->mRxLoadingState:Lcom/android/camera/data/observeable/RxData;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/RxData;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/camera/data/observeable/VMFeature;->mRxLoadingState:Lcom/android/camera/data/observeable/RxData;

    invoke-virtual {p1}, Lcom/android/camera/data/observeable/RxData;->notifyChanged()V

    invoke-virtual {p0}, Lcom/android/camera/data/observeable/VMBase;->judge()V

    return-void
.end method
