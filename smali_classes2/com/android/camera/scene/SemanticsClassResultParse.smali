.class public Lcom/android/camera/scene/SemanticsClassResultParse;
.super Lcom/android/camera/scene/AbASDResultParse;
.source "SemanticsClassResultParse.java"


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/BaseModule;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/camera/scene/AbASDResultParse;-><init>(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method private updateASDScene(Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V
    .locals 8

    iget v0, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->type:I

    iget p1, p1, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->value:I

    iget-object v1, p0, Lcom/android/camera/scene/AbASDResultParse;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/BaseModule;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    const/16 v3, 0xa3

    if-ne v2, v3, :cond_c

    move-object v2, v1

    check-cast v2, Lcom/android/camera/module/Camera2Module;

    invoke-static {v0, p1}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->getSceneTipResId(II)I

    move-result v3

    invoke-static {v0, p1}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->isSceneChange(II)Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xaf

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v6, :cond_3

    if-eq v0, v5, :cond_3

    const/4 v7, 0x6

    if-eq v0, v7, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->showLensDirtyTip()V

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/scene/AbASDResultParse;->isIntercept()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    invoke-static {v0}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->isTipEnable(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->isTipShowing()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->getCurrentBottomTipMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v2, v6

    :cond_5
    if-eqz v2, :cond_c

    invoke-static {v0, p1}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->isCheckSceneEnable(II)Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {p0}, Lcom/android/camera/scene/AbASDResultParse;->closeTip()Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_6
    invoke-static {v0, p1}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->isCheckSceneEnable(II)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    if-gtz v3, :cond_8

    if-eq v5, v0, :cond_8

    goto :goto_2

    :cond_8
    if-ne v5, v0, :cond_9

    invoke-virtual {v2}, Lcom/android/camera/module/Camera2Module;->showBacklightTip()V

    goto :goto_0

    :cond_9
    const/16 p1, 0xe

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/camera/scene/AbASDResultParse;->showTip(III)Z

    :goto_0
    if-eq v0, v6, :cond_b

    if-ne v0, v5, :cond_a

    goto :goto_1

    :cond_a
    invoke-static {v0, v6}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->setTipEnable(IZ)V

    goto :goto_2

    :cond_b
    :goto_1
    invoke-static {v6, v6}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->setTipEnable(IZ)V

    invoke-static {v5, v6}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->setTipEnable(IZ)V

    :catch_0
    :cond_c
    :goto_2
    return-void
.end method


# virtual methods
.method public bridge synthetic parseMiAlgoAsdResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    invoke-virtual {p0, p1}, Lcom/android/camera/scene/SemanticsClassResultParse;->parseMiAlgoAsdResult([Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V

    return-void
.end method

.method public parseMiAlgoAsdResult([Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V
    .locals 5

    if-eqz p1, :cond_1

    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(Semantics)scenes size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(Semantics)-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/camera/scene/SemanticsClassResultParse;->updateASDScene(Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
