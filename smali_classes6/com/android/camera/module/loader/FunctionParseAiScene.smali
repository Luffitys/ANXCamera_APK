.class public Lcom/android/camera/module/loader/FunctionParseAiScene;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


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

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->oo0o0O0()Z

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

    if-ne v2, p1, :cond_1

    iget p1, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mCurrentFaceScene:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mLatestFaceScene:I

    iput p1, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mCurrentFaceScene:I

    return v3

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public apply(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;
    .locals 11

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->getActiveArraySize()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

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

    const/high16 v4, -0x80000000

    const-string v5, "FunctionParseAiScene"

    const/4 v6, 0x0

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    array-length v2, v0

    move v7, v4

    move v3, v6

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v8, v0, v3

    invoke-virtual {v8}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x43960000    # 300.0f

    div-float/2addr v10, v1

    cmpl-float v9, v9, v10

    if-lez v9, :cond_0

    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->getHdrDetectedScene(Landroid/hardware/camera2/CaptureResult;)I

    move-result v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseAiSceneResult: AI_SCENE_MODE_HUMAN  face.length = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ";face.width = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ";hdrMode = "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0x19

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v7, v4

    :cond_2
    invoke-direct {p0, v7}, Lcom/android/camera/module/loader/FunctionParseAiScene;->faceSceneFiltering(I)Z

    move-result v0

    const/16 v1, 0x23

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->getAsdDetectedModes(Landroid/hardware/camera2/CaptureResult;)I

    move-result p1

    if-eq v7, v4, :cond_4

    const/16 v0, 0x26

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    iput v7, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mParsedAiScene:I

    goto :goto_2

    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mSupportMoonMode:Z

    if-nez v0, :cond_5

    if-ne p1, v1, :cond_5

    const-string p1, "detected moon mode on unsupported device, set scene negative"

    invoke-static {v5, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v6

    :cond_5
    if-gez p1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseAiSceneResult: parse a error result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mParsedAiScene:I

    goto :goto_2

    :cond_6
    iput p1, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mParsedAiScene:I

    :cond_7
    :goto_2
    iget p1, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mModuleIndex:I

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isDocumentModeOn(I)Z

    move-result p1

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mParsedAiScene:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0xa

    if-eq p1, v0, :cond_8

    if-ne p1, v1, :cond_9

    :cond_8
    iput v6, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mParsedAiScene:I

    :cond_9
    iget p0, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mParsedAiScene:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

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
