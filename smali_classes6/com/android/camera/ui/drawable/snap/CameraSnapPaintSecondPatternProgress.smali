.class public Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecondPatternProgress;
.super Lcom/android/camera/ui/drawable/snap/PaintPattern;
.source ""


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/snap/PaintPattern;-><init>(Lcom/android/camera/ui/drawable/CameraPaintBase;)V

    return-void
.end method


# virtual methods
.method public directlyResult()V
    .locals 2

    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/PaintPattern;->paintBase:Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-object v0, p0

    check-cast v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    move-object v1, p0

    check-cast v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v1, v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->baseAngel:F

    iput v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->quarterAngelCurrent:F

    move-object v0, p0

    check-cast v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    move-object v1, p0

    check-cast v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v1, v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->baseAngel:F

    iput v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->squashAngelCurrent:F

    move-object v0, p0

    check-cast v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    move-object v1, p0

    check-cast v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v1, v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->baseLineWidth:F

    iput v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->motionLineWidthCurrent:F

    move-object v0, p0

    check-cast v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    check-cast p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->baseLineWidth:F

    iput p0, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->commonLineWidthCurrent:F

    return-void
.end method

.method public interceptDraw()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public prepareTargetPattern()V
    .locals 2

    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/PaintPattern;->paintBase:Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-object v0, p0

    check-cast v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    move-object v1, p0

    check-cast v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v1, v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->quarterAngelCurrent:F

    iput v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->quarterAngelSrc:F

    move-object v0, p0

    check-cast v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    move-object v1, p0

    check-cast v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v1, v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->squashAngelCurrent:F

    iput v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->squashAngelSrc:F

    move-object v0, p0

    check-cast v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    move-object v1, p0

    check-cast v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v1, v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->motionLineWidthCurrent:F

    iput v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->motionLineWidthSrc:F

    move-object v0, p0

    check-cast v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    move-object v1, p0

    check-cast v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v1, v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->commonLineWidthCurrent:F

    iput v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->commonLineWidthSrc:F

    move-object v0, p0

    check-cast v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    move-object v1, p0

    check-cast v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v1, v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->baseAngel:F

    iput v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->quarterAngelDst:F

    move-object v0, p0

    check-cast v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    move-object v1, p0

    check-cast v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v1, v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->baseAngel:F

    iput v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->squashAngelDst:F

    move-object v0, p0

    check-cast v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    move-object v1, p0

    check-cast v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v1, v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->baseLineWidth:F

    iput v1, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->motionLineWidthDst:F

    move-object v0, p0

    check-cast v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    check-cast p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->baseLineWidth:F

    iput p0, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->commonLineWidthDst:F

    return-void
.end method

.method public updateValue(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/PaintPattern;->paintBase:Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-object v1, v0

    check-cast v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    move-object v2, v0

    check-cast v2, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v2, v2, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->quarterAngelSrc:F

    check-cast v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v0, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->quarterAngelDst:F

    invoke-virtual {p0, v2, v0, p1}, Lcom/android/camera/ui/drawable/snap/PaintPattern;->calculateCurrentValue(FFF)F

    move-result v0

    iput v0, v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->quarterAngelCurrent:F

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/PaintPattern;->paintBase:Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-object v1, v0

    check-cast v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    move-object v2, v0

    check-cast v2, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v2, v2, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->squashAngelSrc:F

    check-cast v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v0, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->squashAngelDst:F

    invoke-virtual {p0, v2, v0, p1}, Lcom/android/camera/ui/drawable/snap/PaintPattern;->calculateCurrentValue(FFF)F

    move-result v0

    iput v0, v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->squashAngelCurrent:F

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/PaintPattern;->paintBase:Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-object v1, v0

    check-cast v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    move-object v2, v0

    check-cast v2, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v2, v2, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->motionLineWidthSrc:F

    check-cast v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v0, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->motionLineWidthDst:F

    invoke-virtual {p0, v2, v0, p1}, Lcom/android/camera/ui/drawable/snap/PaintPattern;->calculateCurrentValue(FFF)F

    move-result v0

    iput v0, v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->motionLineWidthCurrent:F

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/PaintPattern;->paintBase:Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-object v1, v0

    check-cast v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    move-object v2, v0

    check-cast v2, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v2, v2, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->commonLineWidthSrc:F

    check-cast v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;

    iget v0, v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->commonLineWidthDst:F

    invoke-virtual {p0, v2, v0, p1}, Lcom/android/camera/ui/drawable/snap/PaintPattern;->calculateCurrentValue(FFF)F

    move-result p0

    iput p0, v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->commonLineWidthCurrent:F

    return-void
.end method
