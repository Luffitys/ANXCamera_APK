.class public final Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;


# direct methods
.method public constructor <init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;I)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;-><init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;ILcom/xiaomi/camera/core/ParallelTaskDataParameter$1;)V

    iput-object v6, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;-><init>(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Lcom/xiaomi/camera/core/ParallelTaskDataParameter$1;)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    return-void
.end method


# virtual methods
.method public build()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    return-object p0
.end method

.method public setAgeGenderAndMagicMirrorWater(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$1802(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z

    return-object p0
.end method

.method public setAlgorithmName(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$2502(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setAnchorPreview(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$1402(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z

    return-object p0
.end method

.method public setBokehFrontCamera(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$2402(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z

    return-object p0
.end method

.method public setCameraPreferredMode(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$3902(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I

    return-object p0
.end method

.method public setDeviceWatermarkParam(Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$3002(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    return-object p0
.end method

.method public setDocumentPoints([F)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$2202(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;[F)[F

    return-object p0
.end method

.method public setDocumentPreview(Lcom/android/zxing/PreviewImage;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$2102(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Lcom/android/zxing/PreviewImage;)Lcom/android/zxing/PreviewImage;

    return-object p0
.end method

.method public setDocumentShot(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$2002(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z

    return-object p0
.end method

.method public setFaceWaterMarkList(Ljava/util/List;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$1702(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public setFilterId(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$802(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I

    return-object p0
.end method

.method public setFrontCamera(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$1902(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z

    return-object p0
.end method

.method public setHasDualWaterMark(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$202(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z

    return-object p0
.end method

.method public setIsSupportMiDualBokeh(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$3702(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z

    return-object p0
.end method

.method public setJpegQuality(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$3102(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I

    return-object p0
.end method

.method public setJpegRotation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$1002(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I

    return-object p0
.end method

.method public setLightingPattern(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$702(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I

    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$1502(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Landroid/location/Location;)Landroid/location/Location;

    return-object p0
.end method

.method public setMajorAIWatermark(Lcom/android/camera/aiwatermark/data/WatermarkItem;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$402(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Lcom/android/camera/aiwatermark/data/WatermarkItem;)Lcom/android/camera/aiwatermark/data/WatermarkItem;

    return-object p0
.end method

.method public setMiMovieOpen(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$3502(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z

    return-object p0
.end method

.method public setMinorAIWatermark(Lcom/android/camera/aiwatermark/data/WatermarkItem;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$502(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Lcom/android/camera/aiwatermark/data/WatermarkItem;)Lcom/android/camera/aiwatermark/data/WatermarkItem;

    return-object p0
.end method

.method public setMirror(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$602(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z

    return-object p0
.end method

.method public setMoonMode(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$3402(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z

    return-object p0
.end method

.method public setOrientation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$902(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I

    return-object p0
.end method

.method public setPictureInfo(Lcom/xiaomi/camera/core/PictureInfo;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$2602(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Lcom/xiaomi/camera/core/PictureInfo;)Lcom/xiaomi/camera/core/PictureInfo;

    return-object p0
.end method

.method public setPortraitLightingVersion(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$3802(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I

    return-object p0
.end method

.method public setPrefix(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$3202(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setRawSize(II)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p1, p2}, Landroid/util/Size;-><init>(II)V

    invoke-static {v0, v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$3302(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Landroid/util/Size;)Landroid/util/Size;

    return-object p0
.end method

.method public setReprocessBurstShotPicture(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$3602(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z

    return-object p0
.end method

.method public setSaveGroupshotPrimitive(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$2902(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z

    return-object p0
.end method

.method public setSensorOrientation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$2302(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I

    return-object p0
.end method

.method public setShootOrientation(I)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$1202(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I

    return-object p0
.end method

.method public setShootRotation(F)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$1102(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;F)F

    return-object p0
.end method

.method public setSuffix(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$2702(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setSupportZeroDegreeOrientationImage(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$1302(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z

    return-object p0
.end method

.method public setTiltShiftMode(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$2802(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setTimeWaterMarkString(Ljava/lang/String;)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$1602(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setVendorWaterMark(Z)Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;->mParameter:Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->access$302(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z

    return-object p0
.end method
