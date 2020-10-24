.class public Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawAttribute;
.source ""


# instance fields
.field public mApplyWaterMark:Z

.field public mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

.field public mBlockHeight:I

.field public mBlockWidth:I

.field public mCoordinatesOfTheRegionUnderWatermarks:[I

.field public mDataOfTheRegionUnderWatermarks:[B

.field public mDate:J

.field public mEffectIndex:I

.field public mImage:Landroid/media/Image;

.field public mIsHeif:Z

.field public mJpegQuality:I

.field public mJpegRotation:I

.field public mMajorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

.field public mMinorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

.field public mMirror:Z

.field public mOffsetUV:I

.field public mOffsetY:I

.field public mOrientation:I

.field public mOriginalSize:Landroid/util/Size;

.field public mOutputSize:Landroid/util/Size;

.field public mPictureSize:Landroid/util/Size;

.field public mPreviewSize:Landroid/util/Size;

.field public mShootRotation:F

.field public mTiltShiftMode:Ljava/lang/String;

.field public mTimeWatermark:Ljava/lang/String;

.field public mTransform:[F

.field public mWaterInfos:Ljava/util/List;

.field public mX:I

.field public mY:I

.field public mYuvImage:Lcom/android/camera/effect/MiYuvImage;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    return-void
.end method

.method public constructor <init>(Landroid/media/Image;Landroid/util/Size;Landroid/util/Size;IIIFJZZZLjava/lang/String;Ljava/lang/String;Lcom/android/camera/effect/EffectController$EffectRectAttribute;Ljava/util/List;Lcom/android/camera/aiwatermark/data/WatermarkItem;Lcom/android/camera/aiwatermark/data/WatermarkItem;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPreviewSize:Landroid/util/Size;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    move v1, p4

    iput v1, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mEffectIndex:I

    move v1, p5

    iput v1, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOrientation:I

    move v1, p6

    iput v1, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    move v1, p7

    iput v1, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mShootRotation:F

    move-wide v1, p8

    iput-wide v1, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mDate:J

    move v1, p10

    iput-boolean v1, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mMirror:Z

    move v1, p11

    iput-boolean v1, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mApplyWaterMark:Z

    move v1, p12

    iput-boolean v1, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mIsHeif:Z

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mTiltShiftMode:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mTimeWatermark:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    const/16 v1, 0xb

    iput v1, v0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mWaterInfos:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mDataOfTheRegionUnderWatermarks:[B

    iput-object v1, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mCoordinatesOfTheRegionUnderWatermarks:[I

    const/16 v1, 0x61

    iput v1, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegQuality:I

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mMajorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mMinorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    return-void
.end method


# virtual methods
.method public init(Lcom/android/camera/effect/MiYuvImage;Landroid/util/Size;)Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mYuvImage:Lcom/android/camera/effect/MiYuvImage;

    iput-object p2, p0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPreviewSize:Landroid/util/Size;

    iput-object p2, p0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    return-object p0
.end method

.method public isOutputSquare()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOutputSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object p0, p0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOutputSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updatePosition(II)V
    .locals 0

    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mX:I

    iput p2, p0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mY:I

    return-void
.end method

.method public updateZoom([F)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mTransform:[F

    return-void
.end method
