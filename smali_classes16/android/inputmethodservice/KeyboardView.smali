.class public Landroid/inputmethodservice/KeyboardView;
.super Landroid/view/View;
.source "KeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/KeyboardView$SwipeTracker;,
        Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEBOUNCE_TIME:I = 0x46

.field private static final DEBUG:Z = false

.field private static final DELAY_AFTER_PREVIEW:I = 0x46

.field private static final DELAY_BEFORE_PREVIEW:I = 0x0

.field private static final KEY_DELETE:[I

.field private static final LONGPRESS_TIMEOUT:I

.field private static final LONG_PRESSABLE_STATE_SET:[I

.field private static MAX_NEARBY_KEYS:I = 0x0

.field private static final MSG_LONGPRESS:I = 0x4

.field private static final MSG_REMOVE_PREVIEW:I = 0x2

.field private static final MSG_REPEAT:I = 0x3

.field private static final MSG_SHOW_PREVIEW:I = 0x1

.field private static final MULTITAP_INTERVAL:I = 0x320

.field private static final NOT_A_KEY:I = -0x1

.field private static final REPEAT_INTERVAL:I = 0x32

.field private static final REPEAT_START_DELAY:I = 0x190


# instance fields
.field private mAbortKey:Z

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackgroundDimAmount:F

.field private mBuffer:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mClipRegion:Landroid/graphics/Rect;

.field private final mCoordinates:[I

.field private mCurrentKey:I

.field private mCurrentKeyIndex:I

.field private mCurrentKeyTime:J

.field private mDirtyRect:Landroid/graphics/Rect;

.field private mDisambiguateSwipe:Z

.field private mDistances:[I

.field private mDownKey:I

.field private mDownTime:J

.field private mDrawPending:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mHandler:Landroid/os/Handler;

.field private mHeadsetRequiredToHearPasswordsAnnounced:Z

.field private mInMultiTap:Z

.field private mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

.field private mKeyBackground:Landroid/graphics/drawable/Drawable;

.field private mKeyIndices:[I

.field private mKeyTextColor:I

.field private mKeyTextSize:I

.field private mKeyboard:Landroid/inputmethodservice/Keyboard;

.field private mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

.field private mKeyboardChanged:Z

.field private mKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private mLabelTextSize:I

.field private mLastCodeX:I

.field private mLastCodeY:I

.field private mLastKey:I

.field private mLastKeyTime:J

.field private mLastMoveTime:J

.field private mLastSentIndex:I

.field private mLastTapTime:J

.field private mLastX:I

.field private mLastY:I

.field private mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

.field private mMiniKeyboardCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMiniKeyboardContainer:Landroid/view/View;

.field private mMiniKeyboardOffsetX:I

.field private mMiniKeyboardOffsetY:I

.field private mMiniKeyboardOnScreen:Z

.field private mOldPointerCount:I

.field private mOldPointerX:F

.field private mOldPointerY:F

.field private mPadding:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mPopupKeyboard:Landroid/widget/PopupWindow;

.field private mPopupLayout:I

.field private mPopupParent:Landroid/view/View;

.field private mPopupPreviewX:I

.field private mPopupPreviewY:I

.field private mPopupX:I

.field private mPopupY:I

.field private mPossiblePoly:Z

.field private mPreviewCentered:Z

.field private mPreviewHeight:I

.field private mPreviewLabel:Ljava/lang/StringBuilder;

.field private mPreviewOffset:I

.field private mPreviewPopup:Landroid/widget/PopupWindow;

.field private mPreviewText:Landroid/widget/TextView;

.field private mPreviewTextSizeLarge:I

.field private mProximityCorrectOn:Z

.field private mProximityThreshold:I

.field private mRepeatKeyIndex:I

.field private mShadowColor:I

.field private mShadowRadius:F

.field private mShowPreview:Z

.field private mShowTouchPoints:Z

.field private mStartX:I

.field private mStartY:I

.field private mSwipeThreshold:I

.field private mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

.field private mTapCount:I

.field private mVerticalCorrection:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, -0x5

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Landroid/inputmethodservice/KeyboardView;->KEY_DELETE:[I

    new-array v0, v0, [I

    const v1, 0x101023c

    aput v1, v0, v3

    sput-object v0, Landroid/inputmethodservice/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroid/inputmethodservice/KeyboardView;->LONGPRESS_TIMEOUT:I

    const/16 v0, 0xc

    sput v0, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x1120064

    invoke-direct {p0, p1, p2, v0}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v2, -0x1

    iput v2, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    const/4 v3, 0x2

    new-array v4, v3, [I

    iput-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewCentered:Z

    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    iput-boolean v5, v0, Landroid/inputmethodservice/KeyboardView;->mShowTouchPoints:Z

    iput v2, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v2, v0, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    const/16 v6, 0xc

    new-array v6, v6, [I

    iput-object v6, v0, Landroid/inputmethodservice/KeyboardView;->mKeyIndices:[I

    iput v2, v0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    new-instance v2, Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;-><init>(Landroid/inputmethodservice/KeyboardView$1;)V

    iput-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    sget v2, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    new-array v2, v2, [I

    iput-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    sget-object v2, Landroid/R$styleable;->KeyboardView:[I

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual {v1, v7, v2, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    nop

    const-string v10, "layout_inflater"

    invoke-virtual {v1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v13

    const/4 v14, 0x0

    :goto_64
    if-ge v14, v13, :cond_c7

    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v15

    packed-switch v15, :pswitch_data_174

    goto :goto_c3

    :pswitch_6e
    invoke-virtual {v2, v15, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    goto :goto_c3

    :pswitch_75
    invoke-virtual {v2, v15, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mVerticalCorrection:I

    goto :goto_c3

    :pswitch_7c
    const/16 v5, 0x50

    invoke-virtual {v2, v15, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewHeight:I

    goto :goto_c3

    :pswitch_85
    invoke-virtual {v2, v15, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewOffset:I

    goto :goto_c3

    :pswitch_8c
    invoke-virtual {v2, v15, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move v11, v5

    goto :goto_c3

    :pswitch_92
    const/high16 v5, -0x1000000

    invoke-virtual {v2, v15, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextColor:I

    goto :goto_c3

    :pswitch_9b
    const/16 v5, 0xe

    invoke-virtual {v2, v15, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mLabelTextSize:I

    goto :goto_c3

    :pswitch_a4
    const/16 v5, 0x12

    invoke-virtual {v2, v15, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    goto :goto_c3

    :pswitch_ad
    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_c3

    :pswitch_b4
    const/4 v5, 0x0

    invoke-virtual {v2, v15, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mShadowRadius:F

    goto :goto_c3

    :pswitch_bc
    invoke-virtual {v2, v15, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mShadowColor:I

    nop

    :goto_c3
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x1

    goto :goto_64

    :cond_c7
    iget-object v5, v0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    sget-object v14, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v5, v14}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v0, Landroid/inputmethodservice/KeyboardView;->mBackgroundDimAmount:F

    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    if-eqz v11, :cond_fc

    invoke-virtual {v10, v11, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewTextSizeLarge:I

    iget-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v5, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_fe

    :cond_fc
    iput-boolean v4, v0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    :goto_fe
    iget-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    int-to-float v5, v12

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    iget-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    iget-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    const/high16 v3, 0x43fa0000    # 500.0f

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v3

    float-to-int v3, v4

    iput v3, v0, Landroid/inputmethodservice/KeyboardView;->mSwipeThreshold:I

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11100e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Landroid/inputmethodservice/KeyboardView;->mDisambiguateSwipe:Z

    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    iput-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    return-void

    :pswitch_data_174
    .packed-switch 0x0
        :pswitch_bc
        :pswitch_b4
        :pswitch_ad
        :pswitch_a4
        :pswitch_9b
        :pswitch_92
        :pswitch_8c
        :pswitch_85
        :pswitch_7c
        :pswitch_75
        :pswitch_6e
    .end packed-switch
.end method

.method static synthetic access$100(Landroid/inputmethodservice/KeyboardView;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->showKey(I)V

    return-void
.end method

.method static synthetic access$1000(Landroid/inputmethodservice/KeyboardView;)I
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mStartX:I

    return v0
.end method

.method static synthetic access$1100(Landroid/inputmethodservice/KeyboardView;)I
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mStartY:I

    return v0
.end method

.method static synthetic access$1200(Landroid/inputmethodservice/KeyboardView;IIIJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    return-void
.end method

.method static synthetic access$1300(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/inputmethodservice/KeyboardView;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    return-void
.end method

.method static synthetic access$200(Landroid/inputmethodservice/KeyboardView;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/inputmethodservice/KeyboardView;)Z
    .registers 2

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->repeatKey()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/inputmethodservice/KeyboardView;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->openPopupIfRequired(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/inputmethodservice/KeyboardView;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mPossiblePoly:Z

    return v0
.end method

.method static synthetic access$600(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$SwipeTracker;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    return-object v0
.end method

.method static synthetic access$700(Landroid/inputmethodservice/KeyboardView;)I
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeThreshold:I

    return v0
.end method

.method static synthetic access$800(Landroid/inputmethodservice/KeyboardView;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mDisambiguateSwipe:Z

    return v0
.end method

.method static synthetic access$900(Landroid/inputmethodservice/KeyboardView;)I
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    return v0
.end method

.method private adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_24

    if-eqz p1, :cond_24

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_24

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    :cond_24
    return-object p1
.end method

.method private checkMultiTap(JI)V
    .registers 12

    const/4 v0, -0x1

    if-ne p3, v0, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v1, v1, p3

    iget-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v2, v2

    const-wide/16 v3, 0x320

    const/4 v5, 0x1

    if-le v2, v5, :cond_2a

    iput-boolean v5, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    iget-wide v6, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    add-long/2addr v6, v3

    cmp-long v2, p1, v6

    if-gez v2, :cond_27

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    if-ne p3, v2, :cond_27

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    add-int/2addr v0, v5

    iget-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v2, v2

    rem-int/2addr v0, v2

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    return-void

    :cond_27
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    return-void

    :cond_2a
    iget-wide v5, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    add-long/2addr v5, v3

    cmp-long v0, p1, v5

    if-gtz v0, :cond_35

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    if-eq p3, v0, :cond_38

    :cond_35
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    :cond_38
    return-void
.end method

.method private computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    if-nez v0, :cond_8

    return-void

    :cond_8
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_1e

    aget-object v4, v0, v3

    iget v5, v4, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v6, v4, Landroid/inputmethodservice/Keyboard$Key;->height:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v4, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_1e
    if-ltz v2, :cond_31

    if-nez v1, :cond_23

    goto :goto_31

    :cond_23
    int-to-float v3, v2

    const v4, 0x3fb33333    # 1.4f

    mul-float/2addr v3, v4

    int-to-float v4, v1

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    mul-int/2addr v3, v3

    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    return-void

    :cond_31
    :goto_31
    return-void
.end method

.method private detectAndSendKey(IIIJ)V
    .registers 12

    const/4 v0, -0x1

    if-eq p1, v0, :cond_51

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v2, v1

    if-ge p1, v2, :cond_51

    aget-object v1, v1, p1

    iget-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    iget-object v3, v1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v2, v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    goto :goto_4d

    :cond_1b
    iget-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sget v4, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    new-array v4, v4, [I

    invoke-static {v4, v0}, Ljava/util/Arrays;->fill([II)V

    invoke-direct {p0, p2, p3, v4}, Landroid/inputmethodservice/KeyboardView;->getKeyIndices(II[I)I

    iget-boolean v5, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    if-eqz v5, :cond_43

    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    if-eq v5, v0, :cond_3b

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    const/4 v3, -0x5

    sget-object v5, Landroid/inputmethodservice/KeyboardView;->KEY_DELETE:[I

    invoke-interface {v0, v3, v5}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    goto :goto_3d

    :cond_3b
    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    :goto_3d
    iget-object v0, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    aget v2, v0, v3

    :cond_43
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0, v2, v4}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0, v2}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    :goto_4d
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    iput-wide p4, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    :cond_51
    return-void
.end method

.method private dismissPopupKeyboard()V
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    :cond_13
    return-void
.end method

.method private getKeyIndices(II[I)I
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    const/4 v5, -0x1

    const/4 v6, -0x1

    iget v7, v0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    add-int/lit8 v7, v7, 0x1

    iget-object v8, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    const v9, 0x7fffffff

    invoke-static {v8, v9}, Ljava/util/Arrays;->fill([II)V

    iget-object v8, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v8, v1, v2}, Landroid/inputmethodservice/Keyboard;->getNearestKeys(II)[I

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :goto_20
    if-ge v10, v9, :cond_9c

    aget v11, v8, v10

    aget-object v11, v4, v11

    const/4 v12, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/inputmethodservice/Keyboard$Key;->isInside(II)Z

    move-result v13

    if-eqz v13, :cond_2f

    aget v5, v8, v10

    :cond_2f
    iget-boolean v14, v0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    if-eqz v14, :cond_3c

    invoke-virtual {v11, v1, v2}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v14

    move v12, v14

    iget v15, v0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    if-lt v14, v15, :cond_3e

    :cond_3c
    if-eqz v13, :cond_91

    :cond_3e
    iget-object v14, v11, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    const/16 v15, 0x20

    if-le v14, v15, :cond_91

    iget-object v14, v11, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v14, v14

    if-ge v12, v7, :cond_4f

    move v7, v12

    aget v6, v8, v10

    :cond_4f
    if-nez v3, :cond_54

    move-object/from16 v16, v4

    goto :goto_93

    :cond_54
    const/4 v15, 0x0

    :goto_55
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    array-length v2, v1

    if-ge v15, v2, :cond_8e

    aget v2, v1, v15

    if-le v2, v12, :cond_85

    add-int v2, v15, v14

    move-object/from16 v16, v4

    array-length v4, v1

    sub-int/2addr v4, v15

    sub-int/2addr v4, v14

    invoke-static {v1, v15, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v1, v15, v14

    array-length v2, v3

    sub-int/2addr v2, v15

    sub-int/2addr v2, v14

    invoke-static {v3, v15, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    :goto_71
    if-ge v1, v14, :cond_84

    add-int v2, v15, v1

    iget-object v4, v11, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v1

    aput v4, v3, v2

    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    add-int v4, v15, v1

    aput v12, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    :cond_84
    goto :goto_93

    :cond_85
    move-object/from16 v16, v4

    add-int/lit8 v15, v15, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    goto :goto_55

    :cond_8e
    move-object/from16 v16, v4

    goto :goto_93

    :cond_91
    move-object/from16 v16, v4

    :goto_93
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, v16

    goto :goto_20

    :cond_9c
    move-object/from16 v16, v4

    const/4 v1, -0x1

    if-ne v5, v1, :cond_a2

    move v5, v6

    :cond_a2
    return v5
.end method

.method private getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;
    .registers 6

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    if-gez v3, :cond_13

    goto :goto_14

    :cond_13
    move v1, v3

    :goto_14
    aget v1, v2, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_21
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private initGestureDetector()V
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_18

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/inputmethodservice/KeyboardView$2;

    invoke-direct {v2, p0}, Landroid/inputmethodservice/KeyboardView$2;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    :cond_18
    return-void
.end method

.method private onBufferDraw()V
    .registers 24

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_c

    iget-boolean v1, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    if-eqz v1, :cond_50

    :cond_c
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2a

    iget-boolean v4, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    if-eqz v4, :cond_4b

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v4

    if-ne v1, v4, :cond_2a

    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v4

    if-eq v1, v4, :cond_4b

    :cond_2a
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    new-instance v5, Landroid/graphics/Canvas;

    iget-object v6, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v5, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    :cond_4b
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    iput-boolean v2, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    :cond_50
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-nez v1, :cond_55

    return-void

    :cond_55
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget-object v10, v0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    iget-object v12, v0, Landroid/inputmethodservice/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    iget-object v13, v0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    iget v14, v0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    iget v15, v0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    iget-object v9, v0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    iget-object v8, v0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    iget v4, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextColor:I

    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v4, 0x0

    if-eqz v8, :cond_a9

    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_a9

    iget v5, v8, Landroid/inputmethodservice/Keyboard$Key;->x:I

    add-int/2addr v5, v14

    sub-int/2addr v5, v3

    iget v6, v12, Landroid/graphics/Rect;->left:I

    if-gt v5, v6, :cond_a9

    iget v5, v8, Landroid/inputmethodservice/Keyboard$Key;->y:I

    add-int/2addr v5, v15

    sub-int/2addr v5, v3

    iget v6, v12, Landroid/graphics/Rect;->top:I

    if-gt v5, v6, :cond_a9

    iget v5, v8, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v6, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v5, v6

    add-int/2addr v5, v14

    add-int/2addr v5, v3

    iget v6, v12, Landroid/graphics/Rect;->right:I

    if-lt v5, v6, :cond_a9

    iget v5, v8, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v6, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v5, v6

    add-int/2addr v5, v15

    add-int/2addr v5, v3

    iget v6, v12, Landroid/graphics/Rect;->bottom:I

    if-lt v5, v6, :cond_a9

    const/4 v4, 0x1

    move/from16 v16, v4

    goto :goto_ab

    :cond_a9
    move/from16 v16, v4

    :goto_ab
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    array-length v7, v9

    const/4 v4, 0x0

    :goto_b2
    if-ge v4, v7, :cond_1ec

    aget-object v6, v9, v4

    if-eqz v16, :cond_c2

    if-eq v8, v6, :cond_c2

    move/from16 v19, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    goto/16 :goto_1e0

    :cond_c2
    invoke-virtual {v6}, Landroid/inputmethodservice/Keyboard$Key;->getCurrentDrawableState()[I

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v3, v6, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-nez v3, :cond_d0

    const/16 v17, 0x0

    goto :goto_dc

    :cond_d0
    iget-object v3, v6, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {v0, v3}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    :goto_dc
    move-object/from16 v3, v17

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v18, v5

    iget v5, v6, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v19, v7

    iget v7, v2, Landroid/graphics/Rect;->right:I

    if-ne v5, v7, :cond_f6

    iget v5, v6, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    if-eq v5, v7, :cond_f3

    goto :goto_f6

    :cond_f3
    move-object/from16 v17, v2

    goto :goto_100

    :cond_f6
    :goto_f6
    iget v5, v6, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v7, v6, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v17, v2

    const/4 v2, 0x0

    invoke-virtual {v11, v2, v2, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_100
    iget v2, v6, Landroid/inputmethodservice/Keyboard$Key;->x:I

    add-int/2addr v2, v14

    int-to-float v2, v2

    iget v5, v6, Landroid/inputmethodservice/Keyboard$Key;->y:I

    add-int/2addr v5, v15

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v11, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v2, 0x2

    if-eqz v3, :cond_177

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_129

    iget-object v5, v6, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v5, v5

    if-ge v5, v2, :cond_129

    iget v5, v0, Landroid/inputmethodservice/KeyboardView;->mLabelTextSize:I

    int-to-float v5, v5

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_134

    :cond_129
    iget v5, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    int-to-float v5, v5

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_134
    iget v5, v0, Landroid/inputmethodservice/KeyboardView;->mShadowRadius:F

    iget v7, v0, Landroid/inputmethodservice/KeyboardView;->mShadowColor:I

    const/4 v2, 0x0

    invoke-virtual {v10, v5, v2, v2, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget v5, v6, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v7, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v7

    iget v7, v13, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v7

    const/4 v7, 0x2

    div-int/2addr v5, v7

    iget v2, v13, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    int-to-float v2, v5

    iget v5, v6, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget v7, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v7

    iget v7, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v7

    const/4 v7, 0x2

    div-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v10}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    invoke-virtual {v10}, Landroid/graphics/Paint;->descent()F

    move-result v21

    sub-float v7, v7, v21

    const/high16 v21, 0x40000000    # 2.0f

    div-float v7, v7, v21

    add-float/2addr v5, v7

    iget v7, v13, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    invoke-virtual {v1, v3, v2, v5, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v10, v2, v2, v2, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    move-object/from16 v20, v3

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    goto :goto_1d3

    :cond_177
    iget-object v2, v6, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1cd

    iget v2, v6, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v5, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v5

    iget v5, v13, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v5

    iget-object v5, v6, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v2, v5

    const/4 v5, 0x2

    div-int/2addr v2, v5

    iget v5, v13, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v5

    iget v5, v6, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget v7, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v7

    iget v7, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v7

    iget-object v7, v6, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int/2addr v5, v7

    const/4 v7, 0x2

    div-int/2addr v5, v7

    iget v7, v13, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v7

    int-to-float v7, v2

    move-object/from16 v20, v3

    int-to-float v3, v5

    invoke-virtual {v1, v7, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, v6, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v7, v6, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    move-object/from16 v21, v8

    iget-object v8, v6, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    move-object/from16 v22, v9

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, v6, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v3, v2

    int-to-float v3, v3

    neg-int v7, v5

    int-to-float v7, v7

    invoke-virtual {v1, v3, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1d3

    :cond_1cd
    move-object/from16 v20, v3

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    :goto_1d3
    iget v2, v6, Landroid/inputmethodservice/Keyboard$Key;->x:I

    neg-int v2, v2

    sub-int/2addr v2, v14

    int-to-float v2, v2

    iget v3, v6, Landroid/inputmethodservice/Keyboard$Key;->y:I

    neg-int v3, v3

    sub-int/2addr v3, v15

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_1e0
    add-int/lit8 v4, v4, 0x1

    move/from16 v7, v19

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto/16 :goto_b2

    :cond_1ec
    move/from16 v19, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-boolean v2, v0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-eqz v2, :cond_21c

    iget v2, v0, Landroid/inputmethodservice/KeyboardView;->mBackgroundDimAmount:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x18

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v2

    int-to-float v7, v2

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v2

    int-to-float v8, v2

    move-object v4, v1

    move/from16 v2, v19

    move-object/from16 v3, v21

    move-object/from16 v17, v22

    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_222

    :cond_21c
    move/from16 v2, v19

    move-object/from16 v3, v21

    move-object/from16 v17, v22

    :goto_222
    iget-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    iget-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method private onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z
    .registers 20

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, v6, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    sub-int/2addr v0, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, v6, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    sub-int/2addr v1, v2

    iget v2, v6, Landroid/inputmethodservice/KeyboardView;->mVerticalCorrection:I

    neg-int v3, v2

    if-lt v1, v3, :cond_1a

    add-int/2addr v1, v2

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    const/4 v2, 0x0

    invoke-direct {v6, v0, v1, v2}, Landroid/inputmethodservice/KeyboardView;->getKeyIndices(II[I)I

    move-result v11

    move/from16 v12, p2

    iput-boolean v12, v6, Landroid/inputmethodservice/KeyboardView;->mPossiblePoly:Z

    if-nez v8, :cond_32

    iget-object v2, v6, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->clear()V

    :cond_32
    iget-object v2, v6, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    invoke-virtual {v2, v7}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v2, v6, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    const/4 v3, 0x3

    const/4 v13, 0x1

    if-eqz v2, :cond_42

    if-eqz v8, :cond_42

    if-eq v8, v3, :cond_42

    return v13

    :cond_42
    iget-object v2, v6, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v7}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    const/4 v4, 0x4

    const/4 v14, -0x1

    if-eqz v2, :cond_5a

    invoke-direct {v6, v14}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    iget-object v2, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    return v13

    :cond_5a
    iget-boolean v2, v6, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-eqz v2, :cond_61

    if-eq v8, v3, :cond_61

    return v13

    :cond_61
    const-wide/16 v4, 0x0

    if-eqz v8, :cond_154

    if-eq v8, v13, :cond_e9

    const/4 v15, 0x2

    if-eq v8, v15, :cond_80

    if-eq v8, v3, :cond_6e

    goto/16 :goto_1c9

    :cond_6e
    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    iput-boolean v13, v6, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    invoke-direct {v6, v14}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    iget v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    invoke-virtual {v6, v2}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    goto/16 :goto_1c9

    :cond_80
    const/4 v3, 0x0

    if-eq v11, v14, :cond_c3

    iget v15, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ne v15, v14, :cond_92

    iput v11, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iget-wide v4, v6, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    sub-long v4, v9, v4

    iput-wide v4, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    move/from16 v16, v3

    goto :goto_c5

    :cond_92
    if-ne v11, v15, :cond_a1

    iget-wide v4, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    move/from16 v16, v3

    iget-wide v2, v6, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long v2, v9, v2

    add-long/2addr v4, v2

    iput-wide v4, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    const/4 v3, 0x1

    goto :goto_c7

    :cond_a1
    move/from16 v16, v3

    iget v2, v6, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    if-ne v2, v14, :cond_c5

    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    iget v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v2, v6, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    iget v2, v6, Landroid/inputmethodservice/KeyboardView;->mLastX:I

    iput v2, v6, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    iget v2, v6, Landroid/inputmethodservice/KeyboardView;->mLastY:I

    iput v2, v6, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    iget-wide v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v2, v9

    iget-wide v13, v6, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v2, v13

    iput-wide v2, v6, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    iput v11, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput-wide v4, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    goto :goto_c5

    :cond_c3
    move/from16 v16, v3

    :cond_c5
    :goto_c5
    move/from16 v3, v16

    :goto_c7
    if-nez v3, :cond_e0

    iget-object v2, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v2, -0x1

    if-eq v11, v2, :cond_e0

    iget-object v2, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v4, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    sget v5, Landroid/inputmethodservice/KeyboardView;->LONGPRESS_TIMEOUT:I

    int-to-long v13, v5

    invoke-virtual {v4, v2, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_e0
    iget v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    invoke-direct {v6, v2}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    iput-wide v9, v6, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    goto/16 :goto_1c9

    :cond_e9
    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    iget v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ne v11, v2, :cond_fa

    iget-wide v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    iget-wide v4, v6, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long v4, v9, v4

    add-long/2addr v2, v4

    iput-wide v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    goto :goto_10d

    :cond_fa
    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    iget v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v2, v6, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    iget-wide v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v2, v9

    iget-wide v13, v6, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v2, v13

    iput-wide v2, v6, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    iput v11, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput-wide v4, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    :goto_10d
    iget-wide v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    iget-wide v4, v6, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_129

    const-wide/16 v4, 0x46

    cmp-long v2, v2, v4

    if-gez v2, :cond_129

    iget v2, v6, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_129

    iput v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iget v0, v6, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    iget v1, v6, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    move v13, v0

    move v14, v1

    goto :goto_12b

    :cond_129
    move v13, v0

    move v14, v1

    :goto_12b
    const/4 v0, -0x1

    invoke-direct {v6, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    iget-object v1, v6, Landroid/inputmethodservice/KeyboardView;->mKeyIndices:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    iget v1, v6, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    if-ne v1, v0, :cond_14a

    iget-boolean v0, v6, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-nez v0, :cond_14a

    iget-boolean v0, v6, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    if-nez v0, :cond_14a

    iget v1, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    move-object/from16 v0, p0

    move v2, v13

    move v3, v14

    move-wide v4, v9

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    :cond_14a
    invoke-virtual {v6, v11}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    const/4 v0, -0x1

    iput v0, v6, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    move v0, v13

    move v1, v14

    goto/16 :goto_1c9

    :cond_154
    const/4 v13, 0x0

    iput-boolean v13, v6, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    iput v0, v6, Landroid/inputmethodservice/KeyboardView;->mStartX:I

    iput v1, v6, Landroid/inputmethodservice/KeyboardView;->mStartY:I

    iput v0, v6, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    iput v1, v6, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    iput-wide v4, v6, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    iput-wide v4, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    const/4 v4, -0x1

    iput v4, v6, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    iput v11, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v11, v6, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, v6, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    iput-wide v4, v6, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    invoke-direct {v6, v9, v10, v11}, Landroid/inputmethodservice/KeyboardView;->checkMultiTap(JI)V

    iget-object v4, v6, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    const/4 v5, -0x1

    if-eq v11, v5, :cond_183

    iget-object v5, v6, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v5, v5, v11

    iget-object v5, v5, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v13, v5, v13

    goto :goto_184

    :cond_183
    nop

    :goto_184
    invoke-interface {v4, v13}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onPress(I)V

    iget v4, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ltz v4, :cond_1b1

    iget-object v5, v6, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v4, v5, v4

    iget-boolean v4, v4, Landroid/inputmethodservice/Keyboard$Key;->repeatable:Z

    if-eqz v4, :cond_1b1

    iget v4, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v4, v6, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    iget-object v4, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const-wide/16 v13, 0x190

    invoke-virtual {v4, v3, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->repeatKey()Z

    iget-boolean v4, v6, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    if-eqz v4, :cond_1af

    const/4 v4, -0x1

    iput v4, v6, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    goto :goto_1c9

    :cond_1af
    const/4 v4, -0x1

    goto :goto_1b2

    :cond_1b1
    const/4 v4, -0x1

    :goto_1b2
    iget v3, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-eq v3, v4, :cond_1c5

    iget-object v3, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v3, v2, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    sget v4, Landroid/inputmethodservice/KeyboardView;->LONGPRESS_TIMEOUT:I

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1c5
    invoke-direct {v6, v11}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    nop

    :goto_1c9
    iput v0, v6, Landroid/inputmethodservice/KeyboardView;->mLastX:I

    iput v1, v6, Landroid/inputmethodservice/KeyboardView;->mLastY:I

    const/4 v2, 0x1

    return v2
.end method

.method private openPopupIfRequired(Landroid/view/MotionEvent;)Z
    .registers 6

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ltz v0, :cond_20

    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v3, v2

    if-lt v0, v3, :cond_10

    goto :goto_20

    :cond_10
    aget-object v0, v2, v0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    const/4 v2, -0x1

    invoke-direct {p0, v2}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    :cond_1f
    return v1

    :cond_20
    :goto_20
    return v1
.end method

.method private removeMessages()V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_14

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_14
    return-void
.end method

.method private repeatKey()Z
    .registers 8

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    aget-object v0, v0, v1

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget-wide v5, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    const/4 v1, 0x1

    return v1
.end method

.method private resetMultiTap()V
    .registers 4

    const/4 v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    return-void
.end method

.method private sendAccessibilityEventForUnicodeCharacter(II)V
    .registers 6

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/16 v1, 0xa

    if-eq p2, v1, :cond_58

    packed-switch p2, :pswitch_data_70

    int-to-char v1, p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_62

    :pswitch_1c
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v2, 0x104041a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_62

    :pswitch_26
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v2, 0x1040419

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_62

    :pswitch_30
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v2, 0x1040415

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_62

    :pswitch_3a
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v2, 0x1040417

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_62

    :pswitch_44
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v2, 0x1040416

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_62

    :pswitch_4e
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v2, 0x1040414

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_62

    :cond_58
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v2, 0x1040418

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    nop

    :goto_62
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_6e
    return-void

    nop

    :pswitch_data_70
    .packed-switch -0x6
        :pswitch_4e
        :pswitch_44
        :pswitch_3a
        :pswitch_30
        :pswitch_26
        :pswitch_1c
    .end packed-switch
.end method

.method private showKey(I)V
    .registers 16

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    if-ltz p1, :cond_15c

    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v2, v2

    if-lt p1, v2, :cond_d

    goto/16 :goto_15c

    :cond_d
    aget-object v2, v1, p1

    iget-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v3, :cond_2b

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget-object v8, v2, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_20

    iget-object v8, v2, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    goto :goto_22

    :cond_20
    iget-object v8, v2, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    :goto_22
    invoke-virtual {v3, v6, v6, v6, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_65

    :cond_2b
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Landroid/inputmethodservice/KeyboardView;->getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, v5, :cond_56

    iget-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v3, v3

    if-ge v3, v4, :cond_56

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_65

    :cond_56
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewTextSizeLarge:I

    int-to-float v6, v6

    invoke-virtual {v3, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_65
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v3, v6, v8}, Landroid/widget/TextView;->measure(II)V

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    iget v6, v2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v8

    add-int/2addr v6, v8

    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v8

    add-int/2addr v6, v8

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewHeight:I

    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-eqz v8, :cond_9a

    iput v3, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v6, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_9a
    iget-boolean v9, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewCentered:Z

    if-nez v9, :cond_b5

    iget v9, v2, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget-object v10, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v9, v10

    iput v9, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v9, v2, Landroid/inputmethodservice/Keyboard$Key;->y:I

    sub-int/2addr v9, v6

    iget v10, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewOffset:I

    add-int/2addr v9, v10

    iput v9, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    goto :goto_c9

    :cond_b5
    iget-object v9, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    div-int/2addr v9, v4

    rsub-int v9, v9, 0xa0

    iput v9, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget-object v9, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    neg-int v9, v9

    iput v9, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    :goto_c9
    iget-object v9, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v9, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    invoke-virtual {p0, v9}, Landroid/inputmethodservice/KeyboardView;->getLocationInWindow([I)V

    iget-object v9, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v10, v9, v7

    iget v11, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetX:I

    add-int/2addr v10, v11

    aput v10, v9, v7

    aget v10, v9, v5

    iget v11, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetY:I

    add-int/2addr v10, v11

    aput v10, v9, v5

    iget-object v9, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iget v10, v2, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    if-eqz v10, :cond_f0

    sget-object v10, Landroid/inputmethodservice/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    goto :goto_f2

    :cond_f0
    sget-object v10, Landroid/inputmethodservice/KeyboardView;->EMPTY_STATE_SET:[I

    :goto_f2
    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget v9, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget-object v10, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v11, v10, v7

    add-int/2addr v9, v11

    iput v9, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v9, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    aget v11, v10, v5

    add-int/2addr v9, v11

    iput v9, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    invoke-virtual {p0, v10}, Landroid/inputmethodservice/KeyboardView;->getLocationOnScreen([I)V

    iget v9, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    iget-object v10, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v5, v10, v5

    add-int/2addr v9, v5

    if-gez v9, :cond_139

    iget v5, v2, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v9, v2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v5, v9

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v9

    div-int/2addr v9, v4

    const-wide/high16 v10, 0x4004000000000000L    # 2.5

    if-gt v5, v9, :cond_12a

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v5, v2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-double v12, v5

    mul-double/2addr v12, v10

    double-to-int v5, v12

    add-int/2addr v4, v5

    iput v4, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    goto :goto_134

    :cond_12a
    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v5, v2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-double v12, v5

    mul-double/2addr v12, v10

    double-to-int v5, v12

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    :goto_134
    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    add-int/2addr v4, v6

    iput v4, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    :cond_139
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_147

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    invoke-virtual {v0, v4, v5, v3, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_156

    :cond_147
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v9, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    invoke-virtual {v0, v4, v7, v5, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :goto_156
    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_15c
    :goto_15c
    return-void
.end method

.method private showPreview(I)V
    .registers 12

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v0, p1, :cond_4d

    if-eq v0, v5, :cond_2d

    array-length v6, v2

    if-le v6, v0, :cond_2d

    aget-object v6, v2, v0

    if-ne p1, v5, :cond_18

    move v7, v3

    goto :goto_19

    :cond_18
    move v7, v4

    :goto_19
    invoke-virtual {v6, v7}, Landroid/inputmethodservice/Keyboard$Key;->onReleased(Z)V

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    iget-object v7, v6, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v7, v7, v4

    const/16 v8, 0x100

    invoke-direct {p0, v8, v7}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    const/high16 v8, 0x10000

    invoke-direct {p0, v8, v7}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    :cond_2d
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-eq v6, v5, :cond_4d

    array-length v7, v2

    if-le v7, v6, :cond_4d

    aget-object v6, v2, v6

    invoke-virtual {v6}, Landroid/inputmethodservice/Keyboard$Key;->onPressed()V

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {p0, v7}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    iget-object v7, v6, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v7, v7, v4

    const/16 v8, 0x80

    invoke-direct {p0, v8, v7}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    const v8, 0x8000

    invoke-direct {p0, v8, v7}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    :cond_4d
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-eq v0, v6, :cond_8d

    iget-boolean v6, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    if-eqz v6, :cond_8d

    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_6e

    if-ne p1, v5, :cond_6e

    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x46

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_6e
    if-eq p1, v5, :cond_8d

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_82

    iget-object v5, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_82

    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->showKey(I)V

    goto :goto_8d

    :cond_82
    iget-object v5, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_8d
    :goto_8d
    return-void
.end method


# virtual methods
.method public closing()V
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_d
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getKeyboard()Landroid/inputmethodservice/Keyboard;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    return-object v0
.end method

.method protected getOnKeyboardActionListener()Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    return-object v0
.end method

.method public handleBack()Z
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateAllKeys()V
    .registers 5

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidate()V

    return-void
.end method

.method public invalidateKey(I)V
    .registers 9

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-ltz p1, :cond_4f

    array-length v1, v0

    if-lt p1, v1, :cond_b

    goto :goto_4f

    :cond_b
    aget-object v0, v0, p1

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v5, v6

    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->onBufferDraw()V

    iget v1, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/inputmethodservice/KeyboardView;->invalidate(IIII)V

    return-void

    :cond_4f
    :goto_4f
    return-void
.end method

.method public isPreviewEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    return v0
.end method

.method public isProximityCorrectionEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    return v0
.end method

.method public isShifted()Z
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->initGestureDetector()V

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_11

    new-instance v0, Landroid/inputmethodservice/KeyboardView$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/KeyboardView$1;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    :cond_11
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->closing()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    if-eqz v0, :cond_12

    :cond_f
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->onBufferDraw()V

    :cond_12
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_32

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_32

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_28

    const/16 v2, 0x9

    if-eq v0, v2, :cond_23

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1f

    goto :goto_2d

    :cond_1f
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_2d

    :cond_23
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_2d

    :cond_28
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    nop

    :goto_2d
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/KeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_32
    return v1
.end method

.method protected onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z
    .registers 13

    iget v6, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    const/4 v7, 0x0

    if-eqz v6, :cond_125

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    const v1, 0x1020026

    if-nez v0, :cond_99

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/LayoutInflater;

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/KeyboardView;

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    const v1, 0x1020027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_40

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_40
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    new-instance v1, Landroid/inputmethodservice/KeyboardView$3;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/KeyboardView$3;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_67

    new-instance v10, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    const/4 v4, -0x1

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getPaddingRight()I

    move-result v2

    add-int v5, v0, v2

    move-object v0, v10

    move v2, v6

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    goto :goto_70

    :cond_67
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    :goto_70
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, p0}, Landroid/inputmethodservice/KeyboardView;->setPopupParent(Landroid/view/View;)V

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a1

    :cond_99
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/KeyboardView;

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    :goto_a1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->getLocationInWindow([I)V

    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v1, v1, v7

    add-int/2addr v0, v1

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    if-gez v0, :cond_f0

    move v4, v7

    goto :goto_f1

    :cond_f0
    move v4, v0

    :goto_f1
    invoke-virtual {v2, v4, v1}, Landroid/inputmethodservice/KeyboardView;->setPopupOffset(II)V

    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->isShifted()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/inputmethodservice/KeyboardView;->setShifted(Z)Z

    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v2, p0, v7, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iput-boolean v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    return v3

    :cond_125
    return v7
.end method

.method public onMeasure(II)V
    .registers 6

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-nez v0, :cond_12

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingRight:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingBottom:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/inputmethodservice/KeyboardView;->setMeasuredDimension(II)V

    goto :goto_37

    :cond_12
    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v0

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingRight:I

    add-int/2addr v0, v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    add-int/lit8 v2, v0, 0xa

    if-ge v1, v2, :cond_28

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    :cond_28
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingBottom:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/inputmethodservice/KeyboardView;->setMeasuredDimension(II)V

    :goto_37
    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/Keyboard;->resize(II)V

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v13

    iget v5, v0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    const/4 v15, 0x0

    const/4 v12, 0x1

    if-eq v2, v5, :cond_55

    if-ne v2, v12, :cond_3d

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v16

    move-wide v5, v13

    move-wide v7, v13

    move/from16 v12, v16

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    invoke-direct {v0, v5, v15}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v4

    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    const/4 v15, 0x1

    if-ne v3, v15, :cond_3c

    invoke-direct {v0, v1, v15}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v4

    :cond_3c
    goto :goto_6a

    :cond_3d
    move v15, v12

    const/4 v9, 0x1

    iget v10, v0, Landroid/inputmethodservice/KeyboardView;->mOldPointerX:F

    iget v11, v0, Landroid/inputmethodservice/KeyboardView;->mOldPointerY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v12

    move-wide v5, v13

    move-wide v7, v13

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    invoke-direct {v0, v5, v15}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v4

    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_6a

    :cond_55
    move v5, v12

    if-ne v2, v5, :cond_69

    invoke-direct {v0, v1, v15}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mOldPointerX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mOldPointerY:F

    goto :goto_6a

    :cond_69
    const/4 v4, 0x1

    :goto_6a
    iput v2, v0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    return v4
.end method

.method public setKeyboard(Landroid/inputmethodservice/Keyboard;)V
    .registers 5

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    :cond_8
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/inputmethodservice/Keyboard$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/inputmethodservice/Keyboard$Key;

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->requestLayout()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V

    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iput-boolean v1, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    return-void
.end method

.method public setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    return-void
.end method

.method public setPopupOffset(II)V
    .registers 4

    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetX:I

    iput p2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetY:I

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_11
    return-void
.end method

.method public setPopupParent(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    return-void
.end method

.method public setPreviewEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    return-void
.end method

.method public setProximityCorrectionEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    return-void
.end method

.method public setShifted(Z)Z
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/Keyboard;->setShifted(Z)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public setVerticalCorrection(I)V
    .registers 2

    return-void
.end method

.method protected swipeDown()V
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeDown()V

    return-void
.end method

.method protected swipeLeft()V
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeLeft()V

    return-void
.end method

.method protected swipeRight()V
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeRight()V

    return-void
.end method

.method protected swipeUp()V
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeUp()V

    return-void
.end method
