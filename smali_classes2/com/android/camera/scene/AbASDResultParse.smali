.class public abstract Lcom/android/camera/scene/AbASDResultParse;
.super Ljava/lang/Object;
.source "AbASDResultParse.java"

# interfaces
.implements Lcom/android/camera/scene/IResultParse;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/scene/IResultParse<",
        "[",
        "Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/BaseModule;",
            ">;"
        }
    .end annotation
.end field

.field private final mTips:Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

.field private mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/BaseModule;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/scene/AbASDResultParse;->mModule:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xaf

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    iput-object p1, p0, Lcom/android/camera/scene/AbASDResultParse;->mTips:Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    return-void
.end method


# virtual methods
.method public synthetic Cd()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/scene/AbASDResultParse;->mTips:Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    return-void
.end method

.method public synthetic a(III)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/scene/AbASDResultParse;->mTips:Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->showTips(III)V

    return-void
.end method

.method protected closeTip()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/scene/AbASDResultParse;->mTips:Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/scene/AbASDResultParse;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/scene/b;

    invoke-direct {v1, p0}, Lcom/android/camera/scene/b;-><init>(Lcom/android/camera/scene/AbASDResultParse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method protected isIntercept()Z
    .locals 4

    iget-object v0, p0, Lcom/android/camera/scene/AbASDResultParse;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    iput-object v0, p0, Lcom/android/camera/scene/AbASDResultParse;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/scene/AbASDResultParse;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getBogusCameraId()I

    move-result v2

    if-eqz v2, :cond_2

    const-string p0, "no back camera!"

    invoke-static {p0}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getZoomRatio()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_3

    const-string p0, "zoom > 1x!"

    invoke-static {p0}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    return v1

    :cond_3
    invoke-static {}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->isAlreadyTip()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p0, "A tip has occurred this time.!"

    invoke-static {p0}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    return v1

    :cond_4
    iget-object p0, p0, Lcom/android/camera/scene/AbASDResultParse;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p0, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0f0111

    goto :goto_0

    :cond_5
    const v0, 0x7f0f0110

    :goto_0
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isCurrentRecommendTipText(I)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "dirty tip is visible!"

    invoke-static {p0}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    return v1

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method protected showTip(III)Z
    .locals 4
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/scene/AbASDResultParse;->mTips:Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/scene/AbASDResultParse;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/BaseModule;

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xc3

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$CameraModuleSpecial;

    if-eqz v2, :cond_3

    invoke-interface {v2, v0}, Lcom/android/camera/protocol/ModeProtocol$CameraModuleSpecial;->showOrHideChip(Z)V

    :cond_3
    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/scene/a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/camera/scene/a;-><init>(Lcom/android/camera/scene/AbASDResultParse;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method
