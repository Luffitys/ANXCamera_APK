.class public Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$MagneticSensorDetect;


# static fields
.field private static final DEBUG:Z = true

.field private static final MAGNETIC_DELTA:I = 0xf

.field private static final MAGNETIC_DETECT_TIME_OUT:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "MagneticSensorDetectImp"


# instance fields
.field private mAECLux:F

.field private mCostTime:J

.field private mLastCaptureTime:J

.field private mMagneticChanged:Z

.field private mMagneticValues:[F

.field private mPostMagneticValues:[F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mMagneticValues:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mPostMagneticValues:[F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mLastCaptureTime:J

    iput-wide v0, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mCostTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mMagneticChanged:Z

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->resetMagneticInfo()V

    sget-object p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->TAG:Ljava/lang/String;

    const-string v0, "init MagneticSensorDetectImp"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static create()Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;
    .locals 1

    new-instance v0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;

    invoke-direct {v0}, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;-><init>()V

    return-object v0
.end method

.method private printMagnetInfo()V
    .locals 10

    sget-object v0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capture info timestamp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mLastCaptureTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mPostMagneticValues:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mPostMagneticValues:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mPostMagneticValues:[F

    const/4 v7, 0x2

    aget v5, v5, v7

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preview info timestamp:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mMagneticValues:[F

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mMagneticValues:[F

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mMagneticValues:[F

    aget p0, p0, v7

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public isLockHDRChecker(Ljava/lang/String;)Z
    .locals 3

    iget-boolean p0, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mMagneticChanged:Z

    xor-int/lit8 p0, p0, 0x1

    sget-object v0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")is_lock_hdr:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public onMagneticSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mMagneticValues:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public recordMagneticInfo()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mMagneticValues:[F

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mPostMagneticValues:[F

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mLastCaptureTime:J

    iput-wide v0, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mCostTime:J

    iput-boolean v2, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mMagneticChanged:Z

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa10

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public resetMagneticInfo()V
    .locals 5

    iget-wide v0, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mLastCaptureTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mPostMagneticValues:[F

    const/4 v4, 0x0

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-wide v2, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mLastCaptureTime:J

    iput-wide v2, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mCostTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mMagneticChanged:Z

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa10

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public updateMagneticDetection()V
    .locals 14

    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->printMagnetInfo()V

    iget-wide v0, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mLastCaptureTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mAECLux:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v2, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ltz v3, :cond_1

    const/high16 v3, 0x447a0000    # 1000.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v2, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->TAG:Ljava/lang/String;

    const-string v3, "AECLux, no trigger"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    :goto_1
    iget-wide v6, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mLastCaptureTime:J

    sub-long v6, v0, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0xea60

    cmp-long v3, v6, v8

    if-lez v3, :cond_2

    sget-object v2, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->TAG:Ljava/lang/String;

    const-string v3, "Timeout, no trigger"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    :cond_2
    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mPostMagneticValues:[F

    aget v2, v2, v5

    iget-object v3, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mMagneticValues:[F

    aget v3, v3, v5

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mPostMagneticValues:[F

    aget v3, v3, v4

    iget-object v6, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mMagneticValues:[F

    aget v6, v6, v4

    sub-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v6, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mPostMagneticValues:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    iget-object v8, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mMagneticValues:[F

    aget v8, v8, v7

    sub-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float v8, v2, v3

    add-float/2addr v8, v6

    iget-wide v9, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mCostTime:J

    cmp-long v9, v0, v9

    const/high16 v10, 0x41700000    # 15.0f

    if-gez v9, :cond_3

    cmpl-float v9, v8, v10

    if-ltz v9, :cond_4

    :cond_3
    sget-object v9, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mag diff:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ",time diff:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mLastCaptureTime:J

    sub-long/2addr v0, v12

    const-wide/16 v12, 0x3e8

    div-long/2addr v0, v12

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", sensor diff: ["

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "], base["

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mPostMagneticValues:[F

    aget v1, v1, v5

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mPostMagneticValues:[F

    aget v1, v1, v4

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mPostMagneticValues:[F

    aget v1, v1, v7

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "],current["

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mMagneticValues:[F

    aget v1, v1, v5

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mMagneticValues:[F

    aget v1, v1, v4

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mMagneticValues:[F

    aget v0, v0, v7

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mCostTime:J

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mCostTime:J

    :cond_4
    cmpg-float v0, v8, v10

    if-gez v0, :cond_5

    sget-object v0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->TAG:Ljava/lang/String;

    const-string v1, "Magnetic no changed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mMagneticChanged:Z

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->TAG:Ljava/lang/String;

    const-string v1, "Magnetic changed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->resetMagneticInfo()V

    :cond_7
    :goto_2
    return-void
.end method

.method public updatePreview(Landroid/hardware/camera2/CaptureResult;)V
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mLastCaptureTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->getAecLux(Landroid/hardware/camera2/CaptureResult;)F

    move-result p1

    iput p1, p0, Lcom/android/camera/module/impl/component/MagneticSensorDetectImp;->mAECLux:F

    :cond_0
    return-void
.end method
