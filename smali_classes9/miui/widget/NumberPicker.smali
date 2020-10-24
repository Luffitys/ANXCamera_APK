.class public Lmiui/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source ""


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
    .locals 3

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

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    :array_0
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
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/miui/internal/R$attr;->numberPickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lmiui/widget/NumberPicker;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lmiui/widget/NumberPicker;->mId:I

    const/4 v0, 0x1

    iput v0, p0, Lmiui/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    const/4 v1, 0x2

    iput v1, p0, Lmiui/widget/NumberPicker;->MARGIN_LABEL_TOP:I

    const/16 v2, 0x190

    iput v2, p0, Lmiui/widget/NumberPicker;->mMaxWidth:I

    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Lmiui/widget/NumberPicker;->mLongPressUpdateInterval:J

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lmiui/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    const/4 v2, 0x3

    new-array v2, v2, [I

    iput-object v2, p0, Lmiui/widget/NumberPicker;->mSelectorIndices:[I

    const/high16 v2, -0x80000000

    iput v2, p0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    const/4 v2, 0x0

    iput v2, p0, Lmiui/widget/NumberPicker;->mScrollState:I

    const/4 v3, -0x1

    iput v3, p0, Lmiui/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lmiui/widget/NumberPicker;->mMaxFlingSpeedFactor:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    sget v6, Lcom/miui/internal/R$dimen;->number_picker_label_margin_left:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Lmiui/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    sget v6, Lcom/miui/internal/R$dimen;->number_picker_label_margin_top:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Lmiui/widget/NumberPicker;->MARGIN_LABEL_TOP:I

    invoke-direct {p0, p2, p3}, Lmiui/widget/NumberPicker;->parseStyle(Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->initSoundPlayer()V

    iput-boolean v0, p0, Lmiui/widget/NumberPicker;->mHasSelectorWheel:Z

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 p3, 0x40000000    # 2.0f

    invoke-static {v0, p3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lmiui/widget/NumberPicker;->mSelectionDividerHeight:I

    const/high16 p2, 0x42340000    # 45.0f

    mul-float/2addr p2, v5

    float-to-int p2, p2

    iput p2, p0, Lmiui/widget/NumberPicker;->mSelectionDividersDistance:I

    iput v3, p0, Lmiui/widget/NumberPicker;->mMinHeight:I

    const/high16 p2, 0x434a0000    # 202.0f

    mul-float/2addr v5, p2

    float-to-int p2, v5

    iput p2, p0, Lmiui/widget/NumberPicker;->mMaxHeight:I

    if-eq v3, v3, :cond_1

    if-eq p2, v3, :cond_1

    if-gt v3, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minHeight > maxHeight"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput v3, p0, Lmiui/widget/NumberPicker;->mMinWidth:I

    iput v3, p0, Lmiui/widget/NumberPicker;->mMaxWidth:I

    if-eq v3, v3, :cond_3

    if-eq v3, v3, :cond_3

    if-gt v3, v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minWidth > maxWidth"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    iget p2, p0, Lmiui/widget/NumberPicker;->mMaxWidth:I

    if-ne p2, v3, :cond_4

    move p2, v0

    goto :goto_2

    :cond_4
    move p2, v2

    :goto_2
    iput-boolean p2, p0, Lmiui/widget/NumberPicker;->mComputeMaxWidth:Z

    new-instance p2, Lmiui/widget/NumberPicker$PressedStateHelper;

    invoke-direct {p2, p0}, Lmiui/widget/NumberPicker$PressedStateHelper;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object p2, p0, Lmiui/widget/NumberPicker;->mPressedStateHelper:Lmiui/widget/NumberPicker$PressedStateHelper;

    iget-boolean p2, p0, Lmiui/widget/NumberPicker;->mHasSelectorWheel:Z

    xor-int/2addr p2, v0

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    sget p3, Lcom/miui/internal/R$layout;->numberpicker_layout:I

    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p2, Lcom/miui/internal/R$id;->numberpicker_input:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-instance p3, Lmiui/widget/NumberPicker$1;

    invoke-direct {p3, p0}, Lmiui/widget/NumberPicker$1;-><init>(Lmiui/widget/NumberPicker;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p2, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-array p3, v0, [Landroid/text/InputFilter;

    new-instance v4, Lmiui/widget/NumberPicker$InputTextFilter;

    invoke-direct {v4, p0}, Lmiui/widget/NumberPicker$InputTextFilter;-><init>(Lmiui/widget/NumberPicker;)V

    aput-object v4, p3, v2

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object p2, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    iget-object p2, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 p3, 0x6

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object p2, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object p2, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const p3, 0x800003

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setGravity(I)V

    iget-object p2, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setScaleX(F)V

    iget-object p2, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setSaveEnabled(Z)V

    iget-object p2, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget p3, p0, Lmiui/widget/NumberPicker;->mTextPadding:I

    invoke-virtual {p2}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lmiui/widget/NumberPicker;->mTextPadding:I

    iget-object v4, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v4

    invoke-virtual {p2, p3, v1, v2, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lmiui/widget/NumberPicker;->mTouchSlop:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    iput p2, p0, Lmiui/widget/NumberPicker;->mMinimumFlingVelocity:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lmiui/widget/NumberPicker;->mMaximumFlingVelocity:I

    iget-object p1, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lmiui/widget/NumberPicker;->mTextSize:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget p2, p0, Lmiui/widget/NumberPicker;->mTextSizeHighlight:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p2, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p2, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    sget-object p3, Landroid/widget/LinearLayout;->ENABLED_STATE_SET:[I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iput-object p1, p0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmiui/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lmiui/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object p1, p0, Lmiui/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    iget p2, p0, Lmiui/widget/NumberPicker;->mLabelTextColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lmiui/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    iget p2, p0, Lmiui/widget/NumberPicker;->mLabelTextSize:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p1, p0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {p3, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p1, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lmiui/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->updateInputTextView()Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    :cond_5
    return-void
.end method

.method static synthetic access$100(Lmiui/widget/NumberPicker;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1000(Lmiui/widget/NumberPicker;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiui/widget/NumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic access$1100(Lmiui/widget/NumberPicker;)Z
    .locals 0

    iget-boolean p0, p0, Lmiui/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p0
.end method

.method static synthetic access$1102(Lmiui/widget/NumberPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1180(Lmiui/widget/NumberPicker;I)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1200(Lmiui/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Lmiui/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    return p0
.end method

.method static synthetic access$1300(Lmiui/widget/NumberPicker;)Z
    .locals 0

    iget-boolean p0, p0, Lmiui/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p0
.end method

.method static synthetic access$1302(Lmiui/widget/NumberPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1380(Lmiui/widget/NumberPicker;I)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1400(Lmiui/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Lmiui/widget/NumberPicker;->mTopSelectionDividerTop:I

    return p0
.end method

.method static synthetic access$1500(Lmiui/widget/NumberPicker;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$1600(Lmiui/widget/NumberPicker;)J
    .locals 2

    iget-wide v0, p0, Lmiui/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$1702(Lmiui/widget/NumberPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->mIngonreMoveEvents:Z

    return p1
.end method

.method static synthetic access$1800(Lmiui/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Lmiui/widget/NumberPicker;->mSelectionDividerHeight:I

    return p0
.end method

.method static synthetic access$1900(Lmiui/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Lmiui/widget/NumberPicker;->mValue:I

    return p0
.end method

.method static synthetic access$200(Lmiui/widget/NumberPicker;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2000(Lmiui/widget/NumberPicker;)Z
    .locals 0

    iget-boolean p0, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    return p0
.end method

.method static synthetic access$2100(Lmiui/widget/NumberPicker;I)I
    .locals 0

    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lmiui/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    return p0
.end method

.method static synthetic access$2300(Lmiui/widget/NumberPicker;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600()[C
    .locals 1

    sget-object v0, Lmiui/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$700(Lmiui/widget/NumberPicker;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lmiui/widget/NumberPicker;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lmiui/widget/NumberPicker;)I
    .locals 0

    iget p0, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    return p0
.end method

.method private changeValueByOne(Z)V
    .locals 13

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/NumberPicker;->mPreviousScrollerY:I

    if-eqz p1, :cond_1

    iget-object v1, p0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget p1, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v5, p1

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    const/16 v12, 0x12c

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget p1, p0, Lmiui/widget/NumberPicker;->mValue:I

    add-int/2addr p1, v0

    goto :goto_1

    :cond_3
    iget p1, p0, Lmiui/widget/NumberPicker;->mValue:I

    sub-int/2addr p1, v0

    :goto_1
    invoke-direct {p0, p1, v0}, Lmiui/widget/NumberPicker;->setValueInternal(IZ)V

    :goto_2
    return-void
.end method

.method private decrementSelectorIndices([I)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    aget v0, p1, v1

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    :cond_1
    const/4 v1, 0x0

    aput v0, p1, v1

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 3

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    if-lt p1, v1, :cond_3

    iget v2, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    if-le p1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v2, :cond_2

    sub-int p0, p1, v1

    aget-object p0, v2, p0

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, ""

    :goto_1
    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 7

    iget v0, p0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    iget v1, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iput v1, p0, Lmiui/widget/NumberPicker;->mPreviousScrollerY:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v3, v2, 0x2

    if-le v1, v3, :cond_1

    if-lez v0, :cond_0

    neg-int v2, v2

    :cond_0
    add-int/2addr v0, v2

    :cond_1
    move v5, v0

    iget-object v1, p0, Lmiui/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x320

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private fling(I)V
    .locals 10

    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/NumberPicker;->mPreviousScrollerY:I

    iget-object v1, p0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    if-lez p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const v3, 0x7fffffff

    :goto_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmiui/widget/NumberPicker;->mFormatter:Lmiui/widget/NumberPicker$Formatter;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiui/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/miui/internal/util/SimpleNumberFormatter;->format(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getAlphaGradient(FIZ)I
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    return p2

    :cond_0
    if-eqz p3, :cond_1

    neg-float p0, p1

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p0, p1

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p0, p1

    float-to-int p0, p0

    goto :goto_0

    :cond_1
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    :goto_0
    const p1, 0xffffff

    and-int/2addr p1, p2

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget p0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    add-int/2addr p0, v0

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :catch_0
    iget p0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    return p0
.end method

.method private getTextSize(FII)F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    int-to-float p0, p3

    return p0

    :cond_0
    sub-int/2addr p3, p2

    int-to-float p0, p3

    mul-float/2addr p1, p0

    int-to-float p0, p2

    add-float/2addr p1, p0

    return p1
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 1

    iget v0, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    iget p0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    if-le p1, v0, :cond_0

    sub-int/2addr p1, v0

    sub-int/2addr v0, p0

    rem-int/2addr p1, v0

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_0
    if-ge p1, p0, :cond_1

    sub-int p1, p0, p1

    sub-int p0, v0, p0

    rem-int/2addr p1, p0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    return p1
.end method

.method private incrementSelectorIndices([I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget v2, p1, v1

    aput v2, p1, v0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private initSoundPlayer()V
    .locals 2

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSoundPlayHandler:Lmiui/widget/NumberPicker$SoundPlayHandler;

    if-nez v0, :cond_0

    const-string v0, "NumberPicker_sound_play"

    invoke-static {v0}, Lcom/miui/internal/util/async/WorkerThreads;->aquireWorker(Ljava/lang/String;)Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lmiui/widget/NumberPicker$SoundPlayHandler;

    invoke-direct {v1, v0}, Lmiui/widget/NumberPicker$SoundPlayHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lmiui/widget/NumberPicker;->mSoundPlayHandler:Lmiui/widget/NumberPicker$SoundPlayHandler;

    iget p0, p0, Lmiui/widget/NumberPicker;->mId:I

    invoke-virtual {v1, p0}, Lmiui/widget/NumberPicker$SoundPlayHandler;->init(I)V

    :cond_0
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVerticalFadingEdgeEnabled(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setFadingEdgeLength(I)V

    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 4

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->initializeSelectorWheelIndices()V

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSelectorIndices:[I

    array-length v1, v0

    iget v2, p0, Lmiui/widget/NumberPicker;->mTextSize:I

    mul-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    move v1, v2

    :cond_0
    array-length v0, v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lmiui/widget/NumberPicker;->mSelectorTextGapHeight:I

    iget v1, p0, Lmiui/widget/NumberPicker;->mTextSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBaseline()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    iput v0, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->updateInputTextView()Z

    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSelectorIndices:[I

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lmiui/widget/NumberPicker;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, -0x1

    add-int/2addr v3, v1

    iget-boolean v4, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lmiui/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    :cond_0
    aput v3, v0, v2

    aget v3, v0, v2

    invoke-direct {p0, v3}, Lmiui/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 3

    const/4 p0, -0x1

    if-ne p2, p0, :cond_0

    return p1

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    return p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown measure mode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    :cond_3
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    iget p1, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr p1, v1

    iget v2, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    rem-int/2addr p1, v2

    iget v2, p0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v2, p1

    const/4 p1, 0x0

    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v5, v4, 0x2

    if-le v3, v5, :cond_1

    if-lez v2, :cond_0

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_0
    add-int/2addr v2, v4

    :cond_1
    :goto_0
    add-int/2addr v1, v2

    invoke-virtual {p0, p1, v1}, Lmiui/widget/NumberPicker;->scrollBy(II)V

    return v0

    :cond_2
    return p1
.end method

.method private notifyChange(I)V
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->playSound()V

    const v0, 0x10000005

    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->performHapticFeedback(I)Z

    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mOnValueChangeListener:Lmiui/widget/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_1

    iget v1, p0, Lmiui/widget/NumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lmiui/widget/NumberPicker$OnValueChangeListener;->onValueChange(Lmiui/widget/NumberPicker;II)V

    :cond_1
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 2

    iget v0, p0, Lmiui/widget/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lmiui/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->stopSoundPlay()V

    :cond_2
    iput p1, p0, Lmiui/widget/NumberPicker;->mScrollState:I

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mOnScrollListener:Lmiui/widget/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p0, p1}, Lmiui/widget/NumberPicker$OnScrollListener;->onScrollStateChange(Lmiui/widget/NumberPicker;I)V

    :cond_3
    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 1

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->updateInputTextView()Z

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lmiui/widget/NumberPicker;->mScrollState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->updateInputTextView()Z

    :cond_2
    :goto_0
    return-void
.end method

.method private parseStyle(Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/miui/internal/R$styleable;->NumberPicker:[I

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/miui/internal/R$styleable;->NumberPicker_android_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lmiui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    sget p2, Lcom/miui/internal/R$styleable;->NumberPicker_textSizeHighlight:I

    sget v1, Lcom/miui/internal/R$dimen;->number_picker_text_size_highlight_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/NumberPicker;->mTextSizeHighlight:I

    sget p2, Lcom/miui/internal/R$styleable;->NumberPicker_textSizeHint:I

    sget v1, Lcom/miui/internal/R$dimen;->number_picker_text_size_hint_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/NumberPicker;->mTextSizeHint:I

    sget p2, Lcom/miui/internal/R$styleable;->NumberPicker_android_labelTextSize:I

    sget v1, Lcom/miui/internal/R$dimen;->number_picker_label_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/NumberPicker;->mLabelTextSize:I

    sget p2, Lcom/miui/internal/R$styleable;->NumberPicker_android_textColorHighlight:I

    sget v1, Lcom/miui/internal/R$color;->number_picker_highlight_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/NumberPicker;->mTextColorHilight:I

    sget p2, Lcom/miui/internal/R$styleable;->NumberPicker_android_textColorHint:I

    sget v1, Lcom/miui/internal/R$color;->number_picker_hint_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/NumberPicker;->mTextColorHint:I

    sget p2, Lcom/miui/internal/R$styleable;->NumberPicker_labelTextColor:I

    sget v1, Lcom/miui/internal/R$color;->number_picker_label_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/NumberPicker;->mLabelTextColor:I

    sget p2, Lcom/miui/internal/R$styleable;->NumberPicker_labelPadding:I

    sget v1, Lcom/miui/internal/R$dimen;->number_picker_label_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/NumberPicker;->mTextPadding:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private playSound()V
    .locals 0

    iget-object p0, p0, Lmiui/widget/NumberPicker;->mSoundPlayHandler:Lmiui/widget/NumberPicker$SoundPlayHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmiui/widget/NumberPicker$SoundPlayHandler;->play()V

    :cond_0
    return-void
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 3

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object v0, p0, Lmiui/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object v0, p0, Lmiui/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$300(Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    iget-object p1, p0, Lmiui/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postSetSelectionCommand(II)V
    .locals 1

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSetSelectionCommand:Lmiui/widget/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/widget/NumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Lmiui/widget/NumberPicker$SetSelectionCommand;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object v0, p0, Lmiui/widget/NumberPicker;->mSetSelectionCommand:Lmiui/widget/NumberPicker$SetSelectionCommand;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSetSelectionCommand:Lmiui/widget/NumberPicker$SetSelectionCommand;

    invoke-static {v0, p1}, Lmiui/widget/NumberPicker$SetSelectionCommand;->access$402(Lmiui/widget/NumberPicker$SetSelectionCommand;I)I

    iget-object p1, p0, Lmiui/widget/NumberPicker;->mSetSelectionCommand:Lmiui/widget/NumberPicker$SetSelectionCommand;

    invoke-static {p1, p2}, Lmiui/widget/NumberPicker$SetSelectionCommand;->access$502(Lmiui/widget/NumberPicker$SetSelectionCommand;I)I

    iget-object p1, p0, Lmiui/widget/NumberPicker;->mSetSelectionCommand:Lmiui/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private refreshWheel()V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->initializeSelectorWheelIndices()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private releaseSoundPlayer()V
    .locals 2

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSoundPlayHandler:Lmiui/widget/NumberPicker$SoundPlayHandler;

    if-eqz v0, :cond_0

    iget v1, p0, Lmiui/widget/NumberPicker;->mId:I

    invoke-virtual {v0, v1}, Lmiui/widget/NumberPicker$SoundPlayHandler;->release(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/NumberPicker;->mSoundPlayHandler:Lmiui/widget/NumberPicker$SoundPlayHandler;

    :cond_0
    return-void
.end method

.method private removeAllCallbacks()V
    .locals 1

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSetSelectionCommand:Lmiui/widget/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object p0, p0, Lmiui/widget/NumberPicker;->mPressedStateHelper:Lmiui/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p0}, Lmiui/widget/NumberPicker$PressedStateHelper;->cancel()V

    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiui/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiui/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p3, p1}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 1

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    goto :goto_0

    :cond_0
    iget v0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    iget v0, p0, Lmiui/widget/NumberPicker;->mValue:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lmiui/widget/NumberPicker;->mValue:I

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->updateInputTextView()Z

    if-eqz p2, :cond_2

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->notifyChange(I)V

    :cond_2
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->initializeSelectorWheelIndices()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private stopSoundPlay()V
    .locals 0

    iget-object p0, p0, Lmiui/widget/NumberPicker;->mSoundPlayHandler:Lmiui/widget/NumberPicker$SoundPlayHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmiui/widget/NumberPicker$SoundPlayHandler;->stop()V

    :cond_0
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 5

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mComputeMaxWidth:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    iget-object v1, p0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v2, p0, Lmiui/widget/NumberPicker;->mTextSizeHighlight:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v2, v1, :cond_2

    iget-object v1, p0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    cmpl-float v3, v1, v0

    if-lez v3, :cond_1

    move v0, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    invoke-direct {p0, v1}, Lmiui/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    int-to-float v0, v0

    goto :goto_2

    :cond_3
    array-length v1, v1

    :goto_1
    if-ge v2, v1, :cond_5

    iget-object v3, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, v0

    if-lez v4, :cond_4

    move v0, v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_2
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

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lmiui/widget/NumberPicker;->mMaxWidth:I

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_7

    iget v1, p0, Lmiui/widget/NumberPicker;->mMinWidth:I

    int-to-float v2, v1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6

    float-to-int v0, v0

    iput v0, p0, Lmiui/widget/NumberPicker;->mMaxWidth:I

    goto :goto_3

    :cond_6
    iput v1, p0, Lmiui/widget/NumberPicker;->mMaxWidth:I

    :cond_7
    :goto_3
    return-void
.end method

.method private updateInputTextView()Z
    .locals 3

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lmiui/widget/NumberPicker;->mValue:I

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lmiui/widget/NumberPicker;->mValue:I

    iget v2, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lmiui/widget/NumberPicker;->mScrollState:I

    if-eqz v1, :cond_1

    iput-object v0, p0, Lmiui/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->updateInputTextView()Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmiui/widget/NumberPicker;->setValueInternal(IZ)V

    :goto_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget v2, p0, Lmiui/widget/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lmiui/widget/NumberPicker;->mPreviousScrollerY:I

    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lmiui/widget/NumberPicker;->mPreviousScrollerY:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lmiui/widget/NumberPicker;->scrollBy(II)V

    iput v1, p0, Lmiui/widget/NumberPicker;->mPreviousScrollerY:I

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :goto_0
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lmiui/widget/NumberPicker;->mTopSelectionDividerTop:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    iget v1, p0, Lmiui/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    check-cast v1, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;

    const/4 v2, 0x7

    const/4 v3, -0x1

    const/16 v4, 0x100

    const/4 v5, 0x0

    const/16 v6, 0x40

    const/16 v7, 0x80

    if-eq p1, v2, :cond_5

    const/16 v2, 0x9

    if-eq p1, v2, :cond_4

    const/16 v2, 0xa

    if-eq p1, v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v0, v4}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iput v3, p0, Lmiui/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {v1, v0, v7}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iput v0, p0, Lmiui/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {v1, v0, v6, v5}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_2

    :cond_5
    iget p1, p0, Lmiui/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq p1, v0, :cond_6

    if-eq p1, v3, :cond_6

    invoke-virtual {v1, p1, v4}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    goto :goto_1

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    const/16 v2, 0x14

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_3

    :cond_1
    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    goto :goto_3

    :cond_3
    iget v1, p0, Lmiui/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_9

    const/4 p1, -0x1

    iput p1, p0, Lmiui/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    return v3

    :cond_4
    iget-boolean v1, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_6

    if-ne v0, v2, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_9

    goto :goto_1

    :cond_6
    :goto_0
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_9

    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    iput v0, p0, Lmiui/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->removeAllCallbacks()V

    iget-object p1, p0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_8

    if-ne v0, v2, :cond_7

    move p1, v3

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    :goto_2
    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->changeValueByOne(Z)V

    :cond_8
    return v3

    :cond_9
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lmiui/widget/NumberPicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->removeAllCallbacks()V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->removeAllCallbacks()V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->tryComputeMaxWidth()V

    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mAccessibilityNodeProvider:Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_1

    new-instance v0, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object v0, p0, Lmiui/widget/NumberPicker;->mAccessibilityNodeProvider:Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;

    :cond_1
    iget-object p0, p0, Lmiui/widget/NumberPicker;->mAccessibilityNodeProvider:Lmiui/widget/NumberPicker$AccessibilityNodeProviderImpl;

    return-object p0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 0

    const p0, 0x3f666666    # 0.9f

    return p0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object p0
.end method

.method public getMaxValue()I
    .locals 0

    iget p0, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    return p0
.end method

.method public getMinValue()I
    .locals 0

    iget p0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    return p0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 0

    const p0, 0x3f666666    # 0.9f

    return p0
.end method

.method public getValue()I
    .locals 0

    iget p0, p0, Lmiui/widget/NumberPicker;->mValue:I

    return p0
.end method

.method public getWrapSelectorWheel()Z
    .locals 0

    iget-boolean p0, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->initSoundPlayer()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->releaseSoundPlayer()V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->removeAllCallbacks()V

    const-string p0, "NumberPicker_sound_play"

    invoke-static {p0}, Lcom/miui/internal/util/async/WorkerThreads;->releaseWorker(Ljava/lang/String;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    iget v1, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v1, v1

    iget v2, p0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    iget v3, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    const/4 v4, 0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lmiui/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    iget-object v5, p0, Lmiui/widget/NumberPicker;->mSelectorIndices:[I

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    array-length v8, v5

    const/high16 v9, 0x40000000    # 2.0f

    if-ge v7, v8, :cond_2

    aget v8, v5, v7

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sub-float v10, v2, v1

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    iget v11, p0, Lmiui/widget/NumberPicker;->mTextSizeHighlight:I

    iget v12, p0, Lmiui/widget/NumberPicker;->mTextSizeHint:I

    invoke-direct {p0, v10, v11, v12}, Lmiui/widget/NumberPicker;->getTextSize(FII)F

    move-result v11

    iget-object v12, p0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v12, p0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v13, p0, Lmiui/widget/NumberPicker;->mTextColorHint:I

    invoke-direct {p0, v10, v13, v6}, Lmiui/widget/NumberPicker;->getAlphaGradient(FIZ)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    iget v12, p0, Lmiui/widget/NumberPicker;->mTextSizeHint:I

    int-to-float v12, v12

    sub-float v12, v11, v12

    div-float/2addr v12, v9

    add-float/2addr v12, v1

    iget-object v13, p0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v12, v10, v12

    if-gez v12, :cond_1

    iget-object v12, p0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v13, p0, Lmiui/widget/NumberPicker;->mTextColorHilight:I

    invoke-direct {p0, v10, v13, v4}, Lmiui/widget/NumberPicker;->getAlphaGradient(FIZ)I

    move-result v10

    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setColor(I)V

    iget v10, p0, Lmiui/widget/NumberPicker;->mTextSizeHint:I

    int-to-float v10, v10

    sub-float/2addr v11, v10

    div-float/2addr v11, v9

    add-float/2addr v11, v1

    iget-object v9, p0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0, v11, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    iget v8, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    int-to-float v8, v8

    add-float/2addr v1, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lmiui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lmiui/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lmiui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-static {p0}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lmiui/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    div-float/2addr v3, v9

    sub-float/2addr v0, v3

    iget v3, p0, Lmiui/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1

    :cond_3
    iget v3, p0, Lmiui/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    div-float/2addr v3, v9

    add-float/2addr v0, v3

    iget v3, p0, Lmiui/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_1
    iget v1, p0, Lmiui/widget/NumberPicker;->mTextSizeHighlight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v2, v1

    iget v1, p0, Lmiui/widget/NumberPicker;->mLabelTextSize:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v2, v1

    iget v1, p0, Lmiui/widget/NumberPicker;->MARGIN_LABEL_TOP:I

    int-to-float v1, v1

    add-float/2addr v2, v1

    iget-object v1, p0, Lmiui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lmiui/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

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

    iget p0, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, p0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mHasSelectorWheel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->removeAllCallbacks()V

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lmiui/widget/NumberPicker;->mLastDownEventY:F

    iput v0, p0, Lmiui/widget/NumberPicker;->mLastDownOrMoveEventY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/widget/NumberPicker;->mLastDownEventTime:J

    iput-boolean v1, p0, Lmiui/widget/NumberPicker;->mIngonreMoveEvents:Z

    iput-boolean v1, p0, Lmiui/widget/NumberPicker;->mShowSoftInputOnTap:Z

    iget p1, p0, Lmiui/widget/NumberPicker;->mLastDownEventY:F

    iget v0, p0, Lmiui/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v2, 0x1

    if-gez v0, :cond_2

    iget p1, p0, Lmiui/widget/NumberPicker;->mScrollState:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lmiui/widget/NumberPicker;->mPressedStateHelper:Lmiui/widget/NumberPicker$PressedStateHelper;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lmiui/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lmiui/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    iget p1, p0, Lmiui/widget/NumberPicker;->mScrollState:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lmiui/widget/NumberPicker;->mPressedStateHelper:Lmiui/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v2}, Lmiui/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object p1, p0, Lmiui/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-direct {p0, v1}, Lmiui/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lmiui/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lmiui/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object p0, p0, Lmiui/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    :cond_5
    iget p1, p0, Lmiui/widget/NumberPicker;->mLastDownEventY:F

    iget v0, p0, Lmiui/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_6

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v3, p1

    invoke-direct {p0, v1, v3, v4}, Lmiui/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    :cond_6
    iget v0, p0, Lmiui/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v0, p1

    invoke-direct {p0, v2, v0, v1}, Lmiui/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    :cond_7
    iput-boolean v2, p0, Lmiui/widget/NumberPicker;->mShowSoftInputOnTap:Z

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->postBeginSoftInputOnLongPressCommand()V

    :goto_1
    return v2

    :cond_8
    :goto_2
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p3

    iget-object p4, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p4

    iget-object p5, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p5

    sub-int/2addr p2, p4

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p5

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/EditText;->layout(IIII)V

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->initializeSelectorWheel()V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->initializeFadingEdges()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    iget p2, p0, Lmiui/widget/NumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iget p3, p0, Lmiui/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr p1, p3

    iput p1, p0, Lmiui/widget/NumberPicker;->mTopSelectionDividerTop:I

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    add-int/2addr p1, p2

    iput p1, p0, Lmiui/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    :cond_0
    iget v0, p0, Lmiui/widget/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Lmiui/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lmiui/widget/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Lmiui/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget v0, p0, Lmiui/widget/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lmiui/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p1

    iget v0, p0, Lmiui/widget/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lmiui/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget v0, p0, Lmiui/widget/NumberPicker;->mScrollState:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mIngonreMoveEvents:Z

    if-eqz v0, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lmiui/widget/NumberPicker;->mScrollState:I

    if-eq v0, v3, :cond_4

    iget v0, p0, Lmiui/widget/NumberPicker;->mLastDownEventY:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lmiui/widget/NumberPicker;->mTouchSlop:I

    if-le v0, v1, :cond_5

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->removeAllCallbacks()V

    invoke-direct {p0, v3}, Lmiui/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lmiui/widget/NumberPicker;->mLastDownOrMoveEventY:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    invoke-virtual {p0, v1, v0}, Lmiui/widget/NumberPicker;->scrollBy(II)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_5
    :goto_0
    iput p1, p0, Lmiui/widget/NumberPicker;->mLastDownOrMoveEventY:F

    goto/16 :goto_3

    :cond_6
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->removeBeginSoftInputCommand()V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mPressedStateHelper:Lmiui/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker$PressedStateHelper;->cancel()V

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v5, p0, Lmiui/widget/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lmiui/widget/NumberPicker;->mMaximumFlingVelocity:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v4, v5, :cond_7

    int-to-float v0, v0

    iget v4, p0, Lmiui/widget/NumberPicker;->mMaxFlingSpeedFactor:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    :cond_7
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lmiui/widget/NumberPicker;->mMinimumFlingVelocity:I

    if-le v4, v5, :cond_8

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->fling(I)V

    invoke-direct {p0, v2}, Lmiui/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v4, v0

    iget v5, p0, Lmiui/widget/NumberPicker;->mLastDownEventY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-wide v7, p0, Lmiui/widget/NumberPicker;->mLastDownEventTime:J

    sub-long/2addr v5, v7

    iget p1, p0, Lmiui/widget/NumberPicker;->mTouchSlop:I

    if-gt v4, p1, :cond_b

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    int-to-long v7, p1

    cmp-long p1, v5, v7

    if-gez p1, :cond_b

    iget-boolean p1, p0, Lmiui/widget/NumberPicker;->mShowSoftInputOnTap:Z

    if-eqz p1, :cond_9

    iput-boolean v1, p0, Lmiui/widget/NumberPicker;->mShowSoftInputOnTap:Z

    goto :goto_1

    :cond_9
    iget p1, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/2addr v0, p1

    sub-int/2addr v0, v3

    if-lez v0, :cond_a

    invoke-direct {p0, v3}, Lmiui/widget/NumberPicker;->changeValueByOne(Z)V

    iget-object p1, p0, Lmiui/widget/NumberPicker;->mPressedStateHelper:Lmiui/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v3}, Lmiui/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    :cond_a
    if-gez v0, :cond_c

    invoke-direct {p0, v1}, Lmiui/widget/NumberPicker;->changeValueByOne(Z)V

    iget-object p1, p0, Lmiui/widget/NumberPicker;->mPressedStateHelper:Lmiui/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v2}, Lmiui/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    :cond_b
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    :cond_c
    :goto_1
    invoke-direct {p0, v1}, Lmiui/widget/NumberPicker;->onScrollStateChange(I)V

    :goto_2
    iget-object p1, p0, Lmiui/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_3
    return v3

    :cond_d
    :goto_4
    return v1
.end method

.method public scrollBy(II)V
    .locals 3

    iget-object p1, p0, Lmiui/widget/NumberPicker;->mSelectorIndices:[I

    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-lez p2, :cond_0

    aget v0, p1, v1

    iget v2, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    if-gt v0, v2, :cond_0

    :goto_0
    iget p1, p0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    return-void

    :cond_0
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_1

    if-gez p2, :cond_1

    aget v0, p1, v1

    iget v2, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    if-lt v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v0, p2

    iput v0, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    :cond_2
    :goto_1
    iget p2, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v0, p0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int v0, p2, v0

    iget v2, p0, Lmiui/widget/NumberPicker;->mSelectorTextGapHeight:I

    if-le v0, v2, :cond_3

    iget v0, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr p2, v0

    iput p2, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->decrementSelectorIndices([I)V

    aget p2, p1, v1

    invoke-direct {p0, p2, v1}, Lmiui/widget/NumberPicker;->setValueInternal(IZ)V

    iget-boolean p2, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_2

    aget p2, p1, v1

    iget v0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    if-gt p2, v0, :cond_2

    iget p2, p0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    iput p2, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    :cond_3
    :goto_2
    iget p2, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v0, p0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int v0, p2, v0

    iget v2, p0, Lmiui/widget/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v0, v2, :cond_4

    iget v0, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr p2, v0

    iput p2, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    invoke-direct {p0, p1}, Lmiui/widget/NumberPicker;->incrementSelectorIndices([I)V

    aget p2, p1, v1

    invoke-direct {p0, p2, v1}, Lmiui/widget/NumberPicker;->setValueInternal(IZ)V

    iget-boolean p2, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_3

    aget p2, p1, v1

    iget v0, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    if-lt p2, v0, :cond_3

    iget p2, p0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    iput p2, p0, Lmiui/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_2

    :cond_4
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lmiui/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v0, 0x80001

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->updateInputTextView()Z

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->initializeSelectorWheelIndices()V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->tryComputeMaxWidth()V

    return-void
.end method

.method public setFormatter(Lmiui/widget/NumberPicker$Formatter;)V
    .locals 1

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mFormatter:Lmiui/widget/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lmiui/widget/NumberPicker;->mFormatter:Lmiui/widget/NumberPicker$Formatter;

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->initializeSelectorWheelIndices()V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->updateInputTextView()Z

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iput-object p1, p0, Lmiui/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_2
    return-void
.end method

.method public setMaxFlingSpeedFactor(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iput p1, p0, Lmiui/widget/NumberPicker;->mMaxFlingSpeedFactor:F

    :cond_0
    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    iget v0, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    iput p1, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    iget v0, p0, Lmiui/widget/NumberPicker;->mValue:I

    if-ge p1, v0, :cond_1

    iput p1, p0, Lmiui/widget/NumberPicker;->mValue:I

    :cond_1
    iget p1, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    iget v0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSelectorIndices:[I

    array-length v0, v0

    if-le p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->initializeSelectorWheelIndices()V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->updateInputTextView()Z

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->tryComputeMaxWidth()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxValue must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinValue(I)V
    .locals 1

    iget v0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    iput p1, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    iget v0, p0, Lmiui/widget/NumberPicker;->mValue:I

    if-le p1, v0, :cond_1

    iput p1, p0, Lmiui/widget/NumberPicker;->mValue:I

    :cond_1
    iget p1, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    iget v0, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lmiui/widget/NumberPicker;->mSelectorIndices:[I

    array-length v0, v0

    if-le p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lmiui/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->initializeSelectorWheelIndices()V

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->updateInputTextView()Z

    invoke-direct {p0}, Lmiui/widget/NumberPicker;->tryComputeMaxWidth()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minValue must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0

    iput-wide p1, p0, Lmiui/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-void
.end method

.method public setOnScrollListener(Lmiui/widget/NumberPicker$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/NumberPicker;->mOnScrollListener:Lmiui/widget/NumberPicker$OnScrollListener;

    return-void
.end method

.method public setOnValueChangedListener(Lmiui/widget/NumberPicker$OnValueChangeListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/NumberPicker;->mOnValueChangeListener:Lmiui/widget/NumberPicker$OnValueChangeListener;

    return-void
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/NumberPicker;->setValueInternal(IZ)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2

    iget v0, p0, Lmiui/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Lmiui/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmiui/widget/NumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v0, :cond_2

    iput-boolean p1, p0, Lmiui/widget/NumberPicker;->mWrapSelectorWheel:Z

    :cond_2
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->refreshWheel()V

    return-void
.end method
