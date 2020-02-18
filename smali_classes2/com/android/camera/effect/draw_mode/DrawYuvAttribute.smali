.class public Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawAttribute;
.source "DrawYuvAttribute.java"


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

.field public mJpegQuality:I

.field public mJpegRotation:I

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

.field public mWaterInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/watermark/WaterMarkData;",
            ">;"
        }
    .end annotation
.end field

.field public mYuvImage:Lcom/android/camera/effect/MiYuvImage;


# direct methods
.method public constructor <init>(Landroid/media/Image;Landroid/util/Size;Landroid/util/Size;IIIFJZZLjava/lang/String;Ljava/lang/String;Lcom/android/camera/effect/EffectController$EffectRectAttribute;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/Image;",
            "Landroid/util/Size;",
            "Landroid/util/Size;",
            "IIIFJZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/camera/effect/EffectController$EffectRectAttribute;",
            "Ljava/util/List<",
            "Lcom/android/camera/watermark/WaterMarkData;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    iput-object p2, p0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPreviewSize:Landroid/util/Size;

    iput-object p3, p0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    iput p4, p0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mEffectIndex:I

    iput p5, p0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOrientation:I

    iput p6, p0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    iput p7, p0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mShootRotation:F

    iput-wide p8, p0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mDate:J

    iput-boolean p10, p0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mMirror:Z

    iput-boolean p11, p0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mApplyWaterMark:Z

    iput-object p12, p0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mTiltShiftMode:Ljava/lang/String;

    iput-object p13, p0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mTimeWatermark:Ljava/lang/String;

    iput-object p14, p0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    const/16 p1, 0xb

    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    iput-object p15, p0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mWaterInfos:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mDataOfTheRegionUnderWatermarks:[B

    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mCoordinatesOfTheRegionUnderWatermarks:[I

    const/16 p1, 0x61

    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegQuality:I

    return-void
.end method


# virtual methods
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
