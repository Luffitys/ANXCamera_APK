.class public Lcom/arcsoft/supernight/SuperNightProcess;
.super Ljava/lang/Object;
.source "SuperNightProcess.java"

# interfaces
.implements Lcom/arcsoft/supernight/ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;,
        Lcom/arcsoft/supernight/SuperNightProcess$FaceInfo;,
        Lcom/arcsoft/supernight/SuperNightProcess$Param;,
        Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;
    }
.end annotation


# static fields
.field public static final ARC_SN_CAMERA_MODE_UNKNOWN:I = -0x1

.field public static final ARC_SN_CAMERA_MODE_XIAOMI_G80_GW1:I = 0x701

.field public static final ARC_SN_CAMERA_MODE_XIAOMI_G90_GW1:I = 0x701

.field public static final ARC_SN_CAMERA_MODE_XIAOMI_G90_GW1_INDIA:I = 0x704

.field public static final ARC_SN_CAMERA_MODE_XIAOMI_SDM855_12MB_IMX586:I = 0x700

.field public static final ARC_SN_CAMERA_STATE_HAND:I = 0x2

.field public static final ARC_SN_CAMERA_STATE_UNKNOWN:I = 0x0

.field public static final ARC_SN_MAX_INPUT_IMAGE_NUM:I = 0x14

.field public static final ARC_SN_SCENEMODE_INDOOR:I = 0x1

.field public static final ARC_SN_SCENEMODE_LOWLIGHT:I = 0x3

.field public static final ARC_SN_SCENEMODE_OUTDOOR:I = 0x2

.field public static final ARC_SN_SCENEMODE_PORTRAIT:I = 0x4

.field public static final ARC_SN_SCENEMODE_UNKNOW:I = 0x0

.field public static final ASVL_PAF_NV12:I = 0x801

.field public static final ASVL_PAF_NV21:I = 0x802

.field public static final ASVL_PAF_RAW10_BGGR_10B:I = 0xd04

.field public static final ASVL_PAF_RAW10_BGGR_16B:I = 0xd0c

.field public static final ASVL_PAF_RAW10_GBRG_10B:I = 0xd03

.field public static final ASVL_PAF_RAW10_GBRG_16B:I = 0xd0b

.field public static final ASVL_PAF_RAW10_GRAY_10B:I = 0xe01

.field public static final ASVL_PAF_RAW10_GRAY_16B:I = 0xe81

.field public static final ASVL_PAF_RAW10_GRBG_10B:I = 0xd02

.field public static final ASVL_PAF_RAW10_GRBG_16B:I = 0xd0a

.field public static final ASVL_PAF_RAW10_RGGB_10B:I = 0xd01

.field public static final ASVL_PAF_RAW10_RGGB_16B:I = 0xd09

.field public static final ASVL_PAF_RAW12_BGGR_12B:I = 0xd08

.field public static final ASVL_PAF_RAW12_BGGR_16B:I = 0xd14

.field public static final ASVL_PAF_RAW12_GBRG_12B:I = 0xd07

.field public static final ASVL_PAF_RAW12_GBRG_16B:I = 0xd13

.field public static final ASVL_PAF_RAW12_GRAY_12B:I = 0xe11

.field public static final ASVL_PAF_RAW12_GRAY_16B:I = 0xe91

.field public static final ASVL_PAF_RAW12_GRBG_12B:I = 0xd06

.field public static final ASVL_PAF_RAW12_GRBG_16B:I = 0xd12

.field public static final ASVL_PAF_RAW12_RGGB_12B:I = 0xd05

.field public static final ASVL_PAF_RAW12_RGGB_16B:I = 0xd11

.field public static final ASVL_PAF_RAW14_BGGR_14B:I = 0xd38

.field public static final ASVL_PAF_RAW14_BGGR_16B:I = 0xd44

.field public static final ASVL_PAF_RAW14_GBRG_14B:I = 0xd37

.field public static final ASVL_PAF_RAW14_GBRG_16B:I = 0xd43

.field public static final ASVL_PAF_RAW14_GRAY_14B:I = 0xe21

.field public static final ASVL_PAF_RAW14_GRAY_16B:I = 0xea1

.field public static final ASVL_PAF_RAW14_GRBG_14B:I = 0xd36

.field public static final ASVL_PAF_RAW14_GRBG_16B:I = 0xd42

.field public static final ASVL_PAF_RAW14_RGGB_14B:I = 0xd35

.field public static final ASVL_PAF_RAW14_RGGB_16B:I = 0xd41

.field public static final ASVL_PAF_RAW16_BGGR_16B:I = 0xd24

.field public static final ASVL_PAF_RAW16_GBRG_16B:I = 0xd23

.field public static final ASVL_PAF_RAW16_GRAY_16B:I = 0xe31

.field public static final ASVL_PAF_RAW16_GRBG_16B:I = 0xd22

.field public static final ASVL_PAF_RAW16_RGGB_16B:I = 0xd21

.field private static final DEBUG_FILE:Ljava/lang/String;

.field private static final DUMP_KEY:Ljava/lang/String; = "dumpSNImage"

.field private static final HINT_FOR_RAW_REPROCESS_KEY:Ljava/lang/String; = "com.mediatek.control.capture.hintForRawReprocess"

.field private static final LOG_KEY:Ljava/lang/String; = "debugSNLog"

.field private static final SUPPERNIGHT_ADRCGAIN_KEY:Ljava/lang/String; = "com.mediatek.suppernightfeature.fadrcgain"

.field private static final SUPPERNIGHT_BLACKLEVEL_KEY:Ljava/lang/String; = "com.mediatek.suppernightfeature.blacklevel"

.field private static final SUPPERNIGHT_BRIGHTLEVEL_KEY:Ljava/lang/String; = "com.mediatek.suppernightfeature.brightlevel"

.field private static final SUPPERNIGHT_EXPINDEX_KEY:Ljava/lang/String; = "com.mediatek.suppernightfeature.expindex"

.field private static final SUPPERNIGHT_ISPGAIN_KEY:Ljava/lang/String; = "com.mediatek.suppernightfeature.fispgain"

.field private static final SUPPERNIGHT_LUXINDEX_KEY:Ljava/lang/String; = "com.mediatek.suppernightfeature.luxindex"

.field private static final SUPPERNIGHT_SENSORGAIN_KEY:Ljava/lang/String; = "com.mediatek.suppernightfeature.fsensorgain"

.field private static final SUPPERNIGHT_SHUTTER_KEY:Ljava/lang/String; = "com.mediatek.suppernightfeature.fshutter"

.field private static final SUPPERNIGHT_TOTALGAIN_KEY:Ljava/lang/String; = "com.mediatek.suppernightfeature.ftotalgain"

.field private static final SUPPERNIGHT_WBGAIN_KEY:Ljava/lang/String; = "com.mediatek.suppernightfeature.fwbgain"

.field private static final TAG:Ljava/lang/String; = "SuperNightProcess"


# instance fields
.field private ADRC_GAIN_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private BLACK_LEVEL_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private BRIGHT_LEVEL_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private EXP_INDEX_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private ISP_GAIN_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private LUX_INDEX_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private SENSOR_GAIN_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private SHUTTER_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[J>;"
        }
    .end annotation
.end field

.field private TOTAL_GAIN_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private WB_GAIN_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field private mArrayRect:Landroid/graphics/Rect;

.field private mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mDumpFile:Z

.field private mEnableAdrcGain:Z

.field private mEnableBlackLevel:Z

.field private mEnableWbGain:Z

.field private mFaceOrientation:I

.field private volatile mInit:Z

.field private volatile mIsCancel:Z

.field private mMetdata:Landroid/hardware/camera2/TotalCaptureResult;

.field private mSuperNightJni:Lcom/arcsoft/supernight/SuperNightJni;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/DCIM/arc_super_night/dump_file.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/arcsoft/supernight/SuperNightProcess;->DEBUG_FILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mEnableWbGain:Z

    iput-boolean v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mEnableBlackLevel:Z

    iput-boolean v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mEnableAdrcGain:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mArrayRect:Landroid/graphics/Rect;

    const/16 v1, 0x5a

    iput v1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mFaceOrientation:I

    iput-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->BRIGHT_LEVEL_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    iput-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->BLACK_LEVEL_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    iput-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->WB_GAIN_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    iput-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->SHUTTER_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    iput-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->SENSOR_GAIN_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    iput-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->ISP_GAIN_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    iput-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->LUX_INDEX_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    iput-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->EXP_INDEX_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    iput-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->ADRC_GAIN_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    iput-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->TOTAL_GAIN_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mIsCancel:Z

    iput-boolean v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mInit:Z

    iput-boolean v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mDumpFile:Z

    new-instance v0, Lcom/arcsoft/supernight/SuperNightJni;

    invoke-direct {v0}, Lcom/arcsoft/supernight/SuperNightJni;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mSuperNightJni:Lcom/arcsoft/supernight/SuperNightJni;

    invoke-virtual {p0}, Lcom/arcsoft/supernight/SuperNightProcess;->readDebugFileValue()V

    iget-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mSuperNightJni:Lcom/arcsoft/supernight/SuperNightJni;

    iget-boolean v1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mDumpFile:Z

    invoke-virtual {v0, v1}, Lcom/arcsoft/supernight/SuperNightJni;->setDumpImageFile(Z)V

    iput-object p1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mArrayRect:Landroid/graphics/Rect;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dumpFile = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mDumpFile:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " debugLog = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/arcsoft/supernight/LOG;->DEBUG:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SuperNightProcess"

    invoke-static {v0, p1}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mArrayRect = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mArrayRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mArrayRect:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mArrayRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p0, "Version"

    const-string p1, "--11/20--"

    invoke-static {p0, p1}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private conversionCropRect(Landroid/graphics/Rect;II)V
    .locals 5

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mArrayRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_5

    if-lez p2, :cond_5

    if-gtz p3, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p2

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p3

    div-float/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fMultipleW = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", fMultipleH = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SuperNightProcess"

    invoke-static {v3, v2}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mArrayRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v4

    int-to-float p2, p2

    mul-float/2addr p2, v0

    float-to-int p2, p2

    sub-int/2addr v2, p2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p3, p2

    int-to-float p2, p3

    mul-float/2addr p2, v1

    float-to-int p2, p2

    sub-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    iget p0, p1, Landroid/graphics/Rect;->left:I

    rem-int/lit8 p2, p0, 0x2

    if-eqz p2, :cond_1

    add-int/lit8 p0, p0, 0x1

    iput p0, p1, Landroid/graphics/Rect;->left:I

    :cond_1
    iget p0, p1, Landroid/graphics/Rect;->top:I

    rem-int/lit8 p2, p0, 0x2

    if-eqz p2, :cond_2

    add-int/lit8 p0, p0, 0x1

    iput p0, p1, Landroid/graphics/Rect;->top:I

    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->right:I

    rem-int/lit8 p2, p0, 0x2

    if-eqz p2, :cond_3

    add-int/lit8 p0, p0, -0x1

    iput p0, p1, Landroid/graphics/Rect;->right:I

    :cond_3
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    rem-int/lit8 p2, p0, 0x2

    if-eqz p2, :cond_4

    add-int/lit8 p0, p0, -0x1

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "conversionCropRect -> cropRect = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private getFaceInfo(Landroid/hardware/camera2/TotalCaptureResult;II)Lcom/arcsoft/supernight/SuperNightProcess$FaceInfo;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mArrayRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_4

    if-lez p2, :cond_4

    if-gtz p3, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/camera2/params/Face;

    const-string v1, "SuperNightProcess"

    if-eqz p1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "face length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    array-length v2, p1

    if-lez v2, :cond_2

    iget-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    int-to-float p2, p2

    div-float/2addr v0, p2

    iget-object p2, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mArrayRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    int-to-float p3, p3

    div-float/2addr p2, p3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fMultipleW = "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", fMultipleH = "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lcom/arcsoft/supernight/SuperNightProcess$FaceInfo;

    invoke-direct {p3, p0}, Lcom/arcsoft/supernight/SuperNightProcess$FaceInfo;-><init>(Lcom/arcsoft/supernight/SuperNightProcess;)V

    array-length v2, p1

    new-array v2, v2, [Landroid/graphics/Rect;

    iput-object v2, p3, Lcom/arcsoft/supernight/SuperNightProcess$FaceInfo;->faceRects:[Landroid/graphics/Rect;

    array-length v2, p1

    iput v2, p3, Lcom/arcsoft/supernight/SuperNightProcess$FaceInfo;->faceNum:I

    iget p0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mFaceOrientation:I

    iput p0, p3, Lcom/arcsoft/supernight/SuperNightProcess$FaceInfo;->faceOrientation:I

    const/4 p0, 0x0

    :goto_0
    array-length v2, p1

    if-ge p0, v2, :cond_3

    iget-object v2, p3, Lcom/arcsoft/supernight/SuperNightProcess$FaceInfo;->faceRects:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    aget-object v4, p1, p0

    invoke-virtual {v4}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object v3, v2, p0

    iget-object v2, p3, Lcom/arcsoft/supernight/SuperNightProcess$FaceInfo;->faceRects:[Landroid/graphics/Rect;

    aget-object v3, v2, p0

    aget-object v4, v2, p0

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    aget-object v3, v2, p0

    aget-object v4, v2, p0

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    div-float/2addr v4, p2

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    aget-object v3, v2, p0

    aget-object v4, v2, p0

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    aget-object v3, v2, p0

    aget-object v2, v2, p0

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    div-float/2addr v2, p2

    float-to-int v2, v2

    iput v2, v3, Landroid/graphics/Rect;->bottom:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "conversionFaceRect -> faceRect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p3, Lcom/arcsoft/supernight/SuperNightProcess$FaceInfo;->faceRects:[Landroid/graphics/Rect;

    aget-object v3, v3, p0

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    move-object p3, v0

    :cond_3
    return-object p3

    :cond_4
    :goto_1
    return-object v0
.end method

.method private getRawImage(Landroid/media/Image;I)Lcom/arcsoft/supernight/RawImage;
    .locals 5

    new-instance p0, Lcom/arcsoft/supernight/RawImage;

    invoke-direct {p0}, Lcom/arcsoft/supernight/RawImage;-><init>()V

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/arcsoft/supernight/RawImage;->mWidth:I

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/arcsoft/supernight/RawImage;->mHeight:I

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iput v1, p0, Lcom/arcsoft/supernight/RawImage;->mPitch1:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/arcsoft/supernight/RawImage;->mPlane1:Ljava/nio/ByteBuffer;

    const/16 v4, 0x23

    if-ne v0, v4, :cond_0

    const/16 p2, 0x802

    iput p2, p0, Lcom/arcsoft/supernight/RawImage;->mPixelArrayFormat:I

    const/4 p2, 0x2

    aget-object v0, p1, p2

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    aget-object p2, p1, p2

    invoke-virtual {p2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result p2

    iput p2, p0, Lcom/arcsoft/supernight/RawImage;->mPitch1:I

    iput-object v0, p0, Lcom/arcsoft/supernight/RawImage;->mPlane1:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    const/16 v4, 0x20

    if-ne v0, v4, :cond_1

    iput p2, p0, Lcom/arcsoft/supernight/RawImage;->mPixelArrayFormat:I

    :cond_1
    :goto_0
    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result p1

    iput p1, p0, Lcom/arcsoft/supernight/RawImage;->mPitch0:I

    iput v1, p0, Lcom/arcsoft/supernight/RawImage;->mPitch2:I

    iput v1, p0, Lcom/arcsoft/supernight/RawImage;->mPitch3:I

    iput-object v2, p0, Lcom/arcsoft/supernight/RawImage;->mPlane0:Ljava/nio/ByteBuffer;

    iput-object v3, p0, Lcom/arcsoft/supernight/RawImage;->mPlane2:Ljava/nio/ByteBuffer;

    iput-object v3, p0, Lcom/arcsoft/supernight/RawImage;->mPlane3:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method private getVendorTagValue(Landroid/hardware/camera2/TotalCaptureResult;Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;)V
    .locals 9

    iget-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->BRIGHT_LEVEL_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const-string v1, "SuperNightProcess"

    const-string v2, "vendorTag"

    const-string v3, "] = "

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_1

    array-length v5, v0

    if-lez v5, :cond_1

    iget-boolean v5, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mEnableBlackLevel:Z

    if-eqz v5, :cond_0

    move v5, v4

    :goto_0
    iget-object v6, p2, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->brightLevel:[I

    array-length v7, v6

    if-ge v5, v7, :cond_0

    aget v7, v0, v4

    div-int/lit16 v7, v7, 0x400

    aput v7, v6, v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "brightLevel["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p2, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->brightLevel:[I

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_1
    array-length v6, v0

    if-ge v5, v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bright["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->BLACK_LEVEL_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_3

    array-length v5, v0

    if-lez v5, :cond_3

    iget-boolean v5, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mEnableBlackLevel:Z

    if-eqz v5, :cond_2

    move v5, v4

    :goto_2
    iget-object v6, p2, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->blackLevel:[I

    array-length v7, v6

    if-ge v5, v7, :cond_2

    aget v7, v0, v4

    div-int/lit16 v7, v7, 0x400

    aput v7, v6, v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "blackLevel["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p2, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->blackLevel:[I

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_3
    array-length v6, v0

    if-ge v5, v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "black["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->WB_GAIN_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "awbGain = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    array-length v5, v0

    if-lez v5, :cond_5

    iget-boolean v5, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mEnableWbGain:Z

    if-eqz v5, :cond_4

    iget-object v5, p2, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->fWbGain:[F

    aget v6, v0, v4

    aput v6, v5, v4

    const/4 v6, 0x1

    aget v7, v0, v6

    aput v7, v5, v6

    const/4 v6, 0x2

    aget v7, v0, v6

    aput v7, v5, v6

    const/4 v6, 0x3

    aget v7, v0, v6

    aput v7, v5, v6

    :cond_4
    move v5, v4

    :goto_4
    array-length v6, v0

    if-ge v5, v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wbGain["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->SHUTTER_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v0, :cond_6

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    if-eqz v0, :cond_6

    array-length v5, v0

    if-lez v5, :cond_6

    aget-wide v5, v0, v4

    long-to-float v5, v5

    iput v5, p2, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->fShutter:F

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fShutter = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p2, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->fShutter:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    :goto_5
    array-length v6, v0

    if-ge v5, v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shutter["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v7, v0, v5

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->SENSOR_GAIN_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    const/high16 v5, 0x44800000    # 1024.0f

    if-eqz v0, :cond_7

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_7

    array-length v6, v0

    if-lez v6, :cond_7

    aget v6, v0, v4

    int-to-float v6, v6

    div-float/2addr v6, v5

    iput v6, p2, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->fSensorGain:F

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fSensorGain = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p2, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->fSensorGain:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v4

    :goto_6
    array-length v7, v0

    if-ge v6, v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sensorGain["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v0, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->ISP_GAIN_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v0, :cond_8

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_8

    array-length v6, v0

    if-lez v6, :cond_8

    aget v6, v0, v4

    int-to-float v6, v6

    div-float/2addr v6, v5

    iput v6, p2, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->fISPGain:F

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fISPGain = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p2, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->fISPGain:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    :goto_7
    array-length v6, v0

    if-ge v5, v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ispGain["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_8
    iget-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->LUX_INDEX_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v0, :cond_9

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_9

    array-length v5, v0

    if-lez v5, :cond_9

    aget v5, v0, v4

    div-int/lit16 v5, v5, 0x2710

    iput v5, p2, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->luxIndex:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "luxIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p2, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->luxIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    :goto_8
    array-length v6, v0

    if-ge v5, v6, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "luxIndex["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_9
    iget-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->EXP_INDEX_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v0, :cond_a

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_a

    array-length v5, v0

    if-lez v5, :cond_a

    aget v5, v0, v4

    iput v5, p2, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->expIndex:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p2, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->expIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    :goto_9
    array-length v6, v0

    if-ge v5, v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expIndex["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_a
    iget-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->ADRC_GAIN_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v0, :cond_c

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_c

    array-length v5, v0

    if-lez v5, :cond_c

    iget-boolean v5, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mEnableAdrcGain:Z

    if-eqz v5, :cond_b

    aget v5, v0, v4

    int-to-float v5, v5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    iput v5, p2, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->fAdrcGain:F

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fAdrcGain = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p2, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->fAdrcGain:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    move v5, v4

    :goto_a
    array-length v6, v0

    if-ge v5, v6, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adrcGain["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_c
    iget-object p0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->TOTAL_GAIN_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz p0, :cond_d

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_d

    array-length p1, p0

    if-lez p1, :cond_d

    aget p1, p0, v4

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    iput p1, p2, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->fTotalGain:F

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fTotalGain = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->fTotalGain:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    array-length p1, p0

    if-ge v4, p1, :cond_d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "totalGain["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, p0, v4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_d
    return-void
.end method

.method private setupSomeVendorTag(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 4

    const-string v0, "SuperNightProcess"

    const-string v1, "setupSomeVendorTag"

    invoke-static {v0, v1}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->BRIGHT_LEVEL_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->BLACK_LEVEL_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->WB_GAIN_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->SHUTTER_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->SENSOR_GAIN_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->ISP_GAIN_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->LUX_INDEX_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->ADRC_GAIN_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->TOTAL_GAIN_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->EXP_INDEX_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getKeys()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.mediatek.suppernightfeature.brightlevel"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "BRIGHT_LEVEL_RESULT_KEY"

    invoke-static {v0, v2}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->BRIGHT_LEVEL_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_2
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.mediatek.suppernightfeature.blacklevel"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "BLACK_LEVEL_RESULT_KEY"

    invoke-static {v0, v2}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->BLACK_LEVEL_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_3
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.mediatek.suppernightfeature.fwbgain"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "WB_GAIN_RESULT_KEY"

    invoke-static {v0, v2}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->WB_GAIN_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_4
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.mediatek.suppernightfeature.fshutter"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "SHUTTER_RESULT_KEY"

    invoke-static {v0, v2}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->SHUTTER_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_5
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.mediatek.suppernightfeature.fsensorgain"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "SENSOR_GAIN_RESULT_KEY"

    invoke-static {v0, v2}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->SENSOR_GAIN_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_6
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.mediatek.suppernightfeature.fispgain"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "ISP_GAIN_RESULT_KEY"

    invoke-static {v0, v2}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->ISP_GAIN_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_7
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.mediatek.suppernightfeature.luxindex"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "LUX_INDEX_RESULT_KEY"

    invoke-static {v0, v2}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->LUX_INDEX_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_8
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.mediatek.suppernightfeature.expindex"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "EXP_INDEX_RESULT_KEY"

    invoke-static {v0, v2}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->EXP_INDEX_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_9
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.mediatek.suppernightfeature.fadrcgain"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "ADRC_GAIN_RESULT_KEY"

    invoke-static {v0, v2}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->ADRC_GAIN_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_a
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.mediatek.suppernightfeature.ftotalgain"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "TOTAL_GAIN_RESULT_KEY"

    invoke-static {v0, v2}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->TOTAL_GAIN_RESULT_KEY:Landroid/hardware/camera2/CaptureResult$Key;

    goto/16 :goto_0

    :cond_b
    return-void
.end method


# virtual methods
.method public addAllInputInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;ILandroid/media/Image;Landroid/graphics/Rect;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/Image;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;I",
            "Landroid/media/Image;",
            "Landroid/graphics/Rect;",
            ")I"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    const-string v8, "mCountDownLatch.countDown() 0"

    const-string v9, "SuperNightProcess"

    const-string v4, "-- addAllInputInfoEx --"

    invoke-static {v9, v4}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, -0x1

    if-eqz v0, :cond_e

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_e

    if-eqz v1, :cond_e

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_e

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_e

    iget-object v4, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mSuperNightJni:Lcom/arcsoft/supernight/SuperNightJni;

    if-eqz v4, :cond_e

    if-eqz v3, :cond_e

    if-nez p5, :cond_0

    goto/16 :goto_6

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " imageList size =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    move v11, v6

    move v12, v11

    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x2

    if-ge v6, v13, :cond_7

    iget-boolean v11, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mIsCancel:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_2

    :try_start_1
    const-string v0, "is cancel 0"

    invoke-static {v9, v0}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    invoke-static {v9, v8}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    return v10

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_2
    :try_start_2
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/Image;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v11, :cond_5

    if-nez v12, :cond_3

    goto :goto_1

    :cond_3
    const-string v13, "vendorTag"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " ------ "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v12}, Lcom/arcsoft/supernight/SuperNightProcess;->setupSomeVendorTag(Landroid/hardware/camera2/TotalCaptureResult;)V

    new-instance v10, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;

    invoke-direct {v10, v7}, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;-><init>(Lcom/arcsoft/supernight/SuperNightProcess;)V

    iput v6, v10, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->curIndex:I

    iput v4, v10, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->imgNum:I

    iput v14, v10, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->cameraState:I

    invoke-virtual {v11}, Landroid/media/Image;->getWidth()I

    move-result v13

    invoke-virtual {v11}, Landroid/media/Image;->getHeight()I

    move-result v14

    new-instance v15, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;

    invoke-direct {v15, v7}, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;-><init>(Lcom/arcsoft/supernight/SuperNightProcess;)V

    iput v5, v15, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->rawType:I

    invoke-direct {v7, v12, v15}, Lcom/arcsoft/supernight/SuperNightProcess;->getVendorTagValue(Landroid/hardware/camera2/TotalCaptureResult;Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;)V

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v12, v5}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_4

    iget-object v12, v15, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->evList:[I

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v16, 0x0

    aput v17, v12, v16

    iget-object v12, v10, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->inputImagesEV:[F

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    aput v5, v12, v16

    :cond_4
    iget-object v5, v10, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->inputImages:[Lcom/arcsoft/supernight/RawImage;

    invoke-direct {v7, v11, v2}, Lcom/arcsoft/supernight/SuperNightProcess;->getRawImage(Landroid/media/Image;I)Lcom/arcsoft/supernight/RawImage;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v5, v12

    iget-object v5, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mSuperNightJni:Lcom/arcsoft/supernight/SuperNightJni;

    invoke-virtual {v5, v15, v10}, Lcom/arcsoft/supernight/SuperNightJni;->addOneInputInfo(Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;)I

    add-int/lit8 v6, v6, 0x1

    move v11, v13

    move v12, v14

    const/4 v5, 0x0

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_5
    :goto_1
    const-string v0, "TotalCaptureResult - > error invalid param"

    invoke-static {v9, v0}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_6

    invoke-static {v9, v8}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_6
    const/4 v1, -0x1

    return v1

    :cond_7
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_8

    invoke-direct {v7, v5, v11, v12}, Lcom/arcsoft/supernight/SuperNightProcess;->getFaceInfo(Landroid/hardware/camera2/TotalCaptureResult;II)Lcom/arcsoft/supernight/SuperNightProcess$FaceInfo;

    move-result-object v0

    :cond_9
    iget-boolean v1, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mIsCancel:Z

    if-eqz v1, :cond_b

    const-string v0, "is cancel 1"

    invoke-static {v9, v0}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_a

    invoke-static {v9, v8}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_a
    const/4 v1, -0x1

    return v1

    :cond_b
    :try_start_4
    new-instance v5, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;

    invoke-direct {v5, v7}, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;-><init>(Lcom/arcsoft/supernight/SuperNightProcess;)V

    const/4 v1, 0x0

    iput v1, v5, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->curIndex:I

    iput v4, v5, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->imgNum:I

    iput v14, v5, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->cameraState:I

    iget-object v4, v5, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->inputImages:[Lcom/arcsoft/supernight/RawImage;

    invoke-direct {v7, v3, v2}, Lcom/arcsoft/supernight/SuperNightProcess;->getRawImage(Landroid/media/Image;I)Lcom/arcsoft/supernight/RawImage;

    move-result-object v2

    aput-object v2, v4, v1

    iget-object v1, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mSuperNightJni:Lcom/arcsoft/supernight/SuperNightJni;

    const/4 v4, 0x3

    move-object v2, v0

    move-object v3, v5

    move-object/from16 v5, p5

    move-object/from16 v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/arcsoft/supernight/SuperNightJni;->process(Lcom/arcsoft/supernight/SuperNightProcess$FaceInfo;Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;ILandroid/graphics/Rect;Lcom/arcsoft/supernight/ProgressCallback;)I

    move-result v10
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cropRect0 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_c

    :goto_2
    invoke-static {v9, v8}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    const/4 v10, -0x1

    :goto_3
    :try_start_6
    const-string v1, "Error"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e-> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v0, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_c

    goto :goto_2

    :cond_c
    :goto_4
    return v10

    :goto_5
    iget-object v1, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_d

    invoke-static {v9, v8}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_d
    throw v0

    :cond_e
    :goto_6
    const-string v0, "addAllInputInfo - > error invalid param"

    invoke-static {v9, v0}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_f

    const-string v0, "mCountDownLatch.countDown() 1"

    invoke-static {v9, v0}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_f
    const/4 v1, -0x1

    return v1
.end method

.method public addAllInputInfoEx(Ljava/util/ArrayList;Ljava/util/ArrayList;ILandroid/graphics/Rect;)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/Image;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;I",
            "Landroid/graphics/Rect;",
            ")I"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v8, "mCountDownLatch.countDown() 2"

    const/4 v9, -0x1

    const-string v10, "SuperNightProcess"

    if-eqz v0, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_f

    if-eqz v1, :cond_f

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_f

    iget-object v2, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mSuperNightJni:Lcom/arcsoft/supernight/SuperNightJni;

    if-eqz v2, :cond_f

    if-nez p4, :cond_0

    goto/16 :goto_6

    :cond_0
    new-instance v2, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;

    invoke-direct {v2, v7}, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;-><init>(Lcom/arcsoft/supernight/SuperNightProcess;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " imageList size =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move-object v11, v2

    move v2, v4

    move v5, v2

    move v6, v5

    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v2, v12, :cond_8

    iget-boolean v5, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mIsCancel:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    iget-object v0, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    invoke-static {v10, v8}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    return v9

    :cond_2
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/Image;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/TotalCaptureResult;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Image format - > "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/media/Image;->getFormat()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    const-string v12, "vendorTag"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " ------ "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v6}, Lcom/arcsoft/supernight/SuperNightProcess;->setupSomeVendorTag(Landroid/hardware/camera2/TotalCaptureResult;)V

    new-instance v12, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;

    invoke-direct {v12, v7}, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;-><init>(Lcom/arcsoft/supernight/SuperNightProcess;)V

    iput v2, v12, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->curIndex:I

    iput v3, v12, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->imgNum:I

    const/4 v13, 0x2

    iput v13, v12, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->cameraState:I

    invoke-virtual {v5}, Landroid/media/Image;->getWidth()I

    move-result v13

    invoke-virtual {v5}, Landroid/media/Image;->getHeight()I

    move-result v14

    new-instance v15, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;

    invoke-direct {v15, v7}, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;-><init>(Lcom/arcsoft/supernight/SuperNightProcess;)V

    iput v4, v15, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->rawType:I

    invoke-direct {v7, v6, v15}, Lcom/arcsoft/supernight/SuperNightProcess;->getVendorTagValue(Landroid/hardware/camera2/TotalCaptureResult;Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;)V

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v6, v9}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_4

    iget-object v9, v15, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->evList:[I

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v16

    aput v16, v9, v4

    iget-object v9, v12, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->inputImagesEV:[F

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    aput v6, v9, v4

    :cond_4
    iget-object v6, v12, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->inputImages:[Lcom/arcsoft/supernight/RawImage;

    move/from16 v9, p3

    invoke-direct {v7, v5, v9}, Lcom/arcsoft/supernight/SuperNightProcess;->getRawImage(Landroid/media/Image;I)Lcom/arcsoft/supernight/RawImage;

    move-result-object v5

    aput-object v5, v6, v4

    iget-object v5, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mSuperNightJni:Lcom/arcsoft/supernight/SuperNightJni;

    invoke-virtual {v5, v15, v12}, Lcom/arcsoft/supernight/SuperNightJni;->addOneInputInfo(Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;)I

    if-nez v2, :cond_5

    move-object v11, v12

    :cond_5
    add-int/lit8 v2, v2, 0x1

    move v5, v13

    move v6, v14

    const/4 v9, -0x1

    goto/16 :goto_0

    :cond_6
    :goto_1
    const-string v0, "TotalCaptureResult - > error invalid param"

    invoke-static {v10, v0}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_7

    invoke-static {v10, v8}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_7
    const/4 v1, -0x1

    return v1

    :cond_8
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_9

    invoke-direct {v7, v2, v5, v6}, Lcom/arcsoft/supernight/SuperNightProcess;->getFaceInfo(Landroid/hardware/camera2/TotalCaptureResult;II)Lcom/arcsoft/supernight/SuperNightProcess$FaceInfo;

    move-result-object v0

    :cond_a
    move-object v2, v0

    iget-boolean v0, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mIsCancel:Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_c

    iget-object v0, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_b

    invoke-static {v10, v8}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_b
    const/4 v1, -0x1

    return v1

    :cond_c
    :try_start_3
    iget-object v1, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mSuperNightJni:Lcom/arcsoft/supernight/SuperNightJni;

    const/4 v4, 0x3

    move-object v3, v11

    move-object/from16 v5, p4

    move-object/from16 v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/arcsoft/supernight/SuperNightJni;->process(Lcom/arcsoft/supernight/SuperNightProcess$FaceInfo;Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;ILandroid/graphics/Rect;Lcom/arcsoft/supernight/ProgressCallback;)I

    move-result v9
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cropRect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_d

    :goto_2
    invoke-static {v10, v8}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    const/4 v9, -0x1

    :goto_3
    :try_start_5
    const-string v1, "Error"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e-> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_d

    goto :goto_2

    :cond_d
    :goto_4
    return v9

    :goto_5
    iget-object v1, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_e

    invoke-static {v10, v8}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_e
    throw v0

    :cond_f
    :goto_6
    const-string v0, "addAllInputInfo - > error invalid param"

    invoke-static {v10, v0}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_10

    const-string v0, "mCountDownLatch.countDown() 3"

    invoke-static {v10, v0}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_10
    const/4 v1, -0x1

    return v1
.end method

.method public addAllInputInfo_Fd(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILandroid/media/Image;ILandroid/graphics/Rect;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/Image;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I",
            "Landroid/media/Image;",
            "I",
            "Landroid/graphics/Rect;",
            ")I"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    const-string v6, "mCountDownLatch.countDown() 0"

    const-string v7, "SuperNightProcess"

    const-string v8, "-- addAllInputInfo by fd --"

    invoke-static {v7, v8}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, -0x1

    if-eqz v0, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_f

    if-eqz v2, :cond_f

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_f

    if-eqz v3, :cond_f

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v9, v10, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v9, v10, :cond_f

    iget-object v9, v1, Lcom/arcsoft/supernight/SuperNightProcess;->mSuperNightJni:Lcom/arcsoft/supernight/SuperNightJni;

    if-eqz v9, :cond_f

    if-eqz v5, :cond_f

    if-nez p7, :cond_0

    goto/16 :goto_6

    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " imageList size =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x2

    if-ge v11, v14, :cond_8

    iget-boolean v12, v1, Lcom/arcsoft/supernight/SuperNightProcess;->mIsCancel:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v12, :cond_2

    :try_start_1
    const-string v0, "is cancel 0"

    invoke-static {v7, v0}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v1, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    invoke-static {v7, v6}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    return v8

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_2
    :try_start_2
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/Image;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v12, :cond_6

    if-nez v13, :cond_3

    goto/16 :goto_1

    :cond_3
    const-string v14, "vendorTag"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " ------ "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v13}, Lcom/arcsoft/supernight/SuperNightProcess;->setupSomeVendorTag(Landroid/hardware/camera2/TotalCaptureResult;)V

    new-instance v8, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;

    invoke-direct {v8, v1}, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;-><init>(Lcom/arcsoft/supernight/SuperNightProcess;)V

    iput v11, v8, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->curIndex:I

    iput v9, v8, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->imgNum:I

    iput v15, v8, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->cameraState:I

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-eqz v10, :cond_4

    iget-object v14, v8, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->inputFd:[I

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v15, 0x0

    aput v10, v14, v15

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "input fd["

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "] = "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v8, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->inputFd:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v12}, Landroid/media/Image;->getWidth()I

    move-result v10

    invoke-virtual {v12}, Landroid/media/Image;->getHeight()I

    move-result v14

    new-instance v15, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;

    invoke-direct {v15, v1}, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;-><init>(Lcom/arcsoft/supernight/SuperNightProcess;)V

    const/4 v0, 0x0

    iput v0, v15, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->rawType:I

    invoke-direct {v1, v13, v15}, Lcom/arcsoft/supernight/SuperNightProcess;->getVendorTagValue(Landroid/hardware/camera2/TotalCaptureResult;Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;)V

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v13, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object v13, v15, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->evList:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v16, 0x0

    aput v17, v13, v16

    iget-object v13, v8, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->inputImagesEV:[F

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    aput v0, v13, v16

    :cond_5
    iget-object v0, v8, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->inputImages:[Lcom/arcsoft/supernight/RawImage;

    invoke-direct {v1, v12, v4}, Lcom/arcsoft/supernight/SuperNightProcess;->getRawImage(Landroid/media/Image;I)Lcom/arcsoft/supernight/RawImage;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v0, v13

    iget-object v0, v1, Lcom/arcsoft/supernight/SuperNightProcess;->mSuperNightJni:Lcom/arcsoft/supernight/SuperNightJni;

    invoke-virtual {v0, v15, v8}, Lcom/arcsoft/supernight/SuperNightJni;->addOneInputInfo(Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;)I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p1

    move v12, v10

    move v13, v14

    const/4 v8, -0x1

    goto/16 :goto_0

    :cond_6
    :goto_1
    const-string v0, "TotalCaptureResult - > error invalid param"

    invoke-static {v7, v0}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, v1, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_7

    invoke-static {v7, v6}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_7
    const/4 v1, -0x1

    return v1

    :cond_8
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v3, v8}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_9

    invoke-direct {v1, v3, v12, v13}, Lcom/arcsoft/supernight/SuperNightProcess;->getFaceInfo(Landroid/hardware/camera2/TotalCaptureResult;II)Lcom/arcsoft/supernight/SuperNightProcess$FaceInfo;

    move-result-object v0

    :cond_a
    iget-boolean v2, v1, Lcom/arcsoft/supernight/SuperNightProcess;->mIsCancel:Z

    if-eqz v2, :cond_c

    const-string v0, "is cancel 1"

    invoke-static {v7, v0}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, v1, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_b

    invoke-static {v7, v6}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_b
    const/4 v1, -0x1

    return v1

    :cond_c
    :try_start_4
    new-instance v2, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;

    invoke-direct {v2, v1}, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;-><init>(Lcom/arcsoft/supernight/SuperNightProcess;)V

    const/4 v3, 0x0

    iput v3, v2, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->curIndex:I

    iput v9, v2, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->imgNum:I

    iput v15, v2, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->cameraState:I

    iget-object v8, v2, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->inputImages:[Lcom/arcsoft/supernight/RawImage;

    invoke-direct {v1, v5, v4}, Lcom/arcsoft/supernight/SuperNightProcess;->getRawImage(Landroid/media/Image;I)Lcom/arcsoft/supernight/RawImage;

    move-result-object v4

    aput-object v4, v8, v3

    iget-object v4, v2, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->inputFd:[I

    aput p6, v4, v3

    iget-object v3, v1, Lcom/arcsoft/supernight/SuperNightProcess;->mSuperNightJni:Lcom/arcsoft/supernight/SuperNightJni;

    const/4 v4, 0x3

    move-object/from16 p1, v3

    move-object/from16 p2, v0

    move-object/from16 p3, v2

    move/from16 p4, v4

    move-object/from16 p5, p7

    move-object/from16 p6, p0

    invoke-virtual/range {p1 .. p6}, Lcom/arcsoft/supernight/SuperNightJni;->process(Lcom/arcsoft/supernight/SuperNightProcess$FaceInfo;Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;ILandroid/graphics/Rect;Lcom/arcsoft/supernight/ProgressCallback;)I

    move-result v8
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cropRect0 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, v1, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_d

    :goto_2
    invoke-static {v7, v6}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    const/4 v8, -0x1

    :goto_3
    :try_start_6
    const-string v2, "Error"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e-> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v0, v1, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_d

    goto :goto_2

    :cond_d
    :goto_4
    return v8

    :goto_5
    iget-object v2, v1, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v2, :cond_e

    invoke-static {v7, v6}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_e
    throw v0

    :cond_f
    :goto_6
    const-string v0, "addAllInputInfo - > error invalid param"

    invoke-static {v7, v0}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_10

    const-string v0, "mCountDownLatch.countDown() 1"

    invoke-static {v7, v0}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_10
    const/4 v1, -0x1

    return v1
.end method

.method public addOneInputInfo(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;III)I
    .locals 7

    const-string v0, "mCountDownLatch.countDown() 5"

    const/4 v1, -0x1

    const-string v2, "SuperNightProcess"

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    iget-object v3, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mSuperNightJni:Lcom/arcsoft/supernight/SuperNightJni;

    if-eqz v3, :cond_5

    if-gez p3, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_0
    invoke-direct {p0, p2}, Lcom/arcsoft/supernight/SuperNightProcess;->setupSomeVendorTag(Landroid/hardware/camera2/TotalCaptureResult;)V

    new-instance v3, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;

    invoke-direct {v3, p0}, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;-><init>(Lcom/arcsoft/supernight/SuperNightProcess;)V

    iput p3, v3, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->curIndex:I

    iput p5, v3, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->imgNum:I

    const/4 p3, 0x2

    iput p3, v3, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->cameraState:I

    new-instance p3, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;

    invoke-direct {p3, p0}, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;-><init>(Lcom/arcsoft/supernight/SuperNightProcess;)V

    const/4 p5, 0x0

    iput p5, p3, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->rawType:I

    invoke-direct {p0, p2, p3}, Lcom/arcsoft/supernight/SuperNightProcess;->getVendorTagValue(Landroid/hardware/camera2/TotalCaptureResult;Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;)V

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v4}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    iget-object v5, p3, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->evList:[I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, p5

    iget-object v5, v3, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->inputImagesEV:[F

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, p5

    :cond_1
    iget-object v5, v3, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->inputImages:[Lcom/arcsoft/supernight/RawImage;

    invoke-direct {p0, p1, p4}, Lcom/arcsoft/supernight/SuperNightProcess;->getRawImage(Landroid/media/Image;I)Lcom/arcsoft/supernight/RawImage;

    move-result-object p1

    aput-object p1, v5, p5

    iget-object p1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mSuperNightJni:Lcom/arcsoft/supernight/SuperNightJni;

    invoke-virtual {p1, p3, v3}, Lcom/arcsoft/supernight/SuperNightJni;->addOneInputInfo(Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;)I

    move-result v1

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mMetdata:Landroid/hardware/camera2/TotalCaptureResult;

    if-nez p1, :cond_2

    iput-object p2, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mMetdata:Landroid/hardware/camera2/TotalCaptureResult;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object p1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_3

    :goto_0
    invoke-static {v2, v0}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v1

    :goto_2
    iget-object p2, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p2, :cond_4

    invoke-static {v2, v0}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_4
    throw p1

    :cond_5
    :goto_3
    const-string p0, "addOneInputInfo - > error invalid param"

    invoke-static {v2, p0}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public cancelSuperNight()V
    .locals 2

    iget-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mSuperNightJni:Lcom/arcsoft/supernight/SuperNightJni;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mIsCancel:Z

    invoke-virtual {v0}, Lcom/arcsoft/supernight/SuperNightJni;->cancelSuperNight()V

    iget-boolean v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mInit:Z

    if-nez v0, :cond_0

    const-string p0, "SuperNightProcess"

    const-string v0, "mInit is false ,cancelSuperNight return!!!"

    invoke-static {p0, v0}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    :try_start_0
    iget-object p0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public init(IIII)I
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mSuperNightJni:Lcom/arcsoft/supernight/SuperNightJni;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/arcsoft/supernight/SuperNightJni;->init(IIII)V

    iget-object p1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mSuperNightJni:Lcom/arcsoft/supernight/SuperNightJni;

    invoke-virtual {p1}, Lcom/arcsoft/supernight/SuperNightJni;->preProcess()I

    move-result p1

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mIsCancel:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mInit:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "preprocess = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "SuperNightProcess"

    invoke-static {p2, p0}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public onProgress(II)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "progress = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " status = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SuperNightProcess"

    invoke-static {p1, p0}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public process(Landroid/media/Image;ILandroid/graphics/Rect;I)I
    .locals 10

    const-string v7, "mCountDownLatch.countDown() 4"

    const-string v8, "SuperNightProcess"

    const/4 v9, -0x1

    if-eqz p1, :cond_3

    if-nez p3, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mMetdata:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-direct {p0, v2, v0, v1}, Lcom/arcsoft/supernight/SuperNightProcess;->getFaceInfo(Landroid/hardware/camera2/TotalCaptureResult;II)Lcom/arcsoft/supernight/SuperNightProcess$FaceInfo;

    move-result-object v2

    new-instance v3, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;

    invoke-direct {v3, p0}, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;-><init>(Lcom/arcsoft/supernight/SuperNightProcess;)V

    const/4 v0, 0x0

    iput v0, v3, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->curIndex:I

    iput p4, v3, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->imgNum:I

    const/4 v1, 0x2

    iput v1, v3, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->cameraState:I

    iget-object v1, v3, Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;->inputImages:[Lcom/arcsoft/supernight/RawImage;

    invoke-direct {p0, p1, p2}, Lcom/arcsoft/supernight/SuperNightProcess;->getRawImage(Landroid/media/Image;I)Lcom/arcsoft/supernight/RawImage;

    move-result-object v4

    aput-object v4, v1, v0

    iget-object v1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mSuperNightJni:Lcom/arcsoft/supernight/SuperNightJni;

    const/4 v4, 0x3

    move-object v5, p3

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/arcsoft/supernight/SuperNightJni;->process(Lcom/arcsoft/supernight/SuperNightProcess$FaceInfo;Lcom/arcsoft/supernight/SuperNightProcess$InputInfo;ILandroid/graphics/Rect;Lcom/arcsoft/supernight/ProgressCallback;)I

    move-result v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cropRect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    :goto_0
    invoke-static {v8, v7}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v9

    :goto_2
    iget-object v1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_2

    invoke-static {v8, v7}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2
    throw v0

    :cond_3
    :goto_3
    return v9
.end method

.method public readDebugFileValue()V
    .locals 10

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/arcsoft/supernight/SuperNightProcess;->DEBUG_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "SuperNightProcess"

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "dump file return false 0"

    invoke-static {v2, p0}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v4, 0x0

    move v5, v4

    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dump file line = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x2

    if-lt v5, v7, :cond_2

    goto/16 :goto_4

    :cond_2
    const-string v7, "dumpSNImage"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dump file value ="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v8, :cond_3

    goto :goto_1

    :cond_3
    move v8, v4

    :goto_1
    iput-boolean v8, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mDumpFile:Z

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    const-string v7, "debugSNLog"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "debug log value ="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v8, :cond_5

    goto :goto_3

    :cond_5
    move v8, v4

    :goto_3
    sput-boolean v8, Lcom/arcsoft/supernight/LOG;->DEBUG:Z

    sget-boolean v6, Lcom/arcsoft/supernight/LOG;->DEBUG:Z

    sput-boolean v6, Lcom/arcsoft/supernight/TimeConsumingUtil;->DEBUG:Z

    goto :goto_2

    :cond_6
    :goto_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_5

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_5
    return-void
.end method

.method public setEnableAdrcGain(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mEnableAdrcGain:Z

    return-void
.end method

.method public setEnableBlackLevel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mEnableBlackLevel:Z

    return-void
.end method

.method public setEnableWbGain(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mEnableWbGain:Z

    return-void
.end method

.method public setFaceOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mFaceOrientation:I

    return-void
.end method

.method public unInit()I
    .locals 6

    iget-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mSuperNightJni:Lcom/arcsoft/supernight/SuperNightJni;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {v0}, Lcom/arcsoft/supernight/SuperNightJni;->postProcess()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postProcess = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuperNightProcess"

    invoke-static {v1, v0}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mSuperNightJni:Lcom/arcsoft/supernight/SuperNightJni;

    invoke-virtual {v0}, Lcom/arcsoft/supernight/SuperNightJni;->unInit()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unInit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mMetdata:Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v2, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const-string v2, "mCountDownLatch.countDown() 6"

    invoke-static {v1, v2}, Lcom/arcsoft/supernight/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/arcsoft/supernight/SuperNightProcess;->mInit:Z

    return v0
.end method
