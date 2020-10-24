.class public Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public forceVideoPattern:Z

.field public isFPS960:Z

.field public needFocusBack:Z

.field public needSnapButtonAnimation:Z

.field public targetFrameRatio:F

.field public targetMode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->targetMode:I

    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->configVariables()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(I)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;
    .locals 1

    new-instance v0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;-><init>(I)V

    return-object v0
.end method

.method public static createModeChange(IZZ)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;
    .locals 1

    new-instance v0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;-><init>(I)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->setNeedSnapButtonAnimation(Z)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->setIsFPS960(Z)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->setNeedSnapButtonAnimation(Z)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bottomHalfScreen()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->targetFrameRatio:F

    const v0, 0x3faaaaaa

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public configVariables()V
    .locals 5

    iget v0, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->targetMode:I

    const/16 v1, 0xa1

    const v2, 0x3fe38e38

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_4

    const/16 v1, 0xac

    if-eq v0, v1, :cond_4

    const/16 v1, 0xae

    if-eq v0, v1, :cond_4

    const/16 v1, 0xbd

    if-eq v0, v1, :cond_4

    const/16 v1, 0xcc

    const v3, 0x3faaaaaa

    if-eq v0, v1, :cond_3

    const/16 v1, 0xfe

    const/4 v4, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb3

    if-eq v0, v1, :cond_4

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->targetMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getPictureSizeRatioString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->getRatio(Ljava/lang/String;)F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->targetFrameRatio:F

    goto :goto_3

    :pswitch_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGifOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->targetMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getPictureSizeRatioString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->getRatio(Ljava/lang/String;)F

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->targetFrameRatio:F

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getMimojiRecordState()I

    move-result v1

    if-ne v1, v4, :cond_5

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->isInMimojiCreate()Z

    move-result v0

    if-nez v0, :cond_5

    iput-boolean v4, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->forceVideoPattern:Z

    goto :goto_3

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v0

    if-eq v0, v4, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_2

    :cond_2
    const v0, 0x400e38e4

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawSelectWindow()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    iput v3, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->targetFrameRatio:F

    goto :goto_3

    :cond_4
    :pswitch_1
    iput v2, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->targetFrameRatio:F

    :cond_5
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0xb7
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xcf
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getBottomMaskTargetHeight(I)I
    .locals 1

    const/16 v0, 0xa5

    if-eq p1, v0, :cond_4

    iget p1, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->targetFrameRatio:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->bottomHalfScreen()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/camera/Util;->isBringupDebug()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->targetFrameRatio:F

    const p1, 0x3faaaaaa

    cmpl-float p0, p0, p1

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result p0

    return p0

    :cond_2
    iget p0, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->targetFrameRatio:F

    const p1, 0x3fe38e38

    cmpl-float p0, p0, p1

    if-nez p0, :cond_3

    invoke-static {}, Lcom/android/camera/Display;->getBottomMargin()I

    move-result p0

    return p0

    :cond_3
    return v0

    :cond_4
    :goto_0
    invoke-static {}, Lcom/android/camera/Display;->getSquareBottomCoverHeight()I

    move-result p0

    invoke-static {}, Lcom/android/camera/Display;->getBottomHeight()I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public getTopMaskTargetHeight(I)I
    .locals 1

    const/16 v0, 0xa5

    if-eq p1, v0, :cond_4

    iget p0, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->targetFrameRatio:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, p0, p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x3fe38e38

    cmpl-float p1, p0, p1

    if-nez p1, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/camera/Display;->getTopMargin()I

    move-result p0

    invoke-static {}, Lcom/android/camera/Display;->getTopBarHeight()I

    move-result p1

    add-int/2addr p0, p1

    return p0

    :cond_2
    const p1, 0x3faaaaaa

    cmpl-float p0, p0, p1

    const/4 p1, 0x0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/android/camera/Util;->isBringupDebug()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_3
    return p1

    :cond_4
    :goto_0
    invoke-static {}, Lcom/android/camera/Display;->getTopCoverHeight()I

    move-result p0

    return p0
.end method

.method public setIsFPS960(Z)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->isFPS960:Z

    return-object p0
.end method

.method public setNeedSnapButtonAnimation(Z)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->needSnapButtonAnimation:Z

    return-object p0
.end method

.method public setTargetFrameRatio(F)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->targetFrameRatio:F

    return-object p0
.end method
