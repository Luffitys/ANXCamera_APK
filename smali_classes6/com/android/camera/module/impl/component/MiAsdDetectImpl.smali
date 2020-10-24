.class public Lcom/android/camera/module/impl/component/MiAsdDetectImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$MiAsdDetect;


# static fields
.field private static final TAG:Ljava/lang/String; = "MiAsdDetectImpl"


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiAsdDetectImpl;->mActivity:Lcom/android/camera/ActivityBase;

    return-void
.end method

.method static synthetic OooO00o(Lcom/android/camera/module/Camera2Module;ZI)V
    .locals 5

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isZoomRatioBetweenUltraAndWide()Z

    move-result v1

    const/16 v2, 0x8

    const v3, 0x7f100717

    const-string v4, "recommend_ultra_wide_desc"

    if-eqz v1, :cond_1

    invoke-interface {v0, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->containShortDurationDescriptionTips(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v4, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertRecommendDescTip(Ljava/lang/String;II)V

    return-void

    :cond_1
    if-eqz p1, :cond_6

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isExtraMenuShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomRatio()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    return-void

    :cond_3
    const/16 p1, 0xab

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v1

    if-ne p1, v1, :cond_4

    return-void

    :cond_4
    const/4 p1, 0x2

    if-eq p2, p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p1

    const/16 p2, 0x24

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackAISceneChanged(IILandroid/content/res/Resources;)V

    :goto_0
    sget p0, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->COMPAT_ULTRA_WIDE:I

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->setTipEnable(IZ)V

    const/4 p0, 0x0

    invoke-interface {v0, v4, p0, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertRecommendDescTip(Ljava/lang/String;II)V

    goto :goto_1

    :cond_6
    invoke-interface {v0, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->containShortDurationDescriptionTips(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-interface {v0, v4, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertRecommendDescTip(Ljava/lang/String;II)V

    :cond_7
    :goto_1
    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;
    .locals 1

    new-instance v0, Lcom/android/camera/module/impl/component/MiAsdDetectImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/MiAsdDetectImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private getBaseModule()Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiAsdDetectImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public registerProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xeb

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xeb

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public updateUltraWide(ZI)V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MiAsdDetectImpl;->getBaseModule()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/BaseModule;

    if-nez p0, :cond_0

    return-void

    :cond_0
    instance-of v0, p0, Lcom/android/camera/module/Camera2Module;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/impl/component/OooOoO;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/module/impl/component/OooOoO;-><init>(Lcom/android/camera/module/Camera2Module;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
