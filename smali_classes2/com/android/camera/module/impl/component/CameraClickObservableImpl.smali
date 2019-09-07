.class public Lcom/android/camera/module/impl/component/CameraClickObservableImpl;
.super Ljava/lang/Object;
.source "CameraClickObservableImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable;


# instance fields
.field private mBottomTipObservableArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomTipObserverArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable$ClickObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomTipTipMsgArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;->mBottomTipObservableArray:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;->mBottomTipObserverArray:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;->mBottomTipTipMsgArray:Ljava/util/List;

    return-void
.end method

.method public static create()Lcom/android/camera/module/impl/component/CameraClickObservableImpl;
    .locals 1

    new-instance v0, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;

    invoke-direct {v0}, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;-><init>()V

    return-object v0
.end method


# virtual methods
.method public varargs addObservable([ILcom/android/camera/protocol/ModeProtocol$CameraClickObservable$ClickObserver;[I)V
    .locals 7

    if-nez p3, :cond_0

    return-void

    :cond_0
    array-length v0, p3

    new-array v0, v0, [Ljava/lang/Integer;

    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    aget v5, p3, v3

    add-int/lit8 v6, v4, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;->mBottomTipObservableArray:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length p3, p1

    new-array p3, p3, [Ljava/lang/Integer;

    array-length v0, p1

    move v1, v2

    :goto_1
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p3, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;->mBottomTipTipMsgArray:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;->mBottomTipObserverArray:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe3

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public subscribe(I)V
    .locals 10

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->getCurrentBottomTipMsg()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, -0x1

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;->mBottomTipTipMsgArray:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Integer;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    :try_start_0
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v8, p0, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;->mBottomTipTipMsgArray:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v1, v8}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isCurrentRecommendTipText(I)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;->mBottomTipTipMsgArray:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    if-gez v2, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;->mBottomTipObservableArray:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;->mBottomTipObserverArray:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable$ClickObserver;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$CameraClickObservable$ClickObserver;->action()V

    :cond_6
    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;->mBottomTipObservableArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;->mBottomTipObserverArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/CameraClickObservableImpl;->mBottomTipTipMsgArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xe3

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method
