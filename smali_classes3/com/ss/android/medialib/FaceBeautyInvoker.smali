.class public Lcom/ss/android/medialib/FaceBeautyInvoker;
.super Ljava/lang/Object;
.source "FaceBeautyInvoker.java"

# interfaces
.implements Lcom/bef/effectsdk/message/MessageCenter$Listener;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/FaceBeautyInvoker$OnARTextBitmapCallback;,
        Lcom/ss/android/medialib/FaceBeautyInvoker$OnARTextContentCallback;,
        Lcom/ss/android/medialib/FaceBeautyInvoker$OnARTextCountCallback;,
        Lcom/ss/android/medialib/FaceBeautyInvoker$OnRunningErrorCallback;,
        Lcom/ss/android/medialib/FaceBeautyInvoker$OnFrameCallback;,
        Lcom/ss/android/medialib/FaceBeautyInvoker$OnCherEffectParmaCallback;,
        Lcom/ss/android/medialib/FaceBeautyInvoker$OnHandDetectCallback;,
        Lcom/ss/android/medialib/FaceBeautyInvoker$FaceInfoCallback;,
        Lcom/ss/android/medialib/FaceBeautyInvoker$OnPictureCallbackV2;,
        Lcom/ss/android/medialib/FaceBeautyInvoker$OnPictureCallback;,
        Lcom/ss/android/medialib/FaceBeautyInvoker$RecordStopCallback;
    }
.end annotation


# static fields
.field public static final INVALID_ENV:I = -0x186a1

.field public static final INVALID_HANDLE:I = -0x186a0

.field private static final TAG:Ljava/lang/String; = "FaceBeautyInvoker"

.field static mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

.field private static mRecordStopCallback:Lcom/ss/android/medialib/FaceBeautyInvoker$RecordStopCallback;

.field private static sDuetCompleteRunable:Ljava/lang/Runnable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static sFaceDetectListener:Lcom/ss/android/medialib/listener/FaceDetectListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static sMessageListener:Lcom/bef/effectsdk/message/MessageCenter$Listener;

.field private static sNativeInitListener:Lcom/ss/android/medialib/listener/NativeInitListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static sSlamDetectListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/medialib/listener/SlamDetectListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;

.field private mAVCEncoderInterface:Lcom/ss/android/medialib/AVCEncoderInterface;

.field private mDuetCompleteRunable:Ljava/lang/Runnable;

.field private mFaceDetectListener:Lcom/ss/android/medialib/listener/FaceDetectListener;

.field private mGetTimestampCallback:Lcom/ss/android/medialib/common/Common$IGetTimestampCallback;

.field private mHandler:J

.field private mIsDuringScreenshot:Z

.field private mIsRenderRady:Z

.field private mNativeInitListener:Lcom/ss/android/medialib/listener/NativeInitListener;

.field private mOpenGLCallback:Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;

.field private mShotScreenCallback:Lcom/ss/android/medialib/common/Common$IShotScreenCallback;

.field private mTextureTimeListener:Lcom/ss/android/medialib/listener/TextureTimeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadLibrary()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ss/android/medialib/FaceBeautyInvoker;->sSlamDetectListeners:Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/medialib/FaceBeautyInvoker;->sDuetCompleteRunable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mIsDuringScreenshot:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mOpenGLCallback:Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;

    iput-object v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mShotScreenCallback:Lcom/ss/android/medialib/common/Common$IShotScreenCallback;

    iput-object v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mGetTimestampCallback:Lcom/ss/android/medialib/common/Common$IGetTimestampCallback;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    iput-boolean v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mIsRenderRady:Z

    new-instance v0, Lcom/ss/android/medialib/FaceBeautyInvoker$1;

    invoke-direct {v0, p0}, Lcom/ss/android/medialib/FaceBeautyInvoker$1;-><init>(Lcom/ss/android/medialib/FaceBeautyInvoker;)V

    iput-object v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mAVCEncoderInterface:Lcom/ss/android/medialib/AVCEncoderInterface;

    iget-object p0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mAVCEncoderInterface:Lcom/ss/android/medialib/AVCEncoderInterface;

    sput-object p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/medialib/FaceBeautyInvoker;)J
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/ss/android/medialib/FaceBeautyInvoker;JI)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetColorFormat(JI)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/ss/android/medialib/FaceBeautyInvoker;)Lcom/ss/android/medialib/AVCEncoder;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;

    return-object p0
.end method

.method static synthetic access$202(Lcom/ss/android/medialib/FaceBeautyInvoker;Lcom/ss/android/medialib/AVCEncoder;)Lcom/ss/android/medialib/AVCEncoder;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ss/android/medialib/FaceBeautyInvoker;JLjava/nio/ByteBuffer;III)I
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeWriteFile(JLjava/nio/ByteBuffer;III)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/ss/android/medialib/FaceBeautyInvoker;JLjava/nio/ByteBuffer;IJJI)I
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeWriteFile2(JLjava/nio/ByteBuffer;IJJI)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/ss/android/medialib/FaceBeautyInvoker;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeOnSwapGlBuffers(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/ss/android/medialib/FaceBeautyInvoker;JLjava/nio/ByteBuffer;I)I
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetCodecConfig(JLjava/nio/ByteBuffer;I)I

    move-result p0

    return p0
.end method

.method public static declared-synchronized addSlamDetectListener(Lcom/ss/android/medialib/listener/SlamDetectListener;)V
    .locals 2

    const-class v0, Lcom/ss/android/medialib/FaceBeautyInvoker;

    monitor-enter v0

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v1, Lcom/ss/android/medialib/FaceBeautyInvoker;->sSlamDetectListeners:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized clearSlamDetectListener()V
    .locals 2

    const-class v0, Lcom/ss/android/medialib/FaceBeautyInvoker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/medialib/FaceBeautyInvoker;->sSlamDetectListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getNativeInitListener()Lcom/ss/android/medialib/listener/NativeInitListener;
    .locals 1

    sget-object v0, Lcom/ss/android/medialib/FaceBeautyInvoker;->sNativeInitListener:Lcom/ss/android/medialib/listener/NativeInitListener;

    return-object v0
.end method

.method private isRenderReady()Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mIsRenderRady:Z

    return p0
.end method

.method private native nativeAddPCMData(J[BI)I
.end method

.method private native nativeBindEffectAudioProcessor(JIIZ)I
.end method

.method private native nativeCancelAll(J)V
.end method

.method private native nativeChangeMusicPath(JLjava/lang/String;)I
.end method

.method private native nativeChangeOutputVideoSize(JII)V
.end method

.method private native nativeChangeSurface(JLandroid/view/Surface;)I
.end method

.method private native nativeChooseSlamFace(JI)V
.end method

.method private native nativeClearFragFile(J)I
.end method

.method private native nativeCloseWavFile(JZ)I
.end method

.method private native nativeConcat(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeCreate()J
.end method

.method private native nativeDeleteLastFrag(J)I
.end method

.method private native nativeEnableAbandonFirstFrame(JZ)V
.end method

.method private native nativeEnableBlindWaterMark(JZ)I
.end method

.method private native nativeEnableEffect(JZ)V
.end method

.method private native nativeEnableEffectBGM(JZ)V
.end method

.method private native nativeEnableScan(JZJ)V
.end method

.method private native nativeEnableSceneRecognition(JZ)V
.end method

.method private native nativeEnableTTFaceDetect(JZ)I
.end method

.method private native nativeEnableUse16BitAlign(JZ)V
.end method

.method private native nativeExpandPreviewAndRecordInterval(JZ)I
.end method

.method private native nativeGetAudioEndTime(J)J
.end method

.method private native nativeGetEndFrameTime(J)J
.end method

.method private native nativeGetEnigmaResult(J)Lcom/ss/android/medialib/model/EnigmaResult;
.end method

.method private native nativeGetReactionCamRotation(J)F
.end method

.method private native nativeGetReactionCameraPosInRecordPixel(J)[I
.end method

.method private native nativeGetReactionCameraPosInViewPixel(J)[I
.end method

.method private native nativeGetReactionPosMarginInViewPixel(J)[I
.end method

.method private native nativeGetSlamFaceCount(J)I
.end method

.method private native nativeHideSlamKeyBoard(JZ)I
.end method

.method private native nativeInitAudioConfig(JII)I
.end method

.method private native nativeInitAudioPlayer(JLjava/lang/String;IIJZ)I
.end method

.method private native nativeInitDuet(JLjava/lang/String;FFFZ)I
.end method

.method private native nativeInitFaceBeautyPlay(JIILjava/lang/String;IILjava/lang/String;IZZ)I
.end method

.method private native nativeInitFaceBeautyPlayOnlyPreview(JLcom/ss/android/medialib/qr/ScanSettings;)I
.end method

.method private native nativeInitImageDrawer(JI)I
.end method

.method private native nativeInitMediaCodecSurface(JLandroid/view/Surface;)I
.end method

.method private native nativeInitReaction(JLjava/lang/String;)I
.end method

.method private native nativeInitWavFile(JIID)I
.end method

.method private native nativeIsQualcomm(J)Z
.end method

.method private native nativeIsStickerEnabled(J)Z
.end method

.method private native nativeMarkPlayDone(J)I
.end method

.method private native nativeOnAudioCallback(J[BI)I
.end method

.method private native nativeOnDrawFrameBuffer(J[BIII)I
.end method

.method private native nativeOnDrawFrameBuffer2(JLjava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[IIII)I
.end method

.method private native nativeOnFrameAvailable(JI[F)I
.end method

.method private native nativeOnFrameTime(JD)I
.end method

.method private native nativeOnSwapGlBuffers(J)V
.end method

.method private native nativePauseEffectAudio(JZ)I
.end method

.method private native nativePosInReactionRegion(JII)Z
.end method

.method private native nativeProcessTouchEvent(JFF)I
.end method

.method private native nativeRecoverCherEffect(J[Ljava/lang/String;[D[Z)V
.end method

.method private native nativeRegisterCherEffectParamCallback(JLcom/ss/android/medialib/FaceBeautyInvoker$OnCherEffectParmaCallback;)V
.end method

.method private native nativeRegisterFaceInfoUpload(JZLcom/ss/android/medialib/FaceBeautyInvoker$FaceInfoCallback;)V
.end method

.method private native nativeRegisterHandDetectCallback(J[ILcom/ss/android/medialib/FaceBeautyInvoker$OnHandDetectCallback;)V
.end method

.method private native nativeRenderPicture(J[BIIILcom/ss/android/medialib/FaceBeautyInvoker$OnPictureCallbackV2;)I
.end method

.method private native nativeRenderPicture2(JLjava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[IIIIIILcom/ss/android/medialib/FaceBeautyInvoker$OnPictureCallbackV2;)I
.end method

.method private native nativeRenderPicture3(JLandroid/graphics/Bitmap;IILcom/ss/android/medialib/FaceBeautyInvoker$OnPictureCallbackV2;)I
.end method

.method private native nativeResetPerfStats(J)V
.end method

.method private native nativeResetStartTime(JJJ)I
.end method

.method private native nativeRotateReactionWindow(JF)F
.end method

.method private native nativeSave(J)I
.end method

.method private native nativeScaleReactionWindow(JF)[I
.end method

.method private native nativeSendEffectMonitor(J)V
.end method

.method private native nativeSendEffectMsg(JIJJLjava/lang/String;)V
.end method

.method private native nativeSetAlgorithmChangeMsg(JIZ)V
.end method

.method private native nativeSetBGMVolume(JF)I
.end method

.method private native nativeSetBeautyFace(JILjava/lang/String;)I
.end method

.method private native nativeSetBeautyFaceIntensity(JFF)I
.end method

.method private native nativeSetBlindWaterMarkDiffKeys(JII)I
.end method

.method private native nativeSetBlindWaterMarkPosition(JII)I
.end method

.method private native nativeSetCameraFirstFrameOptimize(JZ)V
.end method

.method private native nativeSetCodecConfig(JLjava/nio/ByteBuffer;I)I
.end method

.method private native nativeSetColorFormat(JI)I
.end method

.method private native nativeSetDLEEnable(JZ)I
.end method

.method private native nativeSetDetectInterval(JI)V
.end method

.method private native nativeSetDetectionMode(JZ)V
.end method

.method private native nativeSetDeviceRotation(J[F)I
.end method

.method private native nativeSetDuetCameraPaused(JZ)V
.end method

.method private native nativeSetEffectBuildChainType(JI)V
.end method

.method private native nativeSetFaceMakeUp(JLjava/lang/String;FF)I
.end method

.method private native nativeSetFaceMakeUp2(JLjava/lang/String;)I
.end method

.method private native nativeSetFilter(JLjava/lang/String;Ljava/lang/String;F)I
.end method

.method private native nativeSetFilterIntensity(JF)I
.end method

.method private native nativeSetFilterPos(JF)I
.end method

.method private native nativeSetFrameCallback(JLcom/ss/android/medialib/FaceBeautyInvoker$OnFrameCallback;Z)I
.end method

.method private native nativeSetHandDetectLowpower(JZ)I
.end method

.method private native nativeSetHardEncoderStatus(JZ)I
.end method

.method private native nativeSetIntensityByType(JIF)I
.end method

.method private native nativeSetModeChangeState(JI)V
.end method

.method private native nativeSetMusicNodes(JLjava/lang/String;)I
.end method

.method private native nativeSetMusicTime(JJJ)I
.end method

.method private native nativeSetNativeLibraryDir(Ljava/lang/String;)V
.end method

.method private native nativeSetPlayLength(JJ)I
.end method

.method private native nativeSetPreviewSizeRatio(JF)V
.end method

.method private native nativeSetReactionBorderParam(JII)V
.end method

.method private native nativeSetReactionMaskImage(JLjava/lang/String;Z)Z
.end method

.method private native nativeSetReactionPosMargin(JIIII)V
.end method

.method private native nativeSetRenderCacheTexture(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSetReshape(JLjava/lang/String;FF)I
.end method

.method private native nativeSetRunningErrorCallback(JLcom/ss/android/medialib/FaceBeautyInvoker$OnRunningErrorCallback;)I
.end method

.method private native nativeSetSharedTextureStatus(Z)Z
.end method

.method private native nativeSetSkinTone(JLjava/lang/String;)I
.end method

.method private native nativeSetSlamFace(JLandroid/graphics/Bitmap;)I
.end method

.method private native nativeSetSlamInputText(JLjava/lang/String;IILjava/lang/String;)I
.end method

.method private native nativeSetSticker(JLandroid/graphics/Bitmap;II)I
.end method

.method private native nativeSetStickerPath(JLjava/lang/String;IIZ)I
.end method

.method private native nativeSetSwapDuetRegion(JZ)I
.end method

.method private native nativeSetUseMusic(JI)I
.end method

.method private native nativeSetVideoQuality(JII)I
.end method

.method private native nativeShotScreen(JLjava/lang/String;[IZILcom/ss/android/medialib/FaceBeautyInvoker$OnPictureCallback;)I
.end method

.method private native nativeSlamDeviceConfig(JZZZZ)I
.end method

.method private native nativeSlamGetTextBitmap(JLcom/ss/android/medialib/FaceBeautyInvoker$OnARTextBitmapCallback;)I
.end method

.method private native nativeSlamGetTextLimitCount(JLcom/ss/android/medialib/FaceBeautyInvoker$OnARTextCountCallback;)I
.end method

.method private native nativeSlamGetTextParagraphContent(JLcom/ss/android/medialib/FaceBeautyInvoker$OnARTextContentCallback;)I
.end method

.method private native nativeSlamProcessDoubleClickEvent(JFF)I
.end method

.method private native nativeSlamProcessIngestAcc(JDDDD)I
.end method

.method private native nativeSlamProcessIngestGra(JDDDD)I
.end method

.method private native nativeSlamProcessIngestGyr(JDDDD)I
.end method

.method private native nativeSlamProcessIngestOri(J[DD)I
.end method

.method private native nativeSlamProcessPanEvent(JFFFFF)I
.end method

.method private native nativeSlamProcessRotationEvent(JFF)I
.end method

.method private native nativeSlamProcessScaleEvent(JFF)I
.end method

.method private native nativeSlamProcessTouchEvent(JFF)I
.end method

.method private native nativeSlamProcessTouchEventByType(JIFFI)I
.end method

.method private native nativeSlamSetLanguge(JLjava/lang/String;)I
.end method

.method private native nativeSlamSetTextBitmapResult(JLandroid/graphics/Bitmap;III)I
.end method

.method private native nativeStartPlay(JLandroid/view/Surface;IILjava/lang/String;)I
.end method

.method private native nativeStartPlay2(JIIIILjava/lang/String;)I
.end method

.method private native nativeStartRecord(JDZIII)I
.end method

.method private native nativeStopPlay(J)I
.end method

.method private native nativeStopRecord(JZ)I
.end method

.method private native nativeTryRestore(JILjava/lang/String;)I
.end method

.method private native nativeUnRegisterFaceInfoUpload(J)V
.end method

.method private native nativeUninitAudioPlayer(J)I
.end method

.method private native nativeUninitFaceBeautyPlay(J)I
.end method

.method private native nativeUpdateReactionBGAlpha(JF)V
.end method

.method private native nativeUpdateReactionCameraPos(JIIII)[I
.end method

.method private native nativeUpdateReactionCameraPosWithRotation(JIIIIF)[I
.end method

.method private native nativeUpdateRotation(JFFF)V
.end method

.method private native nativeUpdateRotationAndFront(JIZ)V
.end method

.method private native nativeUseLargeMattingModel(JZ)V
.end method

.method private native nativeWriteFile(JLjava/nio/ByteBuffer;III)I
.end method

.method private native nativeWriteFile2(JLjava/nio/ByteBuffer;IJJI)I
.end method

.method private onNativeCallback_GetHardEncoderProfile()I
    .locals 1

    sget-object p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    if-eqz p0, :cond_0

    const-string p0, "FaceBeautyInvoker"

    const-string v0, "GetHardEncoderProfile"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    invoke-interface {p0}, Lcom/ss/android/medialib/AVCEncoderInterface;->getProfile()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private onNativeCallback_Init(I)V
    .locals 3

    const-string v0, "FaceBeautyInvoker"

    if-gez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNativeCallback_Init error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNativeCallback_Init success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mIsRenderRady:Z

    :goto_0
    iget-object p0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mNativeInitListener:Lcom/ss/android/medialib/listener/NativeInitListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/ss/android/medialib/listener/NativeInitListener;->onNativeInitCallBack(I)V

    :cond_1
    sget-object p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->sNativeInitListener:Lcom/ss/android/medialib/listener/NativeInitListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcom/ss/android/medialib/listener/NativeInitListener;->onNativeInitCallBack(I)V

    :cond_2
    return-void
.end method

.method public static onNativeCallback_onMonitorLogFloat(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/monitor/TEMonitor;->monitorTELog(Ljava/lang/String;Ljava/lang/String;F)Z

    return-void
.end method

.method public static onNativeCallback_onMonitorLogInt(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->monitorTELog(Ljava/lang/String;Ljava/lang/String;J)Z

    return-void
.end method

.method public static declared-synchronized removeSlamDetectListener(Lcom/ss/android/medialib/listener/SlamDetectListener;)V
    .locals 2

    const-class v0, Lcom/ss/android/medialib/FaceBeautyInvoker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/medialib/FaceBeautyInvoker;->sSlamDetectListeners:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private native setCaptureMirror(JZ)V
.end method

.method public static setDuetVideoCompleteCallback(Ljava/lang/Runnable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sput-object p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->sDuetCompleteRunable:Ljava/lang/Runnable;

    return-void
.end method

.method public static setFaceDetectListener(Lcom/ss/android/medialib/listener/FaceDetectListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sput-object p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->sFaceDetectListener:Lcom/ss/android/medialib/listener/FaceDetectListener;

    return-void
.end method

.method public static declared-synchronized setMessageListener(Lcom/bef/effectsdk/message/MessageCenter$Listener;)V
    .locals 1

    const-class v0, Lcom/ss/android/medialib/FaceBeautyInvoker;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->sMessageListener:Lcom/bef/effectsdk/message/MessageCenter$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setNativeInitListener(Lcom/ss/android/medialib/listener/NativeInitListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sput-object p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->sNativeInitListener:Lcom/ss/android/medialib/listener/NativeInitListener;

    return-void
.end method

.method public static setRecordStopCallback(Lcom/ss/android/medialib/FaceBeautyInvoker$RecordStopCallback;)V
    .locals 0

    sput-object p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mRecordStopCallback:Lcom/ss/android/medialib/FaceBeautyInvoker$RecordStopCallback;

    return-void
.end method

.method public static declared-synchronized setSlamDetectListener(Lcom/ss/android/medialib/listener/SlamDetectListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/ss/android/medialib/FaceBeautyInvoker;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->addSlamDetectListener(Lcom/ss/android/medialib/listener/SlamDetectListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addPCMData([BI)I
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const p0, -0x186a0

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeAddPCMData(J[BI)I

    move-result p0

    return p0
.end method

.method public bindEffectAudioProcessor(IIZ)I
    .locals 6

    iget-wide v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_0
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeBindEffectAudioProcessor(JIIZ)I

    move-result p0

    return p0
.end method

.method public cancelAll()V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeCancelAll(J)V

    return-void
.end method

.method public declared-synchronized changeMusicPath(Ljava/lang/String;)I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const p1, -0x186a0

    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeChangeMusicPath(JLjava/lang/String;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public changeOutputVideoSize(II)V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeChangeOutputVideoSize(JII)V

    return-void
.end method

.method public declared-synchronized changeSurface(Landroid/view/Surface;)I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const p1, -0x186a0

    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeChangeSurface(JLandroid/view/Surface;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public chooseSlamFace(I)V
    .locals 4

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeChooseSlamFace(JI)V

    return-void
.end method

.method public clearFragFile()I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const p0, -0x186a0

    return p0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeClearFragFile(J)I

    move-result p0

    return p0
.end method

.method public closeWavFile(Z)I
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const p0, -0x186a0

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeCloseWavFile(JZ)I

    move-result p1

    invoke-virtual {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->save()I

    return p1
.end method

.method public concat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const p1, -0x186a0

    monitor-exit p0

    return p1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-wide v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeConcat(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public concat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    iget-wide v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const p0, -0x186a0

    return p0

    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeConcat(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public createEncoder()V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ss/android/medialib/AVCEncoder;

    invoke-direct {v0}, Lcom/ss/android/medialib/AVCEncoder;-><init>()V

    iput-object v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;

    :cond_0
    iget-object p0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;

    invoke-virtual {p0}, Lcom/ss/android/medialib/AVCEncoder;->createEncoder()V

    return-void
.end method

.method public deleteLastFrag()I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const p0, -0x186a0

    return p0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeDeleteLastFrag(J)I

    move-result p0

    return p0
.end method

.method public destroyMessageCenter()V
    .locals 1

    invoke-static {}, Lcom/ss/android/medialib/MessageCenterWrapper;->getInstance()Lcom/ss/android/medialib/MessageCenterWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/medialib/MessageCenterWrapper;->destroy()V

    invoke-static {}, Lcom/ss/android/medialib/MessageCenterWrapper;->getInstance()Lcom/ss/android/medialib/MessageCenterWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/medialib/MessageCenterWrapper;->removeListener(Lcom/bef/effectsdk/message/MessageCenter$Listener;)V

    const-class p0, Lcom/ss/android/medialib/FaceBeautyInvoker;

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/ss/android/medialib/FaceBeautyInvoker;->sMessageListener:Lcom/bef/effectsdk/message/MessageCenter$Listener;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableAbandonFirstFrame(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/medialib/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeEnableAbandonFirstFrame(JZ)V

    return-void
.end method

.method public enableBlindWaterMark(Z)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const p0, -0x186a0

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeEnableBlindWaterMark(JZ)I

    move-result p0

    return p0
.end method

.method public enableEffect(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeEnableEffect(JZ)V

    return-void
.end method

.method public enableEffectBGM(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeEnableEffectBGM(JZ)V

    return-void
.end method

.method public enableScan(ZJ)V
    .locals 6

    iget-wide v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeEnableScan(JZJ)V

    return-void
.end method

.method public enableSceneRecognition(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeEnableSceneRecognition(JZ)V

    return-void
.end method

.method public enableTTFaceDetect(Z)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const p0, -0x186a0

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeEnableTTFaceDetect(JZ)I

    move-result p0

    return p0
.end method

.method public getAudioEndTime()J
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/32 v0, -0x186a0

    return-wide v0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeGetAudioEndTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEndFrameTime()J
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/32 v0, -0x186a0

    return-wide v0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeGetEndFrameTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEnigmaResult()Lcom/ss/android/medialib/model/EnigmaResult;
    .locals 6

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-wide v2, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string v0, "invalid handle"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeGetEnigmaResult(J)Lcom/ss/android/medialib/model/EnigmaResult;

    move-result-object p0

    return-object p0
.end method

.method public getReactionCamRotation()F
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const p0, -0x383cb000    # -100000.0f

    return p0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeGetReactionCamRotation(J)F

    move-result p0

    return p0
.end method

.method public getReactionCameraPosInRecordPixel()[I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeGetReactionCameraPosInRecordPixel(J)[I

    move-result-object p0

    return-object p0
.end method

.method public getReactionCameraPosInViewPixel()[I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeGetReactionCameraPosInViewPixel(J)[I

    move-result-object p0

    return-object p0
.end method

.method public getReactionPosMarginInViewPixel()[I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeGetReactionPosMarginInViewPixel(J)[I

    move-result-object p0

    return-object p0
.end method

.method public getSlamFaceCount()I
    .locals 4

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, -0x186a1

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string v0, "invalid handle"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeGetSlamFaceCount(J)I

    move-result p0

    return p0
.end method

.method public getTextureDeltaTime(Z)J
    .locals 0

    iget-object p0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mTextureTimeListener:Lcom/ss/android/medialib/listener/TextureTimeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/ss/android/medialib/listener/TextureTimeListener;->getTextureDeltaTime(Z)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public initAudioConfig(II)I
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const p0, -0x186a0

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeInitAudioConfig(JII)I

    move-result p0

    return p0
.end method

.method public initAudioPlayer(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/medialib/FaceBeautyInvoker;->initAudioPlayer(Landroid/content/Context;Ljava/lang/String;JZZ)I

    move-result p0

    return p0
.end method

.method public initAudioPlayer(Landroid/content/Context;Ljava/lang/String;JZZ)I
    .locals 9

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.hardware.audio.low_latency"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "has low latency ? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBeautyInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_1

    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/ss/android/medialib/utils/Utils;->getSystemAudioInfo(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object p1

    :goto_1
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "nativeSampleRate ? "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " nativeSamleBufferSize? "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    const-string v0, "FaceBeautyInvoker"

    invoke-static {v0, p6}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long p6, v0, v2

    if-nez p6, :cond_2

    const p1, -0x186a0

    monitor-exit p0

    return p1

    :cond_2
    iget-wide v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    iget-object p6, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p6, Ljava/lang/Integer;

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, p0

    move-object v3, p2

    move-wide v6, p3

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeInitAudioPlayer(JLjava/lang/String;IIJZ)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public initDuet(Ljava/lang/String;FFFZ)V
    .locals 8

    iget-wide v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeInitDuet(JLjava/lang/String;FFFZ)I

    return-void
.end method

.method public initFaceBeautyPlay(IILjava/lang/String;IILjava/lang/String;I)I
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/ss/android/medialib/FaceBeautyInvoker;->initFaceBeautyPlay(IILjava/lang/String;IILjava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public initFaceBeautyPlay(IILjava/lang/String;IILjava/lang/String;IZ)I
    .locals 14

    move-object v13, p0

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, v13, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    invoke-virtual {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->initMessageCenter()V

    const/16 v0, 0x1388

    invoke-static {v0}, Lcom/ss/android/medialib/AVCEncoder;->setDrainWaitTimeout(I)V

    monitor-enter p0

    :try_start_0
    iget-wide v0, v13, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const v0, -0x186a0

    monitor-exit p0

    return v0

    :cond_0
    iget-wide v2, v13, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const/4 v11, 0x0

    move-object v1, p0

    move v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v12, p8

    invoke-direct/range {v1 .. v12}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeInitFaceBeautyPlay(JIILjava/lang/String;IILjava/lang/String;IZZ)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "OPPO R7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, v13, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeExpandPreviewAndRecordInterval(JZ)I

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initFaceBeautyPlayOnlyPreview(Lcom/ss/android/medialib/qr/ScanSettings;)I
    .locals 4

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    invoke-virtual {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->initMessageCenter()V

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const p0, -0x186a0

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeInitFaceBeautyPlayOnlyPreview(JLcom/ss/android/medialib/qr/ScanSettings;)I

    move-result p0

    return p0
.end method

.method public initHardEncoderInAdvance()V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ss/android/medialib/AVCEncoder;

    invoke-direct {v0}, Lcom/ss/android/medialib/AVCEncoder;-><init>()V

    iput-object v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;

    :cond_0
    return-void
.end method

.method public initImageDrawer(I)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeInitImageDrawer(JI)I

    move-result p0

    return p0
.end method

.method public initMediaCodecSurface(Landroid/view/Surface;)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeInitMediaCodecSurface(JLandroid/view/Surface;)I

    move-result p0

    return p0
.end method

.method public initMessageCenter()V
    .locals 1

    invoke-static {}, Lcom/ss/android/medialib/MessageCenterWrapper;->getInstance()Lcom/ss/android/medialib/MessageCenterWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/medialib/MessageCenterWrapper;->init()V

    invoke-static {}, Lcom/ss/android/medialib/MessageCenterWrapper;->getInstance()Lcom/ss/android/medialib/MessageCenterWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/medialib/MessageCenterWrapper;->addListener(Lcom/bef/effectsdk/message/MessageCenter$Listener;)V

    return-void
.end method

.method public initReaction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeInitReaction(JLjava/lang/String;)I

    return-void
.end method

.method public initWavFile(IID)I
    .locals 7
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-wide v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const p0, -0x186a0

    return p0

    :cond_0
    move-object v0, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeInitWavFile(JIID)I

    move-result p0

    return p0
.end method

.method public isStickerEnabled()Z
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string p0, "FaceBeautyInvoker"

    const-string v0, "invalid handle"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeIsStickerEnabled(J)Z

    move-result p0

    return p0
.end method

.method public markPlayDone()I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const p0, -0x186a0

    return p0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeMarkPlayDone(J)I

    move-result p0

    return p0
.end method

.method public native nativePreviewDuetVideo(J)Z
.end method

.method public native nativeSetForceAlgorithmCnt(JI)V
.end method

.method public native nativeSetPreviewDuetVideoPaused(JZ)V
.end method

.method public native nativeSetStickerRequestCallback(JLcom/ss/android/medialib/presenter/IStickerRequestCallback;)I
.end method

.method public onAudioCallback([BI)V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeOnAudioCallback(J[BI)I

    return-void
.end method

.method public onDrawFrame(I[F)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const p0, -0x186a0

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeOnFrameAvailable(JI[F)I

    move-result p0

    return p0
.end method

.method public onDrawFrame(Lcom/ss/android/medialib/camera/ImageFrame;)I
    .locals 14

    iget-wide v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const v0, -0x186a0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getBuf()[B

    move-result-object v1

    const/4 v7, -0x1

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getBuf()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getBuf()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getHeight()I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeOnDrawFrameBuffer(J[BIII)I

    goto/16 :goto_1

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_4

    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getPlans()[Landroid/media/Image$Plane;

    move-result-object v1

    if-nez v1, :cond_2

    return v7

    :cond_2
    const/4 v2, 0x3

    filled-new-array {v2, v2}, [I

    move-result-object v3

    const-class v4, I

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    new-array v4, v2, [Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    array-length v7, v1

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ge v6, v7, :cond_3

    aget-object v7, v1, v6

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    aput-object v7, v4, v6

    new-array v7, v2, [I

    aget-object v10, v4, v6

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    aput v10, v7, v5

    aget-object v10, v1, v6

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    aput v10, v7, v9

    aget-object v9, v1, v6

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v9

    aput v9, v7, v8

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    iget-wide v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    aget-object v6, v4, v5

    aget-object v5, v3, v5

    aget-object v7, v4, v9

    aget-object v9, v3, v9

    aget-object v10, v4, v8

    aget-object v8, v3, v8

    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getFormat()I

    move-result v11

    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getWidth()I

    move-result v12

    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getHeight()I

    move-result v13

    move-object v0, p0

    move-object v3, v6

    move-object v4, v5

    move-object v5, v7

    move-object v6, v9

    move-object v7, v10

    move v9, v11

    move v10, v12

    move v11, v13

    invoke-direct/range {v0 .. v11}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeOnDrawFrameBuffer2(JLjava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[IIII)I

    move-result v0

    return v0

    :cond_4
    :goto_1
    return v7
.end method

.method public onDrawFrameTime(D)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const p0, -0x186a0

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeOnFrameTime(JD)I

    move-result p0

    return p0
.end method

.method public onDuetVideoComplete()V
    .locals 0

    iget-object p0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mDuetCompleteRunable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    sget-object p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->sDuetCompleteRunable:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public onFirstFrameRenderInfo(ID)V
    .locals 3

    const-string p0, "FaceBeautyInvoker"

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-wide v1, Lcom/ss/android/medialib/log/VEMonitorUtils;->sbeforeCameraOpenTimeStamp:J

    long-to-double v1, v1

    sub-double v1, p2, v1

    const-string p1, "te_preview_first_frame_screen_time"

    invoke-static {v0, p1, v1, v2}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfDouble(ILjava/lang/String;D)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Camera Preview First Frame Cost: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/ss/android/medialib/log/VEMonitorUtils;->sbeforeCameraOpenTimeStamp:J

    long-to-double v0, v0

    sub-double/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/medialib/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    sget-wide v1, Lcom/ss/android/medialib/log/VEMonitorUtils;->sbeforeSwitchCameraTimeStamp:J

    long-to-double v1, v1

    sub-double v1, p2, v1

    const-string p1, "te_preview_switch_camera_screen_time"

    invoke-static {v0, p1, v1, v2}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfDouble(ILjava/lang/String;D)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Camera Change Cost: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/ss/android/medialib/log/VEMonitorUtils;->sbeforeSwitchCameraTimeStamp:J

    long-to-double v0, v0

    sub-double/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/medialib/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMessageReceived(IIILjava/lang/String;)V
    .locals 1

    const-class p0, Lcom/ss/android/medialib/FaceBeautyInvoker;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/ss/android/medialib/FaceBeautyInvoker;->sMessageListener:Lcom/bef/effectsdk/message/MessageCenter$Listener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ss/android/medialib/FaceBeautyInvoker;->sMessageListener:Lcom/bef/effectsdk/message/MessageCenter$Listener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bef/effectsdk/message/MessageCenter$Listener;->onMessageReceived(IIILjava/lang/String;)V

    :cond_0
    monitor-exit p0

    const/16 p0, 0x19

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onNativeCallback_InitHardEncoder(IIIIIIZ)Landroid/view/Surface;
    .locals 10

    sget-object v0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    if-eqz v0, :cond_0

    const-string v0, "FaceBeautyInvoker"

    const-string v1, "InitHardEncoder"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/ss/android/medialib/FaceBeautyInvoker;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/ss/android/medialib/AVCEncoderInterface;->onInitHardEncoder(IIIIIIZ)Landroid/view/Surface;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onNativeCallback_InitHardEncoderRet(II)V
    .locals 3

    const-string v0, "FaceBeautyInvoker"

    const-string v1, "onInitHardEncoderRet"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCPUEncode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mNativeInitListener:Lcom/ss/android/medialib/listener/NativeInitListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/ss/android/medialib/listener/NativeInitListener;->onNativeInitHardEncoderRetCallback(II)V

    :cond_0
    sget-object p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->sNativeInitListener:Lcom/ss/android/medialib/listener/NativeInitListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/ss/android/medialib/listener/NativeInitListener;->onNativeInitHardEncoderRetCallback(II)V

    :cond_1
    return-void
.end method

.method public onNativeCallback_UninitHardEncoder()V
    .locals 1

    const-string p0, "FaceBeautyInvoker"

    const-string v0, " onUninitHardEncoder == enter"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/medialib/AVCEncoderInterface;->onUninitHardEncoder()V

    :cond_0
    const-string v0, " onUninitHardEncoder == exit"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNativeCallback_encodeData([BIZ)V
    .locals 0

    sget-object p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/medialib/AVCEncoderInterface;->onEncoderData([BIZ)V

    :cond_0
    return-void
.end method

.method public onNativeCallback_encodeTexture(IIZ)I
    .locals 1

    sget-object p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, v0, p3}, Lcom/ss/android/medialib/AVCEncoderInterface;->onEncoderData(IIIZ)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public onNativeCallback_onFaceDetect(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FaceBeautyInvoker onFaceDetect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBeautyInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ss/android/medialib/FaceBeautyInvoker;->sFaceDetectListener:Lcom/ss/android/medialib/listener/FaceDetectListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/ss/android/medialib/listener/FaceDetectListener;->onResult(II)V

    :cond_0
    iget-object p0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mFaceDetectListener:Lcom/ss/android/medialib/listener/FaceDetectListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/ss/android/medialib/listener/FaceDetectListener;->onResult(II)V

    :cond_1
    return-void
.end method

.method public onNativeCallback_onOpenGLCreate()V
    .locals 2

    const-string v0, "FaceBeautyInvoker"

    const-string v1, "onNativeCallback_onOpenGLCreate"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mOpenGLCallback:Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;->onOpenGLCreate()V

    :cond_0
    return-void
.end method

.method public onNativeCallback_onOpenGLDestroy()V
    .locals 2

    const-string v0, "FaceBeautyInvoker"

    const-string v1, "onNativeCallback_onOpenGLDestroy"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mOpenGLCallback:Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;->onOpenGLDestroy()V

    :cond_0
    return-void
.end method

.method public onNativeCallback_onOpenGLRunning(D)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNativeCallback_onOpenGLRunning, timestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBeautyInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mOpenGLCallback:Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;->onOpenGLRunning()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mGetTimestampCallback:Lcom/ss/android/medialib/common/Common$IGetTimestampCallback;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/ss/android/medialib/common/Common$IGetTimestampCallback;->getTimestamp(D)V

    :cond_1
    return v0
.end method

.method public declared-synchronized onNativeCallback_onShotScreen(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "FaceBeautyInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNativeCallback_onShotScreen: ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mIsDuringScreenshot:Z

    iget-object v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mShotScreenCallback:Lcom/ss/android/medialib/common/Common$IShotScreenCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mShotScreenCallback:Lcom/ss/android/medialib/common/Common$IShotScreenCallback;

    invoke-interface {v0, p1}, Lcom/ss/android/medialib/common/Common$IShotScreenCallback;->onShotScreen(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onNativeCallback_onSlamDetect(Z)V
    .locals 3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-class v0, Lcom/ss/android/medialib/FaceBeautyInvoker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/medialib/FaceBeautyInvoker;->sSlamDetectListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/medialib/listener/SlamDetectListener;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/medialib/listener/SlamDetectListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/ss/android/medialib/listener/SlamDetectListener;->onSlam(Z)V

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onNativeRecordStop()V
    .locals 0

    sget-object p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mRecordStopCallback:Lcom/ss/android/medialib/FaceBeautyInvoker$RecordStopCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker$RecordStopCallback;->onStop()V

    :cond_0
    return-void
.end method

.method public pauseEffectAudio(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativePauseEffectAudio(JZ)I

    return-void
.end method

.method public posInReactionRegion(II)Z
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativePosInReactionRegion(JII)Z

    move-result p0

    return p0
.end method

.method public previewDuetVideo()Z
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativePreviewDuetVideo(J)Z

    move-result p0

    return p0
.end method

.method public processTouchEvent(FF)I
    .locals 4

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, -0x186a1

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_1
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeProcessTouchEvent(JFF)I

    move-result p0

    return p0
.end method

.method public recoverCherEffect([Ljava/lang/String;[D[Z)V
    .locals 7

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v2, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeRecoverCherEffect(J[Ljava/lang/String;[D[Z)V

    return-void
.end method

.method public registerCherEffectParamCallback(Lcom/ss/android/medialib/FaceBeautyInvoker$OnCherEffectParmaCallback;)V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeRegisterCherEffectParamCallback(JLcom/ss/android/medialib/FaceBeautyInvoker$OnCherEffectParmaCallback;)V

    return-void
.end method

.method public registerFaceInfoUpload(ZLcom/ss/android/medialib/FaceBeautyInvoker$FaceInfoCallback;)V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeRegisterFaceInfoUpload(JZLcom/ss/android/medialib/FaceBeautyInvoker$FaceInfoCallback;)V

    return-void
.end method

.method public registerHandDetectCallback([ILcom/ss/android/medialib/FaceBeautyInvoker$OnHandDetectCallback;)V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeRegisterHandDetectCallback(J[ILcom/ss/android/medialib/FaceBeautyInvoker$OnHandDetectCallback;)V

    return-void
.end method

.method public releaseEncoder()V
    .locals 0

    iget-object p0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/ss/android/medialib/AVCEncoder;->releaseEncoder()V

    :cond_0
    return-void
.end method

.method public renderPicture(Lcom/ss/android/medialib/camera/ImageFrame;IILcom/ss/android/medialib/FaceBeautyInvoker$OnPictureCallbackV2;)I
    .locals 15

    move-object v0, p0

    iget-wide v1, v0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const v0, -0x186a0

    return v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getBuf()[B

    move-result-object v1

    if-eqz v1, :cond_1

    iget-wide v1, v0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getBuf()[B

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getBuf()[B

    move-result-object v4

    array-length v4, v4

    move-object v0, p0

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeRenderPicture(J[BIIILcom/ss/android/medialib/FaceBeautyInvoker$OnPictureCallbackV2;)I

    move-result v0

    return v0

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getPlans()[Landroid/media/Image$Plane;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getPlans()[Landroid/media/Image$Plane;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, -0x1

    return v0

    :cond_2
    const/4 v2, 0x3

    filled-new-array {v2, v2}, [I

    move-result-object v3

    const-class v4, I

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    new-array v4, v2, [Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    array-length v7, v1

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ge v6, v7, :cond_3

    aget-object v7, v1, v6

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    aput-object v7, v4, v6

    new-array v7, v2, [I

    aget-object v10, v4, v6

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    aput v10, v7, v5

    aget-object v10, v1, v6

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    aput v10, v7, v9

    aget-object v9, v1, v6

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v9

    aput v9, v7, v8

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    iget-wide v1, v0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    aget-object v6, v4, v5

    aget-object v5, v3, v5

    aget-object v7, v4, v9

    aget-object v9, v3, v9

    aget-object v10, v4, v8

    aget-object v8, v3, v8

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getFormat()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getWidth()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getHeight()I

    move-result v13

    move-object v0, p0

    move-object v3, v6

    move-object v4, v5

    move-object v5, v7

    move-object v6, v9

    move-object v7, v10

    move v9, v11

    move v10, v12

    move v11, v13

    move/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v14, p4

    invoke-direct/range {v0 .. v14}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeRenderPicture2(JLjava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[IIIIIILcom/ss/android/medialib/FaceBeautyInvoker$OnPictureCallbackV2;)I

    move-result v0

    return v0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-wide v1, v0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeRenderPicture3(JLandroid/graphics/Bitmap;IILcom/ss/android/medialib/FaceBeautyInvoker$OnPictureCallbackV2;)I

    move-result v0

    return v0

    :cond_5
    iget-wide v1, v0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeRenderPicture(J[BIIILcom/ss/android/medialib/FaceBeautyInvoker$OnPictureCallbackV2;)I

    move-result v0

    return v0
.end method

.method public resetPerfStats()V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeResetPerfStats(J)V

    return-void
.end method

.method public resetStartTime(JJ)I
    .locals 7

    iget-wide v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const p0, -0x186a0

    return p0

    :cond_0
    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeResetStartTime(JJJ)I

    move-result p0

    return p0
.end method

.method public rotateReactionWindow(F)F
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const p0, -0x383cb000    # -100000.0f

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeRotateReactionWindow(JF)F

    move-result p0

    return p0
.end method

.method public save()I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const p0, -0x186a0

    return p0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSave(J)I

    move-result p0

    return p0
.end method

.method public scaleReactionWindow(F)[I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeScaleReactionWindow(JF)[I

    move-result-object p0

    return-object p0
.end method

.method public sendEffectMsg(IJJLjava/lang/String;)V
    .locals 10

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    iget-wide v2, v0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const-string v0, "FaceBeautyInvoker"

    const-string v1, "invalid handle"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    move-object v1, p0

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSendEffectMsg(JIJJLjava/lang/String;)V

    return-void
.end method

.method public setAlgorithmChangeMsg(IZ)V
    .locals 4

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetAlgorithmChangeMsg(JIZ)V

    return-void
.end method

.method public setBGMVolume(F)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const p0, -0x186a0

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetBGMVolume(JF)I

    move-result p0

    return p0
.end method

.method public setBeautyFace(ILjava/lang/String;)I
    .locals 4

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, -0x186a1

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_1
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetBeautyFace(JILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setBeautyFace(ILjava/lang/String;FF)V
    .locals 6

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nativeSetBeautyFace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBeautyInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const-string p0, "invalid handle"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    invoke-static {p2}, Lcom/ss/android/medialib/FileUtils;->checkFileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide p1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const/4 p3, 0x0

    const-string p4, ""

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetBeautyFace(JILjava/lang/String;)I

    iget-wide p1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3, p3}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetBeautyFaceIntensity(JFF)I

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetBeautyFace(JILjava/lang/String;)I

    iget-wide p1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetBeautyFaceIntensity(JFF)I

    :goto_0
    return-void
.end method

.method public setBeautyFaceIntensity(FF)I
    .locals 4

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, -0x186a1

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_1
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetBeautyFaceIntensity(JFF)I

    move-result p0

    return p0
.end method

.method public setBlindWaterMarkDiffKeys(II)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const p0, -0x186a0

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetBlindWaterMarkDiffKeys(JII)I

    move-result p0

    return p0
.end method

.method public setBlindWaterMarkPosition(II)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const p0, -0x186a0

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetBlindWaterMarkPosition(JII)I

    move-result p0

    return p0
.end method

.method public setCameraFirstFrameOptimize(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "FaceBeautyInvoker"

    const-string v1, "invalid handle"

    invoke-static {v0, v1}, Lcom/ss/android/medialib/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetCameraFirstFrameOptimize(JZ)V

    return-void
.end method

.method public setCaptureMirror(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->setCaptureMirror(JZ)V

    return-void
.end method

.method public setDLEEnable(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/medialib/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetDLEEnable(JZ)I

    return-void
.end method

.method public setDetectInterval(I)V
    .locals 4

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetDetectInterval(JI)V

    return-void
.end method

.method public setDetectionMode(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetDetectionMode(JZ)V

    return-void
.end method

.method public setDeviceRotation([F)V
    .locals 4

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetDeviceRotation(J[F)I

    return-void
.end method

.method public setDuetCameraPaused(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetDuetCameraPaused(JZ)V

    return-void
.end method

.method public setDuetVideoCompleteCallback2(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mDuetCompleteRunable:Ljava/lang/Runnable;

    return-void
.end method

.method public setEffectBuildChainType(I)V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetEffectBuildChainType(JI)V

    return-void
.end method

.method public setFaceDetectListener2(Lcom/ss/android/medialib/listener/FaceDetectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mFaceDetectListener:Lcom/ss/android/medialib/listener/FaceDetectListener;

    return-void
.end method

.method public setFaceMakeUp(Ljava/lang/String;)I
    .locals 4

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, -0x186a1

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetFaceMakeUp2(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setFaceMakeUp(Ljava/lang/String;FF)I
    .locals 6

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, -0x186a1

    return p0

    :cond_0
    iget-wide v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_1
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetFaceMakeUp(JLjava/lang/String;FF)I

    move-result p0

    return p0
.end method

.method public setFilter(Ljava/lang/String;)I
    .locals 6

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, -0x186a1

    return p0

    :cond_0
    iget-wide v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    const p0, -0x186a0

    return p0

    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v3, p1

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetFilter(JLjava/lang/String;Ljava/lang/String;F)I

    move-result p0

    return p0
.end method

.method public setFilter(Ljava/lang/String;Ljava/lang/String;F)I
    .locals 6

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, -0x186a1

    return p0

    :cond_0
    iget-wide v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    const p0, -0x186a0

    return p0

    :cond_1
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetFilter(JLjava/lang/String;Ljava/lang/String;F)I

    move-result p0

    return p0
.end method

.method public setFilterIntensity(F)I
    .locals 4

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, -0x186a1

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const p0, -0x186a0

    return p0

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetFilterIntensity(JF)I

    move-result p0

    return p0
.end method

.method public setFilterPos(F)I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, -0x186a1

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const p0, -0x186a0

    return p0

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetFilterPos(JF)I

    move-result p0

    return p0
.end method

.method public setForceAlgorithmCnt(I)V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetForceAlgorithmCnt(JI)V

    return-void
.end method

.method public setFrameCallback(Lcom/ss/android/medialib/FaceBeautyInvoker$OnFrameCallback;Z)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const p0, -0x186a0

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetFrameCallback(JLcom/ss/android/medialib/FaceBeautyInvoker$OnFrameCallback;Z)I

    move-result p0

    return p0
.end method

.method public setGetTimestampCallback(Lcom/ss/android/medialib/common/Common$IGetTimestampCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mGetTimestampCallback:Lcom/ss/android/medialib/common/Common$IGetTimestampCallback;

    return-void
.end method

.method public setHandDetectLowpower(Z)I
    .locals 4

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, -0x186a1

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetHandDetectLowpower(JZ)I

    move-result p0

    return p0
.end method

.method public setHardEncoderStatus(Z)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const p0, -0x186a0

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetHardEncoderStatus(JZ)I

    move-result p0

    return p0
.end method

.method public setIntensityByType(IF)I
    .locals 4

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, -0x186a1

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_1
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetIntensityByType(JIF)I

    move-result p0

    return p0
.end method

.method public declared-synchronized setModeChangeState(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetModeChangeState(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMusicNodes(Ljava/lang/String;)I
    .locals 4

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, -0x186a1

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetMusicNodes(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public declared-synchronized setMusicTime(JJ)I
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const p1, -0x186a0

    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    iget-wide v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetMusicTime(JJJ)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setNativeInitListener2(Lcom/ss/android/medialib/listener/NativeInitListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mNativeInitListener:Lcom/ss/android/medialib/listener/NativeInitListener;

    return-void
.end method

.method public setNativeLibraryDir(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetNativeLibraryDir(Ljava/lang/String;)V

    return-void
.end method

.method public setOnOpenGLCallback(Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mOpenGLCallback:Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;

    return-void
.end method

.method public setPlayLength(J)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const p0, -0x186a0

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetPlayLength(JJ)I

    move-result p0

    return p0
.end method

.method public setPreviewDuetVideoPaused(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetPreviewDuetVideoPaused(JZ)V

    :cond_0
    return-void
.end method

.method public setPreviewSizeRatio(F)V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetPreviewSizeRatio(JF)V

    return-void
.end method

.method public setReactionBorderParam(II)V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetReactionBorderParam(JII)V

    return-void
.end method

.method public setReactionMaskImage(Ljava/lang/String;Z)Z
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetReactionMaskImage(JLjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public setReactionPosMargin(IIII)V
    .locals 7

    iget-wide v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

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

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetReactionPosMargin(JIIII)V

    return-void
.end method

.method public setRenderCacheTexture(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetRenderCacheTexture(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setReshape(Ljava/lang/String;FF)I
    .locals 6

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, -0x186a1

    return p0

    :cond_0
    iget-wide v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_1
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetReshape(JLjava/lang/String;FF)I

    move-result p0

    return p0
.end method

.method public setRunningErrorCallback(Lcom/ss/android/medialib/FaceBeautyInvoker$OnRunningErrorCallback;)V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetRunningErrorCallback(JLcom/ss/android/medialib/FaceBeautyInvoker$OnRunningErrorCallback;)I

    return-void
.end method

.method public setSharedTextureStatus(Z)Z
    .locals 6

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetSharedTextureStatus(Z)Z

    move-result p0

    return p0
.end method

.method public setSkinTone(Ljava/lang/String;)I
    .locals 4

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, -0x186a1

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetSkinTone(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setSlamFace(Landroid/graphics/Bitmap;)I
    .locals 4

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, -0x186a1

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetSlamFace(JLandroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public setSticker(Landroid/graphics/Bitmap;II)I
    .locals 6

    iget-wide v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const p0, -0x186a0

    return p0

    :cond_0
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetSticker(JLandroid/graphics/Bitmap;II)I

    move-result p0

    return p0
.end method

.method public setStickerPath(Ljava/lang/String;IIZ)I
    .locals 7

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, -0x186a1

    return p0

    :cond_0
    iget-wide v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_1
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetStickerPath(JLjava/lang/String;IIZ)I

    move-result p0

    return p0
.end method

.method public setStickerRequestCallback(Lcom/ss/android/medialib/presenter/IStickerRequestCallback;)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const p0, -0x186a0

    return p0

    :cond_0
    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetStickerRequestCallback(JLcom/ss/android/medialib/presenter/IStickerRequestCallback;)I

    move-result p0

    return p0
.end method

.method public setSwapDuetRegion(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetSwapDuetRegion(JZ)I

    return-void
.end method

.method public setTextureTimeListener(Lcom/ss/android/medialib/listener/TextureTimeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mTextureTimeListener:Lcom/ss/android/medialib/listener/TextureTimeListener;

    return-void
.end method

.method public declared-synchronized setUseMusic(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetUseMusic(JI)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setVideoQuality(II)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const p0, -0x186a0

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetVideoQuality(JII)I

    move-result p0

    return p0
.end method

.method public declared-synchronized shotScreen(Ljava/lang/String;[IZILcom/ss/android/medialib/FaceBeautyInvoker$OnPictureCallback;Lcom/ss/android/medialib/common/Common$IShotScreenCallback;)I
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mIsDuringScreenshot:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mIsDuringScreenshot:Z

    iput-object p6, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mShotScreenCallback:Lcom/ss/android/medialib/common/Common$IShotScreenCallback;

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long p6, v0, v2

    if-nez p6, :cond_0

    const p1, -0x186a0

    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    iget-wide v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeShotScreen(JLjava/lang/String;[IZILcom/ss/android/medialib/FaceBeautyInvoker$OnPictureCallback;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :cond_1
    :try_start_2
    const-string p1, "FaceBeautyInvoker"

    const-string p2, "Last screenshot not complete"

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    invoke-interface {p6, p1}, Lcom/ss/android/medialib/common/Common$IShotScreenCallback;->onShotScreen(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public slamDeviceConfig(ZZZZ)I
    .locals 7

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, -0x186a1

    return p0

    :cond_0
    iget-wide v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_1
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSlamDeviceConfig(JZZZZ)I

    move-result p0

    return p0
.end method

.method public slamGetTextBitmap(Lcom/ss/android/medialib/FaceBeautyInvoker$OnARTextBitmapCallback;)I
    .locals 4

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, -0x186a1

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/medialib/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSlamGetTextBitmap(JLcom/ss/android/medialib/FaceBeautyInvoker$OnARTextBitmapCallback;)I

    move-result p0

    return p0
.end method

.method public slamGetTextLimitCount(Lcom/ss/android/medialib/FaceBeautyInvoker$OnARTextCountCallback;)I
    .locals 4

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, -0x186a1

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSlamGetTextLimitCount(JLcom/ss/android/medialib/FaceBeautyInvoker$OnARTextCountCallback;)I

    move-result p0

    return p0
.end method

.method public slamGetTextParagraphContent(Lcom/ss/android/medialib/FaceBeautyInvoker$OnARTextContentCallback;)I
    .locals 4

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, -0x186a1

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSlamGetTextParagraphContent(JLcom/ss/android/medialib/FaceBeautyInvoker$OnARTextContentCallback;)I

    move-result p0

    return p0
.end method

.method public slamNotifyHideKeyBoard(Z)I
    .locals 4

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, -0x186a1

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeHideSlamKeyBoard(JZ)I

    move-result p0

    return p0
.end method

.method public slamProcessDoubleClickEvent(FF)I
    .locals 4

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, -0x186a1

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_1
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSlamProcessDoubleClickEvent(JFF)I

    move-result p0

    return p0
.end method

.method public slamProcessIngestAcc(DDDD)I
    .locals 12

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, -0x186a1

    return v0

    :cond_0
    move-object v0, p0

    iget-wide v2, v0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const-string v0, "FaceBeautyInvoker"

    const-string v1, "invalid handle"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const v0, -0x186a0

    return v0

    :cond_1
    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    invoke-direct/range {v1 .. v11}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSlamProcessIngestAcc(JDDDD)I

    move-result v0

    return v0
.end method

.method public slamProcessIngestGra(DDDD)I
    .locals 12

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, -0x186a1

    return v0

    :cond_0
    move-object v0, p0

    iget-wide v2, v0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const-string v0, "FaceBeautyInvoker"

    const-string v1, "invalid handle"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const v0, -0x186a0

    return v0

    :cond_1
    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    invoke-direct/range {v1 .. v11}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSlamProcessIngestGra(JDDDD)I

    move-result v0

    return v0
.end method

.method public slamProcessIngestGyr(DDDD)I
    .locals 12

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, -0x186a1

    return v0

    :cond_0
    move-object v0, p0

    iget-wide v2, v0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const-string v0, "FaceBeautyInvoker"

    const-string v1, "invalid handle"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const v0, -0x186a0

    return v0

    :cond_1
    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    invoke-direct/range {v1 .. v11}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSlamProcessIngestGyr(JDDDD)I

    move-result v0

    return v0
.end method

.method public slamProcessIngestOri([DD)I
    .locals 6

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, -0x186a1

    return p0

    :cond_0
    iget-wide v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_1
    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSlamProcessIngestOri(J[DD)I

    move-result p0

    return p0
.end method

.method public slamProcessPanEvent(FFFFF)I
    .locals 8

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, -0x186a1

    return p0

    :cond_0
    iget-wide v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_1
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSlamProcessPanEvent(JFFFFF)I

    move-result p0

    return p0
.end method

.method public slamProcessRotationEvent(FF)I
    .locals 4

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, -0x186a1

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_1
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSlamProcessRotationEvent(JFF)I

    move-result p0

    return p0
.end method

.method public slamProcessScaleEvent(FF)I
    .locals 4

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, -0x186a1

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_1
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSlamProcessScaleEvent(JFF)I

    move-result p0

    return p0
.end method

.method public slamProcessTouchEvent(FF)I
    .locals 4

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, -0x186a1

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_1
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSlamProcessTouchEvent(JFF)I

    move-result p0

    return p0
.end method

.method public slamProcessTouchEventByType(IFFI)I
    .locals 7

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, -0x186a1

    return p0

    :cond_0
    iget-wide v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_1
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSlamProcessTouchEventByType(JIFFI)I

    move-result p0

    return p0
.end method

.method public slamSetInputText(Ljava/lang/String;IILjava/lang/String;)I
    .locals 7

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, -0x186a1

    return p0

    :cond_0
    iget-wide v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_1
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSetSlamInputText(JLjava/lang/String;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public slamSetLanguge(Ljava/lang/String;)I
    .locals 4

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, -0x186a1

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSlamSetLanguge(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public slamSetTextBitmapResult(Landroid/graphics/Bitmap;III)I
    .locals 7

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, -0x186a1

    return p0

    :cond_0
    iget-wide v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/medialib/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_1
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeSlamSetTextBitmapResult(JLandroid/graphics/Bitmap;III)I

    move-result p0

    return p0
.end method

.method public startPlay(Landroid/view/Surface;Ljava/lang/String;II)I
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mIsRenderRady:Z

    iget-wide v2, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const p0, -0x186a0

    return p0

    :cond_0
    move-object v1, p0

    move-object v4, p1

    move v5, p3

    move v6, p4

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeStartPlay(JLandroid/view/Surface;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public startRecord(DZFII)I
    .locals 11

    const v0, 0x3d0900

    int-to-float v0, v0

    mul-float/2addr v0, p4

    float-to-int v0, v0

    const v1, 0xb71b00

    if-le v0, v1, :cond_0

    move-object v0, p0

    move v8, v1

    goto :goto_0

    :cond_0
    move v8, v0

    move-object v0, p0

    :goto_0
    iget-wide v3, v0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-nez v1, :cond_1

    const v0, -0x186a0

    return v0

    :cond_1
    move-object v2, p0

    move-wide v5, p1

    move v7, p3

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeStartRecord(JDZIII)I

    move-result v0

    return v0
.end method

.method public stopPlay()I
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mIsRenderRady:Z

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const p0, -0x186a0

    return p0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeStopPlay(J)I

    move-result p0

    return p0
.end method

.method public stopRecord(Z)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const p0, -0x186a0

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeStopRecord(JZ)I

    move-result p0

    return p0
.end method

.method public tryRestore(ILjava/lang/String;)I
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const p0, -0x186a0

    return p0

    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeTryRestore(JILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public unRegisterFaceInfoUpload()V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string p0, "FaceBeautyInvoker"

    const-string v0, "invalid handle"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeUnRegisterFaceInfoUpload(J)V

    return-void
.end method

.method public uninitAudioPlayer()V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeUninitAudioPlayer(J)I

    return-void
.end method

.method public uninitFaceBeautyPlay()I
    .locals 4

    invoke-virtual {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->destroyMessageCenter()V

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const p0, -0x186a0

    return p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    iput-wide v2, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mTextureTimeListener:Lcom/ss/android/medialib/listener/TextureTimeListener;

    iput-object v2, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mShotScreenCallback:Lcom/ss/android/medialib/common/Common$IShotScreenCallback;

    sput-object v2, Lcom/ss/android/medialib/FaceBeautyInvoker;->mRecordStopCallback:Lcom/ss/android/medialib/FaceBeautyInvoker$RecordStopCallback;

    iput-object v2, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mNativeInitListener:Lcom/ss/android/medialib/listener/NativeInitListener;

    iput-object v2, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mFaceDetectListener:Lcom/ss/android/medialib/listener/FaceDetectListener;

    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeUninitFaceBeautyPlay(J)I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateReactionBGAlpha(F)V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeUpdateReactionBGAlpha(JF)V

    return-void
.end method

.method public updateReactionCameraPos(IIII)[I
    .locals 7

    iget-wide v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeUpdateReactionCameraPos(JIIII)[I

    move-result-object p0

    return-object p0
.end method

.method public updateReactionCameraPosWithRotation(IIIIF)[I
    .locals 8

    iget-wide v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeUpdateReactionCameraPosWithRotation(JIIIIF)[I

    move-result-object p0

    return-object p0
.end method

.method public updateRotation(FFF)V
    .locals 6

    iget-wide v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeUpdateRotation(JFFF)V

    return-void
.end method

.method public updateRotation(IZ)V
    .locals 4

    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeUpdateRotationAndFront(JIZ)V

    return-void
.end method

.method public useLargeMattingModel(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/ss/android/medialib/FaceBeautyInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string p0, "FaceBeautyInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeUseLargeMattingModel(JZ)V

    return-void
.end method

.method public writeFile(Ljava/nio/ByteBuffer;III)I
    .locals 7

    iget-wide v1, p0, Lcom/ss/android/medialib/FaceBeautyInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const p0, -0x186a0

    return p0

    :cond_0
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/medialib/FaceBeautyInvoker;->nativeWriteFile(JLjava/nio/ByteBuffer;III)I

    move-result p0

    return p0
.end method
