.class public Lcom/miui/internal/widget/GuidePopupView;
.super Landroid/widget/FrameLayout;
.source "GuidePopupView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/GuidePopupView$WrapperOnClickListener;
    }
.end annotation


# static fields
.field public static final ARROW_BOTTOM_LEFT_MODE:I = 0x7

.field public static final ARROW_BOTTOM_MODE:I = 0x0

.field public static final ARROW_BOTTOM_RIGHT_MODE:I = 0x5

.field public static final ARROW_LEFT_MODE:I = 0x3

.field public static final ARROW_NONE_MODE:I = -0x1

.field public static final ARROW_RIGHT_MODE:I = 0x2

.field public static final ARROW_TOP_LEFT_MODE:I = 0x4

.field public static final ARROW_TOP_MODE:I = 0x1

.field public static final ARROW_TOP_RIGHT_MODE:I = 0x6


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mAnchorHeight:I

.field private mAnchorLocationX:I

.field private mAnchorLocationY:I

.field private mAnchorWidth:I

.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mArrowMode:I

.field private mColorBackground:I

.field private mContext:Landroid/content/Context;

.field private mDefaultOffset:I

.field private mGuidePopupWindow:Lmiui/widget/GuidePopupWindow;

.field private mHideAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mIsDismissing:Z

.field private mIsMirrored:Z

.field private mLineLength:F

.field private mMinBorder:I

.field private mMirroredTextGroup:Landroid/widget/LinearLayout;

.field private mOffsetX:I

.field private mOffsetY:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mShowAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mStartPointRadius:F

.field private mTextCircleRadius:F

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextGroup:Landroid/widget/LinearLayout;

.field private mTextSize:I

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mUseDefaultOffset:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/GuidePopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/miui/internal/R$attr;->guidePopupViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/widget/GuidePopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mUseDefaultOffset:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextColor:Landroid/content/res/ColorStateList;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Lcom/miui/internal/widget/GuidePopupView$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/GuidePopupView$1;-><init>(Lcom/miui/internal/widget/GuidePopupView;)V

    iput-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mShowAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/miui/internal/widget/GuidePopupView$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/widget/GuidePopupView$2;-><init>(Lcom/miui/internal/widget/GuidePopupView;)V

    iput-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mHideAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mArrowMode:I

    iput-object p1, p0, Lcom/miui/internal/widget/GuidePopupView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/miui/internal/R$styleable;->GuidePopupView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v3, Lcom/miui/internal/R$styleable;->GuidePopupView_startPointRadius:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lcom/miui/internal/widget/GuidePopupView;->mStartPointRadius:F

    sget v3, Lcom/miui/internal/R$styleable;->GuidePopupView_lineLength:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lcom/miui/internal/widget/GuidePopupView;->mLineLength:F

    sget v3, Lcom/miui/internal/R$styleable;->GuidePopupView_textCircleRadius:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextCircleRadius:F

    sget v3, Lcom/miui/internal/R$styleable;->GuidePopupView_android_colorBackground:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mColorBackground:I

    sget v2, Lcom/miui/internal/R$styleable;->GuidePopupView_paintColor:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iget-object v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget v2, Lcom/miui/internal/R$styleable;->GuidePopupView_android_textSize:I

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextSize:I

    sget v2, Lcom/miui/internal/R$styleable;->GuidePopupView_android_textColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mLineLength:F

    iget v3, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextCircleRadius:F

    const/high16 v4, 0x40200000    # 2.5f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mMinBorder:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/widget/GuidePopupView;)Landroid/animation/ObjectAnimator;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/internal/widget/GuidePopupView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/miui/internal/widget/GuidePopupView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/miui/internal/widget/GuidePopupView;->mIsDismissing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/internal/widget/GuidePopupView;)Lmiui/widget/GuidePopupWindow;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mGuidePopupWindow:Lmiui/widget/GuidePopupWindow;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/internal/widget/GuidePopupView;)Landroid/animation/Animator$AnimatorListener;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mShowAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method private adjustArrowMode()V
    .registers 15

    invoke-virtual {p0}, Lcom/miui/internal/widget/GuidePopupView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/internal/widget/GuidePopupView;->getHeight()I

    move-result v1

    const/4 v2, 0x4

    new-array v3, v2, [I

    iget v4, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorLocationY:I

    const/4 v5, 0x0

    aput v4, v3, v5

    sub-int v5, v1, v4

    iget v6, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorHeight:I

    sub-int/2addr v5, v6

    const/4 v7, 0x1

    aput v5, v3, v7

    iget v5, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorLocationX:I

    const/4 v8, 0x2

    aput v5, v3, v8

    sub-int v9, v0, v5

    iget v10, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorWidth:I

    sub-int/2addr v9, v10

    const/4 v11, 0x3

    aput v9, v3, v11

    const/4 v9, 0x0

    const/high16 v12, -0x80000000

    div-int/2addr v10, v8

    add-int/2addr v5, v10

    div-int/2addr v6, v8

    add-int/2addr v4, v6

    const/4 v6, 0x0

    :goto_2d
    if-ge v6, v2, :cond_42

    aget v10, v3, v6

    iget v13, p0, Lcom/miui/internal/widget/GuidePopupView;->mMinBorder:I

    if-lt v10, v13, :cond_37

    move v9, v6

    goto :goto_42

    :cond_37
    aget v10, v3, v6

    if-le v10, v12, :cond_3f

    move v9, v6

    aget v10, v3, v6

    move v12, v10

    :cond_3f
    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    :cond_42
    :goto_42
    if-eqz v9, :cond_81

    if-eq v9, v7, :cond_6f

    if-eq v9, v8, :cond_5d

    if-eq v9, v11, :cond_4b

    goto :goto_92

    :cond_4b
    int-to-float v2, v4

    iget v6, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextCircleRadius:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_54

    const/4 v9, 0x4

    goto :goto_92

    :cond_54
    sub-int v2, v1, v4

    int-to-float v2, v2

    cmpg-float v2, v2, v6

    if-gez v2, :cond_92

    const/4 v9, 0x7

    goto :goto_92

    :cond_5d
    int-to-float v2, v4

    iget v6, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextCircleRadius:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_66

    const/4 v9, 0x6

    goto :goto_92

    :cond_66
    sub-int v2, v1, v4

    int-to-float v2, v2

    cmpg-float v2, v2, v6

    if-gez v2, :cond_92

    const/4 v9, 0x5

    goto :goto_92

    :cond_6f
    int-to-float v2, v5

    iget v6, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextCircleRadius:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_78

    const/4 v9, 0x4

    goto :goto_92

    :cond_78
    sub-int v2, v0, v5

    int-to-float v2, v2

    cmpg-float v2, v2, v6

    if-gez v2, :cond_92

    const/4 v9, 0x6

    goto :goto_92

    :cond_81
    int-to-float v2, v5

    iget v6, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextCircleRadius:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_8a

    const/4 v9, 0x7

    goto :goto_92

    :cond_8a
    sub-int v2, v0, v5

    int-to-float v2, v2

    cmpg-float v2, v2, v6

    if-gez v2, :cond_92

    const/4 v9, 0x5

    :cond_92
    :goto_92
    invoke-virtual {p0, v9}, Lcom/miui/internal/widget/GuidePopupView;->setArrowMode(I)V

    return-void
.end method

.method private arrowLayout()V
    .registers 5

    invoke-direct {p0}, Lcom/miui/internal/widget/GuidePopupView;->caculateDefaultOffset()V

    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mArrowMode:I

    iget-object v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextGroup:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mOffsetX:I

    iget v3, p0, Lcom/miui/internal/widget/GuidePopupView;->mOffsetY:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/internal/widget/GuidePopupView;->drawText(ILandroid/widget/LinearLayout;II)V

    iget-boolean v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mIsMirrored:Z

    if-eqz v0, :cond_21

    invoke-direct {p0}, Lcom/miui/internal/widget/GuidePopupView;->getMirroredMode()I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mMirroredTextGroup:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mOffsetX:I

    neg-int v2, v2

    iget v3, p0, Lcom/miui/internal/widget/GuidePopupView;->mOffsetY:I

    neg-int v3, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/internal/widget/GuidePopupView;->drawText(ILandroid/widget/LinearLayout;II)V

    :cond_21
    return-void
.end method

.method private caculateDefaultOffset()V
    .registers 10

    iget-boolean v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mUseDefaultOffset:Z

    if-nez v0, :cond_8

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mDefaultOffset:I

    return-void

    :cond_8
    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorWidth:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    iget v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorHeight:I

    div-int/2addr v2, v1

    int-to-double v3, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    int-to-double v7, v2

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, p0, Lcom/miui/internal/widget/GuidePopupView;->mArrowMode:I

    if-eqz v4, :cond_33

    const/4 v5, 0x1

    if-eq v4, v5, :cond_33

    if-eq v4, v1, :cond_30

    const/4 v1, 0x3

    if-eq v4, v1, :cond_30

    iput v3, p0, Lcom/miui/internal/widget/GuidePopupView;->mDefaultOffset:I

    goto :goto_36

    :cond_30
    iput v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mDefaultOffset:I

    goto :goto_36

    :cond_33
    iput v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mDefaultOffset:I

    nop

    :goto_36
    return-void
.end method

.method private drawPopup(Landroid/graphics/Canvas;III)V
    .registers 16

    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorLocationX:I

    iget v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorLocationY:I

    iget v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v1, p4

    int-to-float v8, v1

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_a8

    move v9, v1

    goto :goto_43

    :pswitch_25
    const/high16 v1, -0x3cf90000    # -135.0f

    move v9, v1

    goto :goto_43

    :pswitch_29
    const/high16 v1, 0x42340000    # 45.0f

    move v9, v1

    goto :goto_43

    :pswitch_2d
    const/high16 v1, 0x43070000    # 135.0f

    move v9, v1

    goto :goto_43

    :pswitch_31
    const/high16 v1, -0x3dcc0000    # -45.0f

    move v9, v1

    goto :goto_43

    :pswitch_35
    const/high16 v1, -0x3d4c0000    # -90.0f

    move v9, v1

    goto :goto_43

    :pswitch_39
    const/high16 v1, 0x42b40000    # 90.0f

    move v9, v1

    goto :goto_43

    :pswitch_3d
    const/4 v1, 0x0

    move v9, v1

    goto :goto_43

    :pswitch_40
    const/high16 v1, 0x43340000    # 180.0f

    move v9, v1

    :goto_43
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v9, v0, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mDefaultOffset:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    const/high16 v1, 0x40000000    # 2.0f

    sub-float v3, v0, v1

    add-float v5, v0, v1

    iget v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mStartPointRadius:F

    add-float v6, v8, v1

    sget-object v7, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v2, p1

    move v4, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    iget v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mStartPointRadius:F

    iget-object v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x40800000    # 4.0f

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mLineLength:F

    add-float v5, v8, v1

    iget-object v6, p0, Lcom/miui/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v0

    move v3, v8

    move v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mLineLength:F

    add-float/2addr v8, v1

    iget v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextCircleRadius:F

    add-float/2addr v8, v1

    iget-object v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextCircleRadius:F

    iget-object v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    nop

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_40
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
    .end packed-switch
.end method

.method private drawText(ILandroid/widget/LinearLayout;II)V
    .registers 19

    move-object v0, p0

    move v1, p1

    iget v2, v0, Lcom/miui/internal/widget/GuidePopupView;->mDefaultOffset:I

    int-to-float v2, v2

    iget v3, v0, Lcom/miui/internal/widget/GuidePopupView;->mLineLength:F

    add-float/2addr v2, v3

    iget v3, v0, Lcom/miui/internal/widget/GuidePopupView;->mTextCircleRadius:F

    add-float/2addr v2, v3

    iget v3, v0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorLocationX:I

    iget v4, v0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, v0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorLocationY:I

    iget v5, v0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    packed-switch v1, :pswitch_data_b0

    goto :goto_71

    :pswitch_21
    int-to-float v9, v3

    add-float/2addr v9, v2

    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    float-to-int v5, v9

    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v6, v4, v9

    goto :goto_71

    :pswitch_35
    int-to-float v9, v3

    sub-float/2addr v9, v2

    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    float-to-int v5, v9

    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v6, v4, v9

    goto :goto_71

    :pswitch_49
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v5, v3, v9

    int-to-float v9, v4

    add-float/2addr v9, v2

    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    float-to-int v6, v9

    goto :goto_71

    :pswitch_5d
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v5, v3, v9

    int-to-float v9, v4

    sub-float/2addr v9, v2

    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    float-to-int v6, v9

    nop

    :goto_71
    move v9, v2

    float-to-double v10, v9

    const-wide v12, 0x3fe921fb54442d18L    # 0.7853981633974483

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    double-to-int v10, v10

    int-to-float v11, v10

    sub-float v11, v9, v11

    float-to-int v11, v11

    const/4 v12, 0x4

    if-eq v1, v12, :cond_98

    const/4 v12, 0x5

    if-eq v1, v12, :cond_95

    const/4 v12, 0x6

    if-eq v1, v12, :cond_92

    const/4 v12, 0x7

    if-eq v1, v12, :cond_8f

    goto :goto_9b

    :cond_8f
    add-int/2addr v5, v10

    add-int/2addr v6, v11

    goto :goto_9b

    :cond_92
    sub-int/2addr v5, v10

    sub-int/2addr v6, v11

    goto :goto_9b

    :cond_95
    sub-int/2addr v5, v10

    add-int/2addr v6, v11

    goto :goto_9b

    :cond_98
    add-int/2addr v5, v10

    sub-int/2addr v6, v11

    nop

    :goto_9b
    add-int v5, v5, p3

    add-int v6, v6, p4

    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v5

    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v6

    move-object/from16 v8, p2

    invoke-virtual {v8, v5, v6, v12, v7}, Landroid/widget/LinearLayout;->layout(IIII)V

    return-void

    nop

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_49
        :pswitch_35
        :pswitch_21
        :pswitch_49
        :pswitch_5d
        :pswitch_49
        :pswitch_5d
    .end packed-switch
.end method

.method private getMirroredMode()I
    .registers 3

    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mArrowMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_d

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_d
    add-int/lit8 v0, v0, -0x1

    return v0
.end method


# virtual methods
.method public addGuideTextView(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .registers 11

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c

    array-length v1, v0

    if-nez v1, :cond_13

    goto :goto_3c

    :cond_13
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_16
    if-ge v3, v1, :cond_3b

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/miui/internal/widget/GuidePopupView;->mContext:Landroid/content/Context;

    sget v6, Lcom/miui/internal/R$layout;->guide_popup_text_view:I

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/miui/internal/widget/GuidePopupView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v6, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextSize:I

    int-to-float v6, v6

    invoke-virtual {v5, v2, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v6, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_35

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_35
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_3b
    return-void

    :cond_3c
    :goto_3c
    return-void
.end method

.method public animateToDismiss()V
    .registers 5

    iget-boolean v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mIsDismissing:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_c
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mHideAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public animateToShow()V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/GuidePopupView;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/miui/internal/widget/GuidePopupView;->invalidate()V

    invoke-virtual {p0}, Lcom/miui/internal/widget/GuidePopupView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/miui/internal/widget/GuidePopupView$3;

    invoke-direct {v1, p0}, Lcom/miui/internal/widget/GuidePopupView$3;-><init>(Lcom/miui/internal/widget/GuidePopupView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public clearOffset()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/miui/internal/widget/GuidePopupView;->setOffset(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mUseDefaultOffset:Z

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorLocationX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorLocationY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mArrowMode:I

    iget v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mOffsetX:I

    iget v3, p0, Lcom/miui/internal/widget/GuidePopupView;->mOffsetY:I

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/miui/internal/widget/GuidePopupView;->drawPopup(Landroid/graphics/Canvas;III)V

    iget-boolean v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mIsMirrored:Z

    if-eqz v1, :cond_48

    invoke-direct {p0}, Lcom/miui/internal/widget/GuidePopupView;->getMirroredMode()I

    move-result v1

    iget v2, p0, Lcom/miui/internal/widget/GuidePopupView;->mOffsetX:I

    neg-int v2, v2

    iget v3, p0, Lcom/miui/internal/widget/GuidePopupView;->mOffsetY:I

    neg-int v3, v3

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/miui/internal/widget/GuidePopupView;->drawPopup(Landroid/graphics/Canvas;III)V

    :cond_48
    return-void
.end method

.method public getArrowMode()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mArrowMode:I

    return v0
.end method

.method public getColorBackground()I
    .registers 2

    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mColorBackground:I

    return v0
.end method

.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    sget v0, Lcom/miui/internal/R$id;->text_group:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/GuidePopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextGroup:Landroid/widget/LinearLayout;

    sget v0, Lcom/miui/internal/R$id;->mirrored_text_group:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/GuidePopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mMirroredTextGroup:Landroid/widget/LinearLayout;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 16

    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorWidth:I

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorHeight:I

    if-nez v0, :cond_d

    :cond_8
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/GuidePopupView;->setAnchor(Landroid/view/View;)V

    :cond_d
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    int-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    int-to-double v6, v1

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double v6, v2, v4

    iget v8, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextCircleRadius:F

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    double-to-float v6, v6

    iput v6, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextCircleRadius:F

    iget-boolean v6, p0, Lcom/miui/internal/widget/GuidePopupView;->mIsMirrored:Z

    if-eqz v6, :cond_61

    iget-object v6, p0, Lcom/miui/internal/widget/GuidePopupView;->mMirroredTextGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v6, p0, Lcom/miui/internal/widget/GuidePopupView;->mMirroredTextGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    int-to-double v6, v0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    int-to-double v8, v1

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double v4, v2, v4

    iget v6, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextCircleRadius:F

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Lcom/miui/internal/widget/GuidePopupView;->mTextCircleRadius:F

    :cond_61
    iget v4, p0, Lcom/miui/internal/widget/GuidePopupView;->mArrowMode:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6a

    invoke-direct {p0}, Lcom/miui/internal/widget/GuidePopupView;->adjustArrowMode()V

    goto :goto_6d

    :cond_6a
    invoke-direct {p0}, Lcom/miui/internal/widget/GuidePopupView;->arrowLayout()V

    :goto_6d
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorLocationX:I

    iget v4, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorLocationY:I

    iget-object v5, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    iget v6, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorLocationY:I

    iget-object v7, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_36

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->callOnClick()Z

    return v4

    :cond_36
    iget-object v3, p0, Lcom/miui/internal/widget/GuidePopupView;->mGuidePopupWindow:Lmiui/widget/GuidePopupWindow;

    invoke-virtual {v3, v4}, Lmiui/widget/GuidePopupWindow;->dismiss(Z)V

    return v4
.end method

.method public setAnchor(Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorWidth:I

    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorHeight:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorLocationX:I

    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/miui/internal/widget/GuidePopupView;->mAnchorLocationY:I

    return-void
.end method

.method public setArrowMode(I)V
    .registers 2

    iput p1, p0, Lcom/miui/internal/widget/GuidePopupView;->mArrowMode:I

    return-void
.end method

.method public setArrowMode(IZ)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/GuidePopupView;->setArrowMode(I)V

    iput-boolean p2, p0, Lcom/miui/internal/widget/GuidePopupView;->mIsMirrored:Z

    if-eqz p2, :cond_e

    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mMirroredTextGroup:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_15

    :cond_e
    iget-object v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mMirroredTextGroup:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_15
    return-void
.end method

.method public setGuidePopupWindow(Lmiui/widget/GuidePopupWindow;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/GuidePopupView;->mGuidePopupWindow:Lmiui/widget/GuidePopupWindow;

    return-void
.end method

.method public setOffset(II)V
    .registers 4

    iput p1, p0, Lcom/miui/internal/widget/GuidePopupView;->mOffsetX:I

    iput p2, p0, Lcom/miui/internal/widget/GuidePopupView;->mOffsetY:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/GuidePopupView;->mUseDefaultOffset:Z

    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/GuidePopupView;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-void
.end method
