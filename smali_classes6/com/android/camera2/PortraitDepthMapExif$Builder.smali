.class public Lcom/android/camera2/PortraitDepthMapExif$Builder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private cameraPreferredMode:I

.field private coordinatesOfOfTheRegionUnderWatermarks:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private depthLength:I

.field private dulCameraWaterMarkLocation:[I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private dulWaterMark:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private isBokehFrontCamera:Z

.field private isCinematicAspectRatio:Z

.field private isFrontMirror:Z

.field private isSupportMiDualBokeh:Z

.field private isSupportZeroDegreeOrientationImage:Z

.field private jpeg:[B

.field private jpegDataOfTheRegionUnderWatermarks:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private lightingPattern:I

.field private pictureInfo:Lcom/xiaomi/camera/core/PictureInfo;

.field private portraitLightingVersioin:I

.field private rawLength:I

.field private rotation:I

.field private timeStamp:J

.field private timeWaterMark:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private timeWaterMarkLocation:[I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera2/PortraitDepthMapExif$Builder;)[B
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->jpeg:[B

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera2/PortraitDepthMapExif$Builder;)[B
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->dulWaterMark:[B

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/camera2/PortraitDepthMapExif$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->isBokehFrontCamera:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/camera2/PortraitDepthMapExif$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->isCinematicAspectRatio:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/android/camera2/PortraitDepthMapExif$Builder;)Lcom/xiaomi/camera/core/PictureInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->pictureInfo:Lcom/xiaomi/camera/core/PictureInfo;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/camera2/PortraitDepthMapExif$Builder;)I
    .locals 0

    iget p0, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->rawLength:I

    return p0
.end method

.method static synthetic access$1400(Lcom/android/camera2/PortraitDepthMapExif$Builder;)I
    .locals 0

    iget p0, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->depthLength:I

    return p0
.end method

.method static synthetic access$1500(Lcom/android/camera2/PortraitDepthMapExif$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->isSupportMiDualBokeh:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/android/camera2/PortraitDepthMapExif$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->timeStamp:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/android/camera2/PortraitDepthMapExif$Builder;)I
    .locals 0

    iget p0, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->portraitLightingVersioin:I

    return p0
.end method

.method static synthetic access$1800(Lcom/android/camera2/PortraitDepthMapExif$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->isSupportZeroDegreeOrientationImage:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/android/camera2/PortraitDepthMapExif$Builder;)I
    .locals 0

    iget p0, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->cameraPreferredMode:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/camera2/PortraitDepthMapExif$Builder;)[I
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->dulCameraWaterMarkLocation:[I

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera2/PortraitDepthMapExif$Builder;)[B
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->timeWaterMark:[B

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera2/PortraitDepthMapExif$Builder;)[I
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->timeWaterMarkLocation:[I

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/camera2/PortraitDepthMapExif$Builder;)[B
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->jpegDataOfTheRegionUnderWatermarks:[B

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/camera2/PortraitDepthMapExif$Builder;)[I
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->coordinatesOfOfTheRegionUnderWatermarks:[I

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/camera2/PortraitDepthMapExif$Builder;)I
    .locals 0

    iget p0, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->rotation:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/camera2/PortraitDepthMapExif$Builder;)I
    .locals 0

    iget p0, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->lightingPattern:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/camera2/PortraitDepthMapExif$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->isFrontMirror:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/android/camera2/PortraitDepthMapExif;
    .locals 2

    new-instance v0, Lcom/android/camera2/PortraitDepthMapExif;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera2/PortraitDepthMapExif;-><init>(Lcom/android/camera2/PortraitDepthMapExif$Builder;Lcom/android/camera2/PortraitDepthMapExif$1;)V

    return-object v0
.end method

.method public cameraPreferredMode(I)Lcom/android/camera2/PortraitDepthMapExif$Builder;
    .locals 0

    iput p1, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->cameraPreferredMode:I

    return-object p0
.end method

.method public coordinatesOfOfTheRegionUnderWatermarks([I)Lcom/android/camera2/PortraitDepthMapExif$Builder;
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->coordinatesOfOfTheRegionUnderWatermarks:[I

    return-object p0
.end method

.method public depthLength(I)Lcom/android/camera2/PortraitDepthMapExif$Builder;
    .locals 0

    iput p1, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->depthLength:I

    return-object p0
.end method

.method public dulCameraWaterMarkLocation([I)Lcom/android/camera2/PortraitDepthMapExif$Builder;
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->dulCameraWaterMarkLocation:[I

    return-object p0
.end method

.method public dulWaterMark([B)Lcom/android/camera2/PortraitDepthMapExif$Builder;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->dulWaterMark:[B

    return-object p0
.end method

.method public isBokehFrontCamera(Z)Lcom/android/camera2/PortraitDepthMapExif$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->isBokehFrontCamera:Z

    return-object p0
.end method

.method public isCinematicAspectRatio(Z)Lcom/android/camera2/PortraitDepthMapExif$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->isCinematicAspectRatio:Z

    return-object p0
.end method

.method public isFrontMirror(Z)Lcom/android/camera2/PortraitDepthMapExif$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->isFrontMirror:Z

    return-object p0
.end method

.method public isSupportMiDualBokeh(Z)Lcom/android/camera2/PortraitDepthMapExif$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->isSupportMiDualBokeh:Z

    return-object p0
.end method

.method public isSupportZeroDegreeOrientationImage(Z)Lcom/android/camera2/PortraitDepthMapExif$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->isSupportZeroDegreeOrientationImage:Z

    return-object p0
.end method

.method public jpeg([B)Lcom/android/camera2/PortraitDepthMapExif$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->jpeg:[B

    return-object p0
.end method

.method public jpegDataOfTheRegionUnderWatermarks([B)Lcom/android/camera2/PortraitDepthMapExif$Builder;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->jpegDataOfTheRegionUnderWatermarks:[B

    return-object p0
.end method

.method public lightingPattern(I)Lcom/android/camera2/PortraitDepthMapExif$Builder;
    .locals 0

    iput p1, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->lightingPattern:I

    return-object p0
.end method

.method public pictureInfo(Lcom/xiaomi/camera/core/PictureInfo;)Lcom/android/camera2/PortraitDepthMapExif$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->pictureInfo:Lcom/xiaomi/camera/core/PictureInfo;

    return-object p0
.end method

.method public portraitLightingVersioin(I)Lcom/android/camera2/PortraitDepthMapExif$Builder;
    .locals 0

    iput p1, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->portraitLightingVersioin:I

    return-object p0
.end method

.method public rawLength(I)Lcom/android/camera2/PortraitDepthMapExif$Builder;
    .locals 0

    iput p1, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->rawLength:I

    return-object p0
.end method

.method public rotation(I)Lcom/android/camera2/PortraitDepthMapExif$Builder;
    .locals 0

    iput p1, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->rotation:I

    return-object p0
.end method

.method public timeStamp(J)Lcom/android/camera2/PortraitDepthMapExif$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->timeStamp:J

    return-object p0
.end method

.method public timeWaterMark([B)Lcom/android/camera2/PortraitDepthMapExif$Builder;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->timeWaterMark:[B

    return-object p0
.end method

.method public timeWaterMarkLocation([I)Lcom/android/camera2/PortraitDepthMapExif$Builder;
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/camera2/PortraitDepthMapExif$Builder;->timeWaterMarkLocation:[I

    return-object p0
.end method
