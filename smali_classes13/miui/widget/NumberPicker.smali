.class public Lmiui/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;,
        Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;,
        Lmiui/widget/NumberPicker$CustomEditText;,
        Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lmiui/widget/NumberPicker$SetSelectionCommand;,
        Lmiui/widget/NumberPicker$PressedStateHelper;,
        Lmiui/widget/NumberPicker$InputTextFilter;,
        Lmiui/widget/NumberPicker$Formatter;,
        Lmiui/widget/NumberPicker$OnScrollListener;,
        Lmiui/widget/NumberPicker$OnValueChangeListener;,
        Lmiui/widget/NumberPicker$SoundPlayHandler;,
        Lmiui/widget/NumberPicker$NumberFormatter;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C

.field private static final MAX_HEIGHT:I = 0xca

.field private static final PRESSED_STATE_SET:[I

.field private static final SELECTION_DIVIDERS_DISTANCE:F = 45.0f

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x1

.field static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x3

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final SOUND_PLAY_THREAD:Ljava/lang/String; = "NumberPicker_sound_play"

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field static final TWO_DIGIT_FORMATTER:Lmiui/widget/NumberPicker$Formatter;

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2

.field private static final sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private MARGIN_LABEL_LEFT:I

.field private MARGIN_LABEL_TOP:I

.field private mAccessibilityNodeProvider:Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mBeginSoftInputOnLongPressCommand:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedMaxTextWidth:F

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Lmiui/widget/NumberPicker$Formatter;

.field private final mHasSelectorWheel:Z

.field private final mId:I

.field private mIncrementVirtualButtonPressed:Z

.field private mIngonreMoveEvents:Z

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mLabel:Ljava/lang/CharSequence;

.field private mLabelPaint:Landroid/graphics/Paint;

.field private mLabelTextColor:I

.field private mLabelTextSize:I

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private mMaxFlingSpeedFactor:F

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Lmiui/widget/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lmiui/widget/NumberPicker$OnValueChangeListener;

.field private final mPressedStateHelper:Lmiui/widget/NumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private final mSelectionDividerHeight:I

.field private final mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Lmiui/widget/NumberPicker$SetSelectionCommand;

.field private mShowSoftInputOnTap:Z

.field private mSoundPlayHandler:Lmiui/widget/NumberPicker$SoundPlayHandler;

.field private mTextColorHilight:I

.field private mTextColorHint:I

.field private mTextPadding:I

.field private final mTextSize:I

.field private mTextSizeHighlight:I

.field private mTextSizeHint:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mUpdateText:Ljava/lang/String;

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget v0, Lcom/miui/internal/R$layout;->numberpicker_layout:I

    sput v0, Lmiui/widget/NumberPicker;->DEFAULT_LAYOUT_RESOURCE_ID:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lmiui/widget/NumberPicker;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lmiui/widget/NumberPicker$NumberFormatter;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lmiui/widget/NumberPicker$NumberFormatter;-><init>(I)V

    sput-object v0, Lmiui/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiui/widget/NumberPicker$Formatter;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v2, 0x10100a7

    aput v2, v0, v1

    sput-object v0, Lmiui/widget/NumberPicker;->PRESSED_STATE_SET:[I

    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_28

    sput-object v0, Lmiui/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    :array_28
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/miui/internal/R$attr;->numberPickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 20

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v1, Lmiui/widget/NumberPicker;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    iput v1, v0, Lmiui/widget/NumberPicker;->mId:I

    const/4 v1, 0x1

    iput v1, v0, Lmiui/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    const/4 v2, 0x2

    iput v2, v0, Lmiui/widget/NumberPicker;->MARGIN_LABEL_TOP:I

    const/16 v3, 0x190

    iput v3, v0, Lmiui/widget/NumberPicker;->mMaxWidth:I

    const-wide/16 v3, 0x12c

    iput-wide v3, v0, Lmiui/widget/NumberPicker;->mLongPressUpdateInterval:J

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lmiui/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    const/4 v3, 0x3

    new-array v3, v3, [I

    iput-object v3, v0, Lmiui/widget/NumberPicker;->mSelectorIndices:[I

    const/high16 v3, -0x80000000

    iput v3, v0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    const/4 v3, 0x0

    iput v3, v0, Lmiui/widget/NumberPicker;->mScrollState:I

    const/4 v4, -0x1

    iput v4, v0, Lmiui/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v0, Lmiui/widget/NumberPicker;->mMaxFlingSpeedFactor:F

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    sget v7, Lcom/miui/internal/R$dimen;->number_picker_label_margin_left:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, v0, Lmiui/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    sget v7, Lcom/miui/internal/R$dimen;->number_picker_label_margin_top:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, v0, Lmiui/widget/NumberPicker;->MARGIN_LABEL_TOP:I

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct {v0, v7, v8}, Lmiui/widget/NumberPicker;->parseStyle(Landroid/util/AttributeSet;I)V

    invoke-direct/range {p0 .. p0}, Lmiui/widget/NumberPicker;->initSoundPlayer()V

    iput-boolean v1, v0, Lmiui/widget/NumberPicker;->mHasSelectorWheel:Z

    nop

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v1, v10, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    iput v9, v0, Lmiui/widget/NumberPicker;->mSelectionDividerHeight:I

    const/high16 v10, 0x42340000    # 45.0f

    mul-float/2addr v10, v6

    float-to-int v10, v10

    iput v10, v0, Lmiui/widget/NumberPicker;->mSelectionDividersDistance:I

    iput v4, v0, Lmiui/widget/NumberPicker;->mMinHeight:I

    const/high16 v10, 0x434a0000    # 202.0f

    mul-float/2addr v10, v6

    float-to-int v10, v10

    iput v10, v0, Lmiui/widget/NumberPicker;->mMaxHeight:I

    if-eq v4, v4, :cond_86

    if-eq v10, v4, :cond_86

    if-gt v4, v10, :cond_7e

    goto :goto_86

    :cond_7e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minHeight > maxHeight"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_86
    :goto_86
    iput v4, v0, Lmiui/widget/NumberPicker;->mMinWidth:I

    iput v4, v0, Lmiui/widget/NumberPicker;->mMaxWidth:I

    if-eq v4, v4, :cond_99

    if-eq v4, v4, :cond_99

    if-gt v4, v4, :cond_91

    goto :goto_99

    :cond_91
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minWidth > maxWidth"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_99
    :goto_99
    iget v10, v0, Lmiui/widget/NumberPicker;->mMaxWidth:I

    if-ne v10, v4, :cond_9f

    move v10, v1

    goto :goto_a0

    :cond_9f
    move v10, v3

    :goto_a0
    iput-boolean v10, v0, Lmiui/widget/NumberPicker;->mComputeMaxWidth:Z

    new-instance v10, Lmiui/widget/NumberPicker$PressedStateHelper;

    invoke-direct {v10, v0}, Lmiui/widget/NumberPicker$PressedStateHelper;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object v10, v0, Lmiui/widget/NumberPicker;->mPressedStateHelper:Lmiui/widget/NumberPicker$PressedStateHelper;

    iget-boolean v10, v0, Lmiui/widget/NumberPicker;->mHasSelectorWheel:Z

    xor-int/2addr v10, v1

    invoke-virtual {v0, v10}, Lmiui/widget/NumberPicker;->setWillNotDraw(Z)V

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    sget v11, Lcom/miui/internal/R$layout;->numberpicker_layout:I

    invoke-virtual {v10, v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v11, Lcom/miui/internal/R$id;->numberpicker_input:I

    invoke-virtual {v0, v11}, Lmiui/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    iput-object v11, v0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-instance v12, Lmiui/widget/NumberPicker$1;

    invoke-direct {v12, v0}, Lmiui/widget/NumberPicker$1;-><init>(Lmiui/widget/NumberPicker;)V

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v11, v0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-array v12, v1, [Landroid/text/InputFilter;

    new-instance v13, Lmiui/widget/NumberPicker$InputTextFilter;

    invoke-direct {v13, v0}, Lmiui/widget/NumberPicker$InputTextFilter;-><init>(Lmiui/widget/NumberPicker;)V

    aput-object v13, v12, v3

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v11, v0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v11, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    iget-object v2, v0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v11, 0x6

    invoke-virtual {v2, v11}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v2, v0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v11, 0x4

    invoke-virtual {v2, v11}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v2, v0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v11, 0x800003

    invoke-virtual {v2, v11}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v2, v0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/widget/EditText;->setScaleX(F)V

    iget-object v2, v0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSaveEnabled(Z)V

    iget-object v2, v0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget v3, v0, Lmiui/widget/NumberPicker;->mTextPadding:I

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v11

    iget v12, v0, Lmiui/widget/NumberPicker;->mTextPadding:I

    iget-object v13, v0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v13

    invoke-virtual {v2, v3, v11, v12, v13}, Landroid/widget/EditText;->setPadding(IIII)V

    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, v0, Lmiui/widget/NumberPicker;->mTouchSlop:I

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, v0, Lmiui/widget/NumberPicker;->mMinimumFlingVelocity:I

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    iput v3, v0, Lmiui/widget/NumberPicker;->mMaximumFlingVelocity:I

    iget-object v3, v0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Lmiui/widget/NumberPicker;->mTextSize:I

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v11, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget v11, v0, Lmiui/widget/NumberPicker;->mTextSizeHighlight:I

    int-to-float v11, v11

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v11, v0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v11, v0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v11

    sget-object v12, Lmiui/widget/NumberPicker;->ENABLED_STATE_SET:[I

    invoke-virtual {v11, v12, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iput-object v3, v0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    iput-object v12, v0, Lmiui/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v12, v0, Lmiui/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v12, v0, Lmiui/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    iget v13, v0, Lmiui/widget/NumberPicker;->mLabelTextColor:I

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v12, v0, Lmiui/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    iget v13, v0, Lmiui/widget/NumberPicker;->mLabelTextSize:I

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v12, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v12, v0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    new-instance v12, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v13

    new-instance v14, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v15, 0x40200000    # 2.5f

    invoke-direct {v14, v15}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v12, v13, v14}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v12, v0, Lmiui/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct/range {p0 .. p0}, Lmiui/widget/NumberPicker;->updateInputTextView()Z

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getImportantForAccessibility()I

    move-result v12

    if-nez v12, :cond_1ad

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker;->setImportantForAccessibility(I)V

    :cond_1ad
    return-void
.end method

.method static synthetic access$100(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lmiui/widget/NumberPicker;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/widget/NumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic access$1100(Lmiui/widget/NumberPicker;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1102(Lmiui/widget/NumberPicker;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1180(Lmiui/widget/NumberPicker;I)Z
    .registers 3

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lmiui/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1200(Lmiui/widget/NumberPicker;)I
    .registers 2

    iget v0, p0, Lmiui/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic access$1300(Lmiui/widget/NumberPicker;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1302(Lmiui/widget/NumberPicker;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1380(Lmiui/widget/NumberPicker;I)Z
    .registers 3

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lmiui/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1400(Lmiui/widget/NumberPicker;)I
    .registers 2

    iget v0, p0, Lmiui/widget/NumberPicker;->mTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic access$1500(Lmiui/widget/NumberPicker;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$1600(Lmiui/widget/NumberPicker;)J
    .registers 3

    iget-wide v0, p0, Lmiui/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$1702(Lmiui/widget/NumberPicker;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->mIngonreMoveEvents:Z

    return p1
.end method

.method static synthetic access$1800(Lmiui/widget/NumberPicker;)I
    .registers 2

    iget v0, p0, Lmiui/widget/NumberPicker;->mSelectionDividerHeight:I

    return v0
.end method

.method static synthetic access$1900(Lmiui/widget/NumberPicker;)I
    .registers 2

    iget v0, p0, Lmiui/widget/NumberPicker;->mValue:I

    return v0
.end method

.method static synthetic access$200(Lmiui/widget/NumberPicker;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2000(Lmiui/widget/NumberPicker;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method static synthetic access$2100(Lmiui/widget/NumberPicker;I)I
    .registers 3

    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lmiui/widget/NumberPicker;)I
    .registers 2

    iget v0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method static synthetic access$2300(Lmiui/widget/NumberPicker;I)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()[C
    .registers 1

    sget-object v0, Lmiui/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$700(Lmiui/widget/NumberPicker;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lmiui/widget/NumberPicker;Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lmiui/widget/NumberPicker;)I
    .registers 2

    iget v0, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method private changeValueByOne(Z)V
    .registers 15

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_17
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/NumberPicker;->mPreviousScrollerY:I

    if-eqz p1, :cond_2a

    iget-object v1, p0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v0, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v5, v0

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_36

    :cond_2a
    iget-object v7, p0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    const/16 v12, 0x12c

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :goto_36
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    goto :goto_4a

    :cond_3a
    const/4 v0, 0x1

    if-eqz p1, :cond_44

    iget v1, p0, Lmiui/widget/NumberPicker;->mValue:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1, v0}, Lmiui/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_4a

    :cond_44
    iget v1, p0, Lmiui/widget/NumberPicker;->mValue:I

    sub-int/2addr v1, v0

    invoke-direct {p0, v1, v0}, Lmiui/widget/NumberPicker;->setValueInternal(IZ)V

    :goto_4a
    return-void
.end method

.method private decrementSelectorIndices([I)V
    .registers 5

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_3
    if-lez v0, :cond_e

    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_e
    aget v0, p1, v1

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1b

    iget v1, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    if-ge v0, v1, :cond_1b

    iget v0, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    :cond_1b
    const/4 v1, 0x0

    aput v0, p1, v1

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .registers 6

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_b

    return-void

    :cond_b
    iget v2, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    if-lt p1, v2, :cond_22

    iget v3, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    if-le p1, v3, :cond_14

    goto :goto_22

    :cond_14
    iget-object v3, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_1d

    sub-int v2, p1, v2

    aget-object v1, v3, v2

    goto :goto_24

    :cond_1d
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_24

    :cond_22
    :goto_22
    const-string v1, ""

    :goto_24
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private ensureScrollWheelAdjusted()Z
    .registers 8

    iget v0, p0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    iget v1, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    iput v1, p0, Lmiui/widget/NumberPicker;->mPreviousScrollerY:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v3, v2, 0x2

    if-le v1, v3, :cond_18

    if-lez v0, :cond_17

    neg-int v2, v2

    :cond_17
    add-int/2addr v0, v2

    :cond_18
    iget-object v1, p0, Lmiui/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x320

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    const/4 v1, 0x1

    return v1

    :cond_28
    return v1
.end method

.method private fling(I)V
    .registers 12

    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/NumberPicker;->mPreviousScrollerY:I

    if-lez p1, :cond_15

    iget-object v1, p0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_26

    :cond_15
    iget-object v1, p0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    :goto_26
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mFormatter:Lmiui/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lmiui/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-static {p1}, Lcom/miui/internal/util/SimpleNumberFormatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method private getAlphaGradient(FIZ)I
    .registers 7

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_7

    return p2

    :cond_7
    if-eqz p3, :cond_18

    neg-float v0, p1

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_1f

    :cond_18
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    :goto_1f
    nop

    const v1, 0xffffff

    and-int/2addr v1, p2

    shl-int/lit8 v2, v0, 0x18

    or-int/2addr v1, v2

    return v1
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_b

    :try_start_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    goto :goto_30

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iget-object v1, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2a

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget v1, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    add-int/2addr v1, v0

    return v1

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_2a
    :try_start_2a
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_2e} :catch_2f

    return v0

    :catch_2f
    move-exception v0

    :goto_30
    iget v0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method private getTextSize(FII)F
    .registers 6

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_8

    int-to-float v0, p3

    return v0

    :cond_8
    sub-int v0, p3, p2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    int-to-float v1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private getWrappedSelectorIndex(I)I
    .registers 5

    iget v0, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_e

    iget v1, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    sub-int v2, p1, v0

    sub-int/2addr v0, v1

    rem-int/2addr v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    return v1

    :cond_e
    iget v1, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    if-ge p1, v1, :cond_1b

    sub-int v2, v1, p1

    sub-int v1, v0, v1

    rem-int/2addr v2, v1

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1b
    return p1
.end method

.method private incrementSelectorIndices([I)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_f

    add-int/lit8 v1, v0, 0x1

    aget v1, p1, v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_20

    iget v1, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    if-le v0, v1, :cond_20

    iget v0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    :cond_20
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private initSoundPlayer()V
    .registers 4

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSoundPlayHandler:Lmiui/widget/NumberPicker$SoundPlayHandler;

    if-nez v0, :cond_16

    const-string v0, "NumberPicker_sound_play"

    invoke-static {v0}, Lcom/miui/internal/util/async/WorkerThreads;->aquireWorker(Ljava/lang/String;)Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lmiui/widget/NumberPicker$SoundPlayHandler;

    invoke-direct {v1, v0}, Lmiui/widget/NumberPicker$SoundPlayHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lmiui/widget/NumberPicker;->mSoundPlayHandler:Lmiui/widget/NumberPicker$SoundPlayHandler;

    iget v2, p0, Lmiui/widget/NumberPicker;->mId:I

    invoke-virtual {v1, v2}, Lmiui/widget/NumberPicker$SoundPlayHandler;->init(I)V

    :cond_16
    return-void
.end method

.method private initializeFadingEdges()V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->setFadingEdgeLength(I)V

    return-void
.end method

.method private initializeSelectorWheel()V
    .registers 7

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->initializeSelectorWheelIndices()V

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSelectorIndices:[I

    array-length v1, v0

    iget v2, p0, Lmiui/widget/NumberPicker;->mTextSize:I

    mul-int/2addr v1, v2

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1a

    const/4 v2, 0x0

    :cond_1a
    array-length v3, v0

    int-to-float v3, v3

    div-float v4, v2, v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lmiui/widget/NumberPicker;->mSelectorTextGapHeight:I

    iget v5, p0, Lmiui/widget/NumberPicker;->mTextSize:I

    add-int/2addr v5, v4

    iput v5, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    iget-object v4, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getBaseline()I

    move-result v4

    iget-object v5, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v5, v5, 0x1

    sub-int v5, v4, v5

    iput v5, p0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    iput v5, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->updateInputTextView()Z

    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .registers 6

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSelectorIndices:[I

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    iget-object v3, p0, Lmiui/widget/NumberPicker;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v2, v3, :cond_26

    add-int/lit8 v3, v2, -0x1

    add-int/2addr v3, v1

    iget-boolean v4, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_1c

    invoke-direct {p0, v3}, Lmiui/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    :cond_1c
    aput v3, v0, v2

    aget v4, v0, v2

    invoke-direct {p0, v4}, Lmiui/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_26
    return-void
.end method

.method private makeMeasureSpec(II)I
    .registers 8

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    return p1

    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_33

    if-eqz v1, :cond_2e

    if-ne v1, v3, :cond_17

    return p1

    :cond_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2e
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    :cond_33
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .registers 10

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v2, v1

    iget v3, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    rem-int/2addr v2, v3

    iget v3, p0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_2d

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v7, v6, 0x2

    if-le v5, v7, :cond_28

    if-lez v3, :cond_27

    sub-int/2addr v3, v6

    goto :goto_28

    :cond_27
    add-int/2addr v3, v6

    :cond_28
    :goto_28
    add-int/2addr v1, v3

    invoke-virtual {p0, v4, v1}, Lmiui/widget/NumberPicker;->scrollBy(II)V

    return v0

    :cond_2d
    return v4
.end method

.method private notifyChange(I)V
    .registers 4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->sendAccessibilityEvent(I)V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->playSound()V

    const v0, 0x10000005

    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->performHapticFeedback(I)Z

    :cond_13
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mOnValueChangeListener:Lmiui/widget/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_1c

    iget v1, p0, Lmiui/widget/NumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lmiui/widget/NumberPicker$OnValueChangeListener;->onValueChange(Lmiui/widget/NumberPicker;II)V

    :cond_1c
    return-void
.end method

.method private onScrollStateChange(I)V
    .registers 4

    iget v0, p0, Lmiui/widget/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_28

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    if-eqz v0, :cond_22

    iget-object v1, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lmiui/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_22
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->stopSoundPlay()V

    :cond_28
    iput p1, p0, Lmiui/widget/NumberPicker;->mScrollState:I

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mOnScrollListener:Lmiui/widget/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_31

    invoke-interface {v0, p0, p1}, Lmiui/widget/NumberPicker$OnScrollListener;->onScrollStateChange(Lmiui/widget/NumberPicker;I)V

    :cond_31
    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .registers 4

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_12

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->updateInputTextView()Z

    :cond_d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_1a

    :cond_12
    iget v0, p0, Lmiui/widget/NumberPicker;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->updateInputTextView()Z

    :cond_1a
    :goto_1a
    return-void
.end method

.method private parseStyle(Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/miui/internal/R$styleable;->NumberPicker:[I

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$styleable;->NumberPicker_android_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lmiui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    sget v2, Lcom/miui/internal/R$styleable;->NumberPicker_textSizeHighlight:I

    sget v3, Lcom/miui/internal/R$dimen;->number_picker_text_size_highlight_normal:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lmiui/widget/NumberPicker;->mTextSizeHighlight:I

    sget v2, Lcom/miui/internal/R$styleable;->NumberPicker_textSizeHint:I

    sget v3, Lcom/miui/internal/R$dimen;->number_picker_text_size_hint_normal:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lmiui/widget/NumberPicker;->mTextSizeHint:I

    sget v2, Lcom/miui/internal/R$styleable;->NumberPicker_android_labelTextSize:I

    sget v3, Lcom/miui/internal/R$dimen;->number_picker_label_text_size:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lmiui/widget/NumberPicker;->mLabelTextSize:I

    sget v2, Lcom/miui/internal/R$styleable;->NumberPicker_android_textColorHighlight:I

    sget v3, Lcom/miui/internal/R$color;->number_picker_highlight_text_color:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lmiui/widget/NumberPicker;->mTextColorHilight:I

    sget v2, Lcom/miui/internal/R$styleable;->NumberPicker_android_textColorHint:I

    sget v3, Lcom/miui/internal/R$color;->number_picker_hint_text_color:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lmiui/widget/NumberPicker;->mTextColorHint:I

    sget v2, Lcom/miui/internal/R$styleable;->NumberPicker_labelTextColor:I

    sget v3, Lcom/miui/internal/R$color;->number_picker_label_color:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lmiui/widget/NumberPicker;->mLabelTextColor:I

    sget v2, Lcom/miui/internal/R$styleable;->NumberPicker_labelPadding:I

    sget v3, Lcom/miui/internal/R$dimen;->number_picker_label_padding:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lmiui/widget/NumberPicker;->mTextPadding:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private playSound()V
    .registers 2

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSoundPlayHandler:Lmiui/widget/NumberPicker$SoundPlayHandler;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lmiui/widget/NumberPicker$SoundPlayHandler;->play()V

    :cond_7
    return-void
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .registers 4

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_c

    new-instance v0, Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object v0, p0, Lmiui/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    goto :goto_f

    :cond_c
    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_f
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lmiui/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .registers 5

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_c

    new-instance v0, Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object v0, p0, Lmiui/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_f

    :cond_c
    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_f
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    # invokes: Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V
    invoke-static {v0, p1}, Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$300(Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Lmiui/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postSetSelectionCommand(II)V
    .registers 4

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSetSelectionCommand:Lmiui/widget/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_c

    new-instance v0, Lmiui/widget/NumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Lmiui/widget/NumberPicker$SetSelectionCommand;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object v0, p0, Lmiui/widget/NumberPicker;->mSetSelectionCommand:Lmiui/widget/NumberPicker$SetSelectionCommand;

    goto :goto_f

    :cond_c
    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_f
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSetSelectionCommand:Lmiui/widget/NumberPicker$SetSelectionCommand;

    # setter for: Lmiui/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I
    invoke-static {v0, p1}, Lmiui/widget/NumberPicker$SetSelectionCommand;->access$402(Lmiui/widget/NumberPicker$SetSelectionCommand;I)I

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSetSelectionCommand:Lmiui/widget/NumberPicker$SetSelectionCommand;

    # setter for: Lmiui/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I
    invoke-static {v0, p2}, Lmiui/widget/NumberPicker$SetSelectionCommand;->access$502(Lmiui/widget/NumberPicker$SetSelectionCommand;I)I

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSetSelectionCommand:Lmiui/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private refreshWheel()V
    .registers 1

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->initializeSelectorWheelIndices()V

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    return-void
.end method

.method private releaseSoundPlayer()V
    .registers 3

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSoundPlayHandler:Lmiui/widget/NumberPicker$SoundPlayHandler;

    if-eqz v0, :cond_c

    iget v1, p0, Lmiui/widget/NumberPicker;->mId:I

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker$SoundPlayHandler;->release(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/NumberPicker;->mSoundPlayHandler:Lmiui/widget/NumberPicker$SoundPlayHandler;

    :cond_c
    return-void
.end method

.method private removeAllCallbacks()V
    .registers 2

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_7
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSetSelectionCommand:Lmiui/widget/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_e

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_e
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_15

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_15
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mPressedStateHelper:Lmiui/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker$PressedStateHelper;->cancel()V

    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .registers 2

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .registers 2

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .registers 6

    const/4 v0, -0x1

    if-eq p1, v0, :cond_d

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lmiui/widget/NumberPicker;->resolveSizeAndState(III)I

    move-result v1

    return v1

    :cond_d
    return p2
.end method

.method private setValueInternal(IZ)V
    .registers 4

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    goto :goto_15

    :cond_9
    iget v0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_15
    iget v0, p0, Lmiui/widget/NumberPicker;->mValue:I

    if-ne v0, p1, :cond_1a

    return-void

    :cond_1a
    iget v0, p0, Lmiui/widget/NumberPicker;->mValue:I

    iput p1, p0, Lmiui/widget/NumberPicker;->mValue:I

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->updateInputTextView()Z

    if-eqz p2, :cond_26

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->notifyChange(I)V

    :cond_26
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->initializeSelectorWheelIndices()V

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    return-void
.end method

.method private stopSoundPlay()V
    .registers 2

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSoundPlayHandler:Lmiui/widget/NumberPicker$SoundPlayHandler;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lmiui/widget/NumberPicker$SoundPlayHandler;->stop()V

    :cond_7
    return-void
.end method

.method private tryComputeMaxWidth()V
    .registers 7

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mComputeMaxWidth:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/high16 v0, -0x40800000    # -1.0f

    iget-object v1, p0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v2, p0, Lmiui/widget/NumberPicker;->mTextSizeHighlight:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_3a

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_15
    const/16 v3, 0x9

    if-ge v2, v3, :cond_2b

    iget-object v3, p0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, v1

    if-lez v4, :cond_28

    move v1, v3

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_2b
    iget v2, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    invoke-direct {p0, v2}, Lmiui/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-float v3, v2

    mul-float/2addr v3, v1

    float-to-int v3, v3

    int-to-float v0, v3

    goto :goto_50

    :cond_3a
    array-length v1, v1

    const/4 v2, 0x0

    :goto_3c
    if-ge v2, v1, :cond_50

    iget-object v3, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    cmpl-float v5, v4, v0

    if-lez v5, :cond_4d

    move v0, v4

    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_50
    :goto_50
    iput v0, p0, Lmiui/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    iget-object v1, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lmiui/widget/NumberPicker;->mMaxWidth:I

    int-to-float v2, v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_81

    iget v2, p0, Lmiui/widget/NumberPicker;->mMinWidth:I

    int-to-float v3, v2

    cmpl-float v3, v1, v3

    if-lez v3, :cond_7f

    float-to-int v2, v1

    iput v2, p0, Lmiui/widget/NumberPicker;->mMaxWidth:I

    goto :goto_81

    :cond_7f
    iput v2, p0, Lmiui/widget/NumberPicker;->mMaxWidth:I

    :cond_81
    :goto_81
    return-void
.end method

.method private updateInputTextView()Z
    .registers 4

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_b

    iget v0, p0, Lmiui/widget/NumberPicker;->mValue:I

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_b
    iget v1, p0, Lmiui/widget/NumberPicker;->mValue:I

    iget v2, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_12
    nop

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_37

    iget v1, p0, Lmiui/widget/NumberPicker;->mScrollState:I

    if-eqz v1, :cond_20

    iput-object v0, p0, Lmiui/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    goto :goto_35

    :cond_20
    iget-object v1, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    iget-object v1, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_35
    :goto_35
    const/4 v1, 0x1

    return v1

    :cond_37
    const/4 v1, 0x0

    return v1
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .registers 5

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->updateInputTextView()Z

    goto :goto_21

    :cond_15
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiui/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lmiui/widget/NumberPicker;->setValueInternal(IZ)V

    :goto_21
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .registers 5

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_11

    return-void

    :cond_11
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget v2, p0, Lmiui/widget/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_22

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lmiui/widget/NumberPicker;->mPreviousScrollerY:I

    :cond_22
    const/4 v2, 0x0

    iget v3, p0, Lmiui/widget/NumberPicker;->mPreviousScrollerY:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lmiui/widget/NumberPicker;->scrollBy(II)V

    iput v1, p0, Lmiui/widget/NumberPicker;->mPreviousScrollerY:I

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_39

    :cond_36
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    :goto_39
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_9
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lmiui/widget/NumberPicker;->mTopSelectionDividerTop:I

    if-ge v1, v2, :cond_26

    const/4 v2, 0x3

    goto :goto_2d

    :cond_26
    iget v2, p0, Lmiui/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    if-le v1, v2, :cond_2c

    const/4 v2, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x2

    :goto_2d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    nop

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v4

    check-cast v4, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;

    const/4 v5, 0x7

    const/4 v6, -0x1

    const/16 v7, 0x100

    const/4 v8, 0x0

    const/16 v9, 0x40

    const/16 v10, 0x80

    if-eq v3, v5, :cond_5b

    const/16 v5, 0x9

    if-eq v3, v5, :cond_52

    const/16 v5, 0xa

    if-eq v3, v5, :cond_4c

    goto :goto_6c

    :cond_4c
    invoke-virtual {v4, v2, v7}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iput v6, p0, Lmiui/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    goto :goto_6c

    :cond_52
    invoke-virtual {v4, v2, v10}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iput v2, p0, Lmiui/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {v4, v2, v9, v8}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_6c

    :cond_5b
    iget v5, p0, Lmiui/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq v5, v2, :cond_6c

    if-eq v5, v6, :cond_6c

    invoke-virtual {v4, v5, v7}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    invoke-virtual {v4, v2, v10}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iput v2, p0, Lmiui/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {v4, v2, v9, v8}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    :cond_6c
    :goto_6c
    const/4 v1, 0x0

    return v1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    const/16 v2, 0x14

    if-eq v0, v1, :cond_19

    if-eq v0, v2, :cond_19

    const/16 v1, 0x17

    if-eq v0, v1, :cond_15

    const/16 v1, 0x42

    if-eq v0, v1, :cond_15

    goto :goto_65

    :cond_15
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_65

    :cond_19
    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v1, :cond_1e

    goto :goto_65

    :cond_1e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_30

    if-eq v1, v3, :cond_28

    goto :goto_65

    :cond_28
    iget v1, p0, Lmiui/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_65

    const/4 v1, -0x1

    iput v1, p0, Lmiui/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    return v3

    :cond_30
    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_42

    if-ne v0, v2, :cond_37

    goto :goto_42

    :cond_37
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_65

    goto :goto_4c

    :cond_42
    :goto_42
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_65

    :goto_4c
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->requestFocus()Z

    iput v0, p0, Lmiui/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->removeAllCallbacks()V

    iget-object v1, p0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_64

    if-ne v0, v2, :cond_60

    move v1, v3

    goto :goto_61

    :cond_60
    const/4 v1, 0x0

    :goto_61
    invoke-direct {p0, v1}, Lmiui/widget/NumberPicker;->changeValueByOne(Z)V

    :cond_64
    return v3

    :cond_65
    :goto_65
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lmiui/widget/NumberPicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    goto :goto_e

    :cond_b
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->removeAllCallbacks()V

    :goto_e
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    goto :goto_e

    :cond_b
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->removeAllCallbacks()V

    :goto_e
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected drawableStateChanged()V
    .registers 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->tryComputeMaxWidth()V

    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mAccessibilityNodeProvider:Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_14

    new-instance v0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object v0, p0, Lmiui/widget/NumberPicker;->mAccessibilityNodeProvider:Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;

    :cond_14
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mAccessibilityNodeProvider:Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 2

    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .registers 2

    iget v0, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .registers 2

    iget v0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 2

    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .registers 2

    iget v0, p0, Lmiui/widget/NumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->initSoundPlayer()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->releaseSoundPlayer()V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->removeAllCallbacks()V

    const-string v0, "NumberPicker_sound_play"

    invoke-static {v0}, Lcom/miui/internal/util/async/WorkerThreads;->releaseWorker(Ljava/lang/String;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lmiui/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v2, :cond_c

    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getPaddingRight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getRight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, v0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v5, v5

    iget v6, v0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    iget v7, v0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    const/4 v8, 0x1

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, v0, Lmiui/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    iget-object v9, v0, Lmiui/widget/NumberPicker;->mSelectorIndices:[I

    const/4 v10, 0x0

    :goto_32
    array-length v11, v9

    if-ge v10, v11, :cond_9c

    aget v11, v9, v10

    invoke-virtual {v7, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sub-float v14, v6, v5

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    iget v15, v0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    iget v15, v0, Lmiui/widget/NumberPicker;->mTextSizeHighlight:I

    iget v8, v0, Lmiui/widget/NumberPicker;->mTextSizeHint:I

    invoke-direct {v0, v14, v15, v8}, Lmiui/widget/NumberPicker;->getTextSize(FII)F

    move-result v8

    iget-object v15, v0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v15, v0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v12, v0, Lmiui/widget/NumberPicker;->mTextColorHint:I

    move/from16 v16, v2

    const/4 v2, 0x0

    invoke-direct {v0, v14, v12, v2}, Lmiui/widget/NumberPicker;->getAlphaGradient(FIZ)I

    move-result v2

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v0, Lmiui/widget/NumberPicker;->mTextSizeHint:I

    int-to-float v2, v2

    sub-float v2, v8, v2

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v2, v12

    add-float/2addr v2, v5

    iget-object v12, v0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v4, v2, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v14, v2

    if-gez v2, :cond_91

    iget-object v2, v0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v12, v0, Lmiui/widget/NumberPicker;->mTextColorHilight:I

    const/4 v15, 0x1

    invoke-direct {v0, v14, v12, v15}, Lmiui/widget/NumberPicker;->getAlphaGradient(FIZ)I

    move-result v12

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v0, Lmiui/widget/NumberPicker;->mTextSizeHint:I

    int-to-float v2, v2

    sub-float v2, v8, v2

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v2, v12

    add-float/2addr v2, v5

    iget-object v12, v0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v4, v2, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_92

    :cond_91
    const/4 v15, 0x1

    :goto_92
    iget v2, v0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    int-to-float v2, v2

    add-float/2addr v5, v2

    add-int/lit8 v10, v10, 0x1

    move v8, v15

    move/from16 v2, v16

    goto :goto_32

    :cond_9c
    move/from16 v16, v2

    iget-object v2, v0, Lmiui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ff

    sget-boolean v2, Lcom/miui/internal/util/DeviceHelper;->IS_INTERNATIONAL_BUILD:Z

    if-nez v2, :cond_ff

    iget-object v2, v0, Lmiui/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    iget-object v8, v0, Lmiui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    invoke-static/range {p0 .. p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_ce

    iget v8, v0, Lmiui/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    sub-float v8, v4, v8

    iget v10, v0, Lmiui/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    int-to-float v10, v10

    sub-float/2addr v8, v10

    sub-float/2addr v8, v2

    const/4 v10, 0x0

    invoke-static {v8, v10}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_e2

    :cond_ce
    const/high16 v10, 0x40000000    # 2.0f

    iget v8, v0, Lmiui/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    div-float/2addr v8, v10

    add-float/2addr v8, v4

    iget v10, v0, Lmiui/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    int-to-float v10, v10

    add-float/2addr v8, v10

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getWidth()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v2

    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :goto_e2
    iget v8, v0, Lmiui/widget/NumberPicker;->mTextSizeHighlight:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float v8, v6, v8

    iget v10, v0, Lmiui/widget/NumberPicker;->mLabelTextSize:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v8, v10

    iget v10, v0, Lmiui/widget/NumberPicker;->MARGIN_LABEL_TOP:I

    int-to-float v10, v10

    add-float v5, v8, v10

    iget-object v8, v0, Lmiui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, v0, Lmiui/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v4, v5, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_ff
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lmiui/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    iget v0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Lmiui/widget/NumberPicker;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    iget v0, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mHasSelectorWheel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a7

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_a7

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_14

    return v1

    :cond_14
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->removeAllCallbacks()V

    iget-object v2, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lmiui/widget/NumberPicker;->mLastDownEventY:F

    iput v2, p0, Lmiui/widget/NumberPicker;->mLastDownOrMoveEventY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/widget/NumberPicker;->mLastDownEventTime:J

    iput-boolean v1, p0, Lmiui/widget/NumberPicker;->mIngonreMoveEvents:Z

    iput-boolean v1, p0, Lmiui/widget/NumberPicker;->mShowSoftInputOnTap:Z

    iget v2, p0, Lmiui/widget/NumberPicker;->mLastDownEventY:F

    iget v3, p0, Lmiui/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    const/4 v4, 0x1

    if-gez v3, :cond_44

    iget v2, p0, Lmiui/widget/NumberPicker;->mScrollState:I

    if-nez v2, :cond_54

    iget-object v2, p0, Lmiui/widget/NumberPicker;->mPressedStateHelper:Lmiui/widget/NumberPicker$PressedStateHelper;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lmiui/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_54

    :cond_44
    iget v3, p0, Lmiui/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_54

    iget v2, p0, Lmiui/widget/NumberPicker;->mScrollState:I

    if-nez v2, :cond_54

    iget-object v2, p0, Lmiui/widget/NumberPicker;->mPressedStateHelper:Lmiui/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v2, v4}, Lmiui/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    :cond_54
    :goto_54
    iget-object v2, p0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_6a

    iget-object v2, p0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object v2, p0, Lmiui/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-direct {p0, v1}, Lmiui/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_a6

    :cond_6a
    iget-object v2, p0, Lmiui/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_7d

    iget-object v1, p0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object v1, p0, Lmiui/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_a6

    :cond_7d
    iget v2, p0, Lmiui/widget/NumberPicker;->mLastDownEventY:F

    iget v3, p0, Lmiui/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_90

    nop

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Lmiui/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_a6

    :cond_90
    iget v1, p0, Lmiui/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_a1

    nop

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {p0, v4, v1, v2}, Lmiui/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_a6

    :cond_a1
    iput-boolean v4, p0, Lmiui/widget/NumberPicker;->mShowSoftInputOnTap:Z

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->postBeginSoftInputOnLongPressCommand()V

    :goto_a6
    return v4

    :cond_a7
    :goto_a7
    return v1
.end method

.method protected onLayout(ZIIII)V
    .registers 18

    move-object v0, p0

    iget-boolean v1, v0, Lmiui/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v1, :cond_9

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    :cond_9
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMeasuredHeight()I

    move-result v2

    iget-object v3, v0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v3

    iget-object v4, v0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v4

    sub-int v5, v1, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v6, v2, v4

    div-int/lit8 v6, v6, 0x2

    add-int v7, v5, v3

    add-int v8, v6, v4

    iget-object v9, v0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9, v5, v6, v7, v8}, Landroid/widget/EditText;->layout(IIII)V

    if-eqz p1, :cond_4a

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->initializeSelectorWheel()V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->initializeFadingEdges()V

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getHeight()I

    move-result v9

    iget v10, v0, Lmiui/widget/NumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    iget v11, v0, Lmiui/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr v9, v11

    iput v9, v0, Lmiui/widget/NumberPicker;->mTopSelectionDividerTop:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v9, v11

    add-int/2addr v9, v10

    iput v9, v0, Lmiui/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    :cond_4a
    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_8

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    :cond_8
    iget v0, p0, Lmiui/widget/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Lmiui/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lmiui/widget/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Lmiui/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget v2, p0, Lmiui/widget/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMeasuredWidth()I

    move-result v3

    invoke-direct {p0, v2, v3, p1}, Lmiui/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v2

    iget v3, p0, Lmiui/widget/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMeasuredHeight()I

    move-result v4

    invoke-direct {p0, v3, v4, p2}, Lmiui/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lmiui/widget/NumberPicker;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget v0, p0, Lmiui/widget/NumberPicker;->mScrollState:I

    if-eqz v0, :cond_a

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    goto :goto_14

    :cond_a
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    if-nez v2, :cond_22

    const-string v2, ""

    :cond_22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e6

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_d

    goto/16 :goto_e6

    :cond_d
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_17

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_17
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_59

    if-eq v0, v2, :cond_28

    goto/16 :goto_e5

    :cond_28
    iget-boolean v2, p0, Lmiui/widget/NumberPicker;->mIngonreMoveEvents:Z

    if-eqz v2, :cond_2e

    goto/16 :goto_e5

    :cond_2e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v4, p0, Lmiui/widget/NumberPicker;->mScrollState:I

    if-eq v4, v3, :cond_4a

    iget v1, p0, Lmiui/widget/NumberPicker;->mLastDownEventY:F

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    iget v4, p0, Lmiui/widget/NumberPicker;->mTouchSlop:I

    if-le v1, v4, :cond_49

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->removeAllCallbacks()V

    invoke-direct {p0, v3}, Lmiui/widget/NumberPicker;->onScrollStateChange(I)V

    :cond_49
    goto :goto_55

    :cond_4a
    iget v4, p0, Lmiui/widget/NumberPicker;->mLastDownOrMoveEventY:F

    sub-float v4, v2, v4

    float-to-int v4, v4

    invoke-virtual {p0, v1, v4}, Lmiui/widget/NumberPicker;->scrollBy(II)V

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    :goto_55
    iput v2, p0, Lmiui/widget/NumberPicker;->mLastDownOrMoveEventY:F

    goto/16 :goto_e5

    :cond_59
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->removeBeginSoftInputCommand()V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    iget-object v4, p0, Lmiui/widget/NumberPicker;->mPressedStateHelper:Lmiui/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v4}, Lmiui/widget/NumberPicker$PressedStateHelper;->cancel()V

    iget-object v4, p0, Lmiui/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    iget v6, p0, Lmiui/widget/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lmiui/widget/NumberPicker;->mMaximumFlingVelocity:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-lt v6, v7, :cond_84

    int-to-float v6, v5

    iget v7, p0, Lmiui/widget/NumberPicker;->mMaxFlingSpeedFactor:F

    mul-float/2addr v6, v7

    float-to-int v5, v6

    :cond_84
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lmiui/widget/NumberPicker;->mMinimumFlingVelocity:I

    if-le v6, v7, :cond_93

    invoke-direct {p0, v5}, Lmiui/widget/NumberPicker;->fling(I)V

    invoke-direct {p0, v2}, Lmiui/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_dd

    :cond_93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    int-to-float v7, v6

    iget v8, p0, Lmiui/widget/NumberPicker;->mLastDownEventY:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iget-wide v10, p0, Lmiui/widget/NumberPicker;->mLastDownEventTime:J

    sub-long/2addr v8, v10

    iget v10, p0, Lmiui/widget/NumberPicker;->mTouchSlop:I

    if-gt v7, v10, :cond_d7

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v8, v10

    if-gez v10, :cond_d7

    iget-boolean v10, p0, Lmiui/widget/NumberPicker;->mShowSoftInputOnTap:Z

    if-eqz v10, :cond_bc

    iput-boolean v1, p0, Lmiui/widget/NumberPicker;->mShowSoftInputOnTap:Z

    goto :goto_da

    :cond_bc
    iget v10, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    div-int v10, v6, v10

    sub-int/2addr v10, v3

    if-lez v10, :cond_cc

    invoke-direct {p0, v3}, Lmiui/widget/NumberPicker;->changeValueByOne(Z)V

    iget-object v2, p0, Lmiui/widget/NumberPicker;->mPressedStateHelper:Lmiui/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v2, v3}, Lmiui/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_d6

    :cond_cc
    if-gez v10, :cond_d6

    invoke-direct {p0, v1}, Lmiui/widget/NumberPicker;->changeValueByOne(Z)V

    iget-object v11, p0, Lmiui/widget/NumberPicker;->mPressedStateHelper:Lmiui/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v11, v2}, Lmiui/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    :cond_d6
    :goto_d6
    goto :goto_da

    :cond_d7
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    :goto_da
    invoke-direct {p0, v1}, Lmiui/widget/NumberPicker;->onScrollStateChange(I)V

    :goto_dd
    iget-object v1, p0, Lmiui/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_e5
    return v3

    :cond_e6
    :goto_e6
    return v1
.end method

.method public scrollBy(II)V
    .registers 8

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSelectorIndices:[I

    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    const/4 v2, 0x1

    if-nez v1, :cond_14

    if-lez p2, :cond_14

    aget v1, v0, v2

    iget v3, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    if-gt v1, v3, :cond_14

    iget v1, p0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    return-void

    :cond_14
    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_25

    if-gez p2, :cond_25

    aget v1, v0, v2

    iget v3, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    if-lt v1, v3, :cond_25

    iget v1, p0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    return-void

    :cond_25
    iget v1, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    :cond_2a
    :goto_2a
    iget v1, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v3, p0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int v3, v1, v3

    iget v4, p0, Lmiui/widget/NumberPicker;->mSelectorTextGapHeight:I

    if-le v3, v4, :cond_50

    iget v3, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v1, v3

    iput v1, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->decrementSelectorIndices([I)V

    aget v1, v0, v2

    invoke-direct {p0, v1, v2}, Lmiui/widget/NumberPicker;->setValueInternal(IZ)V

    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2a

    aget v1, v0, v2

    iget v3, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    if-gt v1, v3, :cond_2a

    iget v1, p0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_2a

    :cond_50
    :goto_50
    iget v1, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v3, p0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int v3, v1, v3

    iget v4, p0, Lmiui/widget/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v4, v4

    if-ge v3, v4, :cond_77

    iget v3, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v1, v3

    iput v1, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->incrementSelectorIndices([I)V

    aget v1, v0, v2

    invoke-direct {p0, v1, v2}, Lmiui/widget/NumberPicker;->setValueInternal(IZ)V

    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_50

    aget v1, v0, v2

    iget v3, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    if-lt v1, v3, :cond_50

    iget v1, p0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_50

    :cond_77
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz p1, :cond_d

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_13

    :cond_d
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    :goto_13
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->updateInputTextView()Z

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->initializeSelectorWheelIndices()V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->tryComputeMaxWidth()V

    return-void
.end method

.method public setFormatter(Lmiui/widget/NumberPicker$Formatter;)V
    .registers 3

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mFormatter:Lmiui/widget/NumberPicker$Formatter;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Lmiui/widget/NumberPicker;->mFormatter:Lmiui/widget/NumberPicker$Formatter;

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->initializeSelectorWheelIndices()V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->updateInputTextView()Z

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    if-nez p1, :cond_10

    :cond_6
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_10
    iput-object p1, p0, Lmiui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    :cond_15
    return-void
.end method

.method public setMaxFlingSpeedFactor(F)V
    .registers 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_7

    iput p1, p0, Lmiui/widget/NumberPicker;->mMaxFlingSpeedFactor:F

    :cond_7
    return-void
.end method

.method public setMaxValue(I)V
    .registers 4

    iget v0, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    if-ltz p1, :cond_2c

    iput p1, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    iget v0, p0, Lmiui/widget/NumberPicker;->mValue:I

    if-ge p1, v0, :cond_f

    iput p1, p0, Lmiui/widget/NumberPicker;->mValue:I

    :cond_f
    iget v0, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmiui/widget/NumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    if-le v0, v1, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->initializeSelectorWheelIndices()V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->updateInputTextView()Z

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->tryComputeMaxWidth()V

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    return-void

    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinValue(I)V
    .registers 4

    iget v0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    if-ltz p1, :cond_2c

    iput p1, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    iget v0, p0, Lmiui/widget/NumberPicker;->mValue:I

    if-le p1, v0, :cond_f

    iput p1, p0, Lmiui/widget/NumberPicker;->mValue:I

    :cond_f
    iget v0, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmiui/widget/NumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    if-le v0, v1, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    invoke-virtual {p0, v0}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->initializeSelectorWheelIndices()V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->updateInputTextView()Z

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->tryComputeMaxWidth()V

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->invalidate()V

    return-void

    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minValue must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnLongPressUpdateInterval(J)V
    .registers 3

    iput-wide p1, p0, Lmiui/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-void
.end method

.method public setOnScrollListener(Lmiui/widget/NumberPicker$OnScrollListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/NumberPicker;->mOnScrollListener:Lmiui/widget/NumberPicker$OnScrollListener;

    return-void
.end method

.method public setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/NumberPicker;->mOnValueChangeListener:Lmiui/widget/NumberPicker$OnValueChangeListener;

    return-void
.end method

.method public setValue(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/NumberPicker;->setValueInternal(IZ)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .registers 4

    iget v0, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmiui/widget/NumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-eqz p1, :cond_11

    if-eqz v0, :cond_17

    :cond_11
    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v1, :cond_17

    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    :cond_17
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->refreshWheel()V

    return-void
.end method
