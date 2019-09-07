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

    invoke-virtual {p1}, Lcom/mi/config/a;->Vb()Z

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
    .locals 10

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/Face;

    iget v1, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mModuleIndex:I

    const/high16 v2, -0x80000000

    const-string v3, "FunctionParseAiScene"

    const/4 v4, 0x0

    const/16 v5, 0xab

    if-eq v1, v5, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    array-length v1, v0

    move v6, v2

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_3

    aget-object v7, v0, v5

    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    const/16 v9, 0x12c

    if-le v8, v9, :cond_1

    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->getHdrDetectedScene(Landroid/hardware/camera2/CaptureResult;)I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseAiSceneResult: AI_SCENE_MODE_HUMAN  face.length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ";face.width = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ";hdrMode = "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/camera2/CameraCapabilities;->getMiAlgoASDVersion()F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    const/4 v6, -0x1

    goto :goto_1

    :cond_0
    const/16 v6, 0x19

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move v6, v2

    :cond_3
    invoke-direct {p0, v6}, Lcom/android/camera/module/loader/FunctionParseAiScene;->faceSceneFiltering(I)Z

    move-result v0

    if-eqz v0, :cond_7

    if-ne v6, v2, :cond_6

    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->getAsdDetectedModes(Landroid/hardware/camera2/CaptureResult;)I

    move-result p1

    iget-boolean v0, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mSupportMoonMode:Z

    if-nez v0, :cond_4

    const/16 v0, 0x23

    if-ne p1, v0, :cond_4

    const-string p1, "detected moon mode on unsupported device, set scene negative"

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v4

    :cond_4
    if-gez p1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseAiSceneResult: parse a error result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mParsedAiScene:I

    goto :goto_2

    :cond_5
    iput p1, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mParsedAiScene:I

    goto :goto_2

    :cond_6
    iput v6, p0, Lcom/android/camera/module/loader/FunctionParseAiScene;->mParsedAiScene:I

    :cond_7
    :goto_2
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
