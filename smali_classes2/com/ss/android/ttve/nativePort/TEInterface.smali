.class public final Lcom/ss/android/ttve/nativePort/TEInterface;
.super Lcom/ss/android/ttve/nativePort/TENativeServiceBase;
.source "TEInterface.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field private static final OPTION_UPDATE_ANYTIME:I = 0x1

.field private static final OPTION_UPDATE_BEFORE_PREPARE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TEInterface"


# instance fields
.field private mHostTrackIndex:I

.field private mNative:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadLibrary()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mHostTrackIndex:I

    return-void
.end method

.method public static createEngine()Lcom/ss/android/ttve/nativePort/TEInterface;
    .locals 5

    new-instance v0, Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-direct {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;-><init>()V

    invoke-direct {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeCreateEngine()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iput-wide v1, v0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    return-object v0
.end method

.method private native nativeAddAudioTrack(JLjava/lang/String;IIIIZ)I
.end method

.method private native nativeAddAudioTrack2(JLjava/lang/String;IIIIZII)I
.end method

.method private native nativeAddAudioTrackMV(JLjava/lang/String;IIIIIZ)I
.end method

.method private native nativeAddExternalTrack(J[Ljava/lang/String;[Ljava/lang/String;[I[I[I[IDDDDII)I
.end method

.method private native nativeAddExternalTrackMV(J[Ljava/lang/String;[Ljava/lang/String;[I[I[I[I[IDDDDII)I
.end method

.method private native nativeAddFilters(J[I[Ljava/lang/String;[I[I[I[I)[I
.end method

.method private native nativeAddInfoSticker(JLjava/lang/String;[Ljava/lang/String;)I
.end method

.method private native nativeAddMetaData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeAddVideoTrack(J[Ljava/lang/String;[Ljava/lang/String;[I[I[I[I[II)I
.end method

.method private native nativeAdjustFilterInOut(JIII)I
.end method

.method private native nativeBegin2DBrush(J)I
.end method

.method private native nativeCancelGetImages(J)I
.end method

.method private native nativeClearDisplay(JI)V
.end method

.method private native nativeCreateEngine()J
.end method

.method private native nativeCreateImageScene(J[Landroid/graphics/Bitmap;[I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[[Ljava/lang/String;[FI)I
.end method

.method private native nativeCreateScene(JLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[[Ljava/lang/String;I)I
.end method

.method private native nativeCreateScene2(J[Ljava/lang/String;[I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[[Ljava/lang/String;[F[II)I
.end method

.method private native nativeCreateSceneMV(J[Ljava/lang/String;[I[I[I[I[Ljava/lang/String;[I[I[I[I[I[Ljava/lang/String;[[Ljava/lang/String;[FI)I
.end method

.method private native nativeCreateTimeline(J)I
.end method

.method private native nativeDeleteAudioTrack(JI)I
.end method

.method private native nativeDeleteExternalTrack(JI)I
.end method

.method private native nativeDestroyEngine(J)I
.end method

.method private native nativeEnd2DBrush(JLjava/lang/String;)I
.end method

.method private native nativeGet2DBrushStrokeCount(J)I
.end method

.method private native nativeGetCurPosition(J)I
.end method

.method private native nativeGetCurState(J)I
.end method

.method private native nativeGetDisplayDumpSize(J)[I
.end method

.method private native nativeGetDisplayImage(J[BII)I
.end method

.method private native nativeGetDuration(J)I
.end method

.method private native nativeGetExternalTrackFilter(JI)I
.end method

.method private native nativeGetImages(J[III)I
.end method

.method private native nativeGetInfoStickerBoundingBox(JI)[F
.end method

.method private native nativeGetInitResolution(J)[I
.end method

.method private native nativeGetMetaData(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGetTrackVolume(JIII)F
.end method

.method private native nativeInitMVResources(JLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/Object;
.end method

.method private native nativeIsInfoStickerAnimatable(JI)Z
.end method

.method private native nativePause(J)I
.end method

.method private native nativePauseInfoStickerAnimation(JZ)I
.end method

.method private native nativePauseSync(J)I
.end method

.method private native nativePrepareEngine(JI)I
.end method

.method private native nativeProcessLongPressEvent(JFF)I
.end method

.method private native nativeProcessPanEvent(JFFFFF)I
.end method

.method private native nativeProcessRotationEvent(JFF)I
.end method

.method private native nativeProcessScaleEvent(JFF)I
.end method

.method private native nativeProcessTouchDownEvent(JFFI)I
.end method

.method private native nativeProcessTouchMoveEvent(JFF)I
.end method

.method private native nativeProcessTouchUpEvent(JFFI)I
.end method

.method private native nativeReleasePreviewSurface(J)V
.end method

.method private native nativeRemoveFilter(J[I)I
.end method

.method private native nativeRemoveInfoSticker(JI)I
.end method

.method private native nativeRestore(JLjava/lang/String;)I
.end method

.method private native nativeSave(J)Ljava/lang/String;
.end method

.method private native nativeSeek(JIIII)I
.end method

.method private native nativeSet2DBrushCanvasColor(JF)I
.end method

.method private native nativeSet2DBrushColor(JFFFF)I
.end method

.method private native nativeSet2DBrushSize(JF)I
.end method

.method private native nativeSetBackGroundColor(JI)V
.end method

.method private native nativeSetClipAttr(JIIILjava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeSetDestroyVersion(JZ)I
.end method

.method private native nativeSetDisplayState(JFFFFIII)V
.end method

.method private native nativeSetDldThrVal(JI)I
.end method

.method private native nativeSetDleEnabled(JZ)I
.end method

.method private native nativeSetEnableMultipleAudioFilter(JZ)V
.end method

.method private native nativeSetEnableRemuxVideo(JZ)V
.end method

.method private native nativeSetEncoderParallel(JZ)V
.end method

.method private native nativeSetExpandLastFrame(JZ)V
.end method

.method private native nativeSetFilterParam(JILjava/lang/String;Lcom/ss/android/vesdk/VEMusicSRTEffectParam;)I
.end method

.method private native nativeSetFilterParam(JILjava/lang/String;Lcom/ss/android/vesdk/VEStickerAnimator;)I
.end method

.method private native nativeSetFilterParam(JILjava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeSetOption(JILjava/lang/String;F)V
.end method

.method private native nativeSetOption(JILjava/lang/String;J)V
.end method

.method private native nativeSetOption(JILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSetOptionArray(JI[Ljava/lang/String;[J)V
.end method

.method private native nativeSetPreviewFps(JI)V
.end method

.method private native nativeSetPreviewScaleMode(JI)I
.end method

.method private native nativeSetPreviewSurface(JLandroid/view/Surface;)V
.end method

.method private native nativeSetSpeedRatio(JF)V
.end method

.method private native nativeSetSurfaceSize(JII)V
.end method

.method private native nativeSetTimeRange(JIII)I
.end method

.method private native nativeSetTrackVolume(JIIF)Z
.end method

.method private native nativeSetViewPort(JIIII)V
.end method

.method private native nativeSetWaterMark(JLjava/util/ArrayList;IIIIIJILcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;IIIIIJI",
            "Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;",
            ")V"
        }
    .end annotation
.end method

.method private native nativeStart(J)I
.end method

.method private native nativeStop(J)I
.end method

.method private native nativeTestSerialization(J)Z
.end method

.method private native nativeUndo2DBrush(J)I
.end method

.method private native nativeUpdateAudioTrack(JIIIIIZ)I
.end method

.method private native nativeUpdateAudioTrack2(JIIIIIZII)I
.end method

.method private native nativeUpdateScene(J[Ljava/lang/String;[I[I)I
.end method

.method private native nativeUpdateSceneFileOrder(J[I)I
.end method

.method private native nativeUpdateSceneTime(J[Z[I[I[I[D)I
.end method

.method private native nativeUpdateTrackClip(JII[Ljava/lang/String;)I
.end method

.method private native nativeUpdateTrackFilter(JIIZ)I
.end method


# virtual methods
.method public addAudioTrack(Ljava/lang/String;IIIIZ)I
    .locals 9

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, -0x64

    return p0

    :cond_1
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeAddAudioTrack(JLjava/lang/String;IIIIZ)I

    move-result p0

    return p0
.end method

.method public addAudioTrack(Ljava/lang/String;IIIIZII)I
    .locals 11

    move-object v0, p0

    iget-wide v1, v0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, -0x64

    return v0

    :cond_1
    iget-wide v1, v0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeAddAudioTrack2(JLjava/lang/String;IIIIZII)I

    move-result v0

    return v0
.end method

.method public addAudioTrackForMV(Ljava/lang/String;IIIIIZ)I
    .locals 10

    move-object v0, p0

    iget-wide v1, v0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, -0x64

    return v0

    :cond_1
    iget-wide v1, v0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeAddAudioTrackMV(JLjava/lang/String;IIIIIZ)I

    move-result v0

    return v0
.end method

.method public addExternalTrack([Ljava/lang/String;[Ljava/lang/String;[I[I[I[IDDDDI)I
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v6, p4

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move-wide/from16 v15, p13

    iget-wide v2, v1, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    move-object/from16 p5, v0

    move-object v0, v1

    move-wide v1, v2

    iget v0, v0, Lcom/ss/android/ttve/nativePort/TEInterface;->mHostTrackIndex:I

    move/from16 v18, v0

    const/16 v17, 0x5

    move-object/from16 v3, p1

    move-object/from16 v0, p5

    invoke-direct/range {v0 .. v18}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeAddExternalTrack(J[Ljava/lang/String;[Ljava/lang/String;[I[I[I[IDDDDII)I

    move-result v0

    return v0
.end method

.method public addFilters([I[Ljava/lang/String;[I[I[I[I)[I
    .locals 9

    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 p1, 0x0

    const/4 p2, -0x1

    aput p2, p0, p1

    return-object p0

    :cond_0
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeAddFilters(J[I[Ljava/lang/String;[I[I[I[I)[I

    move-result-object p0

    return-object p0
.end method

.method public addInfoSticker(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    iget v2, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mHostTrackIndex:I

    if-gez v2, :cond_1

    const/16 p0, -0x69

    return p0

    :cond_1
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeAddInfoSticker(JLjava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public addMetaData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeAddMetaData(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addSticker([Ljava/lang/String;[Ljava/lang/String;[I[I[I[IDDDD)I
    .locals 19

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const/16 v0, -0x70

    return v0

    :cond_0
    iget v15, v0, Lcom/ss/android/ttve/nativePort/TEInterface;->mHostTrackIndex:I

    if-gez v15, :cond_1

    const/16 v0, -0x69

    return v0

    :cond_1
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move/from16 v18, v15

    move-wide/from16 v15, p13

    invoke-direct/range {v0 .. v18}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeAddExternalTrack(J[Ljava/lang/String;[Ljava/lang/String;[I[I[I[IDDDDII)I

    move-result v0

    return v0
.end method

.method public addVideoTrackForMV([Ljava/lang/String;[Ljava/lang/String;[I[I[I[I[I)I
    .locals 11

    move-object v0, p0

    iget-wide v1, v0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v10, v0, Lcom/ss/android/ttve/nativePort/TEInterface;->mHostTrackIndex:I

    if-gez v10, :cond_1

    const/16 v0, -0x69

    return v0

    :cond_1
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeAddVideoTrack(J[Ljava/lang/String;[Ljava/lang/String;[I[I[I[I[II)I

    move-result v0

    return v0
.end method

.method public addWaterMark([Ljava/lang/String;[Ljava/lang/String;[I[IDDDD)I
    .locals 19

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const/16 v0, -0x70

    return v0

    :cond_0
    iget v15, v0, Lcom/ss/android/ttve/nativePort/TEInterface;->mHostTrackIndex:I

    if-gez v15, :cond_1

    const/16 v0, -0x69

    return v0

    :cond_1
    const/16 v17, 0x5

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move-wide/from16 v13, p9

    move/from16 v18, v15

    move-wide/from16 v15, p11

    invoke-direct/range {v0 .. v18}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeAddExternalTrack(J[Ljava/lang/String;[Ljava/lang/String;[I[I[I[IDDDDII)I

    move-result v0

    return v0
.end method

.method public adjustFilterInOut(III)I
    .locals 6

    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeAdjustFilterInOut(JIII)I

    move-result p0

    return p0
.end method

.method public begin2DBrush()I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeBegin2DBrush(J)I

    move-result p0

    return p0
.end method

.method public cancelGetImages()I
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeCancelGetImages(J)I

    move-result p0

    return p0
.end method

.method public clearDisplay(I)V
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeClearDisplay(JI)V

    return-void
.end method

.method public createImageScene([Landroid/graphics/Bitmap;[I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[[Ljava/lang/String;[FI)I
    .locals 14

    move-object v13, p0

    iget-wide v0, v13, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/16 v0, -0x70

    return v0

    :cond_0
    move-object v3, p1

    if-nez p9, :cond_1

    array-length v0, v3

    new-array v0, v0, [F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    move-object v11, v0

    goto :goto_0

    :cond_1
    move-object/from16 v11, p9

    :goto_0
    iget-wide v1, v13, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    move-object v0, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v12, p10

    invoke-direct/range {v0 .. v12}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeCreateImageScene(J[Landroid/graphics/Bitmap;[I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[[Ljava/lang/String;[FI)I

    move-result v0

    if-gez v0, :cond_2

    return v0

    :cond_2
    iput v0, v13, Lcom/ss/android/ttve/nativePort/TEInterface;->mHostTrackIndex:I

    const/4 v0, 0x0

    return v0
.end method

.method public createScene(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[[Ljava/lang/String;I)I
    .locals 9

    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeCreateScene(JLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[[Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_1

    return p1

    :cond_1
    iput p1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mHostTrackIndex:I

    const/4 p0, 0x0

    return p0
.end method

.method public createScene2([Ljava/lang/String;[I[I[I[I[Ljava/lang/String;[I[I[I[I[I[Ljava/lang/String;[[Ljava/lang/String;[FI)I
    .locals 18

    move-object/from16 v15, p0

    iget-wide v0, v15, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/16 v0, -0x70

    return v0

    :cond_0
    move-object/from16 v3, p1

    if-nez p14, :cond_1

    array-length v0, v3

    new-array v0, v0, [F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    move-object/from16 v16, v0

    goto :goto_0

    :cond_1
    move-object/from16 v16, p14

    :goto_0
    iget-wide v1, v15, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move/from16 v17, p15

    invoke-direct/range {v0 .. v17}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeCreateSceneMV(J[Ljava/lang/String;[I[I[I[I[Ljava/lang/String;[I[I[I[I[I[Ljava/lang/String;[[Ljava/lang/String;[FI)I

    move-result v0

    if-gez v0, :cond_2

    return v0

    :cond_2
    move-object/from16 v1, p0

    iput v0, v1, Lcom/ss/android/ttve/nativePort/TEInterface;->mHostTrackIndex:I

    const/4 v0, 0x0

    return v0
.end method

.method public createScene2([Ljava/lang/String;[I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[[Ljava/lang/String;[FI)I
    .locals 12

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lcom/ss/android/ttve/nativePort/TEInterface;->createScene2([Ljava/lang/String;[I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[[Ljava/lang/String;[F[II)I

    move-result v0

    return v0
.end method

.method public createScene2([Ljava/lang/String;[I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[[Ljava/lang/String;[F[II)I
    .locals 15

    move-object v14, p0

    iget-wide v0, v14, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/16 v0, -0x70

    return v0

    :cond_0
    move-object/from16 v3, p1

    if-nez p9, :cond_1

    array-length v0, v3

    new-array v0, v0, [F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    move-object v11, v0

    goto :goto_0

    :cond_1
    move-object/from16 v11, p9

    :goto_0
    iget-wide v1, v14, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    move-object v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v12, p10

    move/from16 v13, p11

    invoke-direct/range {v0 .. v13}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeCreateScene2(J[Ljava/lang/String;[I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[[Ljava/lang/String;[F[II)I

    move-result v0

    if-gez v0, :cond_2

    return v0

    :cond_2
    iput v0, v14, Lcom/ss/android/ttve/nativePort/TEInterface;->mHostTrackIndex:I

    const/4 v0, 0x0

    return v0
.end method

.method public createTimeline()I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeCreateTimeline(J)I

    move-result p0

    return p0
.end method

.method public deleteAudioTrack(I)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeDeleteAudioTrack(JI)I

    move-result p0

    return p0
.end method

.method public deleteSticker(I)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    if-gez p1, :cond_1

    const/16 p0, -0x64

    return p0

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeDeleteExternalTrack(JI)I

    move-result p0

    return p0
.end method

.method public deleteWatermark(I)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    if-gez p1, :cond_1

    const/16 p0, -0x64

    return p0

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeDeleteExternalTrack(JI)I

    move-result p0

    return p0
.end method

.method public destroyEngine()I
    .locals 5

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeDestroyEngine(J)I

    move-result v0

    iput-wide v2, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    return v0
.end method

.method public enableSimpleProcessor(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const/4 p1, 0x0

    const-string v2, "engine processor mode"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public end2DBrush(Ljava/lang/String;)I
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeEnd2DBrush(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public get2DBrushStrokeCount()I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGet2DBrushStrokeCount(J)I

    move-result p0

    return p0
.end method

.method public getCurPosition()I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetCurPosition(J)I

    move-result p0

    return p0
.end method

.method public getCurState()I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetCurState(J)I

    move-result p0

    return p0
.end method

.method public getDisplayImage([BII)I
    .locals 6

    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetDisplayImage(J[BII)I

    move-result p0

    return p0
.end method

.method public getDisplayRect()Lcom/ss/android/vesdk/VERect;
    .locals 5

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    new-instance p0, Lcom/ss/android/vesdk/VERect;

    invoke-direct {p0, v3, v3, v3, v3}, Lcom/ss/android/vesdk/VERect;-><init>(IIII)V

    return-object p0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetDisplayDumpSize(J)[I

    move-result-object p0

    new-instance v0, Lcom/ss/android/vesdk/VERect;

    aget v1, p0, v3

    const/4 v2, 0x1

    aget v2, p0, v2

    const/4 v3, 0x2

    aget v3, p0, v3

    const/4 v4, 0x3

    aget p0, p0, v4

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/ss/android/vesdk/VERect;-><init>(IIII)V

    return-object v0
.end method

.method public getDuration()I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetDuration(J)I

    move-result p0

    return p0
.end method

.method public getImages([III)I
    .locals 6

    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetImages(J[III)I

    move-result p0

    return p0
.end method

.method public getInfoStickerBoundingBox(I)[F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/vesdk/VEException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-string v3, ""

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mHostTrackIndex:I

    if-ltz v2, :cond_1

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetInfoStickerBoundingBox(JI)[F

    move-result-object p0

    const/4 p1, 0x0

    aget v0, p0, p1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v1, v0, [F

    const/4 v2, 0x1

    invoke-static {p0, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_0
    new-instance v0, Lcom/ss/android/vesdk/VEException;

    const/4 v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "native getInfoStickerBoundingBox failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, p0, p1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Lcom/ss/android/vesdk/VEException;

    const/16 p1, -0x64

    invoke-direct {p0, p1, v3}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/ss/android/vesdk/VEException;

    const/16 p1, -0x70

    invoke-direct {p0, p1, v3}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public getInitResolution()[I
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetInitResolution(J)[I

    move-result-object p0

    return-object p0

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public getMetaData(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetMetaData(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNativeHandler()J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    return-wide v0
.end method

.method public getStickerFilterIndex(I)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    if-gez p1, :cond_1

    const/16 p0, -0x64

    return p0

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetExternalTrackFilter(JI)I

    move-result p0

    return p0
.end method

.method public getTrackVolume(III)F
    .locals 6

    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeGetTrackVolume(JIII)F

    move-result p0

    return p0
.end method

.method public initMVResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 7

    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeInitMVResources(JLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isInfoStickerAnimatable(I)Z
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget v2, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mHostTrackIndex:I

    if-gez v2, :cond_1

    return v3

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeIsInfoStickerAnimatable(JI)Z

    move-result p0

    return p0
.end method

.method public native nativeSetAudioOffset(JII)I
.end method

.method public pause()I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativePause(J)I

    move-result p0

    return p0
.end method

.method public pauseInfoStickerAnimation(Z)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    iget v2, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mHostTrackIndex:I

    if-gez v2, :cond_1

    const/16 p0, -0x69

    return p0

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativePauseInfoStickerAnimation(JZ)I

    move-result p0

    return p0
.end method

.method public pauseSync()I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativePauseSync(J)I

    move-result p0

    return p0
.end method

.method public prepareEngine(I)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativePrepareEngine(JI)I

    move-result p0

    return p0
.end method

.method public processLongPressEvent(FF)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeProcessLongPressEvent(JFF)I

    move-result p0

    return p0
.end method

.method public processPanEvent(FFFFF)I
    .locals 8

    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeProcessPanEvent(JFFFFF)I

    move-result p0

    return p0
.end method

.method public processRotationEvent(FF)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeProcessRotationEvent(JFF)I

    move-result p0

    return p0
.end method

.method public processScaleEvent(FF)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeProcessScaleEvent(JFF)I

    move-result p0

    return p0
.end method

.method public processTouchDownEvent(FFLcom/ss/android/vesdk/VEGestureType;)I
    .locals 6

    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeProcessTouchDownEvent(JFFI)I

    move-result p0

    return p0
.end method

.method public processTouchMoveEvent(FF)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeProcessTouchMoveEvent(JFF)I

    move-result p0

    return p0
.end method

.method public processTouchUpEvent(FFLcom/ss/android/vesdk/VEGestureType;)I
    .locals 6

    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeProcessTouchUpEvent(JFFI)I

    move-result p0

    return p0
.end method

.method public releasePreviewSurface()V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeReleasePreviewSurface(J)V

    return-void
.end method

.method public removeFilter([I)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeRemoveFilter(J[I)I

    move-result p0

    return p0
.end method

.method public removeInfoSticker(I)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    iget v2, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mHostTrackIndex:I

    if-gez v2, :cond_1

    const/16 p0, -0x69

    return p0

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeRemoveInfoSticker(JI)I

    move-result p0

    return p0
.end method

.method public restore(Ljava/lang/String;)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeRestore(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public save()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSave(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p0, v3

    :cond_1
    return-object p0
.end method

.method public seek(IIII)I
    .locals 7

    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSeek(JIIII)I

    move-result p0

    return p0
.end method

.method public set2DBrushCanvasAlpha(F)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSet2DBrushCanvasColor(JF)I

    move-result p0

    return p0
.end method

.method public set2DBrushColor(FFFF)I
    .locals 7

    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSet2DBrushColor(JFFFF)I

    move-result p0

    return p0
.end method

.method public set2DBrushSize(F)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSet2DBrushSize(JF)I

    move-result p0

    return p0
.end method

.method public setAudioOffset(II)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetAudioOffset(JII)I

    move-result p0

    return p0
.end method

.method public setBackGroundColor(I)V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetBackGroundColor(JI)V

    return-void
.end method

.method public setClipAttr(IIILjava/lang/String;Ljava/lang/String;)I
    .locals 8

    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetClipAttr(JIIILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setCompileCommonEncodeOptions(II)V
    .locals 3

    int-to-long v0, p1

    const/4 p1, 0x0

    const-string v2, "CompileBitrateMode"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    int-to-long v0, p2

    const-string p2, "CompileEncodeProfile"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setCompileFps(I)V
    .locals 3

    int-to-long v0, p1

    const/4 p1, 0x0

    const-string v2, "CompileFps"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setCompileHardwareEncodeOptions(I)V
    .locals 3

    int-to-long v0, p1

    const/4 p1, 0x0

    const-string v2, "CompileHardwareBitrate"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setCompileSoftwareEncodeOptions(IJII)V
    .locals 3

    int-to-long v0, p1

    const/4 p1, 0x0

    const-string v2, "CompileSoftwareCrf"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    const-string v0, "CompileSoftwareMaxrate"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    int-to-long p2, p4

    const-string p4, "CompileSoftwarePreset"

    invoke-virtual {p0, p1, p4, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    int-to-long p2, p5

    const-string p4, "CompileSoftwareQp"

    invoke-virtual {p0, p1, p4, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setCompileType(I)V
    .locals 3

    int-to-long v0, p1

    const/4 p1, 0x0

    const-string v2, "CompileType"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setCompileWatermark(Lcom/ss/android/vesdk/VEWatermarkParam;)V
    .locals 2

    iget-object p1, p1, Lcom/ss/android/vesdk/VEWatermarkParam;->extFile:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "CompilePathWatermark"

    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "CompilePathWavWatermark"

    const-string v1, ""

    invoke-virtual {p0, v0, p1, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCrop(IIII)V
    .locals 4

    const-string v0, "engine crop x"

    const-string v1, "engine crop y"

    const-string v2, "engine crop width"

    const-string v3, "engine crop height"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [J

    int-to-long v2, p1

    const/4 p1, 0x0

    aput-wide v2, v1, p1

    int-to-long p1, p2

    const/4 v2, 0x1

    aput-wide p1, v1, v2

    int-to-long p1, p3

    const/4 p3, 0x2

    aput-wide p1, v1, p3

    int-to-long p1, p4

    const/4 p3, 0x3

    aput-wide p1, v1, p3

    invoke-virtual {p0, v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(I[Ljava/lang/String;[J)V

    return-void
.end method

.method public setDestroyVersion(Z)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetDestroyVersion(JZ)I

    move-result p0

    return p0
.end method

.method public setDisplayState(FFFFIIZ)V
    .locals 10

    move-object v0, p0

    iget-wide v1, v0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetDisplayState(JFFFFIII)V

    return-void
.end method

.method public setDldThrVal(I)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetDldThrVal(JI)I

    move-result p0

    return p0
.end method

.method public setDleEnabled(Z)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetDleEnabled(JZ)I

    move-result p0

    return p0
.end method

.method public setEnableInterLeave(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-wide/16 v2, 0x1

    :cond_1
    const/4 p1, 0x0

    const-string v0, "CompileInterleave"

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setEnableMultipleAudioFilter(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetEnableMultipleAudioFilter(JZ)V

    return-void
.end method

.method public setEnableRemuxVideo(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetEnableRemuxVideo(JZ)V

    return-void
.end method

.method public setEncGopSize(I)V
    .locals 3

    int-to-long v0, p1

    const/4 p1, 0x0

    const-string v2, "video gop size"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setEncoderParallel(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetEncoderParallel(JZ)V

    return-void
.end method

.method public setEngineCompilePath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "CompilePath"

    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "CompilePathWav"

    invoke-virtual {p0, v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setExpandLastFrame(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetExpandLastFrame(JZ)V

    return-void
.end method

.method public setFilterParam(ILjava/lang/String;Lcom/ss/android/vesdk/VEMusicSRTEffectParam;)I
    .locals 6

    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetFilterParam(JILjava/lang/String;Lcom/ss/android/vesdk/VEMusicSRTEffectParam;)I

    move-result p0

    return p0
.end method

.method public setFilterParam(ILjava/lang/String;Lcom/ss/android/vesdk/VEStickerAnimator;)I
    .locals 6

    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetFilterParam(JILjava/lang/String;Lcom/ss/android/vesdk/VEStickerAnimator;)I

    move-result p0

    return p0
.end method

.method public setFilterParam(ILjava/lang/String;Ljava/lang/String;)I
    .locals 6

    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetFilterParam(JILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setLooping(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const/4 p1, 0x1

    const-string v2, "engine loop play"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setMaxWidthHeight(II)V
    .locals 3

    const/4 v0, 0x0

    if-lez p1, :cond_0

    int-to-long v1, p1

    const-string p1, "engine max video width"

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    :cond_0
    if-lez p2, :cond_1

    int-to-long p1, p2

    const-string v1, "engine max video height"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    :cond_1
    return-void
.end method

.method public setOption(ILjava/lang/String;F)V
    .locals 6

    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetOption(JILjava/lang/String;F)V

    return-void
.end method

.method public setOption(ILjava/lang/String;J)V
    .locals 7

    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetOption(JILjava/lang/String;J)V

    return-void
.end method

.method public setOption(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetOption(JILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOption(I[Ljava/lang/String;[J)V
    .locals 6

    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetOptionArray(JI[Ljava/lang/String;[J)V

    return-void
.end method

.method public setPageMode(I)V
    .locals 3

    int-to-long v0, p1

    const/4 p1, 0x0

    const-string v2, "engine page mode"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setPreviewFps(I)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetPreviewFps(JI)V

    const/4 p0, 0x0

    return p0
.end method

.method public setPreviewScaleMode(I)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetPreviewScaleMode(JI)I

    move-result p0

    return p0
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetPreviewSurface(JLandroid/view/Surface;)V

    return-void
.end method

.method public setResizer(IFF)V
    .locals 3

    int-to-long v0, p1

    const/4 p1, 0x0

    const-string v2, "filter mode"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    const-string v0, "resizer offset x percent"

    invoke-virtual {p0, p1, v0, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;F)V

    const-string p2, "resizer offset y percent"

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;F)V

    return-void
.end method

.method public setScaleMode(I)V
    .locals 3

    int-to-long v0, p1

    const/4 p1, 0x0

    const-string v2, "filter mode"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setSpeedRatio(F)V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetSpeedRatio(JF)V

    return-void
.end method

.method public setSurfaceSize(II)V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetSurfaceSize(JII)V

    return-void
.end method

.method public setTimeRange(III)I
    .locals 6

    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetTimeRange(JIII)I

    move-result p0

    return p0
.end method

.method public setTrackVolume(IIF)Z
    .locals 6

    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetTrackVolume(JIIF)Z

    move-result p0

    return p0
.end method

.method public setUseHwEnc(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const/4 p1, 0x0

    const-string v2, "HardwareVideo"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setUseLargeMattingModel(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const/4 p1, 0x0

    const-string v2, "UseLargeMattingModel"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setUsrRotate(I)V
    .locals 5

    const-wide/16 v0, 0x0

    const-string v2, "usr rotate"

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    const/16 v4, 0x5a

    if-eq p1, v4, :cond_2

    const/16 v4, 0xb4

    if-eq p1, v4, :cond_1

    const/16 v4, 0x10e

    if-eq p1, v4, :cond_0

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    :goto_0
    return-void
.end method

.method public setVideoCompileBitrate(II)V
    .locals 3

    int-to-long v0, p1

    const/4 p1, 0x0

    const-string v2, "CompileBitrateMode"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    int-to-long v0, p2

    const-string p2, "CompileBitrateValue"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    return-void
.end method

.method public setViewPort(IIII)V
    .locals 7

    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetViewPort(JIIII)V

    return-void
.end method

.method public setWaterMark(Ljava/util/ArrayList;IIIIIJLcom/ss/android/vesdk/VEWaterMarkPosition;Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;IIIIIJ",
            "Lcom/ss/android/vesdk/VEWaterMarkPosition;",
            "Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    iget-wide v1, v0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move-object/from16 v12, p10

    invoke-direct/range {v0 .. v12}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeSetWaterMark(JLjava/util/ArrayList;IIIIIJILcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;)V

    return-void
.end method

.method public setWidthHeight(II)V
    .locals 3

    const/4 v0, 0x0

    if-lez p1, :cond_0

    int-to-long v1, p1

    const-string p1, "engine video width"

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    :cond_0
    if-lez p2, :cond_1

    int-to-long p1, p2

    const-string v1, "engine video height"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(ILjava/lang/String;J)V

    :cond_1
    return-void
.end method

.method public start()I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeStart(J)I

    move-result p0

    return p0
.end method

.method public stop()I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeStop(J)I

    move-result p0

    return p0
.end method

.method public native stringFromJNI()Ljava/lang/String;
.end method

.method public testSerialization()Z
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeTestSerialization(J)Z

    move-result p0

    return p0
.end method

.method public undo2DBrush()I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUndo2DBrush(J)I

    move-result p0

    return p0
.end method

.method public updateAudioTrack(IIIIIZ)I
    .locals 9

    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-gez p1, :cond_1

    const/16 p0, -0x64

    return p0

    :cond_1
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateAudioTrack(JIIIIIZ)I

    move-result p0

    return p0
.end method

.method public updateAudioTrack(IIIIIZII)I
    .locals 11

    move-object v0, p0

    iget-wide v1, v0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    if-gez p1, :cond_1

    const/16 v0, -0x64

    return v0

    :cond_1
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateAudioTrack2(JIIIIIZII)I

    move-result v0

    return v0
.end method

.method public updateResolution(IIII)V
    .locals 4

    const-string v0, "engine preivew width"

    const-string v1, "engine preivew height"

    const-string v2, "engine preivew width percent"

    const-string v3, "engine preivew height percent"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [J

    int-to-long v2, p1

    const/4 p1, 0x0

    aput-wide v2, v1, p1

    int-to-long p1, p2

    const/4 v2, 0x1

    aput-wide p1, v1, v2

    int-to-long p1, p3

    const/4 p3, 0x2

    aput-wide p1, v1, p3

    int-to-long p1, p4

    const/4 p3, 0x3

    aput-wide p1, v1, p3

    invoke-virtual {p0, v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setOption(I[Ljava/lang/String;[J)V

    return-void
.end method

.method public updateScene([Ljava/lang/String;[I[I)I
    .locals 6

    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateScene(J[Ljava/lang/String;[I[I)I

    move-result p1

    if-gez p1, :cond_1

    return p1

    :cond_1
    iput p1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mHostTrackIndex:I

    const/4 p0, 0x0

    return p0
.end method

.method public updateSceneFileOrder(Lcom/ss/android/vesdk/VETimelineParams;)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    iget-object p1, p1, Lcom/ss/android/vesdk/VETimelineParams;->videoFileIndex:[I

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateSceneFileOrder(J[I)I

    move-result p0

    return p0
.end method

.method public updateSenceTime(Lcom/ss/android/vesdk/VETimelineParams;)I
    .locals 8

    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    iget-object v3, p1, Lcom/ss/android/vesdk/VETimelineParams;->enable:[Z

    iget-object v4, p1, Lcom/ss/android/vesdk/VETimelineParams;->vTrimIn:[I

    iget-object v5, p1, Lcom/ss/android/vesdk/VETimelineParams;->vTrimOut:[I

    iget-object v0, p1, Lcom/ss/android/vesdk/VETimelineParams;->rotate:[Lcom/ss/android/vesdk/ROTATE_DEGREE;

    invoke-static {v0}, Lcom/ss/android/vesdk/ROTATE_DEGREE;->toIntArray([Lcom/ss/android/vesdk/ROTATE_DEGREE;)[I

    move-result-object v6

    iget-object v7, p1, Lcom/ss/android/vesdk/VETimelineParams;->speed:[D

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateSceneTime(J[Z[I[I[I[D)I

    move-result p0

    return p0
.end method

.method public updateTrackClips(II[Ljava/lang/String;)I
    .locals 6

    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateTrackClip(JII[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public updateTrackFilter(IIZ)I
    .locals 6

    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TEInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/16 p0, -0x70

    return p0

    :cond_0
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->nativeUpdateTrackFilter(JIIZ)I

    move-result p0

    return p0
.end method
