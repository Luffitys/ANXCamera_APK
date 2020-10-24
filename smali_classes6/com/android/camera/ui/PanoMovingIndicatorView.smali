.class public Lcom/android/camera/ui/PanoMovingIndicatorView;
.super Landroid/view/View;
.source ""


# static fields
.field private static final DRAW_TAIL:I = 0x1

.field private static final MAX_GAP:I

.field private static final MAX_SPEED_THRESHOLD:I = 0x1b58

.field private static final MOVING_BOTTOM_TO_TOP:I = 0x2

.field private static final MOVING_LEFT_TO_RIGHT:I = 0x0

.field private static final MOVING_RIGHT_TO_LEFT:I = 0x1

.field private static final MOVING_TOP_TO_BOTTOM:I = 0x3

.field private static final SHOW_ALIGN_THRESHOLD:F = 0.25f

.field private static final SPEED_DEVIATION:I

.field private static final SPEED_FILTER_THRESHOLD:F = 0.1f

.field private static final STONE_WIDTH:I = 0x16

.field public static final TAG:Ljava/lang/String;

.field private static sBlockWidth:[I

.field private static sGapWidth:[I

.field private static sTimesMap:Ljava/util/HashMap;


# instance fields
.field private mArrowMargin:I

.field private mCurrentFramePos:Landroid/graphics/Point;

.field private mDirection:I

.field private mDisplayCenterY:I

.field private mFast:Z

.field private mFilterMoveSpeed:I

.field private mHalfStoneHeight:I

.field private mHandler:Landroid/os/Handler;

.field private mLatestSpeed:I

.field private mMovingDirectionIc:Lcom/android/camera/ui/drawable/TriangleIndicatorDrawable;

.field private mOffsetX:I

.field private mOffsetY:I

.field protected mOrientation:I

.field private mPointGap:F

.field private mPreviewCenterY:I

.field private mStateChangeTrigger:Lcom/android/camera/ui/PanoMovingIndicatorView$StateChangeTrigger;

.field private mTailPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-class v0, Lcom/android/camera/ui/PanoMovingIndicatorView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/PanoMovingIndicatorView;->TAG:Ljava/lang/String;

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/PanoMovingIndicatorView;->MAX_GAP:I

    const/16 v1, 0x9c4

    div-int/2addr v1, v0

    sput v1, Lcom/android/camera/ui/PanoMovingIndicatorView;->SPEED_DEVIATION:I

    const/4 v0, 0x3

    new-array v1, v0, [I

    const v2, 0x3f2b851f    # 0.67f

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    const/4 v5, 0x1

    aput v4, v1, v5

    const v4, 0x4055c28f    # 3.34f

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    const/4 v6, 0x2

    aput v4, v1, v6

    sput-object v1, Lcom/android/camera/ui/PanoMovingIndicatorView;->sBlockWidth:[I

    new-array v0, v0, [I

    const v1, 0x402ae148    # 2.67f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    aput v1, v0, v3

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    aput v1, v0, v5

    const v1, 0x3fab851f    # 1.34f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    aput v1, v0, v6

    sput-object v0, Lcom/android/camera/ui/PanoMovingIndicatorView;->sGapWidth:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/android/camera/ui/PanoMovingIndicatorView;->sTimesMap:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/ui/PanoMovingIndicatorView;->sTimesMap:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mCurrentFramePos:Landroid/graphics/Point;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070452

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mArrowMargin:I

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mPointGap:F

    new-instance p2, Lcom/android/camera/ui/PanoMovingIndicatorView$StateChangeTrigger;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Lcom/android/camera/ui/PanoMovingIndicatorView;->sTimesMap:Ljava/util/HashMap;

    invoke-direct {p2, p0, v0, v1}, Lcom/android/camera/ui/PanoMovingIndicatorView$StateChangeTrigger;-><init>(Lcom/android/camera/ui/PanoMovingIndicatorView;Ljava/lang/Object;Ljava/util/HashMap;)V

    iput-object p2, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mStateChangeTrigger:Lcom/android/camera/ui/PanoMovingIndicatorView$StateChangeTrigger;

    new-instance p2, Lcom/android/camera/ui/PanoMovingIndicatorView$1;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/PanoMovingIndicatorView$1;-><init>(Lcom/android/camera/ui/PanoMovingIndicatorView;)V

    iput-object p2, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/camera/ui/drawable/TriangleIndicatorDrawable;

    invoke-direct {p2}, Lcom/android/camera/ui/drawable/TriangleIndicatorDrawable;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mMovingDirectionIc:Lcom/android/camera/ui/drawable/TriangleIndicatorDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070453

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/camera/ui/drawable/TriangleIndicatorDrawable;->setWidth(I)V

    iget-object p2, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mMovingDirectionIc:Lcom/android/camera/ui/drawable/TriangleIndicatorDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070451

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/camera/ui/drawable/TriangleIndicatorDrawable;->setHeight(I)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mTailPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070457

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mHalfStoneHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/PanoMovingIndicatorView;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mLatestSpeed:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/PanoMovingIndicatorView;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/PanoMovingIndicatorView;->getPointGap(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/PanoMovingIndicatorView;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mPointGap:F

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/PanoMovingIndicatorView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/PanoMovingIndicatorView;->filterSpeed(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/ui/PanoMovingIndicatorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/PanoMovingIndicatorView;->applyNewGap()V

    return-void
.end method

.method private applyNewGap()V
    .locals 1

    iget v0, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mFilterMoveSpeed:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/PanoMovingIndicatorView;->getPointGap(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mPointGap:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private filterSpeed(I)V
    .locals 2

    iget v0, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mFilterMoveSpeed:I

    int-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    int-to-float p1, p1

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mFilterMoveSpeed:I

    return-void
.end method

.method private getPointGap(I)I
    .locals 1

    const/16 p0, 0x1194

    if-le p1, p0, :cond_0

    sget v0, Lcom/android/camera/ui/PanoMovingIndicatorView;->MAX_GAP:I

    sub-int/2addr p1, p0

    sget p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->SPEED_DEVIATION:I

    add-int/2addr p1, p0

    mul-int/2addr v0, p1

    div-int/lit16 v0, v0, 0x9c4

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method


# virtual methods
.method public isFar()Z
    .locals 6

    iget-object v0, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mCurrentFramePos:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_3

    iget v1, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mPreviewCenterY:I

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget v1, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mDirection:I

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mCurrentFramePos:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    :goto_1
    iget v1, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mPreviewCenterY:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x3e800000    # 0.25f

    iget v5, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mPreviewCenterY:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_3

    sget-object v1, Lcom/android/camera/ui/PanoMovingIndicatorView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "too far current is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " refy is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mPreviewCenterY:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    :goto_2
    return v2
.end method

.method public isTooFast()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mPointGap:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mCurrentFramePos:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_d

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ne v1, v3, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v3, v0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mArrowMargin:I

    iget-object v8, v0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mMovingDirectionIc:Lcom/android/camera/ui/drawable/TriangleIndicatorDrawable;

    iget v4, v0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mDirection:I

    const/4 v9, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x2

    if-nez v4, :cond_1

    iget v4, v0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mOffsetX:I

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    :goto_0
    move v13, v1

    move v14, v2

    goto :goto_1

    :cond_1
    if-ne v10, v4, :cond_2

    iget v4, v0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mOffsetX:I

    add-int/2addr v4, v3

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_2
    if-ne v12, v4, :cond_3

    sub-int/2addr v1, v3

    goto :goto_0

    :cond_3
    if-ne v9, v4, :cond_4

    add-int/2addr v1, v3

    goto :goto_0

    :cond_4
    move v14, v2

    move v13, v11

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v1, v14

    int-to-float v2, v13

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, v0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mDirection:I

    if-ne v10, v1, :cond_5

    const/high16 v1, 0x43340000    # 180.0f

    :goto_2
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_3

    :cond_5
    if-ne v1, v12, :cond_6

    const/high16 v1, 0x43870000    # 270.0f

    goto :goto_2

    :cond_6
    if-ne v1, v9, :cond_7

    const/high16 v1, 0x42b40000    # 90.0f

    goto :goto_2

    :cond_7
    :goto_3
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    neg-int v2, v2

    div-int/2addr v2, v12

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/2addr v3, v12

    invoke-virtual {v8, v1, v2, v11, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float v1, v1

    const/high16 v2, 0x41b00000    # 22.0f

    iget v3, v0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mPointGap:F

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    float-to-int v2, v3

    move v15, v1

    move v6, v2

    move v5, v11

    :goto_4
    sget-object v1, Lcom/android/camera/ui/PanoMovingIndicatorView;->sGapWidth:[I

    array-length v1, v1

    if-ge v5, v1, :cond_9

    if-lez v6, :cond_9

    int-to-float v2, v15

    iget v1, v0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mHalfStoneHeight:I

    neg-int v3, v1

    int-to-float v3, v3

    sget-object v4, Lcom/android/camera/ui/PanoMovingIndicatorView;->sBlockWidth:[I

    aget v4, v4, v5

    add-int/2addr v4, v15

    int-to-float v4, v4

    int-to-float v1, v1

    iget-object v11, v0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mTailPaint:Landroid/graphics/Paint;

    move/from16 v16, v1

    move-object/from16 v1, p1

    move/from16 v17, v5

    move/from16 v5, v16

    move v9, v6

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sget-object v1, Lcom/android/camera/ui/PanoMovingIndicatorView;->sBlockWidth:[I

    aget v1, v1, v17

    add-int/2addr v15, v1

    sget-object v1, Lcom/android/camera/ui/PanoMovingIndicatorView;->sGapWidth:[I

    aget v1, v1, v17

    if-lt v9, v1, :cond_8

    add-int/lit8 v15, v15, 0x8

    add-int/lit8 v6, v9, -0x8

    goto :goto_5

    :cond_8
    add-int/2addr v15, v9

    const/4 v6, 0x0

    :goto_5
    add-int/lit8 v5, v17, 0x1

    const/4 v9, 0x3

    const/4 v11, 0x0

    goto :goto_4

    :cond_9
    int-to-float v2, v15

    iget v1, v0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mHalfStoneHeight:I

    neg-int v1, v1

    int-to-float v3, v1

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v4, v1

    iget v1, v0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mHalfStoneHeight:I

    int-to-float v5, v1

    iget-object v6, v0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mTailPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, v0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mDirection:I

    if-ne v10, v0, :cond_a

    const/high16 v0, -0x3ccc0000    # -180.0f

    :goto_6
    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_7

    :cond_a
    if-ne v0, v12, :cond_b

    const/high16 v0, -0x3c790000    # -270.0f

    goto :goto_6

    :cond_b
    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    const/high16 v0, -0x3d4c0000    # -90.0f

    goto :goto_6

    :cond_c
    :goto_7
    neg-int v0, v14

    int-to-float v0, v0

    neg-int v1, v13

    int-to-float v1, v1

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_d
    :goto_8
    return-void
.end method

.method public setDisplayCenterY(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mDisplayCenterY:I

    return-void
.end method

.method public setMovingAttribute(III)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const/4 v2, 0x6

    if-eq p1, v2, :cond_0

    goto :goto_1

    :cond_0
    iput v1, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mDirection:I

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mDirection:I

    goto :goto_1

    :cond_3
    iput v0, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mDirection:I

    :goto_1
    iput p2, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mOffsetX:I

    iput p3, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mOffsetY:I

    iput-boolean v0, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mFast:Z

    const/16 p1, 0x1194

    iput p1, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mFilterMoveSpeed:I

    iget-object p1, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mStateChangeTrigger:Lcom/android/camera/ui/PanoMovingIndicatorView$StateChangeTrigger;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/PanoMovingIndicatorView$StateChangeTrigger;->setCurrentState(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mCurrentFramePos:Landroid/graphics/Point;

    const/high16 p2, -0x80000000

    invoke-virtual {p1, p2, p2}, Landroid/graphics/Point;->set(II)V

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mPointGap:F

    return-void
.end method

.method public setPosition(Landroid/graphics/Point;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mCurrentFramePos:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Point;->set(II)V

    iput p2, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mPreviewCenterY:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTooFast(ZI)V
    .locals 3

    sget-object v0, Lcom/android/camera/ui/PanoMovingIndicatorView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTooFast moveSpeed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fastFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x1b58

    if-le p2, p1, :cond_0

    move p2, p1

    :cond_0
    iput p2, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mLatestSpeed:I

    invoke-direct {p0, p2}, Lcom/android/camera/ui/PanoMovingIndicatorView;->getPointGap(I)I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mPointGap:F

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/camera/ui/PanoMovingIndicatorView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
