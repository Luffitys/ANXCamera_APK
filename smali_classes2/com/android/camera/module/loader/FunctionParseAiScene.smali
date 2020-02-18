.class public Lcom/android/camera/module/loader/FunctionParseAiScene;
.super Ljava/lang/Object;
.source "FunctionParseAiScene.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Landroid/hardware/camera2/CaptureResult;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FunctionParseAiScene"


# instance fields
.field private mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

.field private mCurrentFaceScene:I

.field private mLatestFaceScene:I

.field private mModuleIndex:I

.field private mParsedAiScene:I

.field private mSameFaceSceneDetectedTimes:I

.field private final mSupportMoonMode:Z


# direct methods
.method public constructor <init>(ILcom/android/camera2/CameraCapabilities;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mModuleIndex:I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mi/config/a;->fd()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mSupportMoonMode:Z

    iput-object p2, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    return-void
.end method

.method private faceSceneFiltering(I)Z
    .locals 4

    iget v0, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mLatestFaceScene:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mLatestFaceScene:I

    iput v1, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mSameFaceSceneDetectedTimes:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mSameFaceSceneDetectedTimes:I

    const/16 v2, 0x14

    if-ge p1, v2, :cond_1

    const/4 v3, 0x1

    add-int/2addr p1, v3

    iput p1, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mSameFaceSceneDetectedTimes:I

    iget p1, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mSameFaceSceneDetectedTimes:I

    if-ne v2, p1, :cond_1

    iget p1, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mCurrentFaceScene:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mLatestFaceScene:I

    iget p1, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mLatestFaceScene:I

    iput p1, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mCurrentFaceScene:I

    return v3

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public apply(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;
    .locals 12

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->getActiveArraySize()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/Face;

    iget v2, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mModuleIndex:I

    const/16 v3, 0xab

    const/4 v4, -0x1

    const/high16 v5, -0x80000000

    const-string v6, "FunctionParseAiScene"

    const/4 v7, 0x0

    if-eq v2, v3, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    array-length v2, v0

    if-lez v2, :cond_2

    array-length v2, v0

    move v8, v5

    move v3, v7

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v9, v0, v3

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x43960000    # 300.0f

    div-float/2addr v11, v1

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1

    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->getHdrDetectedScene(Landroid/hardware/camera2/CaptureResult;)I

    move-result v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseAiSceneResult: AI_SCENE_MODE_HUMAN  face.length = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ";face.width = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ";hdrMode = "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    iget-object v8, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/android/camera2/CameraCapabilities;->getMiAlgoASDVersion()F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    move v8, v4

    goto :goto_1

    :cond_0
    const/16 v8, 0x19

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v8, v5

    :cond_3
    invoke-direct {p0, v8}, Lcom/android/camera/module/loader/FunctionParseAiScene;->faceSceneFiltering(I)Z

    move-result v0

    const/16 v1, 0x23

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->getAsdDetectedModes(Landroid/hardware/camera2/CaptureResult;)I

    move-result p1

    if-eq v8, v5, :cond_5

    const/16 v0, 0x26

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    iput v8, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mParsedAiScene:I

    goto :goto_3

    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mSupportMoonMode:Z

    if-nez v0, :cond_6

    if-ne p1, v1, :cond_6

    const-string p1, "detected moon mode on unsupported device, set scene negative"

    invoke-static {v6, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v7

    :cond_6
    if-gez p1, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseAiSceneResult: parse a error result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v7, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mParsedAiScene:I

    goto :goto_3

    :cond_7
    iput p1, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mParsedAiScene:I

    :cond_8
    :goto_3
    iget p1, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mModuleIndex:I

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isDocumentModeOn(I)Z

    move-result p1

    if-eqz p1, :cond_a

    iget p1, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mParsedAiScene:I

    if-eq p1, v4, :cond_9

    const/16 v0, 0xa

    if-eq p1, v0, :cond_9

    if-ne p1, v1, :cond_a

    :cond_9
    iput v7, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mParsedAiScene:I

    :cond_a
    iget p0, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mParsedAiScene:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_b
    iget p0, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mParsedAiScene:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionParseAiScene;->apply(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public resetScene()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mLatestFaceScene:I

    iput v0, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mParsedAiScene:I

    return-void
.end method
