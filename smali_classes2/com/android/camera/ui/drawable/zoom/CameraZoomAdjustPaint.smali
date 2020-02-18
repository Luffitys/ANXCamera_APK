.class public Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;
.super Lcom/android/camera/ui/drawable/CameraPaintBase;
.source "CameraZoomAdjustPaint.java"


# static fields
.field private static final ANIM_NONE:I = 0x0

.field private static final ANIM_SLIDER_BACK:I = 0x5

.field private static final ANIM_ZOOM:I = 0x1

.field private static final OVER_FOR_ROUND:I = 0x14

.field private static final RECT_WIDTH:I = 0x23

.field public static SLIDER_HEIGHT:I

.field private static TOUCH_RECT_WIDTH:I


# instance fields
.field private mAnimState:I

.field private mCurrentZoomRatio:F

.field public mIsHorizontal:Z

.field private mLineEndPosition:Landroid/graphics/Point;

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineStartPosition:Landroid/graphics/Point;

.field private mMaxZoomRatio:F

.field private mMinZoomRatio:F

.field private mOrientation:I

.field public mSliderOriginalPosition:Landroid/graphics/Point;

.field private mSliderPaint:Landroid/graphics/Paint;

.field private mSliderPosition:Landroid/graphics/Point;

.field private mSliderTouchRect:Landroid/graphics/Rect;

.field private mSliderTouchUpPosition:Landroid/graphics/Point;

.field private mZoomLastColor:I

.field private mZoomLinePaint:Landroid/graphics/Paint;

.field private mZoomMidColor:I

.field private mZoomStartColor:I


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderOriginalPosition:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchUpPosition:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mAnimState:I

    iput-boolean p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mIsHorizontal:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0701ce

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/lit8 p2, p2, -0x14

    sput p2, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->SLIDER_HEIGHT:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f0701d1

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sput p2, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->TOUCH_RECT_WIDTH:I

    iget-boolean p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mIsHorizontal:Z

    const/16 v2, 0xa

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    sget v4, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->TOUCH_RECT_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/graphics/Point;->y:I

    iput v4, p2, Landroid/graphics/Point;->y:I

    iput v2, p2, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr p2, v2

    iput p2, v3, Landroid/graphics/Point;->x:I

    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderOriginalPosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    sget v2, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->TOUCH_RECT_WIDTH:I

    div-int/lit8 v3, v2, 0x2

    iput v3, v1, Landroid/graphics/Point;->y:I

    iput v3, p2, Landroid/graphics/Point;->y:I

    sget v3, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->SLIDER_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/graphics/Point;->x:I

    iput v3, p2, Landroid/graphics/Point;->x:I

    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v2, 0x2

    sub-int v3, v1, v3

    add-int/2addr v1, v2

    invoke-virtual {p2, v3, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    sget v4, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->TOUCH_RECT_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/graphics/Point;->x:I

    iput v4, p2, Landroid/graphics/Point;->x:I

    iput v2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr p2, v2

    iput p2, v3, Landroid/graphics/Point;->y:I

    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderOriginalPosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    sget v2, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->TOUCH_RECT_WIDTH:I

    div-int/lit8 v3, v2, 0x2

    iput v3, v1, Landroid/graphics/Point;->x:I

    iput v3, p2, Landroid/graphics/Point;->x:I

    sget v3, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->SLIDER_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/graphics/Point;->y:I

    iput v3, p2, Landroid/graphics/Point;->y:I

    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v3, v2, 0x2

    sub-int v3, v1, v3

    add-int/2addr v1, v2

    invoke-virtual {p2, v0, v3, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06006c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomStartColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06006b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomMidColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06006a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLastColor:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mCurrentZoomRatio:F

    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 12

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iget v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mCurrentZoomRatio:F

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mMinZoomRatio:F

    cmpg-float v2, v1, v2

    const/4 v3, 0x1

    const/16 v4, 0x50

    const/4 v5, -0x1

    if-gtz v2, :cond_1

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mAnimState:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_1

    :cond_1
    float-to-double v6, v1

    const-wide v8, 0x3fe6666666666666L    # 0.7

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mMaxZoomRatio:F

    float-to-double v10, v2

    mul-double/2addr v10, v8

    cmpg-double v6, v6, v10

    if-gtz v6, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomStartColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    :cond_2
    float-to-double v6, v1

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    float-to-double v10, v2

    mul-double/2addr v10, v8

    cmpg-double v6, v6, v10

    if-gez v6, :cond_4

    const v6, 0x3f333333    # 0.7f

    mul-float v7, v2, v6

    sub-float/2addr v1, v7

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v7, v2

    mul-float/2addr v2, v6

    sub-float/2addr v7, v2

    div-float/2addr v1, v7

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomMidColor:I

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v1, v6

    if-gtz v6, :cond_3

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomStartColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v6, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomMidColor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v2, v6}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_4
    const v6, 0x3f666666    # 0.9f

    mul-float v7, v2, v6

    sub-float/2addr v1, v7

    mul-float/2addr v6, v2

    sub-float/2addr v2, v6

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomMidColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v6, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLastColor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v2, v6}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_0
    move v0, v3

    :goto_1
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

    iget v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mCurrentZoomRatio:F

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mMaxZoomRatio:F

    iget v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mMinZoomRatio:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    sget v2, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->SLIDER_HEIGHT:I

    int-to-float v3, v2

    mul-float/2addr v1, v3

    iget-boolean v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mIsHorizontal:Z

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v3, :cond_6

    add-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    sub-float/2addr v2, v1

    mul-float/2addr v2, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    sget v3, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->SLIDER_HEIGHT:I

    add-int/lit8 v3, v3, 0x14

    int-to-float v3, v3

    add-float/2addr v3, v1

    mul-float/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v9

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v8, v0

    int-to-float v10, v0

    iget-object v11, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v2, v0, -0x23

    int-to-float v4, v2

    int-to-float v5, v1

    add-int/lit8 v0, v0, 0x23

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    sub-float/2addr v2, v1

    mul-float/2addr v2, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    sget v3, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->SLIDER_HEIGHT:I

    add-int/lit8 v3, v3, 0x14

    int-to-float v3, v3

    add-float/2addr v3, v1

    mul-float/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v10

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v7, v0

    int-to-float v9, v0

    iget-object v11, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_7
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v2, v1, -0x23

    int-to-float v4, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v0

    add-int/lit8 v1, v1, 0x23

    int-to-float v6, v1

    int-to-float v7, v0

    iget-object v8, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_2
    return-void
.end method

.method public getSliderTouchRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method protected initPaint(Landroid/content/Context;)V
    .locals 4

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    const/16 v1, 0x50

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    const p1, -0xff0100

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public move(Landroid/graphics/Point;)V
    .locals 4

    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mAnimState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    iput v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mAnimState:I

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mIsHorizontal:Z

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {p1, v2, v3}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->x:I

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    sget v0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->TOUCH_RECT_WIDTH:I

    div-int/lit8 v2, v0, 0x2

    sub-int v2, p0, v2

    add-int/2addr p0, v0

    invoke-virtual {p1, v2, v1, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {p1, v2, v3}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->y:I

    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    sget v0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->TOUCH_RECT_WIDTH:I

    div-int/lit8 v2, v0, 0x2

    sub-int v2, p0, v2

    add-int/2addr p0, v0

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mMinZoomRatio:F

    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mCurrentZoomRatio:F

    return-void
.end method

.method public setCurrentZoomRatio(F)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mCurrentZoomRatio:F

    return-void
.end method

.method public setZoomRange(FF)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mMinZoomRatio:F

    iput p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mMaxZoomRatio:F

    return-void
.end method

.method public startSliderBackAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mAnimState:I

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mIsHorizontal:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchUpPosition:Landroid/graphics/Point;

    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    iput p0, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchUpPosition:Landroid/graphics/Point;

    iget-object p0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    iput p0, v0, Landroid/graphics/Point;->y:I

    :goto_0
    return-void
.end method

.method public updateSliderPositionForBackAnim(F)V
    .locals 6

    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mAnimState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mIsHorizontal:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    sub-float v3, v2, p1

    iget-object v4, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchUpPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderOriginalPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sget v4, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->TOUCH_RECT_WIDTH:I

    div-int/lit8 v5, v4, 0x2

    sub-int v5, v0, v5

    add-int/2addr v0, v4

    invoke-virtual {v3, v5, v1, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    sub-float v3, v2, p1

    iget-object v4, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchUpPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderOriginalPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sget v4, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->TOUCH_RECT_WIDTH:I

    div-int/lit8 v5, v4, 0x2

    sub-int v5, v0, v5

    add-int/2addr v0, v4

    invoke-virtual {v3, v1, v5, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    cmpl-float p1, p1, v2

    if-ltz p1, :cond_2

    iput v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mAnimState:I

    :cond_2
    return-void
.end method
