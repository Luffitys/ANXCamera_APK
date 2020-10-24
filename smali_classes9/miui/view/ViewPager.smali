.class public Lmiui/view/ViewPager;
.super Landroid/view/ViewGroup;
.source ""


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;

.field static final CURRENT_PAGE_DETERMIN_FACTOR:F = 0.05f

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x3

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_ATTRS:[I

.field private static final MAX_SETTLE_DURATION:I = 0x320

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final PAGE_SETTLE_DURATION:I = 0xfa

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Lmiui/view/PagerAdapter;

.field private mAdapterChangeListener:Lmiui/view/ViewPager$OnAdapterChangeListener;

.field private mBottomMarginProgress:F

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field mDragEnabled:Z

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mForceReplayout:Z

.field private mGutterSize:I

.field private mIgnoreGutter:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInternalPageChangeListener:Lmiui/view/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field mLastPageOffset:F

.field private mLeftEdge:Landroid/widget/EdgeEffect;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Lmiui/view/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lmiui/view/ViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/widget/EdgeEffect;

.field private mScrollState:I

.field private mScroller:Lmiui/view/SpringScroller;

.field private mScrollingCacheEnabled:Z

.field private final mTempItem:Lmiui/view/ViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lmiui/view/ViewPager;->LAYOUT_ATTRS:[I

    new-instance v0, Lmiui/view/ViewPager$1;

    invoke-direct {v0}, Lmiui/view/ViewPager$1;-><init>()V

    sput-object v0, Lmiui/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lmiui/view/ViewPager$2;

    invoke-direct {v0}, Lmiui/view/ViewPager$2;-><init>()V

    sput-object v0, Lmiui/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    new-instance p1, Lmiui/view/ViewPager$ItemInfo;

    invoke-direct {p1}, Lmiui/view/ViewPager$ItemInfo;-><init>()V

    iput-object p1, p0, Lmiui/view/ViewPager;->mTempItem:Lmiui/view/ViewPager$ItemInfo;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmiui/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Lmiui/view/ViewPager;->mRestoredCurItem:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    const v0, -0x800001

    iput v0, p0, Lmiui/view/ViewPager;->mFirstOffset:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lmiui/view/ViewPager;->mLastOffset:F

    const/4 v0, 0x3

    iput v0, p0, Lmiui/view/ViewPager;->mOffscreenPageLimit:I

    iput p1, p0, Lmiui/view/ViewPager;->mActivePointerId:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/view/ViewPager;->mFirstLayout:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/ViewPager;->mNeedCalculatePageOffsets:Z

    iput-boolean p1, p0, Lmiui/view/ViewPager;->mDragEnabled:Z

    const/4 p1, 0x0

    iput p1, p0, Lmiui/view/ViewPager;->mLastPageOffset:F

    iput v0, p0, Lmiui/view/ViewPager;->mScrollState:I

    invoke-virtual {p0}, Lmiui/view/ViewPager;->initViewPager()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    new-instance p1, Lmiui/view/ViewPager$ItemInfo;

    invoke-direct {p1}, Lmiui/view/ViewPager$ItemInfo;-><init>()V

    iput-object p1, p0, Lmiui/view/ViewPager;->mTempItem:Lmiui/view/ViewPager$ItemInfo;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmiui/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Lmiui/view/ViewPager;->mRestoredCurItem:I

    const/4 p2, 0x0

    iput-object p2, p0, Lmiui/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    const p2, -0x800001

    iput p2, p0, Lmiui/view/ViewPager;->mFirstOffset:F

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    iput p2, p0, Lmiui/view/ViewPager;->mLastOffset:F

    const/4 p2, 0x3

    iput p2, p0, Lmiui/view/ViewPager;->mOffscreenPageLimit:I

    iput p1, p0, Lmiui/view/ViewPager;->mActivePointerId:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/view/ViewPager;->mFirstLayout:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lmiui/view/ViewPager;->mNeedCalculatePageOffsets:Z

    iput-boolean p1, p0, Lmiui/view/ViewPager;->mDragEnabled:Z

    const/4 p1, 0x0

    iput p1, p0, Lmiui/view/ViewPager;->mLastPageOffset:F

    iput p2, p0, Lmiui/view/ViewPager;->mScrollState:I

    invoke-virtual {p0}, Lmiui/view/ViewPager;->initViewPager()V

    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    sget-object v0, Lmiui/view/ViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private calculatePageOffsets(Lmiui/view/ViewPager$ItemInfo;ILmiui/view/ViewPager$ItemInfo;)V
    .locals 10

    iget-object v0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v0}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    iget v2, p0, Lmiui/view/ViewPager;->mPageMargin:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz p3, :cond_6

    iget v3, p3, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget v4, p1, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ge v3, v4, :cond_3

    iget v4, p3, Lmiui/view/ViewPager$ItemInfo;->offset:F

    iget p3, p3, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, p3

    add-float/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    move p3, v1

    :goto_1
    iget v5, p1, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-gt v3, v5, :cond_6

    iget-object v5, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p3, v5, :cond_6

    :goto_2
    iget-object v5, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/view/ViewPager$ItemInfo;

    iget v6, v5, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-le v3, v6, :cond_1

    iget-object v6, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge p3, v6, :cond_1

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_1
    :goto_3
    iget v6, v5, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ge v3, v6, :cond_2

    iget-object v6, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v6, v3}, Lmiui/view/PagerAdapter;->getPageWidth(I)F

    move-result v6

    add-float/2addr v6, v2

    add-float/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    iput v4, v5, Lmiui/view/ViewPager$ItemInfo;->offset:F

    iget v5, v5, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v2

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-le v3, v4, :cond_6

    iget-object v4, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget p3, p3, Lmiui/view/ViewPager$ItemInfo;->offset:F

    add-int/lit8 v3, v3, -0x1

    :goto_4
    iget v5, p1, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-lt v3, v5, :cond_6

    if-ltz v4, :cond_6

    :goto_5
    iget-object v5, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/view/ViewPager$ItemInfo;

    iget v6, v5, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ge v3, v6, :cond_4

    if-lez v4, :cond_4

    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_4
    :goto_6
    iget v6, v5, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-le v3, v6, :cond_5

    iget-object v6, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v6, v3}, Lmiui/view/PagerAdapter;->getPageWidth(I)F

    move-result v6

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    :cond_5
    iget v6, v5, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    iput p3, v5, Lmiui/view/ViewPager$ItemInfo;->offset:F

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_6
    iget-object p3, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    iget v3, p1, Lmiui/view/ViewPager$ItemInfo;->offset:F

    iget v4, p1, Lmiui/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v5, v4, -0x1

    if-nez v4, :cond_7

    move v4, v3

    goto :goto_7

    :cond_7
    const v4, -0x800001

    :goto_7
    iput v4, p0, Lmiui/view/ViewPager;->mFirstOffset:F

    iget v4, p1, Lmiui/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v0, v0, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v4, v0, :cond_8

    iget v4, p1, Lmiui/view/ViewPager$ItemInfo;->offset:F

    iget v7, p1, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v7

    sub-float/2addr v4, v6

    goto :goto_8

    :cond_8
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    :goto_8
    iput v4, p0, Lmiui/view/ViewPager;->mLastOffset:F

    add-int/lit8 v4, p2, -0x1

    :goto_9
    if-ltz v4, :cond_b

    iget-object v7, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/view/ViewPager$ItemInfo;

    :goto_a
    iget v8, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-le v5, v8, :cond_9

    iget-object v8, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    add-int/lit8 v9, v5, -0x1

    invoke-virtual {v8, v5}, Lmiui/view/PagerAdapter;->getPageWidth(I)F

    move-result v5

    add-float/2addr v5, v2

    sub-float/2addr v3, v5

    move v5, v9

    goto :goto_a

    :cond_9
    iget v9, v7, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    sub-float/2addr v3, v9

    iput v3, v7, Lmiui/view/ViewPager$ItemInfo;->offset:F

    if-nez v8, :cond_a

    iput v3, p0, Lmiui/view/ViewPager;->mFirstOffset:F

    :cond_a
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_9

    :cond_b
    iget v3, p1, Lmiui/view/ViewPager$ItemInfo;->offset:F

    iget v4, p1, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v4

    add-float/2addr v3, v2

    iget p1, p1, Lmiui/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    :goto_b
    if-ge p2, p3, :cond_e

    iget-object v4, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/view/ViewPager$ItemInfo;

    :goto_c
    iget v5, v4, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ge p1, v5, :cond_c

    iget-object v5, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v5, p1}, Lmiui/view/PagerAdapter;->getPageWidth(I)F

    move-result p1

    add-float/2addr p1, v2

    add-float/2addr v3, p1

    move p1, v7

    goto :goto_c

    :cond_c
    if-ne v5, v0, :cond_d

    iget v5, v4, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v3

    sub-float/2addr v5, v6

    iput v5, p0, Lmiui/view/ViewPager;->mLastOffset:F

    :cond_d
    iput v3, v4, Lmiui/view/ViewPager$ItemInfo;->offset:F

    iget v4, v4, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v2

    add-float/2addr v3, v4

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_e
    iput-boolean v1, p0, Lmiui/view/ViewPager;->mNeedCalculatePageOffsets:Z

    return-void
.end method

.method private completeScroll()V
    .locals 7

    iget v0, p0, Lmiui/view/ViewPager;->mScrollState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    invoke-direct {p0, v2}, Lmiui/view/ViewPager;->setScrollingCacheEnabled(Z)V

    iget-object v3, p0, Lmiui/view/ViewPager;->mScroller:Lmiui/view/SpringScroller;

    invoke-virtual {v3}, Lmiui/view/SpringScroller;->abortAnimation()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    iget-object v5, p0, Lmiui/view/ViewPager;->mScroller:Lmiui/view/SpringScroller;

    invoke-virtual {v5}, Lmiui/view/SpringScroller;->getCurrX()I

    move-result v5

    iget-object v6, p0, Lmiui/view/ViewPager;->mScroller:Lmiui/view/SpringScroller;

    invoke-virtual {v6}, Lmiui/view/SpringScroller;->getCurrY()I

    move-result v6

    if-ne v3, v5, :cond_1

    if-eq v4, v6, :cond_2

    :cond_1
    invoke-virtual {p0, v5, v6}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_2
    invoke-direct {p0, v2}, Lmiui/view/ViewPager;->setScrollState(I)V

    :cond_3
    iput-boolean v2, p0, Lmiui/view/ViewPager;->mPopulatePending:Z

    iget-object v3, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/view/ViewPager$ItemInfo;

    iget-boolean v5, v4, Lmiui/view/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v5, :cond_4

    iput-boolean v2, v4, Lmiui/view/ViewPager$ItemInfo;->scrolling:Z

    move v0, v1

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lmiui/view/ViewPager;->populate()V

    :cond_6
    return-void
.end method

.method private determineTargetPage(IFII)I
    .locals 1

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lmiui/view/ViewPager;->mFlingDistance:I

    if-le p4, v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lmiui/view/ViewPager;->mMinimumVelocity:I

    if-le p4, v0, :cond_1

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    int-to-float p1, p1

    add-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    :goto_0
    iget-object p2, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2

    iget-object p2, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiui/view/ViewPager$ItemInfo;

    iget-object p0, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/view/ViewPager$ItemInfo;

    iget p2, p2, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget p0, p0, Lmiui/view/ViewPager$ItemInfo;->position:I

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_2
    return p1
.end method

.method private endDrag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/ViewPager;->mIsBeingDragged:Z

    iput-boolean v0, p0, Lmiui/view/ViewPager;->mIsUnableToDrag:Z

    iget-object v0, p0, Lmiui/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    if-nez p2, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eq p2, p0, :cond_2

    check-cast p2, Landroid/view/ViewGroup;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private getClientWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private infoForCurrentScrollPosition()Lmiui/view/ViewPager$ItemInfo;
    .locals 12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lez v0, :cond_1

    iget v3, p0, Lmiui/view/ViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    move v8, v4

    move v7, v5

    move v9, v6

    move v5, v1

    :goto_2
    iget-object v10, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_7

    iget-object v10, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/view/ViewPager$ItemInfo;

    if-nez v9, :cond_2

    iget v11, v10, Lmiui/view/ViewPager$ItemInfo;->position:I

    add-int/2addr v7, v6

    if-eq v11, v7, :cond_2

    iget-object v10, p0, Lmiui/view/ViewPager;->mTempItem:Lmiui/view/ViewPager$ItemInfo;

    add-float/2addr v1, v5

    add-float/2addr v1, v3

    iput v1, v10, Lmiui/view/ViewPager$ItemInfo;->offset:F

    iput v7, v10, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget-object v1, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v1, v7}, Lmiui/view/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v10, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v8, v8, -0x1

    :cond_2
    iget v1, v10, Lmiui/view/ViewPager$ItemInfo;->offset:F

    iget v5, v10, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v1

    add-float/2addr v5, v3

    if-nez v9, :cond_4

    cmpl-float v7, v2, v1

    if-ltz v7, :cond_3

    goto :goto_3

    :cond_3
    return-object v0

    :cond_4
    :goto_3
    cmpg-float v0, v2, v5

    if-ltz v0, :cond_6

    iget-object v0, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v6

    if-ne v8, v0, :cond_5

    goto :goto_4

    :cond_5
    iget v7, v10, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget v5, v10, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v8, v8, 0x1

    move v9, v4

    move-object v0, v10

    goto :goto_2

    :cond_6
    :goto_4
    return-object v10

    :cond_7
    return-object v0
.end method

.method private isGutterDrag(FF)Z
    .locals 2

    iget v0, p0, Lmiui/view/ViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget p0, p0, Lmiui/view/ViewPager;->mGutterSize:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_2

    cmpg-float p0, p2, v1

    if-gez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lmiui/view/ViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lmiui/view/ViewPager;->mActivePointerId:I

    iget-object p0, p0, Lmiui/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private pageScrolled(IZ)Z
    .locals 7

    iget-object v0, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lmiui/view/ViewPager;->mCalledSuper:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1, v2}, Lmiui/view/ViewPager;->onPageScrolled(IFI)V

    iget-boolean p0, p0, Lmiui/view/ViewPager;->mCalledSuper:Z

    if-eqz p0, :cond_0

    return v2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-direct {p0}, Lmiui/view/ViewPager;->infoForCurrentScrollPosition()Lmiui/view/ViewPager$ItemInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iget v4, p0, Lmiui/view/ViewPager;->mPageMargin:I

    add-int v5, v3, v4

    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    iget v6, v0, Lmiui/view/ViewPager$ItemInfo;->position:I

    int-to-float p1, p1

    div-float/2addr p1, v3

    iget v3, v0, Lmiui/view/ViewPager$ItemInfo;->offset:F

    sub-float/2addr p1, v3

    iget v0, v0, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v4

    div-float/2addr p1, v0

    int-to-float v0, v5

    mul-float/2addr v0, p1

    float-to-int v0, v0

    const/4 v3, 0x1

    if-eqz p2, :cond_7

    iget p2, p0, Lmiui/view/ViewPager;->mLastPageOffset:F

    cmpg-float p2, p2, p1

    if-gez p2, :cond_2

    const p2, 0x3f0ccccd    # 0.55f

    cmpl-float p2, p1, p2

    if-lez p2, :cond_2

    add-int/lit8 p2, v6, 0x1

    move v4, v3

    goto :goto_1

    :cond_2
    iget p2, p0, Lmiui/view/ViewPager;->mLastPageOffset:F

    cmpl-float p2, p2, p1

    if-lez p2, :cond_3

    const p2, 0x3ee66666    # 0.45f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_0
    move p2, v6

    :goto_1
    iput p1, p0, Lmiui/view/ViewPager;->mLastPageOffset:F

    if-eqz v4, :cond_7

    if-gez p2, :cond_4

    move p2, v2

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v4}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v4

    if-lt p2, v4, :cond_5

    iget-object p2, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {p2}, Lmiui/view/PagerAdapter;->getCount()I

    move-result p2

    sub-int/2addr p2, v3

    :cond_5
    :goto_2
    iget v4, p0, Lmiui/view/ViewPager;->mCurItem:I

    if-eq p2, v4, :cond_7

    invoke-virtual {p0, p2}, Lmiui/view/ViewPager;->populate(I)V

    iget-object v4, p0, Lmiui/view/ViewPager;->mOnPageChangeListener:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz v4, :cond_6

    invoke-interface {v4, p2}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_6
    iget-object v4, p0, Lmiui/view/ViewPager;->mInternalPageChangeListener:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz v4, :cond_7

    invoke-interface {v4, p2}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_7
    iput-boolean v2, p0, Lmiui/view/ViewPager;->mCalledSuper:Z

    invoke-virtual {p0, v6, p1, v0}, Lmiui/view/ViewPager;->onPageScrolled(IFI)V

    iget-boolean p0, p0, Lmiui/view/ViewPager;->mCalledSuper:Z

    if-eqz p0, :cond_8

    return v3

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private performDrag(F)Z
    .locals 9

    iget v0, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    sub-float/2addr v0, p1

    iput p1, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lmiui/view/ViewPager;->mFirstOffset:F

    mul-float/2addr v1, v0

    iget v2, p0, Lmiui/view/ViewPager;->mLastOffset:F

    mul-float/2addr v2, v0

    iget-object v3, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/view/ViewPager$ItemInfo;

    iget-object v5, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/view/ViewPager$ItemInfo;

    iget v6, v3, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-eqz v6, :cond_0

    iget v1, v3, Lmiui/view/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v1, v0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v7

    :goto_0
    iget v6, v5, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget-object v8, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v8}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v8

    sub-int/2addr v8, v7

    if-eq v6, v8, :cond_1

    iget v2, v5, Lmiui/view/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v2, v0

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v7

    :goto_1
    cmpg-float v6, p1, v1

    if-gez v6, :cond_3

    if-eqz v3, :cond_2

    sub-float p1, v1, p1

    iget-object v2, p0, Lmiui/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    move v4, v7

    :cond_2
    move p1, v1

    goto :goto_2

    :cond_3
    cmpl-float v1, p1, v2

    if-lez v1, :cond_5

    if-eqz v5, :cond_4

    sub-float/2addr p1, v2

    iget-object v1, p0, Lmiui/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    move v4, v7

    :cond_4
    move p1, v2

    :cond_5
    :goto_2
    iget v0, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    float-to-int v1, p1

    int-to-float v2, v1

    sub-float/2addr p1, v2

    add-float/2addr v0, p1

    iput v0, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->scrollTo(II)V

    invoke-direct {p0, v1, v7}, Lmiui/view/ViewPager;->pageScrolled(IZ)Z

    return v4
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 1

    if-lez p2, :cond_1

    iget-object v0, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/view/ViewPager;->mScroller:Lmiui/view/SpringScroller;

    invoke-virtual {v0}, Lmiui/view/SpringScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lmiui/view/ViewPager;->mScroller:Lmiui/view/SpringScroller;

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getCurrentItem()I

    move-result p2

    invoke-direct {p0}, Lmiui/view/ViewPager;->getClientWidth()I

    move-result p0

    mul-int/2addr p2, p0

    invoke-virtual {p1, p2}, Lmiui/view/SpringScroller;->setFinalX(I)V

    goto :goto_2

    :cond_0
    add-int/2addr p1, p3

    add-int/2addr p2, p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    int-to-float p1, p1

    mul-float/2addr p3, p1

    float-to-int p1, p3

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_2

    :cond_1
    iget p2, p0, Lmiui/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, p2}, Lmiui/view/ViewPager;->infoForPosition(I)Lmiui/view/ViewPager$ItemInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    iget p2, p2, Lmiui/view/ViewPager$ItemInfo;->offset:F

    iget p3, p0, Lmiui/view/ViewPager;->mLastOffset:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    if-eq p1, p2, :cond_3

    invoke-direct {p0}, Lmiui/view/ViewPager;->completeScroll()V

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private removeNonDecorViews()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lmiui/view/ViewPager$LayoutParams;

    iget-boolean v1, v1, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private resetTouch()Z
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lmiui/view/ViewPager;->mActivePointerId:I

    invoke-direct {p0}, Lmiui/view/ViewPager;->endDrag()V

    iget-object v0, p0, Lmiui/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Lmiui/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Lmiui/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    iget-object p0, p0, Lmiui/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method private setScrollState(I)V
    .locals 1

    iget v0, p0, Lmiui/view/ViewPager;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lmiui/view/ViewPager;->mScrollState:I

    iget-object v0, p0, Lmiui/view/ViewPager;->mOnPageChangeListener:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_1
    iget-object p0, p0, Lmiui/view/ViewPager;->mInternalPageChangeListener:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_2
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lmiui/view/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lmiui/view/ViewPager;->mScrollingCacheEnabled:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v3}, Lmiui/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v4, v4, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget v5, p0, Lmiui/view/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_2

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_5

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method addNewItem(II)Lmiui/view/ViewPager$ItemInfo;
    .locals 2

    new-instance v0, Lmiui/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Lmiui/view/ViewPager$ItemInfo;-><init>()V

    iput p1, v0, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget-object v1, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Lmiui/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lmiui/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    iget-object v1, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v1, p1}, Lmiui/view/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    iget-object v1, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v1, p1}, Lmiui/view/PagerAdapter;->hasActionMenu(I)Z

    move-result p1

    iput-boolean p1, v0, Lmiui/view/ViewPager$ItemInfo;->hasActionMenu:Z

    if-ltz p2, :cond_1

    iget-object p1, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lmiui/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, v2, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget v3, p0, Lmiui/view/ViewPager;->mCurItem:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    invoke-virtual {p0, p3}, Lmiui/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p3}, Lmiui/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    check-cast v0, Lmiui/view/ViewPager$LayoutParams;

    iget-boolean v1, v0, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Lmiui/view/ViewPager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    iget-boolean v2, p0, Lmiui/view/ViewPager;->mInLayout:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmiui/view/ViewPager$LayoutParams;->needsMeasure:Z

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot add pager decor view during layout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x42

    const/16 v4, 0x11

    if-eqz v2, :cond_3

    if-eq v2, v0, :cond_3

    if-ne p1, v4, :cond_2

    iget-object v1, p0, Lmiui/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2}, Lmiui/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lmiui/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Lmiui/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_1

    if-lt v1, v3, :cond_1

    invoke-virtual {p0}, Lmiui/view/ViewPager;->pageLeft()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    :goto_0
    move v1, v0

    goto :goto_2

    :cond_2
    if-ne p1, v3, :cond_7

    iget-object v1, p0, Lmiui/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2}, Lmiui/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lmiui/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Lmiui/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_1

    if-gt v1, v3, :cond_1

    invoke-virtual {p0}, Lmiui/view/ViewPager;->pageRight()Z

    move-result v0

    goto :goto_0

    :cond_3
    if-eq p1, v4, :cond_6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_4
    if-eq p1, v3, :cond_5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    :cond_5
    invoke-virtual {p0}, Lmiui/view/ViewPager;->pageRight()Z

    move-result v1

    goto :goto_2

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lmiui/view/ViewPager;->pageLeft()Z

    move-result v1

    :cond_7
    :goto_2
    if-eqz v1, :cond_8

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    :cond_8
    return v1
.end method

.method public beginFakeDrag()Z
    .locals 12

    iget-boolean v0, p0, Lmiui/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/view/ViewPager;->mFakeDragging:Z

    invoke-direct {p0, v0}, Lmiui/view/ViewPager;->setScrollState(I)V

    const/4 v1, 0x0

    iput v1, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    iput v1, p0, Lmiui/view/ViewPager;->mInitialMotionX:F

    iget-object v1, p0, Lmiui/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v4, v10

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v2, p0, Lmiui/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    iput-wide v10, p0, Lmiui/view/ViewPager;->mFakeDragBeginTime:J

    return v0
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 12

    move-object v0, p1

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p5, v4

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move v9, p3

    invoke-virtual/range {v6 .. v11}, Lmiui/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move v1, p3

    neg-int v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public canScrollHorizontally(I)Z
    .locals 4

    iget-object v0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lmiui/view/ViewPager;->getClientWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    const/4 v3, 0x1

    if-gez p1, :cond_2

    int-to-float p1, v0

    iget p0, p0, Lmiui/view/ViewPager;->mFirstOffset:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    if-le v2, p0, :cond_1

    move v1, v3

    :cond_1
    return v1

    :cond_2
    if-lez p1, :cond_3

    int-to-float p1, v0

    iget p0, p0, Lmiui/view/ViewPager;->mLastOffset:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    if-ge v2, p0, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lmiui/view/ViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public computeScroll()V
    .locals 4

    iget-object v0, p0, Lmiui/view/ViewPager;->mScroller:Lmiui/view/SpringScroller;

    invoke-virtual {v0}, Lmiui/view/SpringScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiui/view/ViewPager;->mScroller:Lmiui/view/SpringScroller;

    invoke-virtual {v0}, Lmiui/view/SpringScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lmiui/view/ViewPager;->mScroller:Lmiui/view/SpringScroller;

    invoke-virtual {v2}, Lmiui/view/SpringScroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Lmiui/view/ViewPager;->mScroller:Lmiui/view/SpringScroller;

    invoke-virtual {v3}, Lmiui/view/SpringScroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lmiui/view/ViewPager;->pageScrolled(IZ)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/view/ViewPager;->mScroller:Lmiui/view/SpringScroller;

    invoke-virtual {v1}, Lmiui/view/SpringScroller;->abortAnimation()V

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    return-void

    :cond_2
    invoke-direct {p0}, Lmiui/view/ViewPager;->completeScroll()V

    return-void
.end method

.method dataSetChanged()V
    .locals 11

    iget-object v0, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lmiui/view/ViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v1}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget v1, p0, Lmiui/view/ViewPager;->mCurItem:I

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_1
    iget-object v7, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_8

    iget-object v7, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/view/ViewPager$ItemInfo;

    iget-object v8, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    iget-object v9, v7, Lmiui/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lmiui/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    iget-boolean v8, v7, Lmiui/view/ViewPager$ItemInfo;->hasActionMenu:Z

    iget-object v9, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    iget v10, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    invoke-virtual {v9, v10}, Lmiui/view/PagerAdapter;->hasActionMenu(I)Z

    move-result v9

    if-eq v8, v9, :cond_7

    :goto_2
    iget-boolean v6, v7, Lmiui/view/ViewPager$ItemInfo;->hasActionMenu:Z

    xor-int/2addr v6, v2

    iput-boolean v6, v7, Lmiui/view/ViewPager$ItemInfo;->hasActionMenu:Z

    move v6, v2

    goto :goto_3

    :cond_1
    const/4 v9, -0x2

    if-ne v8, v9, :cond_4

    iget-object v0, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    if-nez v5, :cond_2

    iget-object v0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v0, p0}, Lmiui/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v5, v2

    :cond_2
    iget-object v0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    iget v8, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget-object v9, v7, Lmiui/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v0, p0, v8, v9}, Lmiui/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget v0, p0, Lmiui/view/ViewPager;->mCurItem:I

    iget v7, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ne v0, v7, :cond_3

    iget-object v1, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v1}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    iget v9, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-eq v9, v8, :cond_6

    iget v0, p0, Lmiui/view/ViewPager;->mCurItem:I

    if-ne v9, v0, :cond_5

    move v1, v8

    :cond_5
    iput v8, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    move v0, v2

    :cond_6
    iget-boolean v8, v7, Lmiui/view/ViewPager$ItemInfo;->hasActionMenu:Z

    iget-object v9, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    iget v10, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    invoke-virtual {v9, v10}, Lmiui/view/PagerAdapter;->hasActionMenu(I)Z

    move-result v9

    if-eq v8, v9, :cond_7

    goto :goto_2

    :cond_7
    :goto_3
    add-int/2addr v4, v2

    goto :goto_1

    :cond_8
    if-eqz v5, :cond_9

    iget-object v4, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v4, p0}, Lmiui/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    :cond_9
    iget-object v4, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v5, Lmiui/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v4, v3

    :goto_4
    if-ge v4, v0, :cond_b

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lmiui/view/ViewPager$LayoutParams;

    iget-boolean v6, v5, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v6, :cond_a

    const/4 v6, 0x0

    iput v6, v5, Lmiui/view/ViewPager$LayoutParams;->widthFactor:F

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    invoke-virtual {p0, v1, v3, v2}, Lmiui/view/ViewPager;->setCurrentItemInternal(IZZ)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_5

    :cond_c
    move v3, v6

    :goto_5
    if-eqz v3, :cond_d

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_d
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lmiui/view/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v3}, Lmiui/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v4, v4, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget v5, p0, Lmiui/view/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 2

    const/high16 p0, 0x3f000000    # 0.5f

    sub-float/2addr p1, p0

    float-to-double p0, p1

    const-wide v0, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr p0, v0

    double-to-float p0, p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmiui/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    iget-object p1, p0, Lmiui/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    goto/16 :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lmiui/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v3, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lmiui/view/ViewPager;->mFirstOffset:F

    int-to-float v5, v2

    mul-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lmiui/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v1, p0, Lmiui/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    iget-object v0, p0, Lmiui/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lmiui/view/ViewPager;->mLastOffset:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lmiui/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v2, p0, Lmiui/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    :cond_4
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    iget-object v0, p0, Lmiui/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 6

    iget-boolean v0, p0, Lmiui/view/ViewPager;->mFakeDragging:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lmiui/view/ViewPager;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v1, p0, Lmiui/view/ViewPager;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/view/ViewPager;->mPopulatePending:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    invoke-direct {p0}, Lmiui/view/ViewPager;->infoForCurrentScrollPosition()Lmiui/view/ViewPager$ItemInfo;

    move-result-object v4

    iget v5, v4, Lmiui/view/ViewPager$ItemInfo;->position:I

    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    iget v2, v4, Lmiui/view/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v3, v2

    iget v2, v4, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v3, v2

    iget v2, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    iget v4, p0, Lmiui/view/ViewPager;->mInitialMotionX:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    invoke-direct {p0, v5, v3, v0, v2}, Lmiui/view/ViewPager;->determineTargetPage(IFII)I

    move-result v2

    invoke-virtual {p0, v2, v1, v1, v0}, Lmiui/view/ViewPager;->setCurrentItemInternal(IZZI)V

    invoke-direct {p0}, Lmiui/view/ViewPager;->endDrag()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/ViewPager;->mFakeDragging:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_3

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->arrowScroll(I)Z

    move-result p0

    goto :goto_2

    :cond_2
    const/16 p1, 0x42

    goto :goto_0

    :cond_3
    const/16 p1, 0x11

    :goto_0
    invoke-virtual {p0, p1}, Lmiui/view/ViewPager;->arrowScroll(I)Z

    move-result p0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public fakeDragBy(F)V
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lmiui/view/ViewPager;->mFakeDragging:Z

    if-eqz v1, :cond_4

    iget v1, v0, Lmiui/view/ViewPager;->mLastMotionX:F

    add-float v1, v1, p1

    iput v1, v0, Lmiui/view/ViewPager;->mLastMotionX:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v1, p1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lmiui/view/ViewPager;->mFirstOffset:F

    mul-float/2addr v3, v2

    iget v4, v0, Lmiui/view/ViewPager;->mLastOffset:F

    mul-float/2addr v4, v2

    iget-object v5, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/view/ViewPager$ItemInfo;

    iget-object v6, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/view/ViewPager$ItemInfo;

    iget v7, v5, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-eqz v7, :cond_0

    iget v3, v5, Lmiui/view/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v3, v2

    :cond_0
    iget v5, v6, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget-object v7, v0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v7}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v7

    sub-int/2addr v7, v8

    if-eq v5, v7, :cond_1

    iget v4, v6, Lmiui/view/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v4, v2

    :cond_1
    cmpg-float v2, v1, v3

    if-gez v2, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    cmpl-float v2, v1, v4

    if-lez v2, :cond_3

    move v1, v4

    :cond_3
    :goto_0
    iget v2, v0, Lmiui/view/ViewPager;->mLastMotionX:F

    float-to-int v3, v1

    int-to-float v4, v3

    sub-float/2addr v1, v4

    add-float/2addr v2, v1

    iput v2, v0, Lmiui/view/ViewPager;->mLastMotionX:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    invoke-direct {v0, v3, v8}, Lmiui/view/ViewPager;->pageScrolled(IZ)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iget-wide v9, v0, Lmiui/view/ViewPager;->mFakeDragBeginTime:J

    const/4 v13, 0x2

    iget v14, v0, Lmiui/view/ViewPager;->mLastMotionX:F

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v0, v0, Lmiui/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    new-instance p0, Lmiui/view/ViewPager$LayoutParams;

    invoke-direct {p0}, Lmiui/view/ViewPager$LayoutParams;-><init>()V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lmiui/view/ViewPager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lmiui/view/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Lmiui/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Lmiui/view/PagerAdapter;
    .locals 0

    iget-object p0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    return-object p0
.end method

.method public getCurrentItem()I
    .locals 0

    iget p0, p0, Lmiui/view/ViewPager;->mCurItem:I

    return p0
.end method

.method public getOffscreenPageLimit()I
    .locals 0

    iget p0, p0, Lmiui/view/ViewPager;->mOffscreenPageLimit:I

    return p0
.end method

.method public getPageMargin()I
    .locals 0

    iget p0, p0, Lmiui/view/ViewPager;->mPageMargin:I

    return p0
.end method

.method getSplitActionBarHeight()I
    .locals 1

    invoke-static {p0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getActionBarView()Lcom/miui/internal/widget/ActionBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getActionBarView()Lcom/miui/internal/widget/ActionBarView;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->getSplitActionBarHeight(Z)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method infoForAnyChild(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;
    .locals 1

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    instance-of p1, v0, Landroid/view/View;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lmiui/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;

    move-result-object p0

    return-object p0
.end method

.method infoForChild(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;
    .locals 4

    iget-object v0, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/ViewPager$ItemInfo;

    iget-object v2, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    iget-object v3, v1, Lmiui/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lmiui/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method infoForPosition(I)Lmiui/view/ViewPager$ItemInfo;
    .locals 2

    iget-object p0, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/ViewPager$ItemInfo;

    iget v1, v0, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method initViewPager()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lmiui/view/SpringScroller;

    invoke-direct {v2}, Lmiui/view/SpringScroller;-><init>()V

    iput-object v2, p0, Lmiui/view/ViewPager;->mScroller:Lmiui/view/SpringScroller;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Lmiui/view/ViewPager;->mTouchSlop:I

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lmiui/view/ViewPager;->mMinimumVelocity:I

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lmiui/view/ViewPager;->mMaximumVelocity:I

    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiui/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiui/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41c80000    # 25.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lmiui/view/ViewPager;->mFlingDistance:I

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lmiui/view/ViewPager;->mCloseEnough:I

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lmiui/view/ViewPager;->mDefaultGutterSize:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :cond_0
    return-void
.end method

.method public isFakeDragging()Z
    .locals 0

    iget-boolean p0, p0, Lmiui/view/ViewPager;->mFakeDragging:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/view/ViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget v1, v0, Lmiui/view/ViewPager;->mPageMargin:I

    if-lez v1, :cond_4

    iget-object v1, v0, Lmiui/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, v0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iget v3, v0, Lmiui/view/ViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    iget-object v5, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/view/ViewPager$ItemInfo;

    iget v7, v5, Lmiui/view/ViewPager$ItemInfo;->offset:F

    iget-object v8, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget v9, v5, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget-object v10, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v11, v8, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/view/ViewPager$ItemInfo;

    iget v10, v10, Lmiui/view/ViewPager$ItemInfo;->position:I

    :goto_0
    if-ge v9, v10, :cond_4

    :goto_1
    iget v11, v5, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-le v9, v11, :cond_0

    if-ge v6, v8, :cond_0

    iget-object v5, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/view/ViewPager$ItemInfo;

    goto :goto_1

    :cond_0
    iget v11, v5, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ne v9, v11, :cond_1

    iget v7, v5, Lmiui/view/ViewPager$ItemInfo;->offset:F

    iget v11, v5, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float v12, v7, v11

    mul-float/2addr v12, v4

    add-float/2addr v7, v11

    add-float/2addr v7, v3

    goto :goto_2

    :cond_1
    iget-object v11, v0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v11, v9}, Lmiui/view/PagerAdapter;->getPageWidth(I)F

    move-result v11

    add-float v12, v7, v11

    mul-float/2addr v12, v4

    add-float/2addr v11, v3

    add-float/2addr v7, v11

    :goto_2
    iget v11, v0, Lmiui/view/ViewPager;->mPageMargin:I

    int-to-float v13, v11

    add-float/2addr v13, v12

    int-to-float v14, v1

    cmpl-float v13, v13, v14

    if-lez v13, :cond_2

    iget-object v13, v0, Lmiui/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v14, v12

    iget v15, v0, Lmiui/view/ViewPager;->mTopPageBounds:I

    int-to-float v11, v11

    add-float/2addr v11, v12

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v11, v11, v16

    float-to-int v11, v11

    move/from16 v16, v3

    iget v3, v0, Lmiui/view/ViewPager;->mBottomPageBounds:I

    invoke-virtual {v13, v14, v15, v11, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, v0, Lmiui/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v11, p1

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_2
    move-object/from16 v11, p1

    move/from16 v16, v3

    :goto_3
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v12, v3

    if-lez v3, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v16

    goto :goto_0

    :cond_4
    :goto_4
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p0, Lmiui/view/ViewPager;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lmiui/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    iget-object v0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    if-eqz v0, :cond_1

    iget v2, p0, Lmiui/view/ViewPager;->mCurItem:I

    if-ltz v2, :cond_1

    invoke-virtual {v0}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ge v2, v0, :cond_1

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    iget-object v0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    if-eqz v0, :cond_2

    iget p0, p0, Lmiui/view/ViewPager;->mCurItem:I

    if-lez p0, :cond_2

    invoke-virtual {v0}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v0

    if-ge p0, v0, :cond_2

    const/16 p0, 0x2000

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    iget-boolean v0, v6, Lmiui/view/ViewPager;->mDragEnabled:Z

    const/4 v8, 0x0

    if-nez v0, :cond_0

    return v8

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    const/4 v9, 0x1

    if-ne v0, v9, :cond_1

    goto/16 :goto_3

    :cond_1
    if-eqz v0, :cond_3

    iget-boolean v1, v6, Lmiui/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v1, :cond_2

    return v9

    :cond_2
    iget-boolean v1, v6, Lmiui/view/ViewPager;->mIsUnableToDrag:Z

    if-eqz v1, :cond_3

    return v8

    :cond_3
    const/4 v1, 0x2

    if-eqz v0, :cond_c

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-direct/range {p0 .. p1}, Lmiui/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_5
    iget v0, v6, Lmiui/view/ViewPager;->mActivePointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ltz v0, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-lt v0, v1, :cond_7

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    iget v1, v6, Lmiui/view/ViewPager;->mLastMotionX:F

    sub-float v1, v10, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    iget v0, v6, Lmiui/view/ViewPager;->mLastMotionY:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/4 v0, 0x0

    cmpl-float v14, v1, v0

    if-eqz v14, :cond_8

    iget v0, v6, Lmiui/view/ViewPager;->mLastMotionX:F

    invoke-direct {p0, v0, v1}, Lmiui/view/ViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v2, 0x0

    float-to-int v3, v1

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lmiui/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_8

    iput v10, v6, Lmiui/view/ViewPager;->mLastMotionX:F

    iput v10, v6, Lmiui/view/ViewPager;->mInitialMotionX:F

    iput v12, v6, Lmiui/view/ViewPager;->mLastMotionY:F

    iput-boolean v9, v6, Lmiui/view/ViewPager;->mIsUnableToDrag:Z

    return v8

    :cond_8
    iget v0, v6, Lmiui/view/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_a

    cmpl-float v0, v11, v13

    if-lez v0, :cond_a

    iput-boolean v9, v6, Lmiui/view/ViewPager;->mIsBeingDragged:Z

    invoke-direct {p0, v9}, Lmiui/view/ViewPager;->setScrollState(I)V

    iget v0, v6, Lmiui/view/ViewPager;->mInitialMotionX:F

    iget v1, v6, Lmiui/view/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    if-lez v14, :cond_9

    add-float/2addr v0, v1

    goto :goto_0

    :cond_9
    sub-float/2addr v0, v1

    :goto_0
    iput v0, v6, Lmiui/view/ViewPager;->mLastMotionX:F

    invoke-direct {p0, v9}, Lmiui/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_1

    :cond_a
    iget v0, v6, Lmiui/view/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_b

    iput-boolean v9, v6, Lmiui/view/ViewPager;->mIsUnableToDrag:Z

    :cond_b
    :goto_1
    iget-boolean v0, v6, Lmiui/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_e

    invoke-direct {p0, v10}, Lmiui/view/ViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    goto :goto_2

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Lmiui/view/ViewPager;->mInitialMotionX:F

    iput v0, v6, Lmiui/view/ViewPager;->mLastMotionX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Lmiui/view/ViewPager;->mLastMotionY:F

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lmiui/view/ViewPager;->mActivePointerId:I

    iput-boolean v8, v6, Lmiui/view/ViewPager;->mIsUnableToDrag:Z

    iget-object v0, v6, Lmiui/view/ViewPager;->mScroller:Lmiui/view/SpringScroller;

    invoke-virtual {v0}, Lmiui/view/SpringScroller;->computeScrollOffset()Z

    iget v0, v6, Lmiui/view/ViewPager;->mScrollState:I

    if-ne v0, v1, :cond_d

    iget-object v0, v6, Lmiui/view/ViewPager;->mScroller:Lmiui/view/SpringScroller;

    invoke-virtual {v0}, Lmiui/view/SpringScroller;->getFinalX()I

    move-result v0

    iget-object v1, v6, Lmiui/view/ViewPager;->mScroller:Lmiui/view/SpringScroller;

    invoke-virtual {v1}, Lmiui/view/SpringScroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Lmiui/view/ViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_d

    iget-object v0, v6, Lmiui/view/ViewPager;->mScroller:Lmiui/view/SpringScroller;

    invoke-virtual {v0}, Lmiui/view/SpringScroller;->abortAnimation()V

    iput-boolean v8, v6, Lmiui/view/ViewPager;->mPopulatePending:Z

    invoke-virtual {p0}, Lmiui/view/ViewPager;->populate()V

    iput-boolean v9, v6, Lmiui/view/ViewPager;->mIsBeingDragged:Z

    invoke-direct {p0, v9}, Lmiui/view/ViewPager;->setScrollState(I)V

    goto :goto_2

    :cond_d
    invoke-direct {p0}, Lmiui/view/ViewPager;->completeScroll()V

    iput-boolean v8, v6, Lmiui/view/ViewPager;->mIsBeingDragged:Z

    :cond_e
    :goto_2
    iget-object v0, v6, Lmiui/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_f

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Lmiui/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_f
    iget-object v0, v6, Lmiui/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v0, v6, Lmiui/view/ViewPager;->mIsBeingDragged:Z

    return v0

    :cond_10
    :goto_3
    invoke-direct {p0}, Lmiui/view/ViewPager;->resetTouch()Z

    return v8
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmiui/view/ViewPager;->mInLayout:Z

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->populate()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lmiui/view/ViewPager;->mInLayout:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int v4, p4, p2

    sub-int v5, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v10

    move v11, v2

    move v12, v11

    :goto_0
    const/16 v13, 0x8

    if-ge v11, v3, :cond_7

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-eq v15, v13, :cond_6

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lmiui/view/ViewPager$LayoutParams;

    iget-boolean v15, v13, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v15, :cond_6

    iget v15, v13, Lmiui/view/ViewPager$LayoutParams;->gravity:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v2

    invoke-static {v15, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    iget v13, v13, Lmiui/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v13, v13, 0x70

    if-eq v2, v1, :cond_2

    const/4 v15, 0x3

    if-eq v2, v15, :cond_1

    const/4 v15, 0x5

    if-eq v2, v15, :cond_0

    move v2, v6

    goto :goto_2

    :cond_0
    sub-int v2, v4, v8

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v2, v15

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v8, v15

    goto :goto_1

    :cond_1
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v6

    goto :goto_2

    :cond_2
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v4, v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_1
    move/from16 v17, v6

    move v6, v2

    move/from16 v2, v17

    :goto_2
    const/16 v15, 0x10

    if-eq v13, v15, :cond_5

    const/16 v15, 0x30

    if-eq v13, v15, :cond_4

    const/16 v15, 0x50

    if-eq v13, v15, :cond_3

    move v13, v7

    goto :goto_4

    :cond_3
    sub-int v13, v5, v9

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v13, v15

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v9, v15

    goto :goto_3

    :cond_4
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v7

    goto :goto_4

    :cond_5
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    sub-int v13, v5, v13

    div-int/lit8 v13, v13, 0x2

    invoke-static {v13, v7}, Ljava/lang/Math;->max(II)I

    move-result v13

    :goto_3
    move/from16 v17, v13

    move v13, v7

    move/from16 v7, v17

    :goto_4
    add-int/2addr v6, v10

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v6

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v1, v7, v16

    invoke-virtual {v14, v6, v7, v15, v1}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v12, v12, 0x1

    move v6, v2

    move v7, v13

    :cond_6
    add-int/lit8 v11, v11, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v3, :cond_c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v13, :cond_b

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lmiui/view/ViewPager$LayoutParams;

    iget-boolean v11, v10, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v11, :cond_b

    invoke-virtual {v0, v2}, Lmiui/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v11

    if-eqz v11, :cond_b

    int-to-float v14, v4

    iget v15, v11, Lmiui/view/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    add-int/2addr v14, v6

    iget-boolean v15, v0, Lmiui/view/ViewPager;->mForceReplayout:Z

    if-nez v15, :cond_8

    iget-boolean v15, v10, Lmiui/view/ViewPager$LayoutParams;->needsMeasure:Z

    if-eqz v15, :cond_a

    :cond_8
    const/4 v15, 0x0

    iput-boolean v15, v10, Lmiui/view/ViewPager$LayoutParams;->needsMeasure:Z

    sub-int v16, v4, v6

    sub-int v13, v16, v8

    int-to-float v13, v13

    iget v10, v10, Lmiui/view/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v13, v10

    float-to-int v10, v13

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v10, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    iput-boolean v15, v0, Lmiui/view/ViewPager;->mForceReplayout:Z

    iget-boolean v11, v11, Lmiui/view/ViewPager$ItemInfo;->hasActionMenu:Z

    if-eqz v11, :cond_9

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getSplitActionBarHeight()I

    move-result v15

    goto :goto_6

    :cond_9
    const/4 v15, 0x0

    :goto_6
    sub-int v11, v5, v7

    sub-int/2addr v11, v9

    int-to-float v11, v11

    int-to-float v15, v15

    const/high16 v16, 0x3f800000    # 1.0f

    iget v13, v0, Lmiui/view/ViewPager;->mBottomMarginProgress:F

    sub-float v16, v16, v13

    mul-float v15, v15, v16

    sub-float/2addr v11, v15

    float-to-int v11, v11

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v11, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v2, v10, v11}, Landroid/view/View;->measure(II)V

    :cond_a
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v14

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v7

    invoke-virtual {v2, v14, v7, v10, v11}, Landroid/view/View;->layout(IIII)V

    :cond_b
    add-int/lit8 v1, v1, 0x1

    const/16 v13, 0x8

    goto :goto_5

    :cond_c
    iput v7, v0, Lmiui/view/ViewPager;->mTopPageBounds:I

    sub-int/2addr v5, v9

    iput v5, v0, Lmiui/view/ViewPager;->mBottomPageBounds:I

    iput v12, v0, Lmiui/view/ViewPager;->mDecorChildCount:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmiui/view/ViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p1

    invoke-static {v0, p2}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p2, p1, 0xa

    iget v1, p0, Lmiui/view/ViewPager;->mDefaultGutterSize:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lmiui/view/ViewPager;->mGutterSize:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, v0

    :goto_0
    const/16 v3, 0x8

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    if-ge v2, v1, :cond_c

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v3, :cond_b

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lmiui/view/ViewPager$LayoutParams;

    if-eqz v3, :cond_b

    iget-boolean v7, v3, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v7, :cond_b

    iget v7, v3, Lmiui/view/ViewPager$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v8

    invoke-static {v7, v8}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v7

    and-int/lit8 v7, v7, 0x7

    iget v8, v3, Lmiui/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v8, v8, 0x70

    const/16 v9, 0x30

    if-eq v8, v9, :cond_1

    const/16 v9, 0x50

    if-ne v8, v9, :cond_0

    goto :goto_1

    :cond_0
    move v8, v0

    goto :goto_2

    :cond_1
    :goto_1
    move v8, v4

    :goto_2
    const/4 v9, 0x3

    if-eq v7, v9, :cond_3

    const/4 v9, 0x5

    if-ne v7, v9, :cond_2

    goto :goto_3

    :cond_2
    move v4, v0

    :cond_3
    :goto_3
    const/high16 v7, -0x80000000

    if-eqz v8, :cond_4

    move v9, v7

    move v7, v5

    goto :goto_4

    :cond_4
    if-eqz v4, :cond_5

    move v9, v5

    goto :goto_4

    :cond_5
    move v9, v7

    :goto_4
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x1

    const/4 v12, -0x2

    if-eq v10, v12, :cond_7

    if-eq v10, v11, :cond_6

    goto :goto_5

    :cond_6
    move v10, p1

    :goto_5
    move v7, v5

    goto :goto_6

    :cond_7
    move v10, p1

    :goto_6
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v12, :cond_9

    if-eq v3, v11, :cond_8

    goto :goto_7

    :cond_8
    move v3, p2

    goto :goto_7

    :cond_9
    move v3, p2

    move v5, v9

    :goto_7
    invoke-static {v10, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v6, v7, v3}, Landroid/view/View;->measure(II)V

    if-eqz v8, :cond_a

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr p2, v3

    goto :goto_8

    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr p1, v3

    :cond_b
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_c
    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Lmiui/view/ViewPager;->mChildWidthMeasureSpec:I

    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Lmiui/view/ViewPager;->mChildHeightMeasureSpec:I

    iput-boolean v4, p0, Lmiui/view/ViewPager;->mInLayout:Z

    invoke-virtual {p0}, Lmiui/view/ViewPager;->populate()V

    iput-boolean v0, p0, Lmiui/view/ViewPager;->mInLayout:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_9
    if-ge v0, v1, :cond_f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v3, :cond_e

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lmiui/view/ViewPager$LayoutParams;

    iget-boolean v6, v4, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v6, :cond_e

    int-to-float v6, p1

    iget v4, v4, Lmiui/view/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v6, v4

    float-to-int v4, v6

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0, v2}, Lmiui/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v6

    if-eqz v6, :cond_d

    iget-boolean v6, v6, Lmiui/view/ViewPager$ItemInfo;->hasActionMenu:Z

    if-eqz v6, :cond_d

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getSplitActionBarHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    iget v8, p0, Lmiui/view/ViewPager;->mBottomMarginProgress:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    sub-int v6, p2, v6

    goto :goto_a

    :cond_d
    move v6, p2

    :goto_a
    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v4, v6}, Landroid/view/View;->measure(II)V

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_f
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 11

    iget v0, p0, Lmiui/view/ViewPager;->mDecorChildCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_5

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lmiui/view/ViewPager$LayoutParams;

    iget-boolean v9, v8, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v9, :cond_0

    goto :goto_3

    :cond_0
    iget v8, v8, Lmiui/view/ViewPager$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v9

    invoke-static {v8, v9}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    and-int/lit8 v8, v8, 0x7

    if-eq v8, v1, :cond_3

    const/4 v9, 0x3

    if-eq v8, v9, :cond_2

    const/4 v9, 0x5

    if-eq v8, v9, :cond_1

    move v8, v2

    goto :goto_2

    :cond_1
    sub-int v8, v4, v3

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v3, v9

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v2

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int v8, v4, v8

    div-int/lit8 v8, v8, 0x2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    :goto_1
    move v10, v8

    move v8, v2

    move v2, v10

    :goto_2
    add-int/2addr v2, v0

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v2, v9

    if-eqz v2, :cond_4

    invoke-virtual {v7, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_4
    move v2, v8

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lmiui/view/ViewPager;->mOnPageChangeListener:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1, p2, p3}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_6
    iget-object v0, p0, Lmiui/view/ViewPager;->mInternalPageChangeListener:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_7
    iput-boolean v1, p0, Lmiui/view/ViewPager;->mCalledSuper:Z

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v3, v0

    move v0, v2

    move v1, v4

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v1, v3

    :goto_0
    if-eq v0, v3, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0, v5}, Lmiui/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    iget v6, v6, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget v7, p0, Lmiui/view/ViewPager;->mCurItem:I

    if-ne v6, v7, :cond_1

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v0, p1, Lmiui/view/ViewPager$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lmiui/view/ViewPager$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lmiui/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget p1, p1, Lmiui/view/ViewPager$SavedState;->position:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lmiui/view/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    :cond_1
    iget v0, p1, Lmiui/view/ViewPager$SavedState;->position:I

    iput v0, p0, Lmiui/view/ViewPager;->mRestoredCurItem:I

    iget-object p1, p1, Lmiui/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object p1, p0, Lmiui/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lmiui/view/ViewPager$SavedState;

    invoke-direct {v1, v0}, Lmiui/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lmiui/view/ViewPager;->mCurItem:I

    iput v0, v1, Lmiui/view/ViewPager$SavedState;->position:I

    iget-object p0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmiui/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object p0

    iput-object p0, v1, Lmiui/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    iget p2, p0, Lmiui/view/ViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, p2, p2}, Lmiui/view/ViewPager;->recomputeScrollPosition(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-boolean v0, p0, Lmiui/view/ViewPager;->mDragEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lmiui/view/ViewPager;->mFakeDragging:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object v0, p0, Lmiui/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_4
    iget-object v0, p0, Lmiui/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_d

    if-eq v0, v2, :cond_c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_8

    const/4 v3, 0x3

    if-eq v0, v3, :cond_7

    const/4 v3, 0x5

    if-eq v0, v3, :cond_6

    const/4 v3, 0x6

    if-eq v0, v3, :cond_5

    goto/16 :goto_3

    :cond_5
    invoke-direct {p0, p1}, Lmiui/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    iget v0, p0, Lmiui/view/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    goto/16 :goto_3

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    goto/16 :goto_2

    :cond_7
    iget-boolean p1, p0, Lmiui/view/ViewPager;->mIsBeingDragged:Z

    if-eqz p1, :cond_e

    iget p1, p0, Lmiui/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, p1, v2, v2}, Lmiui/view/ViewPager;->setCurrentItemInternal(IZZ)V

    goto/16 :goto_1

    :cond_8
    iget-boolean v0, p0, Lmiui/view/ViewPager;->mIsBeingDragged:Z

    if-nez v0, :cond_b

    iget v0, p0, Lmiui/view/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_9

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v5, p0, Lmiui/view/ViewPager;->mLastMotionY:F

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v5, p0, Lmiui/view/ViewPager;->mTouchSlop:I

    int-to-float v6, v5

    cmpl-float v6, v4, v6

    if-lez v6, :cond_b

    cmpl-float v0, v4, v0

    if-lez v0, :cond_b

    iput-boolean v2, p0, Lmiui/view/ViewPager;->mIsBeingDragged:Z

    iget v0, p0, Lmiui/view/ViewPager;->mInitialMotionX:F

    sub-float/2addr v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_a

    int-to-float v3, v5

    add-float/2addr v0, v3

    goto :goto_0

    :cond_a
    int-to-float v3, v5

    sub-float/2addr v0, v3

    :goto_0
    iput v0, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    invoke-direct {p0, v2}, Lmiui/view/ViewPager;->setScrollState(I)V

    invoke-direct {p0, v2}, Lmiui/view/ViewPager;->setScrollingCacheEnabled(Z)V

    :cond_b
    iget-boolean v0, p0, Lmiui/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lmiui/view/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    invoke-direct {p0, p1}, Lmiui/view/ViewPager;->performDrag(F)Z

    move-result v1

    goto :goto_3

    :cond_c
    iget-boolean v0, p0, Lmiui/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lmiui/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v3, p0, Lmiui/view/ViewPager;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v1, p0, Lmiui/view/ViewPager;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iput-boolean v2, p0, Lmiui/view/ViewPager;->mPopulatePending:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    invoke-direct {p0}, Lmiui/view/ViewPager;->infoForCurrentScrollPosition()Lmiui/view/ViewPager$ItemInfo;

    move-result-object v4

    iget v5, v4, Lmiui/view/ViewPager$ItemInfo;->position:I

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    iget v1, v4, Lmiui/view/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v3, v1

    iget v1, v4, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v3, v1

    iget v1, p0, Lmiui/view/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget v1, p0, Lmiui/view/ViewPager;->mInitialMotionX:F

    sub-float/2addr p1, v1

    float-to-int p1, p1

    invoke-direct {p0, v5, v3, v0, p1}, Lmiui/view/ViewPager;->determineTargetPage(IFII)I

    move-result p1

    invoke-virtual {p0, p1, v2, v2, v0}, Lmiui/view/ViewPager;->setCurrentItemInternal(IZZI)V

    :goto_1
    invoke-direct {p0}, Lmiui/view/ViewPager;->resetTouch()Z

    move-result v1

    goto :goto_3

    :cond_d
    iget-object v0, p0, Lmiui/view/ViewPager;->mScroller:Lmiui/view/SpringScroller;

    invoke-virtual {v0}, Lmiui/view/SpringScroller;->abortAnimation()V

    iput-boolean v1, p0, Lmiui/view/ViewPager;->mPopulatePending:Z

    invoke-virtual {p0}, Lmiui/view/ViewPager;->populate()V

    iput-boolean v2, p0, Lmiui/view/ViewPager;->mIsBeingDragged:Z

    invoke-direct {p0, v2}, Lmiui/view/ViewPager;->setScrollState(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lmiui/view/ViewPager;->mInitialMotionX:F

    iput v0, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    :goto_2
    iput p1, p0, Lmiui/view/ViewPager;->mActivePointerId:I

    :cond_e
    :goto_3
    if-eqz v1, :cond_f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    :cond_f
    return v2

    :cond_10
    :goto_4
    return v1
.end method

.method pageLeft()Z
    .locals 2

    iget v0, p0, Lmiui/view/ViewPager;->mCurItem:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Lmiui/view/ViewPager;->setCurrentItem(IZ)V

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method pageRight()Z
    .locals 3

    iget-object v0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    if-eqz v0, :cond_0

    iget v1, p0, Lmiui/view/ViewPager;->mCurItem:I

    invoke-virtual {v0}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    iget v0, p0, Lmiui/view/ViewPager;->mCurItem:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lmiui/view/ViewPager;->setCurrentItem(IZ)V

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/16 p2, 0x1000

    const/4 v1, 0x0

    if-eq p1, p2, :cond_3

    const/16 p2, 0x2000

    if-eq p1, p2, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    if-eqz p1, :cond_2

    iget p2, p0, Lmiui/view/ViewPager;->mCurItem:I

    if-lez p2, :cond_2

    invoke-virtual {p1}, Lmiui/view/PagerAdapter;->getCount()I

    move-result p1

    if-ge p2, p1, :cond_2

    iget p1, p0, Lmiui/view/ViewPager;->mCurItem:I

    sub-int/2addr p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lmiui/view/ViewPager;->setCurrentItem(I)V

    return v0

    :cond_2
    return v1

    :cond_3
    iget-object p1, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    if-eqz p1, :cond_4

    iget p2, p0, Lmiui/view/ViewPager;->mCurItem:I

    if-ltz p2, :cond_4

    invoke-virtual {p1}, Lmiui/view/PagerAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, v0

    if-ge p2, p1, :cond_4

    iget p1, p0, Lmiui/view/ViewPager;->mCurItem:I

    add-int/2addr p1, v0

    goto :goto_0

    :cond_4
    return v1
.end method

.method populate()V
    .locals 1

    iget v0, p0, Lmiui/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->populate(I)V

    return-void
.end method

.method populate(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Lmiui/view/ViewPager;->mCurItem:I

    if-eq v2, v1, :cond_0

    invoke-virtual {v0, v2}, Lmiui/view/ViewPager;->infoForPosition(I)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v2

    iput v1, v0, Lmiui/view/ViewPager;->mCurItem:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v1, v0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-boolean v1, v0, Lmiui/view/ViewPager;->mPopulatePending:Z

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v1, v0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v1, v0}, Lmiui/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    iget v1, v0, Lmiui/view/ViewPager;->mOffscreenPageLimit:I

    iget v4, v0, Lmiui/view/ViewPager;->mCurItem:I

    sub-int/2addr v4, v1

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v6, v0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v6}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    iget v8, v0, Lmiui/view/ViewPager;->mCurItem:I

    add-int/2addr v8, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v7, v5

    :goto_1
    iget-object v8, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    iget-object v8, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/view/ViewPager$ItemInfo;

    iget v9, v8, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget v10, v0, Lmiui/view/ViewPager;->mCurItem:I

    if-lt v9, v10, :cond_4

    if-ne v9, v10, :cond_5

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    :goto_2
    if-nez v8, :cond_6

    if-lez v6, :cond_6

    iget v8, v0, Lmiui/view/ViewPager;->mCurItem:I

    invoke-virtual {v0, v8, v7}, Lmiui/view/ViewPager;->addNewItem(II)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v8

    :cond_6
    const/4 v9, 0x0

    if-eqz v8, :cond_15

    add-int/lit8 v10, v7, -0x1

    if-ltz v10, :cond_7

    iget-object v11, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmiui/view/ViewPager$ItemInfo;

    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    :goto_3
    iget v12, v8, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    const/high16 v13, 0x40000000    # 2.0f

    sub-float v12, v13, v12

    iget v14, v0, Lmiui/view/ViewPager;->mCurItem:I

    add-int/lit8 v14, v14, -0x1

    move v15, v9

    :goto_4
    if-ltz v14, :cond_d

    cmpl-float v16, v15, v12

    if-ltz v16, :cond_9

    if-ge v14, v4, :cond_9

    if-nez v11, :cond_8

    goto :goto_7

    :cond_8
    iget v3, v11, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ne v14, v3, :cond_c

    iget-boolean v3, v11, Lmiui/view/ViewPager$ItemInfo;->scrolling:Z

    if-nez v3, :cond_c

    iget-object v3, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, v0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    iget-object v11, v11, Lmiui/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v3, v0, v14, v11}, Lmiui/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v7, v7, -0x1

    if-ltz v10, :cond_b

    goto :goto_5

    :cond_9
    if-eqz v11, :cond_a

    iget v3, v11, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ne v14, v3, :cond_a

    iget v3, v11, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v15, v3

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_b

    goto :goto_5

    :cond_a
    add-int/lit8 v3, v10, 0x1

    invoke-virtual {v0, v14, v3}, Lmiui/view/ViewPager;->addNewItem(II)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v3

    iget v3, v3, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v15, v3

    add-int/lit8 v7, v7, 0x1

    if-ltz v10, :cond_b

    :goto_5
    iget-object v3, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/view/ViewPager$ItemInfo;

    goto :goto_6

    :cond_b
    const/4 v3, 0x0

    :goto_6
    move-object v11, v3

    :cond_c
    add-int/lit8 v14, v14, -0x1

    goto :goto_4

    :cond_d
    :goto_7
    iget v3, v8, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v4, v7, 0x1

    cmpg-float v10, v3, v13

    if-gez v10, :cond_14

    iget-object v10, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_e

    iget-object v10, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/view/ViewPager$ItemInfo;

    goto :goto_8

    :cond_e
    const/4 v10, 0x0

    :goto_8
    iget v11, v0, Lmiui/view/ViewPager;->mCurItem:I

    :goto_9
    add-int/lit8 v11, v11, 0x1

    if-ge v11, v6, :cond_14

    cmpl-float v12, v3, v13

    if-ltz v12, :cond_11

    if-le v11, v1, :cond_11

    if-nez v10, :cond_f

    goto :goto_c

    :cond_f
    iget v12, v10, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ne v11, v12, :cond_13

    iget-boolean v12, v10, Lmiui/view/ViewPager$ItemInfo;->scrolling:Z

    if-nez v12, :cond_13

    iget-object v12, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v12, v0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    iget-object v10, v10, Lmiui/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, v0, v11, v10}, Lmiui/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object v10, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_10

    :goto_a
    iget-object v10, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/view/ViewPager$ItemInfo;

    goto :goto_b

    :cond_10
    const/4 v10, 0x0

    goto :goto_b

    :cond_11
    if-eqz v10, :cond_12

    iget v12, v10, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ne v11, v12, :cond_12

    iget v10, v10, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v10

    add-int/lit8 v4, v4, 0x1

    iget-object v10, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_10

    goto :goto_a

    :cond_12
    invoke-virtual {v0, v11, v4}, Lmiui/view/ViewPager;->addNewItem(II)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v10

    add-int/lit8 v4, v4, 0x1

    iget v10, v10, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v10

    iget-object v10, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_10

    goto :goto_a

    :cond_13
    :goto_b
    goto :goto_9

    :cond_14
    :goto_c
    invoke-direct {v0, v8, v7, v2}, Lmiui/view/ViewPager;->calculatePageOffsets(Lmiui/view/ViewPager$ItemInfo;ILmiui/view/ViewPager$ItemInfo;)V

    :cond_15
    iget-object v1, v0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    iget v2, v0, Lmiui/view/ViewPager;->mCurItem:I

    if-eqz v8, :cond_16

    iget-object v3, v8, Lmiui/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    goto :goto_d

    :cond_16
    const/4 v3, 0x0

    :goto_d
    invoke-virtual {v1, v0, v2, v3}, Lmiui/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object v1, v0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v1, v0}, Lmiui/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, v5

    :goto_e
    if-ge v2, v1, :cond_18

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lmiui/view/ViewPager$LayoutParams;

    iget-boolean v6, v4, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v6, :cond_17

    iget v6, v4, Lmiui/view/ViewPager$LayoutParams;->widthFactor:F

    cmpl-float v6, v6, v9

    if-nez v6, :cond_17

    invoke-virtual {v0, v3}, Lmiui/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v3

    if-eqz v3, :cond_17

    iget v3, v3, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    iput v3, v4, Lmiui/view/ViewPager$LayoutParams;->widthFactor:F

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v0, v1}, Lmiui/view/ViewPager;->infoForAnyChild(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v3

    goto :goto_f

    :cond_19
    const/4 v3, 0x0

    :goto_f
    if-eqz v3, :cond_1a

    iget v1, v3, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget v2, v0, Lmiui/view/ViewPager;->mCurItem:I

    if-eq v1, v2, :cond_1c

    :cond_1a
    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v5, v1, :cond_1c

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_1b

    iget v2, v2, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget v3, v0, Lmiui/view/ViewPager;->mCurItem:I

    if-ne v2, v3, :cond_1b

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_11

    :cond_1b
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_1c
    :goto_11
    return-void
.end method

.method public setAdapter(Lmiui/view/PagerAdapter;)V
    .locals 6

    iget-object v0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lmiui/view/ViewPager;->mObserver:Lmiui/view/ViewPager$PagerObserver;

    invoke-virtual {v0, v2}, Lmiui/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v0, p0}, Lmiui/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/view/ViewPager$ItemInfo;

    iget-object v3, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    iget v4, v2, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget-object v2, v2, Lmiui/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v2}, Lmiui/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v0, p0}, Lmiui/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lmiui/view/ViewPager;->removeNonDecorViews()V

    iput v1, p0, Lmiui/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v1, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_1
    iget-object v0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    iput-object p1, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    if-eqz p1, :cond_4

    iget-object v2, p0, Lmiui/view/ViewPager;->mObserver:Lmiui/view/ViewPager$PagerObserver;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    new-instance v2, Lmiui/view/ViewPager$PagerObserver;

    invoke-direct {v2, p0, v3}, Lmiui/view/ViewPager$PagerObserver;-><init>(Lmiui/view/ViewPager;Lmiui/view/ViewPager$1;)V

    iput-object v2, p0, Lmiui/view/ViewPager;->mObserver:Lmiui/view/ViewPager$PagerObserver;

    :cond_2
    iget-object v2, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    iget-object v4, p0, Lmiui/view/ViewPager;->mObserver:Lmiui/view/ViewPager$PagerObserver;

    invoke-virtual {v2, v4}, Lmiui/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-boolean v1, p0, Lmiui/view/ViewPager;->mPopulatePending:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/view/ViewPager;->mFirstLayout:Z

    iget v4, p0, Lmiui/view/ViewPager;->mRestoredCurItem:I

    if-ltz v4, :cond_3

    iget-object v4, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    iget-object v5, p0, Lmiui/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    invoke-virtual {v4, v5, v3}, Lmiui/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget v4, p0, Lmiui/view/ViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v4, v1, v2}, Lmiui/view/ViewPager;->setCurrentItemInternal(IZZ)V

    const/4 v1, -0x1

    iput v1, p0, Lmiui/view/ViewPager;->mRestoredCurItem:I

    iput-object v3, p0, Lmiui/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lmiui/view/ViewPager;->populate()V

    :cond_4
    :goto_1
    iget-object p0, p0, Lmiui/view/ViewPager;->mAdapterChangeListener:Lmiui/view/ViewPager$OnAdapterChangeListener;

    if-eqz p0, :cond_5

    if-eq v0, p1, :cond_5

    invoke-interface {p0, v0, p1}, Lmiui/view/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Lmiui/view/PagerAdapter;Lmiui/view/PagerAdapter;)V

    :cond_5
    return-void
.end method

.method public setBottomMarginProgress(F)V
    .locals 0

    iput p1, p0, Lmiui/view/ViewPager;->mBottomMarginProgress:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/view/ViewPager;->mForceReplayout:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/ViewPager;->mPopulatePending:Z

    iget-boolean v1, p0, Lmiui/view/ViewPager;->mFirstLayout:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lmiui/view/ViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/ViewPager;->mPopulatePending:Z

    invoke-virtual {p0, p1, p2, v0}, Lmiui/view/ViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/view/ViewPager;->setCurrentItemInternal(IZZI)V

    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 5

    iget-object v0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    if-nez p3, :cond_1

    iget p3, p0, Lmiui/view/ViewPager;->mCurItem:I

    if-ne p3, p1, :cond_1

    iget-object p3, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_1

    invoke-direct {p0, v1}, Lmiui/view/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_1
    const/4 p3, 0x1

    if-gez p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v0}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_3

    iget-object p1, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {p1}, Lmiui/view/PagerAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, p3

    :cond_3
    :goto_0
    iget v0, p0, Lmiui/view/ViewPager;->mOffscreenPageLimit:I

    iget v2, p0, Lmiui/view/ViewPager;->mCurItem:I

    add-int v3, v2, v0

    if-gt p1, v3, :cond_4

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_5

    :cond_4
    iget-object v0, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/view/ViewPager$ItemInfo;

    iput-boolean p3, v2, Lmiui/view/ViewPager$ItemInfo;->scrolling:Z

    goto :goto_1

    :cond_5
    iget v0, p0, Lmiui/view/ViewPager;->mCurItem:I

    if-eq v0, p1, :cond_6

    goto :goto_2

    :cond_6
    move p3, v1

    :goto_2
    invoke-virtual {p0, p1}, Lmiui/view/ViewPager;->populate(I)V

    invoke-virtual {p0, p1}, Lmiui/view/ViewPager;->infoForPosition(I)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lmiui/view/ViewPager;->mFirstOffset:F

    iget v0, v0, Lmiui/view/ViewPager$ItemInfo;->offset:F

    iget v4, p0, Lmiui/view/ViewPager;->mLastOffset:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v2, v0

    float-to-int v0, v2

    goto :goto_3

    :cond_7
    move v0, v1

    :goto_3
    if-eqz p2, :cond_9

    invoke-virtual {p0, v0, v1, p4}, Lmiui/view/ViewPager;->smoothScrollTo(III)V

    if-eqz p3, :cond_8

    iget-object p2, p0, Lmiui/view/ViewPager;->mOnPageChangeListener:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_8

    invoke-interface {p2, p1}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_8
    if-eqz p3, :cond_c

    iget-object p0, p0, Lmiui/view/ViewPager;->mInternalPageChangeListener:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz p0, :cond_c

    invoke-interface {p0, p1}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_4

    :cond_9
    if-eqz p3, :cond_a

    iget-object p2, p0, Lmiui/view/ViewPager;->mOnPageChangeListener:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_a

    invoke-interface {p2, p1}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_a
    if-eqz p3, :cond_b

    iget-object p2, p0, Lmiui/view/ViewPager;->mInternalPageChangeListener:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_b

    invoke-interface {p2, p1}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_b
    invoke-direct {p0}, Lmiui/view/ViewPager;->completeScroll()V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_c
    :goto_4
    return-void

    :cond_d
    :goto_5
    invoke-direct {p0, v1}, Lmiui/view/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method public setDraggable(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiui/view/ViewPager;->mDragEnabled:Z

    return-void
.end method

.method public setInternalPageChangeListener(Lmiui/view/ViewPager$OnPageChangeListener;)Lmiui/view/ViewPager$OnPageChangeListener;
    .locals 1

    iget-object v0, p0, Lmiui/view/ViewPager;->mInternalPageChangeListener:Lmiui/view/ViewPager$OnPageChangeListener;

    iput-object p1, p0, Lmiui/view/ViewPager;->mInternalPageChangeListener:Lmiui/view/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 3

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " too small; defaulting to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ViewPager"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_0
    iget v0, p0, Lmiui/view/ViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lmiui/view/ViewPager;->mOffscreenPageLimit:I

    invoke-virtual {p0}, Lmiui/view/ViewPager;->populate()V

    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Lmiui/view/ViewPager$OnAdapterChangeListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/view/ViewPager;->mAdapterChangeListener:Lmiui/view/ViewPager$OnAdapterChangeListener;

    return-void
.end method

.method public setOnPageChangeListener(Lmiui/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/view/ViewPager;->mOnPageChangeListener:Lmiui/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    iget v0, p0, Lmiui/view/ViewPager;->mPageMargin:I

    iput p1, p0, Lmiui/view/ViewPager;->mPageMargin:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-direct {p0, v1, v1, p1, v0}, Lmiui/view/ViewPager;->recomputeScrollPosition(IIII)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiui/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lmiui/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method smoothScrollTo(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmiui/view/ViewPager;->smoothScrollTo(III)V

    return-void
.end method

.method smoothScrollTo(III)V
    .locals 9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lmiui/view/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    sub-int v3, p1, v0

    sub-int v4, p2, v2

    if-nez v3, :cond_1

    if-nez v4, :cond_1

    invoke-direct {p0}, Lmiui/view/ViewPager;->completeScroll()V

    invoke-virtual {p0}, Lmiui/view/ViewPager;->populate()V

    invoke-direct {p0, v1}, Lmiui/view/ViewPager;->setScrollState(I)V

    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lmiui/view/ViewPager;->setScrollingCacheEnabled(Z)V

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lmiui/view/ViewPager;->setScrollState(I)V

    iget-object v3, p0, Lmiui/view/ViewPager;->mScroller:Lmiui/view/SpringScroller;

    int-to-float v4, v0

    int-to-float v5, p1

    int-to-float v6, v2

    int-to-float v7, p2

    neg-int p1, p3

    int-to-float v8, p1

    invoke-virtual/range {v3 .. v8}, Lmiui/view/SpringScroller;->startScroll(FFFFF)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lmiui/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
