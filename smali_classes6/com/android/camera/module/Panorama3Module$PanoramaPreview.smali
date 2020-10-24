.class Lcom/android/camera/module/Panorama3Module$PanoramaPreview;
.super Lcom/android/camera/panorama/PanoramaState;
.source ""


# instance fields
.field private mDetector:Lcom/android/camera/panorama/PositionDetector;

.field private mHasSubmit:Z

.field private mPreviewImgHeight:I

.field private mPreviewImgWidth:I

.field private mThumbnailViewSize:Landroid/util/Size;

.field private final mUiUpdateRunnable:Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;

.field final synthetic this$0:Lcom/android/camera/module/Panorama3Module;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Panorama3Module;Landroid/util/Size;)V
    .locals 20
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/panorama/PanoramaState;-><init>()V

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mPreviewImgWidth:I

    iput v2, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mPreviewImgHeight:I

    new-instance v3, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;-><init>(Lcom/android/camera/module/Panorama3Module$PanoramaPreview;Lcom/android/camera/module/Panorama3Module$1;)V

    iput-object v3, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mUiUpdateRunnable:Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;

    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mThumbnailViewSize:Landroid/util/Size;

    invoke-static/range {p1 .. p1}, Lcom/android/camera/module/Panorama3Module;->access$3100(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_rotation:I

    rem-int/lit16 v4, v4, 0xb4

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/util/Size;->getWidth()I

    move-result v4

    iput v4, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mPreviewImgWidth:I

    invoke-virtual/range {p2 .. p2}, Landroid/util/Size;->getHeight()I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/util/Size;->getHeight()I

    move-result v4

    iput v4, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mPreviewImgWidth:I

    invoke-virtual/range {p2 .. p2}, Landroid/util/Size;->getWidth()I

    move-result v3

    :goto_0
    iput v3, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mPreviewImgHeight:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPreviewImgWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mPreviewImgWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mPreviewImgHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mPreviewImgHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Panorama3Module"

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/android/camera/module/Panorama3Module;->access$600(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3;

    move-result-object v3

    iget v5, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mPreviewImgWidth:I

    iget v6, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mPreviewImgHeight:I

    invoke-virtual {v3, v5, v6}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setPreviewImage(II)I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    const-string v2, "setPreviewImage error ret:0x%08X"

    invoke-static {v5, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xb0

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    if-eqz v2, :cond_2

    new-instance v13, Lcom/android/camera/panorama/PositionDetector;

    invoke-static/range {p1 .. p1}, Lcom/android/camera/module/Panorama3Module;->access$3100(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    move-result-object v4

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->getPreivewContainer()Landroid/view/ViewGroup;

    move-result-object v5

    const/4 v6, 0x0

    iget v7, v1, Lcom/android/camera/module/BaseModule;->mCameraDisplayOrientation:I

    invoke-static/range {p1 .. p1}, Lcom/android/camera/module/Panorama3Module;->access$2100(Lcom/android/camera/module/Panorama3Module;)I

    move-result v8

    invoke-static/range {p1 .. p1}, Lcom/android/camera/module/Panorama3Module;->access$2200(Lcom/android/camera/module/Panorama3Module;)I

    move-result v9

    invoke-static/range {p1 .. p1}, Lcom/android/camera/module/Panorama3Module;->access$3400(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/DirectionFunction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/panorama/DirectionFunction;->getDirection()I

    move-result v10

    invoke-static/range {p1 .. p1}, Lcom/android/camera/module/Panorama3Module;->access$3200(Lcom/android/camera/module/Panorama3Module;)I

    move-result v11

    invoke-static/range {p1 .. p1}, Lcom/android/camera/module/Panorama3Module;->access$2600(Lcom/android/camera/module/Panorama3Module;)I

    move-result v12

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lcom/android/camera/panorama/PositionDetector;-><init>(Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;Landroid/view/ViewGroup;ZIIIIII)V

    iput-object v13, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mDetector:Lcom/android/camera/panorama/PositionDetector;

    invoke-static/range {p1 .. p1}, Lcom/android/camera/module/Panorama3Module;->access$700(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/RoundDetector;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Lcom/android/camera/module/Panorama3Module;->access$3100(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    move-result-object v2

    iget v15, v2, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_rotation:I

    invoke-static/range {p1 .. p1}, Lcom/android/camera/module/Panorama3Module;->access$4100(Lcom/android/camera/module/Panorama3Module;)F

    move-result v17

    invoke-static/range {p1 .. p1}, Lcom/android/camera/module/Panorama3Module;->access$4200(Lcom/android/camera/module/Panorama3Module;)F

    move-result v18

    const/16 v19, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v19}, Lcom/android/camera/panorama/RoundDetector;->setStartPosition(IIFFZ)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->allocateDisplayBuffers()V

    :cond_2
    return-void
.end method

.method static synthetic access$5500(Lcom/android/camera/module/Panorama3Module$PanoramaPreview;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->attachEnd(I)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/camera/module/Panorama3Module$PanoramaPreview;)Lcom/android/camera/panorama/PositionDetector;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mDetector:Lcom/android/camera/panorama/PositionDetector;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/android/camera/module/Panorama3Module$PanoramaPreview;)Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mUiUpdateRunnable:Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;

    return-object p0
.end method

.method private allocateDisplayBuffers()V
    .locals 7

    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$4300()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v1}, Lcom/android/camera/module/Panorama3Module;->access$4400(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v1}, Lcom/android/camera/module/Panorama3Module;->access$4400(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v3, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mPreviewImgWidth:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v1}, Lcom/android/camera/module/Panorama3Module;->access$4400(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v3, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mPreviewImgHeight:I

    if-eq v1, v3, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v1}, Lcom/android/camera/module/Panorama3Module;->access$4400(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v1, v2}, Lcom/android/camera/module/Panorama3Module;->access$4402(Lcom/android/camera/module/Panorama3Module;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v1}, Lcom/android/camera/module/Panorama3Module;->access$4500(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v1}, Lcom/android/camera/module/Panorama3Module;->access$4500(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mThumbnailViewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v1}, Lcom/android/camera/module/Panorama3Module;->access$4500(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v3, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mThumbnailViewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-eq v1, v3, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v1}, Lcom/android/camera/module/Panorama3Module;->access$4500(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v1, v2}, Lcom/android/camera/module/Panorama3Module;->access$4502(Lcom/android/camera/module/Panorama3Module;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v1}, Lcom/android/camera/module/Panorama3Module;->access$4400(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    iget v2, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mPreviewImgWidth:I

    iget v3, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mPreviewImgHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/module/Panorama3Module;->access$4402(Lcom/android/camera/module/Panorama3Module;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_4
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v1}, Lcom/android/camera/module/Panorama3Module;->access$4500(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mThumbnailViewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mThumbnailViewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/module/Panorama3Module;->access$4502(Lcom/android/camera/module/Panorama3Module;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v2}, Lcom/android/camera/module/Panorama3Module;->access$4500(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v3}, Lcom/android/camera/module/Panorama3Module;->access$2100(Lcom/android/camera/module/Panorama3Module;)I

    move-result v3

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v3}, Lcom/android/camera/module/Panorama3Module;->access$2200(Lcom/android/camera/module/Panorama3Module;)I

    move-result v3

    div-int/2addr v2, v3

    const/4 v3, 0x2

    div-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/android/camera/module/Panorama3Module;->access$4602(Lcom/android/camera/module/Panorama3Module;I)I

    const-string v1, "Panorama3Module"

    const-string v2, "mDispPreviewImage %s x %s mPicture %s x %s mAttachPosOffsetY %s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v6}, Lcom/android/camera/module/Panorama3Module;->access$4500(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v6}, Lcom/android/camera/module/Panorama3Module;->access$4500(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v5}, Lcom/android/camera/module/Panorama3Module;->access$2100(Lcom/android/camera/module/Panorama3Module;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x3

    iget-object v5, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v5}, Lcom/android/camera/module/Panorama3Module;->access$2200(Lcom/android/camera/module/Panorama3Module;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x4

    iget-object v5, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v5}, Lcom/android/camera/module/Panorama3Module;->access$4600(Lcom/android/camera/module/Panorama3Module;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v3}, Lcom/android/camera/module/Panorama3Module;->access$4500(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v1, v2}, Lcom/android/camera/module/Panorama3Module;->access$4702(Lcom/android/camera/module/Panorama3Module;Landroid/graphics/Canvas;)Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-static {v1, v2}, Lcom/android/camera/module/Panorama3Module;->access$4802(Lcom/android/camera/module/Panorama3Module;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {p0}, Lcom/android/camera/module/Panorama3Module;->access$4800(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Paint;

    move-result-object p0

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private attachEnd(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$5000(Lcom/android/camera/module/Panorama3Module;)V

    iget-object v0, p0, Lcom/android/camera/panorama/PanoramaState;->listener:Lcom/android/camera/panorama/PanoramaState$IPanoramaStateEventListener;

    invoke-interface {v0, p0, p1}, Lcom/android/camera/panorama/PanoramaState$IPanoramaStateEventListener;->requestEnd(Lcom/android/camera/panorama/PanoramaState;I)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    const/4 p1, 0x1

    const-string v0, "stop_capture_un_expect"

    invoke-static {p0, p1, v0}, Lcom/android/camera/module/Panorama3Module;->access$5100(Lcom/android/camera/module/Panorama3Module;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onSaveImage(Lcom/android/camera/panorama/CaptureImage;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0, p1}, Lcom/android/camera/module/Panorama3Module;->access$3700(Lcom/android/camera/module/Panorama3Module;Lcom/android/camera/panorama/CaptureImage;)V

    iget-boolean p1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mHasSubmit:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string p1, "Panorama3Module"

    const-string v1, "submit PreviewAttach"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {p1}, Lcom/android/camera/module/Panorama3Module;->access$3900(Lcom/android/camera/module/Panorama3Module;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;-><init>(Lcom/android/camera/module/Panorama3Module$PanoramaPreview;Lcom/android/camera/module/Panorama3Module$1;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iput-boolean v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mHasSubmit:Z

    :cond_0
    return v0
.end method
