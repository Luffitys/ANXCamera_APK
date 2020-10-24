.class public abstract Lcom/android/camera/scene/ASDResultParse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/scene/IResultParse;


# instance fields
.field private mDualController:Ljava/lang/ref/WeakReference;

.field private mIsMacroModeEnable:Z

.field protected final mModule:Ljava/lang/ref/WeakReference;

.field private mTips:Ljava/lang/ref/WeakReference;

.field private mTopAlert:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/scene/ASDResultParse;->mModule:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/scene/ASDResultParse;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/scene/ASDResultParse;->mIsMacroModeEnable:Z

    :cond_0
    return-void
.end method

.method private synthetic OooO00o()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/scene/ASDResultParse;->getTips()Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    return-void
.end method

.method private synthetic OooO0OO(III)V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xc3

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraModuleSpecial;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$CameraModuleSpecial;->showOrHideChip(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/scene/ASDResultParse;->getTips()Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->showTips(III)V

    return-void
.end method

.method private getDualController()Lcom/android/camera/protocol/ModeProtocol$DualController;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/scene/ASDResultParse;->mDualController:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/scene/ASDResultParse;->mDualController:Ljava/lang/ref/WeakReference;

    :cond_1
    iget-object p0, p0, Lcom/android/camera/scene/ASDResultParse;->mDualController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$DualController;

    return-object p0
.end method

.method private getTips()Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/scene/ASDResultParse;->mTips:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/scene/ASDResultParse;->mTips:Ljava/lang/ref/WeakReference;

    :cond_1
    iget-object p0, p0, Lcom/android/camera/scene/ASDResultParse;->mTips:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    return-object p0
.end method


# virtual methods
.method public synthetic OooO0O0()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/scene/ASDResultParse;->OooO00o()V

    return-void
.end method

.method public synthetic OooO0Oo(III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/scene/ASDResultParse;->OooO0OO(III)V

    return-void
.end method

.method protected closeTip()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/scene/ASDResultParse;->getTips()Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/scene/ASDResultParse;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/scene/OooO00o;

    invoke-direct {v1, p0}, Lcom/android/camera/scene/OooO00o;-><init>(Lcom/android/camera/scene/ASDResultParse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method protected getTopAlert()Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/scene/ASDResultParse;->mTopAlert:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/scene/ASDResultParse;->mTopAlert:Ljava/lang/ref/WeakReference;

    :cond_1
    iget-object p0, p0, Lcom/android/camera/scene/ASDResultParse;->mTopAlert:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    return-object p0
.end method

.method protected isGeneralInterception()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/scene/ASDResultParse;->mIsMacroModeEnable:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected isSuggestionIntercept(Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/camera/scene/ASDResultParse;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/scene/ASDResultParse;->isGeneralInterception()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getBogusCameraId()I

    move-result v2

    if-eqz v2, :cond_2

    const-string p0, "no back camera!"

    :goto_0
    invoke-static {p0}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getZoomRatio()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_3

    const-string p0, "zoom > 1x!"

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->isAlreadyTip()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->type:I

    iget p1, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->value:I

    invoke-static {v2, p1}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->isCheckSceneEnable(II)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p0, "A tip has occurred this time.!"

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/scene/ASDResultParse;->getTopAlert()Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/scene/ASDResultParse;->getTopAlert()Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f1002ff

    goto :goto_1

    :cond_5
    const v0, 0x7f1002fe

    :goto_1
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isCurrentRecommendTipText(I)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p0, "dirty tip is visible!"

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/android/camera/scene/ASDResultParse;->getDualController()Lcom/android/camera/protocol/ModeProtocol$DualController;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/android/camera/scene/ASDResultParse;->getDualController()Lcom/android/camera/protocol/ModeProtocol$DualController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$DualController;->isZoomPanelVisible()Z

    move-result p0

    if-eqz p0, :cond_7

    move p0, v1

    goto :goto_2

    :cond_7
    move p0, v0

    :goto_2
    if-eqz p0, :cond_8

    const-string p0, "Zoom bar is in effect, no prompt\uff01"

    goto :goto_0

    :cond_8
    return v0
.end method

.method protected showTip(III)Z
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/scene/ASDResultParse;->getTips()Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/scene/ASDResultParse;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/BaseModule;

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/scene/OooO0O0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/camera/scene/OooO0O0;-><init>(Lcom/android/camera/scene/ASDResultParse;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method
