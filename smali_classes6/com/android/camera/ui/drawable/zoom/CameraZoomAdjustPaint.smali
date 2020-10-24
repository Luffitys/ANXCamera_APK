.class public Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;
.super Lcom/android/camera/ui/drawable/CameraPaintBase;
.source ""


# static fields
.field private static final ANIM_NONE:I = 0x0

.field private static final ANIM_SLIDER_BACK:I = 0x5

.field private static final ANIM_ZOOM:I = 0x1

.field private static final RECT_WIDTH:I = 0x1e

.field private static final SLIDER_IMAGE_GAP:I = 0x14


# instance fields
.field private mAnimState:I

.field public mAvaliableWidth:F

.field private mBigCircleRadius:F

.field private mBreakpointWidth:F

.field private mClearPaint:Landroid/graphics/Paint;

.field private mCurrentCircleRadius:F

.field private mDegree:I

.field private mDrawableLeft:Landroid/graphics/drawable/Drawable;

.field private mDrawableRight:Landroid/graphics/drawable/Drawable;

.field private mLineEndPosition:Landroid/graphics/Point;

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineStartPosition:Landroid/graphics/Point;

.field private mMaxZoomRatio:F

.field private mMinZoomRatio:F

.field private mNormalCircleRadius:F

.field private mOrientation:I

.field public mSliderOriginalPosition:Landroid/graphics/Point;

.field private mSliderPaint:Landroid/graphics/Paint;

.field private mSliderPosition:Landroid/graphics/Point;

.field private mSliderTouchRect:Landroid/graphics/Rect;

.field private mSliderTouchUpPosition:Landroid/graphics/Point;

.field private mTextBaseLineY:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mViewHeight:I

.field private mViewSliderWidth:I

.field public mViewWidth:I

.field private mZoomLastColor:I

.field private mZoomLinePaint:Landroid/graphics/Paint;

.field private mZoomMidColor:I

.field private mZoomRatio:Ljava/lang/String;

.field private mZoomStartColor:I


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;-><init>(Landroid/content/Context;)V

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderOriginalPosition:Landroid/graphics/Point;

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchUpPosition:Landroid/graphics/Point;

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mAnimState:I

    invoke-static {}, Lcom/android/camera/Display;->getWindowWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewWidth:I

    iput p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDegree:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewSliderWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    const v0, 0x400b9581    # 2.181f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mBreakpointWidth:F

    const v0, 0x4202eb85    # 32.73f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const v1, 0x3fe8b439    # 1.818f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mNormalCircleRadius:F

    const v0, 0x421170a4    # 36.36f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mBigCircleRadius:F

    iget v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mNormalCircleRadius:F

    iput v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mCurrentCircleRadius:F

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewSliderWidth:I

    int-to-float v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v1, v4

    sub-float/2addr v3, v1

    iput v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mAvaliableWidth:F

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    iget v4, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 v5, v4, 0x2

    iput v5, v3, Landroid/graphics/Point;->y:I

    iput v5, v1, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewWidth:I

    div-int/lit8 v6, v5, 0x2

    div-int/lit8 v7, v2, 0x2

    sub-int/2addr v6, v7

    iput v6, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v6

    iput v2, v3, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderOriginalPosition:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    div-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/graphics/Point;->y:I

    iput v4, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v5, v5, 0x2

    iput v5, v2, Landroid/graphics/Point;->x:I

    iput v5, v1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mBigCircleRadius:F

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    invoke-virtual {v1, v0, p2, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int p2, v1, p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v0, p2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mTextBaseLineY:I

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomStartColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06018c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomMidColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06018b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLastColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f08048b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08048a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    add-int/lit8 p2, p2, -0x14

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, v1, -0x14

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    add-int/lit8 p2, p2, 0x14

    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, v1, 0x14

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v2, p0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private updateTextAndCircle(F)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    :goto_0
    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mBigCircleRadius:F

    iget v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mNormalCircleRadius:F

    sub-float v1, v0, v1

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mCurrentCircleRadius:F

    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDegree:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, v1, -0x14

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewWidth:I

    int-to-float v4, v0

    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    int-to-float v5, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v5, v1

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v6, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v7, v1

    iget-object v8, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderOriginalPosition:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v5, v1

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v6, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v7, v1

    iget-object v8, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderOriginalPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mBreakpointWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v5, v1, v2

    iget v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    sub-float v6, v1, v2

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderOriginalPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mBreakpointWidth:F

    div-float/2addr v2, v3

    add-float v7, v1, v2

    iget v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    add-float v8, v1, v2

    iget-object v9, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mClearPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v4, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mCurrentCircleRadius:F

    add-float/2addr v2, v4

    iget-object v5, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    sub-float/2addr v5, v4

    invoke-static {v1, v2, v5}, Lcom/android/camera/Util;->clamp(FFF)F

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mCurrentCircleRadius:F

    sub-float v2, v1, v2

    iget-object v4, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mBreakpointWidth:F

    sub-float v6, v2, v4

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    sub-float v7, v2, v4

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mCurrentCircleRadius:F

    add-float/2addr v2, v1

    iget-object v4, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    iget v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mBreakpointWidth:F

    add-float v8, v2, v3

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    add-float v9, v2, v3

    iget-object v10, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mClearPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mCurrentCircleRadius:F

    iget-object v4, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDegree:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v2, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomRatio:Ljava/lang/String;

    iget v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mTextBaseLineY:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDegree:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, v1, 0x14

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getSliderTouchRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getSpeed(I)F
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mNormalCircleRadius:F

    sub-float/2addr p1, v0

    iget p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mAvaliableWidth:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p0, v0

    sub-float/2addr p1, v0

    div-float/2addr p1, p0

    const p0, 0x3dcccccd    # 0.1f

    mul-float/2addr p1, p0

    return p1
.end method

.method protected initPaint(Landroid/content/Context;)V
    .locals 7

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mClearPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mClearPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    const v1, 0x3fe8b439    # 1.818f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    invoke-virtual {p1, v3, v4, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomStartColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mTextPaint:Landroid/graphics/Paint;

    const v1, 0x413a2d0e    # 11.636f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v3, v4, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public move(Landroid/graphics/Point;)V
    .locals 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mAnimState:I

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {p1, v2, v3}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    iput p1, v1, Landroid/graphics/Point;->x:I

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mBigCircleRadius:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mBigCircleRadius:F

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v0

    iget p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public reset()V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mTextPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mNormalCircleRadius:F

    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mCurrentCircleRadius:F

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewWidth:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchRect:Landroid/graphics/Rect;

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mBigCircleRadius:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mBigCircleRadius:F

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iput v4, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mAnimState:I

    return-void
.end method

.method public setCurrentZoomRatio(F)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/camera/HybridZoomingSystem;->toDecimal(F)F

    move-result p1

    float-to-int v1, p1

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v2, p1

    mul-int/lit8 v3, v1, 0xa

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :goto_0
    const-string p1, "X"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomRatio:Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomStartColor:I

    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDegree:I

    return-void
.end method

.method public setZoomRange(FF)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mMinZoomRatio:F

    iput p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mMaxZoomRatio:F

    return-void
.end method

.method public startSliderBackAnimation()V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mAnimState:I

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchUpPosition:Landroid/graphics/Point;

    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    iput p0, v0, Landroid/graphics/Point;->x:I

    return-void
.end method

.method public updateSliderPositionForBackAnim(FZ)V
    .locals 5

    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mAnimState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->updateTextAndCircle(F)V

    :cond_1
    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchUpPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderOriginalPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/graphics/Point;->x:I

    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchRect:Landroid/graphics/Rect;

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mBigCircleRadius:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mBigCircleRadius:F

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    const/4 v4, 0x0

    invoke-virtual {p2, v1, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2

    iput v4, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mAnimState:I

    :cond_2
    return-void
.end method

.method public updateSliderTouchScaleAnimation(F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->updateTextAndCircle(F)V

    return-void
.end method
