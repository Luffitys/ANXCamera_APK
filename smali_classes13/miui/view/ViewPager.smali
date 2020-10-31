.class public Lmiui/view/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/ViewPager$LayoutParams;,
        Lmiui/view/ViewPager$PagerObserver;,
        Lmiui/view/ViewPager$SavedState;,
        Lmiui/view/ViewPager$Decor;,
        Lmiui/view/ViewPager$OnAdapterChangeListener;,
        Lmiui/view/ViewPager$SimpleOnPageChangeListener;,
        Lmiui/view/ViewPager$OnPageChangeListener;,
        Lmiui/view/ViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lmiui/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

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
    .registers 3

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
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lmiui/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Lmiui/view/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Lmiui/view/ViewPager;->mTempItem:Lmiui/view/ViewPager$ItemInfo;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lmiui/view/ViewPager;->mRestoredCurItem:I

    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    const v1, -0x800001

    iput v1, p0, Lmiui/view/ViewPager;->mFirstOffset:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Lmiui/view/ViewPager;->mLastOffset:F

    const/4 v1, 0x3

    iput v1, p0, Lmiui/view/ViewPager;->mOffscreenPageLimit:I

    iput v0, p0, Lmiui/view/ViewPager;->mActivePointerId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/view/ViewPager;->mFirstLayout:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/view/ViewPager;->mNeedCalculatePageOffsets:Z

    iput-boolean v0, p0, Lmiui/view/ViewPager;->mDragEnabled:Z

    const/4 v0, 0x0

    iput v0, p0, Lmiui/view/ViewPager;->mLastPageOffset:F

    iput v1, p0, Lmiui/view/ViewPager;->mScrollState:I

    invoke-virtual {p0}, Lmiui/view/ViewPager;->initViewPager()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lmiui/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Lmiui/view/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Lmiui/view/ViewPager;->mTempItem:Lmiui/view/ViewPager$ItemInfo;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lmiui/view/ViewPager;->mRestoredCurItem:I

    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    const v1, -0x800001

    iput v1, p0, Lmiui/view/ViewPager;->mFirstOffset:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Lmiui/view/ViewPager;->mLastOffset:F

    const/4 v1, 0x3

    iput v1, p0, Lmiui/view/ViewPager;->mOffscreenPageLimit:I

    iput v0, p0, Lmiui/view/ViewPager;->mActivePointerId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/view/ViewPager;->mFirstLayout:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/view/ViewPager;->mNeedCalculatePageOffsets:Z

    iput-boolean v0, p0, Lmiui/view/ViewPager;->mDragEnabled:Z

    const/4 v0, 0x0

    iput v0, p0, Lmiui/view/ViewPager;->mLastPageOffset:F

    iput v1, p0, Lmiui/view/ViewPager;->mScrollState:I

    invoke-virtual {p0}, Lmiui/view/ViewPager;->initViewPager()V

    return-void
.end method

.method static synthetic access$100()[I
    .registers 1

    sget-object v0, Lmiui/view/ViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private calculatePageOffsets(Lmiui/view/ViewPager$ItemInfo;ILmiui/view/ViewPager$ItemInfo;)V
    .registers 15

    iget-object v0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v0}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v1

    if-lez v1, :cond_12

    iget v2, p0, Lmiui/view/ViewPager;->mPageMargin:I

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    if-eqz p3, :cond_b2

    iget v3, p3, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget v4, p1, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ge v3, v4, :cond_6a

    const/4 v4, 0x0

    iget v5, p3, Lmiui/view/ViewPager$ItemInfo;->offset:F

    iget v6, p3, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v6

    add-float/2addr v5, v2

    add-int/lit8 v6, v3, 0x1

    :goto_24
    iget v7, p1, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-gt v6, v7, :cond_b2

    iget-object v7, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_b2

    iget-object v7, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/view/ViewPager$ItemInfo;

    :goto_38
    iget v8, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-le v6, v8, :cond_52

    iget-object v8, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_52

    add-int/lit8 v4, v4, 0x1

    iget-object v8, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Lmiui/view/ViewPager$ItemInfo;

    goto :goto_38

    :cond_52
    :goto_52
    iget v8, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ge v6, v8, :cond_61

    iget-object v8, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v8, v6}, Lmiui/view/PagerAdapter;->getPageWidth(I)F

    move-result v8

    add-float/2addr v8, v2

    add-float/2addr v5, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_52

    :cond_61
    iput v5, v7, Lmiui/view/ViewPager$ItemInfo;->offset:F

    iget v8, v7, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v2

    add-float/2addr v5, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    :cond_6a
    iget v4, p1, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-le v3, v4, :cond_b2

    iget-object v4, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget v5, p3, Lmiui/view/ViewPager$ItemInfo;->offset:F

    add-int/lit8 v6, v3, -0x1

    :goto_7a
    iget v7, p1, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-lt v6, v7, :cond_b2

    if-ltz v4, :cond_b2

    iget-object v7, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/view/ViewPager$ItemInfo;

    :goto_88
    iget v8, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ge v6, v8, :cond_9a

    if-lez v4, :cond_9a

    add-int/lit8 v4, v4, -0x1

    iget-object v8, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Lmiui/view/ViewPager$ItemInfo;

    goto :goto_88

    :cond_9a
    :goto_9a
    iget v8, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-le v6, v8, :cond_a9

    iget-object v8, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v8, v6}, Lmiui/view/PagerAdapter;->getPageWidth(I)F

    move-result v8

    add-float/2addr v8, v2

    sub-float/2addr v5, v8

    add-int/lit8 v6, v6, -0x1

    goto :goto_9a

    :cond_a9
    iget v8, v7, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v2

    sub-float/2addr v5, v8

    iput v5, v7, Lmiui/view/ViewPager$ItemInfo;->offset:F

    add-int/lit8 v6, v6, -0x1

    goto :goto_7a

    :cond_b2
    iget-object v3, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p1, Lmiui/view/ViewPager$ItemInfo;->offset:F

    iget v5, p1, Lmiui/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p1, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-nez v6, :cond_c5

    iget v6, p1, Lmiui/view/ViewPager$ItemInfo;->offset:F

    goto :goto_c8

    :cond_c5
    const v6, -0x800001

    :goto_c8
    iput v6, p0, Lmiui/view/ViewPager;->mFirstOffset:F

    iget v6, p1, Lmiui/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v7, v0, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    if-ne v6, v7, :cond_d9

    iget v6, p1, Lmiui/view/ViewPager$ItemInfo;->offset:F

    iget v7, p1, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v7

    sub-float/2addr v6, v8

    goto :goto_dc

    :cond_d9
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    :goto_dc
    iput v6, p0, Lmiui/view/ViewPager;->mLastOffset:F

    add-int/lit8 v6, p2, -0x1

    :goto_e0
    if-ltz v6, :cond_10b

    iget-object v7, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/view/ViewPager$ItemInfo;

    :goto_ea
    iget v9, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-le v5, v9, :cond_fa

    iget-object v9, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v9, v5}, Lmiui/view/PagerAdapter;->getPageWidth(I)F

    move-result v5

    add-float/2addr v5, v2

    sub-float/2addr v4, v5

    move v5, v10

    goto :goto_ea

    :cond_fa
    iget v9, v7, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    sub-float/2addr v4, v9

    iput v4, v7, Lmiui/view/ViewPager$ItemInfo;->offset:F

    iget v9, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-nez v9, :cond_106

    iput v4, p0, Lmiui/view/ViewPager;->mFirstOffset:F

    :cond_106
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_e0

    :cond_10b
    iget v6, p1, Lmiui/view/ViewPager$ItemInfo;->offset:F

    iget v7, p1, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v7

    add-float/2addr v6, v2

    iget v4, p1, Lmiui/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, p2, 0x1

    :goto_117
    if-ge v5, v3, :cond_148

    iget-object v7, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/view/ViewPager$ItemInfo;

    :goto_121
    iget v9, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ge v4, v9, :cond_131

    iget-object v9, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v9, v4}, Lmiui/view/PagerAdapter;->getPageWidth(I)F

    move-result v4

    add-float/2addr v4, v2

    add-float/2addr v6, v4

    move v4, v10

    goto :goto_121

    :cond_131
    iget v9, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v10, v0, -0x1

    if-ne v9, v10, :cond_13d

    iget v9, v7, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v6

    sub-float/2addr v9, v8

    iput v9, p0, Lmiui/view/ViewPager;->mLastOffset:F

    :cond_13d
    iput v6, v7, Lmiui/view/ViewPager$ItemInfo;->offset:F

    iget v9, v7, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    add-float/2addr v6, v9

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_117

    :cond_148
    const/4 v5, 0x0

    iput-boolean v5, p0, Lmiui/view/ViewPager;->mNeedCalculatePageOffsets:Z

    return-void
.end method

.method private completeScroll()V
    .registers 7

    iget v0, p0, Lmiui/view/ViewPager;->mScrollState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    if-eqz v0, :cond_31

    invoke-direct {p0, v1}, Lmiui/view/ViewPager;->setScrollingCacheEnabled(Z)V

    iget-object v2, p0, Lmiui/view/ViewPager;->mScroller:Lmiui/view/SpringScroller;

    invoke-virtual {v2}, Lmiui/view/SpringScroller;->abortAnimation()V

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollY()I

    move-result v3

    iget-object v4, p0, Lmiui/view/ViewPager;->mScroller:Lmiui/view/SpringScroller;

    invoke-virtual {v4}, Lmiui/view/SpringScroller;->getCurrX()I

    move-result v4

    iget-object v5, p0, Lmiui/view/ViewPager;->mScroller:Lmiui/view/SpringScroller;

    invoke-virtual {v5}, Lmiui/view/SpringScroller;->getCurrY()I

    move-result v5

    if-ne v2, v4, :cond_2b

    if-eq v3, v5, :cond_2e

    :cond_2b
    invoke-virtual {p0, v4, v5}, Lmiui/view/ViewPager;->scrollTo(II)V

    :cond_2e
    invoke-direct {p0, v1}, Lmiui/view/ViewPager;->setScrollState(I)V

    :cond_31
    iput-boolean v1, p0, Lmiui/view/ViewPager;->mPopulatePending:Z

    iget-object v2, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/view/ViewPager$ItemInfo;

    iget-boolean v4, v3, Lmiui/view/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v4, :cond_4c

    const/4 v0, 0x1

    iput-boolean v1, v3, Lmiui/view/ViewPager$ItemInfo;->scrolling:Z

    :cond_4c
    goto :goto_39

    :cond_4d
    if-eqz v0, :cond_52

    invoke-virtual {p0}, Lmiui/view/ViewPager;->populate()V

    :cond_52
    return-void
.end method

.method private determineTargetPage(IFII)I
    .registers 10

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lmiui/view/ViewPager;->mFlingDistance:I

    if-le v0, v1, :cond_17

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lmiui/view/ViewPager;->mMinimumVelocity:I

    if-le v0, v1, :cond_17

    if-lez p3, :cond_14

    move v0, p1

    goto :goto_16

    :cond_14
    add-int/lit8 v0, p1, 0x1

    :goto_16
    goto :goto_1d

    :cond_17
    int-to-float v0, p1

    add-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    :goto_1d
    iget-object v1, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_48

    iget-object v1, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/ViewPager$ItemInfo;

    iget-object v2, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/view/ViewPager$ItemInfo;

    iget v3, v1, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget v4, v2, Lmiui/view/ViewPager$ItemInfo;->position:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_48
    return v0
.end method

.method private endDrag()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/ViewPager;->mIsBeingDragged:Z

    iput-boolean v0, p0, Lmiui/view/ViewPager;->mIsUnableToDrag:Z

    iget-object v0, p0, Lmiui/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_f
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .registers 7

    if-nez p1, :cond_8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object p1, v0

    :cond_8
    if-nez p2, :cond_f

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    :cond_f
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

    move-result-object v0

    :goto_2b
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5d

    if-eq v0, p0, :cond_5d

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2b

    :cond_5d
    return-object p1
.end method

.method private getClientWidth()I
    .registers 3

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private infoForCurrentScrollPosition()Lmiui/view/ViewPager$ItemInfo;
    .registers 15

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_f

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_10

    :cond_f
    move v2, v1

    :goto_10
    if-lez v0, :cond_17

    iget v1, p0, Lmiui/view/ViewPager;->mPageMargin:I

    int-to-float v1, v1

    int-to-float v3, v0

    div-float/2addr v1, v3

    :cond_17
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1d
    iget-object v9, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_75

    iget-object v9, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiui/view/ViewPager$ItemInfo;

    if-nez v6, :cond_4c

    iget v10, v9, Lmiui/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v11, v3, 0x1

    if-eq v10, v11, :cond_4c

    iget-object v9, p0, Lmiui/view/ViewPager;->mTempItem:Lmiui/view/ViewPager$ItemInfo;

    add-float v10, v4, v5

    add-float/2addr v10, v1

    iput v10, v9, Lmiui/view/ViewPager$ItemInfo;->offset:F

    add-int/lit8 v10, v3, 0x1

    iput v10, v9, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget-object v10, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    iget v11, v9, Lmiui/view/ViewPager$ItemInfo;->position:I

    invoke-virtual {v10, v11}, Lmiui/view/PagerAdapter;->getPageWidth(I)F

    move-result v10

    iput v10, v9, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v8, v8, -0x1

    :cond_4c
    iget v10, v9, Lmiui/view/ViewPager$ItemInfo;->offset:F

    move v11, v10

    iget v12, v9, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v10

    add-float/2addr v12, v1

    if-nez v6, :cond_5b

    cmpl-float v13, v2, v11

    if-ltz v13, :cond_5a

    goto :goto_5b

    :cond_5a
    return-object v7

    :cond_5b
    :goto_5b
    cmpg-float v13, v2, v12

    if-ltz v13, :cond_74

    iget-object v13, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v8, v13, :cond_6a

    goto :goto_74

    :cond_6a
    const/4 v6, 0x0

    iget v3, v9, Lmiui/view/ViewPager$ItemInfo;->position:I

    move v4, v10

    iget v5, v9, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    move-object v7, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    :cond_74
    :goto_74
    return-object v9

    :cond_75
    return-object v7
.end method

.method private isGutterDrag(FF)Z
    .registers 6

    iget v0, p0, Lmiui/view/ViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_c

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1c

    :cond_c
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v0

    iget v2, p0, Lmiui/view/ViewPager;->mGutterSize:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1e

    cmpg-float v0, p2, v1

    if-gez v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lmiui/view/ViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_24

    if-nez v0, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lmiui/view/ViewPager;->mActivePointerId:I

    iget-object v3, p0, Lmiui/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_24

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    :cond_24
    return-void
.end method

.method private pageScrolled(IZ)Z
    .registers 16

    iget-object v0, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_1c

    iput-boolean v2, p0, Lmiui/view/ViewPager;->mCalledSuper:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2}, Lmiui/view/ViewPager;->onPageScrolled(IFI)V

    iget-boolean v0, p0, Lmiui/view/ViewPager;->mCalledSuper:Z

    if-eqz v0, :cond_16

    return v2

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    invoke-direct {p0}, Lmiui/view/ViewPager;->infoForCurrentScrollPosition()Lmiui/view/ViewPager$ItemInfo;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v3

    iget v4, p0, Lmiui/view/ViewPager;->mPageMargin:I

    add-int v5, v3, v4

    int-to-float v4, v4

    int-to-float v6, v3

    div-float/2addr v4, v6

    iget v6, v0, Lmiui/view/ViewPager$ItemInfo;->position:I

    int-to-float v7, p1

    int-to-float v8, v3

    div-float/2addr v7, v8

    iget v8, v0, Lmiui/view/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v7, v8

    iget v8, v0, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v4

    div-float/2addr v7, v8

    int-to-float v8, v5

    mul-float/2addr v8, v7

    float-to-int v8, v8

    const/4 v9, 0x1

    if-eqz p2, :cond_8c

    const/4 v10, 0x0

    move v11, v6

    iget v12, p0, Lmiui/view/ViewPager;->mLastPageOffset:F

    cmpg-float v12, v12, v7

    if-gez v12, :cond_50

    const v12, 0x3f0ccccd    # 0.55f

    cmpl-float v12, v7, v12

    if-lez v12, :cond_50

    const/4 v10, 0x1

    add-int/lit8 v11, v6, 0x1

    goto :goto_5f

    :cond_50
    iget v12, p0, Lmiui/view/ViewPager;->mLastPageOffset:F

    cmpl-float v12, v12, v7

    if-lez v12, :cond_5f

    const v12, 0x3ee66666    # 0.45f

    cmpg-float v12, v7, v12

    if-gez v12, :cond_5f

    const/4 v10, 0x1

    move v11, v6

    :cond_5f
    :goto_5f
    iput v7, p0, Lmiui/view/ViewPager;->mLastPageOffset:F

    if-eqz v10, :cond_8c

    if-gez v11, :cond_67

    const/4 v11, 0x0

    goto :goto_77

    :cond_67
    iget-object v12, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v12}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v12

    if-lt v11, v12, :cond_77

    iget-object v12, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v12}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v12

    add-int/lit8 v11, v12, -0x1

    :cond_77
    :goto_77
    iget v12, p0, Lmiui/view/ViewPager;->mCurItem:I

    if-eq v11, v12, :cond_8c

    invoke-virtual {p0, v11}, Lmiui/view/ViewPager;->populate(I)V

    iget-object v12, p0, Lmiui/view/ViewPager;->mOnPageChangeListener:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz v12, :cond_85

    invoke-interface {v12, v11}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_85
    iget-object v12, p0, Lmiui/view/ViewPager;->mInternalPageChangeListener:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz v12, :cond_8c

    invoke-interface {v12, v11}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_8c
    iput-boolean v2, p0, Lmiui/view/ViewPager;->mCalledSuper:Z

    invoke-virtual {p0, v6, v7, v8}, Lmiui/view/ViewPager;->onPageScrolled(IFI)V

    iget-boolean v2, p0, Lmiui/view/ViewPager;->mCalledSuper:Z

    if-eqz v2, :cond_96

    return v9

    :cond_96
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private performDrag(F)Z
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    iget v3, v0, Lmiui/view/ViewPager;->mLastMotionX:F

    sub-float/2addr v3, v1

    iput v1, v0, Lmiui/view/ViewPager;->mLastMotionX:F

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    add-float v5, v4, v3

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v6

    int-to-float v7, v6

    iget v8, v0, Lmiui/view/ViewPager;->mFirstOffset:F

    mul-float/2addr v7, v8

    int-to-float v8, v6

    iget v9, v0, Lmiui/view/ViewPager;->mLastOffset:F

    mul-float/2addr v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    iget-object v11, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmiui/view/ViewPager$ItemInfo;

    iget-object v12, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmiui/view/ViewPager$ItemInfo;

    iget v13, v11, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-eqz v13, :cond_40

    const/4 v9, 0x0

    iget v13, v11, Lmiui/view/ViewPager$ItemInfo;->offset:F

    int-to-float v15, v6

    mul-float v7, v13, v15

    :cond_40
    iget v13, v12, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget-object v15, v0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v15}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v15

    sub-int/2addr v15, v14

    if-eq v13, v15, :cond_51

    const/4 v10, 0x0

    iget v13, v12, Lmiui/view/ViewPager$ItemInfo;->offset:F

    int-to-float v15, v6

    mul-float v8, v13, v15

    :cond_51
    cmpg-float v13, v5, v7

    if-gez v13, :cond_68

    if-eqz v9, :cond_66

    sub-float v13, v7, v5

    iget-object v15, v0, Lmiui/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v16

    int-to-float v14, v6

    div-float v14, v16, v14

    invoke-virtual {v15, v14}, Landroid/widget/EdgeEffect;->onPull(F)V

    const/4 v2, 0x1

    :cond_66
    move v5, v7

    goto :goto_7e

    :cond_68
    cmpl-float v13, v5, v8

    if-lez v13, :cond_7e

    if-eqz v10, :cond_7d

    sub-float v13, v5, v8

    iget-object v14, v0, Lmiui/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v1, v6

    div-float/2addr v15, v1

    invoke-virtual {v14, v15}, Landroid/widget/EdgeEffect;->onPull(F)V

    const/4 v1, 0x1

    move v2, v1

    :cond_7d
    move v5, v8

    :cond_7e
    :goto_7e
    iget v1, v0, Lmiui/view/ViewPager;->mLastMotionX:F

    float-to-int v13, v5

    int-to-float v13, v13

    sub-float v13, v5, v13

    add-float/2addr v1, v13

    iput v1, v0, Lmiui/view/ViewPager;->mLastMotionX:F

    float-to-int v1, v5

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getScrollY()I

    move-result v13

    invoke-virtual {v0, v1, v13}, Lmiui/view/ViewPager;->scrollTo(II)V

    float-to-int v1, v5

    const/4 v13, 0x1

    invoke-direct {v0, v1, v13}, Lmiui/view/ViewPager;->pageScrolled(IZ)Z

    return v2
.end method

.method private recomputeScrollPosition(IIII)V
    .registers 11

    if-lez p2, :cond_37

    iget-object v0, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lmiui/view/ViewPager;->mScroller:Lmiui/view/SpringScroller;

    invoke-virtual {v0}, Lmiui/view/SpringScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lmiui/view/ViewPager;->mScroller:Lmiui/view/SpringScroller;

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-direct {p0}, Lmiui/view/ViewPager;->getClientWidth()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lmiui/view/SpringScroller;->setFinalX(I)V

    goto :goto_5c

    :cond_21
    add-int v0, p1, p3

    add-int v1, p2, p4

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v2

    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    int-to-float v4, v0

    mul-float/2addr v4, v3

    float-to-int v4, v4

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollY()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lmiui/view/ViewPager;->scrollTo(II)V

    goto :goto_5c

    :cond_37
    iget v0, p0, Lmiui/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->infoForPosition(I)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_48

    iget v1, v0, Lmiui/view/ViewPager$ItemInfo;->offset:F

    iget v2, p0, Lmiui/view/ViewPager;->mLastOffset:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_49

    :cond_48
    const/4 v1, 0x0

    :goto_49
    int-to-float v2, p1

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v3

    if-eq v2, v3, :cond_5c

    invoke-direct {p0}, Lmiui/view/ViewPager;->completeScroll()V

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lmiui/view/ViewPager;->scrollTo(II)V

    :cond_5c
    :goto_5c
    return-void
.end method

.method private removeNonDecorViews()V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1d

    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lmiui/view/ViewPager$LayoutParams;

    iget-boolean v3, v2, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_1a

    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    return-void
.end method

.method private resetTouch()Z
    .registers 3

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

    iget-object v1, p0, Lmiui/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private setScrollState(I)V
    .registers 3

    iget v0, p0, Lmiui/view/ViewPager;->mScrollState:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lmiui/view/ViewPager;->mScrollState:I

    iget-object v0, p0, Lmiui/view/ViewPager;->mOnPageChangeListener:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_e

    invoke-interface {v0, p1}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_e
    iget-object v0, p0, Lmiui/view/ViewPager;->mInternalPageChangeListener:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_15

    invoke-interface {v0, p1}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_15
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Lmiui/view/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_6

    iput-boolean p1, p0, Lmiui/view/ViewPager;->mScrollingCacheEnabled:Z

    :cond_6
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_2f

    const/4 v2, 0x0

    :goto_d
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2f

    invoke-virtual {p0, v2}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2c

    invoke-virtual {p0, v3}, Lmiui/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_2c

    iget v5, v4, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget v6, p0, Lmiui/view/ViewPager;->mCurItem:I

    if-ne v5, v6, :cond_2c

    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_2f
    const/high16 v2, 0x40000

    if-ne v1, v2, :cond_3b

    if-eqz p1, :cond_59

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_59

    :cond_3b
    invoke-virtual {p0}, Lmiui/view/ViewPager;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_42

    return-void

    :cond_42
    and-int/lit8 v2, p3, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_54

    invoke-virtual {p0}, Lmiui/view/ViewPager;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-virtual {p0}, Lmiui/view/ViewPager;->isFocusableInTouchMode()Z

    move-result v2

    if-nez v2, :cond_54

    return-void

    :cond_54
    if-eqz p1, :cond_59

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_59
    return-void
.end method

.method addNewItem(II)Lmiui/view/ViewPager$ItemInfo;
    .registers 5

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

    move-result v1

    iput-boolean v1, v0, Lmiui/view/ViewPager$ItemInfo;->hasActionMenu:Z

    if-ltz p2, :cond_30

    iget-object v1, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_2a

    goto :goto_30

    :cond_2a
    iget-object v1, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_35

    :cond_30
    :goto_30
    iget-object v1, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_35
    return-object v0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {p0, v1}, Lmiui/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_20

    iget v3, v2, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget v4, p0, Lmiui/view/ViewPager;->mCurItem:I

    if-ne v3, v4, :cond_20

    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 7

    invoke-virtual {p0, p3}, Lmiui/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, p3}, Lmiui/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_a
    move-object v0, p3

    check-cast v0, Lmiui/view/ViewPager$LayoutParams;

    iget-boolean v1, v0, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Lmiui/view/ViewPager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    iget-boolean v1, p0, Lmiui/view/ViewPager;->mInLayout:Z

    if-eqz v1, :cond_2b

    iget-boolean v1, v0, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v1, :cond_23

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmiui/view/ViewPager$LayoutParams;->needsMeasure:Z

    invoke-virtual {p0, p1, p2, p3}, Lmiui/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_2e

    :cond_23
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2b
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_2e
    return-void
.end method

.method public arrowScroll(I)Z
    .registers 7

    invoke-virtual {p0}, Lmiui/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_7

    const/4 v0, 0x0

    :cond_7
    const/4 v1, 0x0

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x42

    const/16 v4, 0x11

    if-eqz v2, :cond_58

    if-eq v2, v0, :cond_58

    if-ne p1, v4, :cond_38

    iget-object v3, p0, Lmiui/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v2}, Lmiui/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lmiui/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v0}, Lmiui/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_33

    if-lt v3, v4, :cond_33

    invoke-virtual {p0}, Lmiui/view/ViewPager;->pageLeft()Z

    move-result v1

    goto :goto_37

    :cond_33
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    :cond_37
    :goto_37
    goto :goto_6c

    :cond_38
    if-ne p1, v3, :cond_37

    iget-object v3, p0, Lmiui/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v2}, Lmiui/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lmiui/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v0}, Lmiui/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_53

    if-gt v3, v4, :cond_53

    invoke-virtual {p0}, Lmiui/view/ViewPager;->pageRight()Z

    move-result v1

    goto :goto_57

    :cond_53
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    :goto_57
    goto :goto_6c

    :cond_58
    if-eq p1, v4, :cond_68

    const/4 v4, 0x1

    if-ne p1, v4, :cond_5e

    goto :goto_68

    :cond_5e
    if-eq p1, v3, :cond_63

    const/4 v3, 0x2

    if-ne p1, v3, :cond_6c

    :cond_63
    invoke-virtual {p0}, Lmiui/view/ViewPager;->pageRight()Z

    move-result v1

    goto :goto_6c

    :cond_68
    :goto_68
    invoke-virtual {p0}, Lmiui/view/ViewPager;->pageLeft()Z

    move-result v1

    :cond_6c
    :goto_6c
    if-eqz v1, :cond_75

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lmiui/view/ViewPager;->playSoundEffect(I)V

    :cond_75
    return v1
.end method

.method public beginFakeDrag()Z
    .registers 13

    iget-boolean v0, p0, Lmiui/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/view/ViewPager;->mFakeDragging:Z

    invoke-direct {p0, v0}, Lmiui/view/ViewPager;->setScrollState(I)V

    const/4 v1, 0x0

    iput v1, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    iput v1, p0, Lmiui/view/ViewPager;->mInitialMotionX:F

    iget-object v1, p0, Lmiui/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1c

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1f

    :cond_1c
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    :goto_1f
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
    .registers 20

    move-object v0, p1

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_5c

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v6, v5, -0x1

    :goto_17
    if-ltz v6, :cond_5c

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    add-int v7, p4, v3

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v7, v8, :cond_59

    add-int v7, p4, v3

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v7, v8, :cond_59

    add-int v7, p5, v4

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v7, v8, :cond_59

    add-int v7, p5, v4

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v7, v8, :cond_59

    const/4 v9, 0x1

    add-int v7, p4, v3

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v11, v7, v8

    add-int v7, p5, v4

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v12, v7, v8

    move-object v7, p0

    move-object v8, v13

    move/from16 v10, p3

    invoke-virtual/range {v7 .. v12}, Lmiui/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v7

    if-eqz v7, :cond_59

    return v2

    :cond_59
    add-int/lit8 v6, v6, -0x1

    goto :goto_17

    :cond_5c
    if-eqz p2, :cond_68

    move/from16 v1, p3

    neg-int v3, v1

    invoke-virtual {p1, v3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_6a

    goto :goto_6b

    :cond_68
    move/from16 v1, p3

    :cond_6a
    const/4 v2, 0x0

    :goto_6b
    return v2
.end method

.method public canScrollHorizontally(I)Z
    .registers 8

    iget-object v0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-direct {p0}, Lmiui/view/ViewPager;->getClientWidth()I

    move-result v0

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v2

    const/4 v3, 0x1

    if-gez p1, :cond_1a

    int-to-float v4, v0

    iget v5, p0, Lmiui/view/ViewPager;->mFirstOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-le v2, v4, :cond_19

    move v1, v3

    :cond_19
    return v1

    :cond_1a
    if-lez p1, :cond_25

    int-to-float v4, v0

    iget v5, p0, Lmiui/view/ViewPager;->mLastOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-ge v2, v4, :cond_24

    move v1, v3

    :cond_24
    return v1

    :cond_25
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Lmiui/view/ViewPager$LayoutParams;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public computeScroll()V
    .registers 7

    iget-object v0, p0, Lmiui/view/ViewPager;->mScroller:Lmiui/view/SpringScroller;

    invoke-virtual {v0}, Lmiui/view/SpringScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lmiui/view/ViewPager;->mScroller:Lmiui/view/SpringScroller;

    invoke-virtual {v0}, Lmiui/view/SpringScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lmiui/view/ViewPager;->mScroller:Lmiui/view/SpringScroller;

    invoke-virtual {v2}, Lmiui/view/SpringScroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Lmiui/view/ViewPager;->mScroller:Lmiui/view/SpringScroller;

    invoke-virtual {v3}, Lmiui/view/SpringScroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_28

    if-eq v1, v3, :cond_3a

    :cond_28
    invoke-virtual {p0, v2, v3}, Lmiui/view/ViewPager;->scrollTo(II)V

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lmiui/view/ViewPager;->pageScrolled(IZ)Z

    move-result v5

    if-nez v5, :cond_3a

    iget-object v5, p0, Lmiui/view/ViewPager;->mScroller:Lmiui/view/SpringScroller;

    invoke-virtual {v5}, Lmiui/view/SpringScroller;->abortAnimation()V

    invoke-virtual {p0, v4, v3}, Lmiui/view/ViewPager;->scrollTo(II)V

    :cond_3a
    invoke-virtual {p0}, Lmiui/view/ViewPager;->postInvalidateOnAnimation()V

    return-void

    :cond_3e
    invoke-direct {p0}, Lmiui/view/ViewPager;->completeScroll()V

    return-void
.end method

.method dataSetChanged()V
    .registers 13

    iget-object v0, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lmiui/view/ViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    if-ge v0, v1, :cond_1f

    iget-object v0, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v1}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1f

    move v0, v2

    goto :goto_20

    :cond_1f
    move v0, v3

    :goto_20
    iget v1, p0, Lmiui/view/ViewPager;->mCurItem:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_25
    iget-object v7, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_ab

    iget-object v7, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/view/ViewPager$ItemInfo;

    iget-object v8, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    iget-object v9, v7, Lmiui/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lmiui/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_53

    iget-boolean v9, v7, Lmiui/view/ViewPager$ItemInfo;->hasActionMenu:Z

    iget-object v10, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    iget v11, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    invoke-virtual {v10, v11}, Lmiui/view/PagerAdapter;->hasActionMenu(I)Z

    move-result v10

    if-eq v9, v10, :cond_a8

    iget-boolean v9, v7, Lmiui/view/ViewPager$ItemInfo;->hasActionMenu:Z

    xor-int/2addr v9, v2

    iput-boolean v9, v7, Lmiui/view/ViewPager$ItemInfo;->hasActionMenu:Z

    const/4 v4, 0x1

    goto :goto_a8

    :cond_53
    const/4 v9, -0x2

    if-ne v8, v9, :cond_88

    iget-object v9, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, -0x1

    if-nez v5, :cond_65

    iget-object v9, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v9, p0}, Lmiui/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    const/4 v5, 0x1

    :cond_65
    iget-object v9, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    iget v10, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget-object v11, v7, Lmiui/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v9, p0, v10, v11}, Lmiui/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    const/4 v0, 0x1

    iget v9, p0, Lmiui/view/ViewPager;->mCurItem:I

    iget v10, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ne v9, v10, :cond_a8

    iget v9, p0, Lmiui/view/ViewPager;->mCurItem:I

    iget-object v10, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v10}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v0, 0x1

    goto :goto_a8

    :cond_88
    iget v9, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-eq v9, v8, :cond_96

    iget v9, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget v10, p0, Lmiui/view/ViewPager;->mCurItem:I

    if-ne v9, v10, :cond_93

    move v1, v8

    :cond_93
    iput v8, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    const/4 v0, 0x1

    :cond_96
    iget-boolean v9, v7, Lmiui/view/ViewPager$ItemInfo;->hasActionMenu:Z

    iget-object v10, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    iget v11, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    invoke-virtual {v10, v11}, Lmiui/view/PagerAdapter;->hasActionMenu(I)Z

    move-result v10

    if-eq v9, v10, :cond_a8

    iget-boolean v9, v7, Lmiui/view/ViewPager$ItemInfo;->hasActionMenu:Z

    xor-int/2addr v9, v2

    iput-boolean v9, v7, Lmiui/view/ViewPager$ItemInfo;->hasActionMenu:Z

    const/4 v4, 0x1

    :cond_a8
    :goto_a8
    add-int/2addr v6, v2

    goto/16 :goto_25

    :cond_ab
    if-eqz v5, :cond_b2

    iget-object v6, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v6, p0}, Lmiui/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    :cond_b2
    iget-object v6, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v7, Lmiui/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v0, :cond_dd

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_c0
    if-ge v7, v6, :cond_d6

    invoke-virtual {p0, v7}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lmiui/view/ViewPager$LayoutParams;

    iget-boolean v10, v9, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_d3

    const/4 v10, 0x0

    iput v10, v9, Lmiui/view/ViewPager$LayoutParams;->widthFactor:F

    :cond_d3
    add-int/lit8 v7, v7, 0x1

    goto :goto_c0

    :cond_d6
    invoke-virtual {p0, v1, v3, v2}, Lmiui/view/ViewPager;->setCurrentItemInternal(IZZ)V

    invoke-virtual {p0}, Lmiui/view/ViewPager;->requestLayout()V

    const/4 v4, 0x0

    :cond_dd
    if-eqz v4, :cond_e2

    invoke-virtual {p0}, Lmiui/view/ViewPager;->requestLayout()V

    :cond_e2
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lmiui/view/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 8

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_28

    invoke-virtual {p0, v1}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_25

    invoke-virtual {p0, v2}, Lmiui/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v3

    if-eqz v3, :cond_25

    iget v4, v3, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget v5, p0, Lmiui/view/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_25

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_25

    const/4 v4, 0x1

    return v4

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_28
    const/4 v1, 0x0

    return v1
.end method

.method distanceInfluenceForSnapDuration(F)F
    .registers 6

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 10

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getOverScrollMode()I

    move-result v1

    if-eqz v1, :cond_24

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    iget-object v3, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v3

    if-le v3, v2, :cond_18

    goto :goto_24

    :cond_18
    iget-object v2, p0, Lmiui/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    iget-object v2, p0, Lmiui/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    goto/16 :goto_a6

    :cond_24
    :goto_24
    iget-object v2, p0, Lmiui/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_63

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v4

    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v5, v3

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lmiui/view/ViewPager;->mFirstOffset:F

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, p0, Lmiui/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v5, p0, Lmiui/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_63
    iget-object v2, p0, Lmiui/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_a6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Lmiui/view/ViewPager;->mLastOffset:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    neg-float v6, v6

    int-to-float v7, v3

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, p0, Lmiui/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v4, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v5, p0, Lmiui/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_a6
    :goto_a6
    if-eqz v0, :cond_ab

    invoke-virtual {p0}, Lmiui/view/ViewPager;->postInvalidateOnAnimation()V

    :cond_ab
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    iget-object v0, p0, Lmiui/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_14
    return-void
.end method

.method public endFakeDrag()V
    .registers 11

    iget-boolean v0, p0, Lmiui/view/ViewPager;->mFakeDragging:Z

    if-eqz v0, :cond_43

    iget-object v0, p0, Lmiui/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lmiui/view/ViewPager;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v1, p0, Lmiui/view/ViewPager;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/view/ViewPager;->mPopulatePending:Z

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v4

    invoke-direct {p0}, Lmiui/view/ViewPager;->infoForCurrentScrollPosition()Lmiui/view/ViewPager$ItemInfo;

    move-result-object v5

    iget v6, v5, Lmiui/view/ViewPager$ItemInfo;->position:I

    int-to-float v7, v4

    int-to-float v8, v3

    div-float/2addr v7, v8

    iget v8, v5, Lmiui/view/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v7, v8

    iget v8, v5, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v7, v8

    iget v8, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    iget v9, p0, Lmiui/view/ViewPager;->mInitialMotionX:F

    sub-float/2addr v8, v9

    float-to-int v8, v8

    invoke-direct {p0, v6, v7, v1, v8}, Lmiui/view/ViewPager;->determineTargetPage(IFII)I

    move-result v9

    invoke-virtual {p0, v9, v2, v2, v1}, Lmiui/view/ViewPager;->setCurrentItemInternal(IZZI)V

    invoke-direct {p0}, Lmiui/view/ViewPager;->endDrag()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lmiui/view/ViewPager;->mFakeDragging:Z

    return-void

    :cond_43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_43

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x15

    if-eq v1, v2, :cond_3d

    const/16 v2, 0x16

    if-eq v1, v2, :cond_36

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_18

    goto :goto_43

    :cond_18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_43

    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lmiui/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_43

    :cond_2a
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-virtual {p0, v1}, Lmiui/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_43

    :cond_36
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lmiui/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_43

    :cond_3d
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lmiui/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    :cond_43
    :goto_43
    return v0
.end method

.method public fakeDragBy(F)V
    .registers 20

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lmiui/view/ViewPager;->mFakeDragging:Z

    if-eqz v1, :cond_8a

    iget v1, v0, Lmiui/view/ViewPager;->mLastMotionX:F

    add-float v1, v1, p1

    iput v1, v0, Lmiui/view/ViewPager;->mLastMotionX:F

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    sub-float v2, v1, p1

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v3

    int-to-float v4, v3

    iget v5, v0, Lmiui/view/ViewPager;->mFirstOffset:F

    mul-float/2addr v4, v5

    int-to-float v5, v3

    iget v6, v0, Lmiui/view/ViewPager;->mLastOffset:F

    mul-float/2addr v5, v6

    iget-object v6, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/view/ViewPager$ItemInfo;

    iget-object v7, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/view/ViewPager$ItemInfo;

    iget v8, v6, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-eqz v8, :cond_3f

    iget v8, v6, Lmiui/view/ViewPager$ItemInfo;->offset:F

    int-to-float v10, v3

    mul-float v4, v8, v10

    :cond_3f
    iget v8, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget-object v10, v0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v10}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v10

    sub-int/2addr v10, v9

    if-eq v8, v10, :cond_4f

    iget v8, v7, Lmiui/view/ViewPager$ItemInfo;->offset:F

    int-to-float v10, v3

    mul-float v5, v8, v10

    :cond_4f
    cmpg-float v8, v2, v4

    if-gez v8, :cond_55

    move v2, v4

    goto :goto_5a

    :cond_55
    cmpl-float v8, v2, v5

    if-lez v8, :cond_5a

    move v2, v5

    :cond_5a
    :goto_5a
    iget v8, v0, Lmiui/view/ViewPager;->mLastMotionX:F

    float-to-int v10, v2

    int-to-float v10, v10

    sub-float v10, v2, v10

    add-float/2addr v8, v10

    iput v8, v0, Lmiui/view/ViewPager;->mLastMotionX:F

    float-to-int v8, v2

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getScrollY()I

    move-result v10

    invoke-virtual {v0, v8, v10}, Lmiui/view/ViewPager;->scrollTo(II)V

    float-to-int v8, v2

    invoke-direct {v0, v8, v9}, Lmiui/view/ViewPager;->pageScrolled(IZ)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, v0, Lmiui/view/ViewPager;->mFakeDragBeginTime:J

    const/4 v14, 0x2

    iget v15, v0, Lmiui/view/ViewPager;->mLastMotionX:F

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-wide v12, v8

    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    iget-object v11, v0, Lmiui/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, v10}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :cond_8a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    new-instance v0, Lmiui/view/ViewPager$LayoutParams;

    invoke-direct {v0}, Lmiui/view/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Lmiui/view/ViewPager$LayoutParams;

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmiui/view/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    invoke-virtual {p0}, Lmiui/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lmiui/view/PagerAdapter;
    .registers 2

    iget-object v0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .registers 2

    iget v0, p0, Lmiui/view/ViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .registers 2

    iget v0, p0, Lmiui/view/ViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .registers 2

    iget v0, p0, Lmiui/view/ViewPager;->mPageMargin:I

    return v0
.end method

.method getSplitActionBarHeight()I
    .registers 4

    invoke-static {p0}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getActionBarView()Lcom/miui/internal/widget/ActionBarView;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getActionBarView()Lcom/miui/internal/widget/ActionBarView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/internal/widget/ActionBarView;->getSplitActionBarHeight(Z)I

    move-result v1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method infoForAnyChild(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;
    .registers 4

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v1, v0

    if-eq v0, p0, :cond_11

    instance-of v0, v1, Landroid/view/View;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    return-object v0

    :cond_d
    move-object p1, v1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_11
    invoke-virtual {p0, p1}, Lmiui/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method infoForChild(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;
    .registers 6

    iget-object v0, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/ViewPager$ItemInfo;

    iget-object v2, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    iget-object v3, v1, Lmiui/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lmiui/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    return-object v1

    :cond_1d
    goto :goto_6

    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method infoForPosition(I)Lmiui/view/ViewPager$ItemInfo;
    .registers 5

    iget-object v0, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/ViewPager$ItemInfo;

    iget v2, v1, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_17

    return-object v1

    :cond_17
    goto :goto_6

    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method initViewPager()V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->setFocusable(Z)V

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getContext()Landroid/content/Context;

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

    move-result v3

    iput v3, p0, Lmiui/view/ViewPager;->mMaximumVelocity:I

    new-instance v3, Landroid/widget/EdgeEffect;

    invoke-direct {v3, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lmiui/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    new-instance v3, Landroid/widget/EdgeEffect;

    invoke-direct {v3, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lmiui/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41c80000    # 25.0f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Lmiui/view/ViewPager;->mFlingDistance:I

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Lmiui/view/ViewPager;->mCloseEnough:I

    const/high16 v4, 0x41800000    # 16.0f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Lmiui/view/ViewPager;->mDefaultGutterSize:I

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_61

    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->setImportantForAccessibility(I)V

    :cond_61
    return-void
.end method

.method public isFakeDragging()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/view/ViewPager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/view/ViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget v1, v0, Lmiui/view/ViewPager;->mPageMargin:I

    if-lez v1, :cond_b6

    iget-object v1, v0, Lmiui/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b6

    iget-object v1, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b6

    iget-object v1, v0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    if-eqz v1, :cond_b6

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v2

    iget v3, v0, Lmiui/view/ViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    const/4 v4, 0x0

    iget-object v5, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/view/ViewPager$ItemInfo;

    iget v6, v5, Lmiui/view/ViewPager$ItemInfo;->offset:F

    iget-object v7, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget v8, v5, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget-object v9, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v10, v7, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiui/view/ViewPager$ItemInfo;

    iget v9, v9, Lmiui/view/ViewPager$ItemInfo;->position:I

    move v10, v8

    :goto_47
    if-ge v10, v9, :cond_b1

    :goto_49
    iget v11, v5, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-le v10, v11, :cond_5b

    if-ge v4, v7, :cond_5b

    iget-object v11, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v5, v11

    check-cast v5, Lmiui/view/ViewPager$ItemInfo;

    goto :goto_49

    :cond_5b
    iget v11, v5, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ne v10, v11, :cond_6e

    iget v11, v5, Lmiui/view/ViewPager$ItemInfo;->offset:F

    iget v12, v5, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v11, v12

    int-to-float v12, v2

    mul-float/2addr v11, v12

    iget v12, v5, Lmiui/view/ViewPager$ItemInfo;->offset:F

    iget v13, v5, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float/2addr v12, v3

    move v6, v12

    goto :goto_7c

    :cond_6e
    iget-object v11, v0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v11, v10}, Lmiui/view/PagerAdapter;->getPageWidth(I)F

    move-result v11

    add-float v12, v6, v11

    int-to-float v13, v2

    mul-float/2addr v12, v13

    add-float v13, v11, v3

    add-float/2addr v6, v13

    move v11, v12

    :goto_7c
    iget v12, v0, Lmiui/view/ViewPager;->mPageMargin:I

    int-to-float v13, v12

    add-float/2addr v13, v11

    int-to-float v14, v1

    cmpl-float v13, v13, v14

    if-lez v13, :cond_a0

    iget-object v13, v0, Lmiui/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v14, v11

    iget v15, v0, Lmiui/view/ViewPager;->mTopPageBounds:I

    int-to-float v12, v12

    add-float/2addr v12, v11

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v12, v12, v16

    float-to-int v12, v12

    move/from16 v16, v3

    iget v3, v0, Lmiui/view/ViewPager;->mBottomPageBounds:I

    invoke-virtual {v13, v14, v15, v12, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, v0, Lmiui/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v12, p1

    invoke-virtual {v3, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_a4

    :cond_a0
    move-object/from16 v12, p1

    move/from16 v16, v3

    :goto_a4
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v11, v3

    if-lez v3, :cond_ac

    goto :goto_b8

    :cond_ac
    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v16

    goto :goto_47

    :cond_b1
    move-object/from16 v12, p1

    move/from16 v16, v3

    goto :goto_b8

    :cond_b6
    move-object/from16 v12, p1

    :goto_b8
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lmiui/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lmiui/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v0

    if-le v0, v1, :cond_19

    move v0, v1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    iget-object v0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    if-eqz v0, :cond_31

    iget v2, p0, Lmiui/view/ViewPager;->mCurItem:I

    if-ltz v2, :cond_31

    invoke-virtual {v0}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ge v2, v0, :cond_31

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_31
    iget-object v0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    if-eqz v0, :cond_44

    iget v1, p0, Lmiui/view/ViewPager;->mCurItem:I

    if-lez v1, :cond_44

    invoke-virtual {v0}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_44

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_44
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 21

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-boolean v0, v6, Lmiui/view/ViewPager;->mDragEnabled:Z

    const/4 v8, 0x0

    if-nez v0, :cond_a

    return v8

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v9, v0, 0xff

    const/4 v0, 0x3

    if-eq v9, v0, :cond_129

    const/4 v10, 0x1

    if-ne v9, v10, :cond_18

    goto/16 :goto_129

    :cond_18
    if-eqz v9, :cond_24

    iget-boolean v0, v6, Lmiui/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_1f

    return v10

    :cond_1f
    iget-boolean v0, v6, Lmiui/view/ViewPager;->mIsUnableToDrag:Z

    if-eqz v0, :cond_24

    return v8

    :cond_24
    const/4 v0, 0x2

    if-eqz v9, :cond_ca

    if-eq v9, v0, :cond_33

    const/4 v0, 0x6

    if-eq v9, v0, :cond_2e

    goto/16 :goto_117

    :cond_2e
    invoke-direct/range {p0 .. p1}, Lmiui/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_117

    :cond_33
    iget v11, v6, Lmiui/view/ViewPager;->mActivePointerId:I

    const/4 v0, -0x1

    if-ne v11, v0, :cond_3a

    goto/16 :goto_117

    :cond_3a
    invoke-virtual {v7, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    if-ltz v12, :cond_117

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v12, v0, :cond_48

    goto/16 :goto_117

    :cond_48
    invoke-virtual {v7, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    iget v0, v6, Lmiui/view/ViewPager;->mLastMotionX:F

    sub-float v14, v13, v0

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v15

    invoke-virtual {v7, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget v0, v6, Lmiui/view/ViewPager;->mLastMotionY:F

    sub-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v16

    const/16 v17, 0x0

    cmpl-float v0, v14, v17

    if-eqz v0, :cond_8b

    iget v0, v6, Lmiui/view/ViewPager;->mLastMotionX:F

    invoke-direct {v6, v0, v14}, Lmiui/view/ViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_8b

    const/4 v2, 0x0

    float-to-int v3, v14

    float-to-int v4, v13

    float-to-int v1, v5

    move-object/from16 v0, p0

    move/from16 v18, v1

    move-object/from16 v1, p0

    move v8, v5

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lmiui/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_8c

    iput v13, v6, Lmiui/view/ViewPager;->mLastMotionX:F

    iput v13, v6, Lmiui/view/ViewPager;->mInitialMotionX:F

    iput v8, v6, Lmiui/view/ViewPager;->mLastMotionY:F

    iput-boolean v10, v6, Lmiui/view/ViewPager;->mIsUnableToDrag:Z

    const/4 v0, 0x0

    return v0

    :cond_8b
    move v8, v5

    :cond_8c
    iget v0, v6, Lmiui/view/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v15, v0

    if-lez v0, :cond_b3

    cmpl-float v0, v15, v16

    if-lez v0, :cond_b3

    iput-boolean v10, v6, Lmiui/view/ViewPager;->mIsBeingDragged:Z

    invoke-direct {v6, v10}, Lmiui/view/ViewPager;->setScrollState(I)V

    cmpl-float v0, v14, v17

    if-lez v0, :cond_a7

    iget v0, v6, Lmiui/view/ViewPager;->mInitialMotionX:F

    iget v1, v6, Lmiui/view/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_ad

    :cond_a7
    iget v0, v6, Lmiui/view/ViewPager;->mInitialMotionX:F

    iget v1, v6, Lmiui/view/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_ad
    iput v0, v6, Lmiui/view/ViewPager;->mLastMotionX:F

    invoke-direct {v6, v10}, Lmiui/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_bc

    :cond_b3
    iget v0, v6, Lmiui/view/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v16, v0

    if-lez v0, :cond_bc

    iput-boolean v10, v6, Lmiui/view/ViewPager;->mIsUnableToDrag:Z

    :cond_bc
    :goto_bc
    iget-boolean v0, v6, Lmiui/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_117

    invoke-direct {v6, v13}, Lmiui/view/ViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_117

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->postInvalidateOnAnimation()V

    goto :goto_117

    :cond_ca
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v6, Lmiui/view/ViewPager;->mInitialMotionX:F

    iput v1, v6, Lmiui/view/ViewPager;->mLastMotionX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v6, Lmiui/view/ViewPager;->mLastMotionY:F

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v6, Lmiui/view/ViewPager;->mActivePointerId:I

    iput-boolean v1, v6, Lmiui/view/ViewPager;->mIsUnableToDrag:Z

    iget-object v1, v6, Lmiui/view/ViewPager;->mScroller:Lmiui/view/SpringScroller;

    invoke-virtual {v1}, Lmiui/view/SpringScroller;->computeScrollOffset()Z

    iget v1, v6, Lmiui/view/ViewPager;->mScrollState:I

    if-ne v1, v0, :cond_110

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

    if-le v0, v1, :cond_110

    iget-object v0, v6, Lmiui/view/ViewPager;->mScroller:Lmiui/view/SpringScroller;

    invoke-virtual {v0}, Lmiui/view/SpringScroller;->abortAnimation()V

    const/4 v0, 0x0

    iput-boolean v0, v6, Lmiui/view/ViewPager;->mPopulatePending:Z

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->populate()V

    iput-boolean v10, v6, Lmiui/view/ViewPager;->mIsBeingDragged:Z

    invoke-direct {v6, v10}, Lmiui/view/ViewPager;->setScrollState(I)V

    goto :goto_117

    :cond_110
    invoke-direct/range {p0 .. p0}, Lmiui/view/ViewPager;->completeScroll()V

    const/4 v0, 0x0

    iput-boolean v0, v6, Lmiui/view/ViewPager;->mIsBeingDragged:Z

    nop

    :cond_117
    :goto_117
    iget-object v0, v6, Lmiui/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_121

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Lmiui/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_121
    iget-object v0, v6, Lmiui/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v0, v6, Lmiui/view/ViewPager;->mIsBeingDragged:Z

    return v0

    :cond_129
    :goto_129
    invoke-direct/range {p0 .. p0}, Lmiui/view/ViewPager;->resetTouch()Z

    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 30

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmiui/view/ViewPager;->mInLayout:Z

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->populate()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lmiui/view/ViewPager;->mInLayout:Z

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v3

    sub-int v4, p4, p2

    sub-int v5, p5, p3

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getPaddingRight()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getPaddingBottom()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_29
    const/16 v13, 0x8

    if-ge v12, v3, :cond_d4

    invoke-virtual {v0, v12}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-eq v15, v13, :cond_ce

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lmiui/view/ViewPager$LayoutParams;

    iget-boolean v15, v13, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v15, :cond_ce

    iget v15, v13, Lmiui/view/ViewPager$LayoutParams;->gravity:I

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getLayoutDirection()I

    move-result v2

    invoke-static {v15, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    iget v15, v13, Lmiui/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v15, v15, 0x70

    if-eq v2, v1, :cond_72

    const/4 v1, 0x3

    if-eq v2, v1, :cond_6a

    const/4 v1, 0x5

    if-eq v2, v1, :cond_5b

    move v1, v6

    goto :goto_7f

    :cond_5b
    sub-int v1, v4, v8

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v1, v1, v17

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    add-int v8, v8, v17

    goto :goto_7f

    :cond_6a
    move v1, v6

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    add-int v6, v6, v17

    goto :goto_7f

    :cond_72
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v4, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    :goto_7f
    move/from16 v17, v2

    const/16 v2, 0x10

    if-eq v15, v2, :cond_a6

    const/16 v2, 0x30

    if-eq v15, v2, :cond_9e

    const/16 v2, 0x50

    if-eq v15, v2, :cond_8f

    move v2, v7

    goto :goto_b3

    :cond_8f
    sub-int v2, v5, v9

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v2, v2, v18

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    add-int v9, v9, v18

    goto :goto_b3

    :cond_9e
    move v2, v7

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    add-int v7, v7, v18

    goto :goto_b3

    :cond_a6
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v2, v5, v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    nop

    :goto_b3
    add-int/2addr v1, v10

    nop

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    move/from16 v19, v6

    add-int v6, v1, v18

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    move/from16 v20, v7

    add-int v7, v2, v18

    invoke-virtual {v14, v1, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v11, v11, 0x1

    move/from16 v6, v19

    move/from16 v7, v20

    :cond_ce
    add-int/lit8 v12, v12, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_29

    :cond_d4
    const/4 v1, 0x0

    :goto_d5
    if-ge v1, v3, :cond_186

    invoke-virtual {v0, v1}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eq v12, v13, :cond_170

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lmiui/view/ViewPager$LayoutParams;

    iget-boolean v14, v12, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v14, :cond_167

    invoke-virtual {v0, v2}, Lmiui/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v14

    move-object v15, v14

    if-eqz v14, :cond_15e

    int-to-float v14, v4

    iget v13, v15, Lmiui/view/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v14, v13

    float-to-int v13, v14

    add-int v14, v6, v13

    move/from16 v17, v3

    iget-boolean v3, v0, Lmiui/view/ViewPager;->mForceReplayout:Z

    if-nez v3, :cond_10b

    iget-boolean v3, v12, Lmiui/view/ViewPager$LayoutParams;->needsMeasure:Z

    if-eqz v3, :cond_104

    goto :goto_10b

    :cond_104
    move/from16 v19, v4

    move/from16 v21, v6

    move/from16 v18, v8

    goto :goto_14f

    :cond_10b
    :goto_10b
    const/4 v3, 0x0

    iput-boolean v3, v12, Lmiui/view/ViewPager$LayoutParams;->needsMeasure:Z

    sub-int v16, v4, v6

    sub-int v3, v16, v8

    int-to-float v3, v3

    move/from16 v19, v4

    iget v4, v12, Lmiui/view/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/4 v4, 0x0

    iput-boolean v4, v0, Lmiui/view/ViewPager;->mForceReplayout:Z

    const/4 v4, 0x0

    move/from16 v18, v4

    iget-boolean v4, v15, Lmiui/view/ViewPager$ItemInfo;->hasActionMenu:Z

    if-eqz v4, :cond_12e

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getSplitActionBarHeight()I

    move-result v4

    goto :goto_130

    :cond_12e
    move/from16 v4, v18

    :goto_130
    sub-int v18, v5, v7

    move/from16 v21, v6

    sub-int v6, v18, v9

    int-to-float v6, v6

    move/from16 v18, v8

    int-to-float v8, v4

    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v23, v4

    iget v4, v0, Lmiui/view/ViewPager;->mBottomMarginProgress:F

    sub-float v22, v22, v4

    mul-float v8, v8, v22

    sub-float/2addr v6, v8

    float-to-int v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    :goto_14f
    nop

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v14

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v7

    invoke-virtual {v2, v14, v7, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_178

    :cond_15e
    move/from16 v17, v3

    move/from16 v19, v4

    move/from16 v21, v6

    move/from16 v18, v8

    goto :goto_178

    :cond_167
    move/from16 v17, v3

    move/from16 v19, v4

    move/from16 v21, v6

    move/from16 v18, v8

    goto :goto_178

    :cond_170
    move/from16 v17, v3

    move/from16 v19, v4

    move/from16 v21, v6

    move/from16 v18, v8

    :goto_178
    add-int/lit8 v1, v1, 0x1

    move/from16 v3, v17

    move/from16 v8, v18

    move/from16 v4, v19

    move/from16 v6, v21

    const/16 v13, 0x8

    goto/16 :goto_d5

    :cond_186
    iput v7, v0, Lmiui/view/ViewPager;->mTopPageBounds:I

    sub-int v1, v5, v9

    iput v1, v0, Lmiui/view/ViewPager;->mBottomPageBounds:I

    iput v11, v0, Lmiui/view/ViewPager;->mDecorChildCount:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmiui/view/ViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .registers 23

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v2, p1

    invoke-static {v1, v2}, Lmiui/view/ViewPager;->getDefaultSize(II)I

    move-result v3

    move/from16 v4, p2

    invoke-static {v1, v4}, Lmiui/view/ViewPager;->getDefaultSize(II)I

    move-result v5

    invoke-virtual {v0, v3, v5}, Lmiui/view/ViewPager;->setMeasuredDimension(II)V

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v5, v3, 0xa

    iget v6, v0, Lmiui/view/ViewPager;->mDefaultGutterSize:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v0, Lmiui/view/ViewPager;->mGutterSize:I

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getPaddingLeft()I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getMeasuredHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    :goto_3e
    const/16 v10, 0x8

    if-ge v9, v8, :cond_f7

    invoke-virtual {v0, v9}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eq v13, v10, :cond_e6

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lmiui/view/ViewPager$LayoutParams;

    if-eqz v10, :cond_e1

    iget-boolean v13, v10, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v13, :cond_e1

    iget v13, v10, Lmiui/view/ViewPager$LayoutParams;->gravity:I

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getLayoutDirection()I

    move-result v14

    invoke-static {v13, v14}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v13

    and-int/lit8 v13, v13, 0x7

    iget v14, v10, Lmiui/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v14, v14, 0x70

    const/high16 v15, -0x80000000

    const/high16 v16, -0x80000000

    const/16 v1, 0x30

    if-eq v14, v1, :cond_77

    const/16 v1, 0x50

    if-ne v14, v1, :cond_75

    goto :goto_77

    :cond_75
    const/4 v1, 0x0

    goto :goto_78

    :cond_77
    :goto_77
    const/4 v1, 0x1

    :goto_78
    const/4 v11, 0x3

    if-eq v13, v11, :cond_81

    const/4 v11, 0x5

    if-ne v13, v11, :cond_7f

    goto :goto_81

    :cond_7f
    const/4 v11, 0x0

    goto :goto_82

    :cond_81
    :goto_81
    const/4 v11, 0x1

    :goto_82
    if-eqz v1, :cond_87

    const/high16 v15, 0x40000000    # 2.0f

    goto :goto_8b

    :cond_87
    if-eqz v11, :cond_8b

    const/high16 v16, 0x40000000    # 2.0f

    :cond_8b
    :goto_8b
    move/from16 v17, v6

    move/from16 v18, v7

    iget v2, v10, Lmiui/view/ViewPager$LayoutParams;->width:I

    move/from16 v19, v3

    const/4 v3, -0x2

    if-eq v2, v3, :cond_a3

    const/high16 v15, 0x40000000    # 2.0f

    iget v2, v10, Lmiui/view/ViewPager$LayoutParams;->width:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_a0

    iget v2, v10, Lmiui/view/ViewPager$LayoutParams;->width:I

    goto :goto_a5

    :cond_a0
    move/from16 v2, v17

    goto :goto_a5

    :cond_a3
    move/from16 v2, v17

    :goto_a5
    iget v3, v10, Lmiui/view/ViewPager$LayoutParams;->height:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_bc

    const/high16 v16, 0x40000000    # 2.0f

    iget v3, v10, Lmiui/view/ViewPager$LayoutParams;->height:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_b7

    iget v3, v10, Lmiui/view/ViewPager$LayoutParams;->height:I

    move v4, v3

    move/from16 v3, v16

    goto :goto_c0

    :cond_b7
    move/from16 v3, v16

    move/from16 v4, v18

    goto :goto_c0

    :cond_bc
    move/from16 v3, v16

    move/from16 v4, v18

    :goto_c0
    move/from16 v16, v5

    invoke-static {v2, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move/from16 v17, v2

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v12, v5, v2}, Landroid/view/View;->measure(II)V

    if-eqz v1, :cond_d8

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v7, v7, v18

    goto :goto_ea

    :cond_d8
    if-eqz v11, :cond_ea

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    sub-int v6, v6, v18

    goto :goto_ea

    :cond_e1
    move/from16 v19, v3

    move/from16 v16, v5

    goto :goto_ea

    :cond_e6
    move/from16 v19, v3

    move/from16 v16, v5

    :cond_ea
    :goto_ea
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, v16

    move/from16 v3, v19

    const/4 v1, 0x0

    goto/16 :goto_3e

    :cond_f7
    move/from16 v19, v3

    move/from16 v16, v5

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, v0, Lmiui/view/ViewPager;->mChildWidthMeasureSpec:I

    invoke-static {v7, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, v0, Lmiui/view/ViewPager;->mChildHeightMeasureSpec:I

    const/4 v2, 0x1

    iput-boolean v2, v0, Lmiui/view/ViewPager;->mInLayout:Z

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->populate()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lmiui/view/ViewPager;->mInLayout:Z

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_117
    if-ge v3, v2, :cond_158

    invoke-virtual {v0, v3}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v10, :cond_155

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lmiui/view/ViewPager$LayoutParams;

    iget-boolean v8, v5, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v8, :cond_155

    int-to-float v8, v6

    iget v9, v5, Lmiui/view/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v8, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    move v9, v7

    invoke-virtual {v0, v4}, Lmiui/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v11

    if-eqz v11, :cond_14e

    iget-boolean v12, v11, Lmiui/view/ViewPager$ItemInfo;->hasActionMenu:Z

    if-eqz v12, :cond_14e

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getSplitActionBarHeight()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x3f800000    # 1.0f

    iget v14, v0, Lmiui/view/ViewPager;->mBottomMarginProgress:F

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    float-to-int v12, v12

    sub-int/2addr v9, v12

    :cond_14e
    invoke-static {v9, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v4, v8, v12}, Landroid/view/View;->measure(II)V

    :cond_155
    add-int/lit8 v3, v3, 0x1

    goto :goto_117

    :cond_158
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .registers 16

    iget v0, p0, Lmiui/view/ViewPager;->mDecorChildCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_71

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    :goto_1a
    if-ge v6, v5, :cond_71

    invoke-virtual {p0, v6}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lmiui/view/ViewPager$LayoutParams;

    iget-boolean v9, v8, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v9, :cond_2b

    goto :goto_6e

    :cond_2b
    iget v9, v8, Lmiui/view/ViewPager$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getLayoutDirection()I

    move-result v10

    invoke-static {v9, v10}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v9

    and-int/lit8 v9, v9, 0x7

    if-eq v9, v1, :cond_55

    const/4 v10, 0x3

    if-eq v9, v10, :cond_4e

    const/4 v10, 0x5

    if-eq v9, v10, :cond_41

    move v10, v2

    goto :goto_62

    :cond_41
    sub-int v10, v4, v3

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v3, v11

    goto :goto_62

    :cond_4e
    move v10, v2

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v2, v11

    goto :goto_62

    :cond_55
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int v10, v4, v10

    div-int/lit8 v10, v10, 0x2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    nop

    :goto_62
    add-int/2addr v10, v0

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int v11, v10, v11

    if-eqz v11, :cond_6e

    invoke-virtual {v7, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_6e
    :goto_6e
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_71
    iget-object v0, p0, Lmiui/view/ViewPager;->mOnPageChangeListener:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_78

    invoke-interface {v0, p1, p2, p3}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_78
    iget-object v0, p0, Lmiui/view/ViewPager;->mInternalPageChangeListener:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_7f

    invoke-interface {v0, p1, p2, p3}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_7f
    iput-boolean v1, p0, Lmiui/view/ViewPager;->mCalledSuper:Z

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 12

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v0

    goto :goto_10

    :cond_c
    add-int/lit8 v1, v0, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    :goto_10
    move v4, v1

    :goto_11
    if-eq v4, v3, :cond_33

    invoke-virtual {p0, v4}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_31

    invoke-virtual {p0, v5}, Lmiui/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v6

    if-eqz v6, :cond_31

    iget v7, v6, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget v8, p0, Lmiui/view/ViewPager;->mCurItem:I

    if-ne v7, v8, :cond_31

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_31

    const/4 v7, 0x1

    return v7

    :cond_31
    add-int/2addr v4, v2

    goto :goto_11

    :cond_33
    const/4 v4, 0x0

    return v4
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6

    instance-of v0, p1, Lmiui/view/ViewPager$SavedState;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_8
    move-object v0, p1

    check-cast v0, Lmiui/view/ViewPager$SavedState;

    invoke-virtual {v0}, Lmiui/view/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    if-eqz v1, :cond_24

    iget-object v2, v0, Lmiui/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmiui/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget v1, v0, Lmiui/view/ViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lmiui/view/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_2c

    :cond_24
    iget v1, v0, Lmiui/view/ViewPager$SavedState;->position:I

    iput v1, p0, Lmiui/view/ViewPager;->mRestoredCurItem:I

    iget-object v1, v0, Lmiui/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Lmiui/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    :goto_2c
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lmiui/view/ViewPager$SavedState;

    invoke-direct {v1, v0}, Lmiui/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v2, p0, Lmiui/view/ViewPager;->mCurItem:I

    iput v2, v1, Lmiui/view/ViewPager$SavedState;->position:I

    iget-object v2, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lmiui/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v1, Lmiui/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    :cond_17
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_a

    iget v0, p0, Lmiui/view/ViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v0}, Lmiui/view/ViewPager;->recomputeScrollPosition(IIII)V

    :cond_a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16

    iget-boolean v0, p0, Lmiui/view/ViewPager;->mDragEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-boolean v0, p0, Lmiui/view/ViewPager;->mFakeDragging:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    return v2

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_19

    return v1

    :cond_19
    iget-object v0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    if-eqz v0, :cond_14d

    invoke-virtual {v0}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_14d

    :cond_25
    iget-object v0, p0, Lmiui/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2f

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_2f
    iget-object v0, p0, Lmiui/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x0

    and-int/lit16 v4, v0, 0xff

    if-eqz v4, :cond_129

    if-eq v4, v2, :cond_e0

    const/4 v1, 0x2

    if-eq v4, v1, :cond_7f

    const/4 v1, 0x3

    if-eq v4, v1, :cond_70

    const/4 v1, 0x5

    if-eq v4, v1, :cond_5e

    const/4 v1, 0x6

    if-eq v4, v1, :cond_4d

    goto/16 :goto_147

    :cond_4d
    invoke-direct {p0, p1}, Lmiui/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    iget v1, p0, Lmiui/view/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    goto/16 :goto_147

    :cond_5e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lmiui/view/ViewPager;->mActivePointerId:I

    goto/16 :goto_147

    :cond_70
    iget-boolean v1, p0, Lmiui/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v1, :cond_147

    iget v1, p0, Lmiui/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v1, v2, v2}, Lmiui/view/ViewPager;->setCurrentItemInternal(IZZ)V

    invoke-direct {p0}, Lmiui/view/ViewPager;->resetTouch()Z

    move-result v3

    goto/16 :goto_147

    :cond_7f
    iget-boolean v1, p0, Lmiui/view/ViewPager;->mIsBeingDragged:Z

    if-nez v1, :cond_cd

    iget v1, p0, Lmiui/view/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_92

    invoke-direct {p0}, Lmiui/view/ViewPager;->resetTouch()Z

    move-result v3

    goto/16 :goto_147

    :cond_92
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iget v5, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iget v7, p0, Lmiui/view/ViewPager;->mLastMotionY:F

    sub-float v7, v6, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lmiui/view/ViewPager;->mTouchSlop:I

    int-to-float v9, v8

    cmpl-float v9, v5, v9

    if-lez v9, :cond_cd

    cmpl-float v9, v5, v7

    if-lez v9, :cond_cd

    iput-boolean v2, p0, Lmiui/view/ViewPager;->mIsBeingDragged:Z

    iget v9, p0, Lmiui/view/ViewPager;->mInitialMotionX:F

    sub-float v10, v4, v9

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_c3

    int-to-float v8, v8

    add-float/2addr v9, v8

    goto :goto_c5

    :cond_c3
    int-to-float v8, v8

    sub-float/2addr v9, v8

    :goto_c5
    iput v9, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    invoke-direct {p0, v2}, Lmiui/view/ViewPager;->setScrollState(I)V

    invoke-direct {p0, v2}, Lmiui/view/ViewPager;->setScrollingCacheEnabled(Z)V

    :cond_cd
    iget-boolean v1, p0, Lmiui/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v1, :cond_147

    iget v1, p0, Lmiui/view/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-direct {p0, v4}, Lmiui/view/ViewPager;->performDrag(F)Z

    move-result v3

    goto :goto_147

    :cond_e0
    iget-boolean v1, p0, Lmiui/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v1, :cond_147

    iget-object v1, p0, Lmiui/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v5, p0, Lmiui/view/ViewPager;->mMaximumVelocity:I

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v4, p0, Lmiui/view/ViewPager;->mActivePointerId:I

    invoke-virtual {v1, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    float-to-int v4, v4

    iput-boolean v2, p0, Lmiui/view/ViewPager;->mPopulatePending:Z

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v6

    invoke-direct {p0}, Lmiui/view/ViewPager;->infoForCurrentScrollPosition()Lmiui/view/ViewPager$ItemInfo;

    move-result-object v7

    iget v8, v7, Lmiui/view/ViewPager$ItemInfo;->position:I

    int-to-float v9, v6

    int-to-float v10, v5

    div-float/2addr v9, v10

    iget v10, v7, Lmiui/view/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v9, v10

    iget v10, v7, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v9, v10

    iget v10, p0, Lmiui/view/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    iget v12, p0, Lmiui/view/ViewPager;->mInitialMotionX:F

    sub-float v12, v11, v12

    float-to-int v12, v12

    invoke-direct {p0, v8, v9, v4, v12}, Lmiui/view/ViewPager;->determineTargetPage(IFII)I

    move-result v13

    invoke-virtual {p0, v13, v2, v2, v4}, Lmiui/view/ViewPager;->setCurrentItemInternal(IZZI)V

    invoke-direct {p0}, Lmiui/view/ViewPager;->resetTouch()Z

    move-result v3

    goto :goto_147

    :cond_129
    iget-object v4, p0, Lmiui/view/ViewPager;->mScroller:Lmiui/view/SpringScroller;

    invoke-virtual {v4}, Lmiui/view/SpringScroller;->abortAnimation()V

    iput-boolean v1, p0, Lmiui/view/ViewPager;->mPopulatePending:Z

    invoke-virtual {p0}, Lmiui/view/ViewPager;->populate()V

    iput-boolean v2, p0, Lmiui/view/ViewPager;->mIsBeingDragged:Z

    invoke-direct {p0, v2}, Lmiui/view/ViewPager;->setScrollState(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lmiui/view/ViewPager;->mInitialMotionX:F

    iput v4, p0, Lmiui/view/ViewPager;->mLastMotionX:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lmiui/view/ViewPager;->mActivePointerId:I

    nop

    :cond_147
    :goto_147
    if-eqz v3, :cond_14c

    invoke-virtual {p0}, Lmiui/view/ViewPager;->postInvalidateOnAnimation()V

    :cond_14c
    return v2

    :cond_14d
    :goto_14d
    return v1
.end method

.method pageLeft()Z
    .registers 3

    iget v0, p0, Lmiui/view/ViewPager;->mCurItem:I

    if-lez v0, :cond_a

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Lmiui/view/ViewPager;->setCurrentItem(IZ)V

    return v1

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method pageRight()Z
    .registers 4

    iget-object v0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    if-eqz v0, :cond_15

    iget v1, p0, Lmiui/view/ViewPager;->mCurItem:I

    invoke-virtual {v0}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_15

    iget v0, p0, Lmiui/view/ViewPager;->mCurItem:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lmiui/view/ViewPager;->setCurrentItem(IZ)V

    return v2

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 7

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/16 v0, 0x1000

    const/4 v2, 0x0

    if-eq p1, v0, :cond_28

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_12

    return v2

    :cond_12
    iget-object v0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    if-eqz v0, :cond_27

    iget v3, p0, Lmiui/view/ViewPager;->mCurItem:I

    if-lez v3, :cond_27

    invoke-virtual {v0}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_27

    iget v0, p0, Lmiui/view/ViewPager;->mCurItem:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->setCurrentItem(I)V

    return v1

    :cond_27
    return v2

    :cond_28
    iget-object v0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    if-eqz v0, :cond_3e

    iget v3, p0, Lmiui/view/ViewPager;->mCurItem:I

    if-ltz v3, :cond_3e

    invoke-virtual {v0}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ge v3, v0, :cond_3e

    iget v0, p0, Lmiui/view/ViewPager;->mCurItem:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->setCurrentItem(I)V

    return v1

    :cond_3e
    return v2
.end method

.method populate()V
    .registers 2

    iget v0, p0, Lmiui/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->populate(I)V

    return-void
.end method

.method populate(I)V
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    iget v3, v0, Lmiui/view/ViewPager;->mCurItem:I

    if-eq v3, v1, :cond_f

    invoke-virtual {v0, v3}, Lmiui/view/ViewPager;->infoForPosition(I)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v2

    iput v1, v0, Lmiui/view/ViewPager;->mCurItem:I

    :cond_f
    iget-object v3, v0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    if-nez v3, :cond_14

    return-void

    :cond_14
    iget-boolean v3, v0, Lmiui/view/ViewPager;->mPopulatePending:Z

    if-eqz v3, :cond_19

    return-void

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_20

    return-void

    :cond_20
    iget-object v3, v0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v3, v0}, Lmiui/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    iget v3, v0, Lmiui/view/ViewPager;->mOffscreenPageLimit:I

    const/4 v4, 0x0

    iget v5, v0, Lmiui/view/ViewPager;->mCurItem:I

    sub-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, v0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v5}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v5

    add-int/lit8 v6, v5, -0x1

    iget v7, v0, Lmiui/view/ViewPager;->mCurItem:I

    add-int/2addr v7, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_40
    iget-object v9, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_61

    iget-object v9, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiui/view/ViewPager$ItemInfo;

    iget v10, v9, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget v11, v0, Lmiui/view/ViewPager;->mCurItem:I

    if-lt v10, v11, :cond_5e

    iget v10, v9, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget v11, v0, Lmiui/view/ViewPager;->mCurItem:I

    if-ne v10, v11, :cond_61

    move-object v7, v9

    goto :goto_61

    :cond_5e
    add-int/lit8 v8, v8, 0x1

    goto :goto_40

    :cond_61
    :goto_61
    if-nez v7, :cond_6b

    if-lez v5, :cond_6b

    iget v9, v0, Lmiui/view/ViewPager;->mCurItem:I

    invoke-virtual {v0, v9, v8}, Lmiui/view/ViewPager;->addNewItem(II)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v7

    :cond_6b
    if-eqz v7, :cond_186

    const/4 v10, 0x0

    add-int/lit8 v11, v8, -0x1

    if-ltz v11, :cond_7b

    iget-object v12, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmiui/view/ViewPager$ItemInfo;

    goto :goto_7c

    :cond_7b
    const/4 v12, 0x0

    :goto_7c
    iget v13, v7, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    const/high16 v14, 0x40000000    # 2.0f

    sub-float v13, v14, v13

    iget v15, v0, Lmiui/view/ViewPager;->mCurItem:I

    add-int/lit8 v15, v15, -0x1

    :goto_86
    if-ltz v15, :cond_ed

    cmpl-float v16, v10, v13

    if-ltz v16, :cond_b7

    if-ge v15, v4, :cond_b7

    if-nez v12, :cond_91

    goto :goto_ed

    :cond_91
    iget v9, v12, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ne v15, v9, :cond_e8

    iget-boolean v9, v12, Lmiui/view/ViewPager$ItemInfo;->scrolling:Z

    if-nez v9, :cond_e8

    iget-object v9, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v9, v0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    iget-object v14, v12, Lmiui/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v9, v0, v15, v14}, Lmiui/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v8, v8, -0x1

    if-ltz v11, :cond_b4

    iget-object v9, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiui/view/ViewPager$ItemInfo;

    goto :goto_b5

    :cond_b4
    const/4 v9, 0x0

    :goto_b5
    move-object v12, v9

    goto :goto_e8

    :cond_b7
    if-eqz v12, :cond_d0

    iget v9, v12, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ne v15, v9, :cond_d0

    iget v9, v12, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v10, v9

    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_cd

    iget-object v9, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiui/view/ViewPager$ItemInfo;

    goto :goto_ce

    :cond_cd
    const/4 v9, 0x0

    :goto_ce
    move-object v12, v9

    goto :goto_e8

    :cond_d0
    add-int/lit8 v9, v11, 0x1

    invoke-virtual {v0, v15, v9}, Lmiui/view/ViewPager;->addNewItem(II)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v9

    iget v12, v9, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v10, v12

    add-int/lit8 v8, v8, 0x1

    if-ltz v11, :cond_e6

    iget-object v12, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmiui/view/ViewPager$ItemInfo;

    goto :goto_e7

    :cond_e6
    const/4 v12, 0x0

    :goto_e7
    move-object v9, v12

    :cond_e8
    :goto_e8
    add-int/lit8 v15, v15, -0x1

    const/high16 v14, 0x40000000    # 2.0f

    goto :goto_86

    :cond_ed
    :goto_ed
    iget v9, v7, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v11, v8, 0x1

    const/high16 v14, 0x40000000    # 2.0f

    cmpg-float v15, v9, v14

    if-gez v15, :cond_183

    iget-object v14, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v11, v14, :cond_108

    iget-object v14, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lmiui/view/ViewPager$ItemInfo;

    goto :goto_109

    :cond_108
    const/4 v14, 0x0

    :goto_109
    move-object v12, v14

    iget v14, v0, Lmiui/view/ViewPager;->mCurItem:I

    add-int/lit8 v14, v14, 0x1

    :goto_10e
    if-ge v14, v5, :cond_183

    const/high16 v15, 0x40000000    # 2.0f

    cmpl-float v17, v9, v15

    if-ltz v17, :cond_144

    if-le v14, v6, :cond_144

    if-nez v12, :cond_11c

    goto/16 :goto_183

    :cond_11c
    iget v15, v12, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ne v14, v15, :cond_17e

    iget-boolean v15, v12, Lmiui/view/ViewPager$ItemInfo;->scrolling:Z

    if-nez v15, :cond_17e

    iget-object v15, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v15, v0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    iget-object v1, v12, Lmiui/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v15, v0, v14, v1}, Lmiui/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object v1, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_141

    iget-object v1, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/ViewPager$ItemInfo;

    goto :goto_142

    :cond_141
    const/4 v1, 0x0

    :goto_142
    move-object v12, v1

    goto :goto_17e

    :cond_144
    if-eqz v12, :cond_163

    iget v1, v12, Lmiui/view/ViewPager$ItemInfo;->position:I

    if-ne v14, v1, :cond_163

    iget v1, v12, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v1

    add-int/lit8 v11, v11, 0x1

    iget-object v1, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_160

    iget-object v1, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/ViewPager$ItemInfo;

    goto :goto_161

    :cond_160
    const/4 v1, 0x0

    :goto_161
    move-object v12, v1

    goto :goto_17e

    :cond_163
    invoke-virtual {v0, v14, v11}, Lmiui/view/ViewPager;->addNewItem(II)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v1

    add-int/lit8 v11, v11, 0x1

    iget v12, v1, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v12

    iget-object v12, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_17d

    iget-object v12, v0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmiui/view/ViewPager$ItemInfo;

    goto :goto_17e

    :cond_17d
    const/4 v12, 0x0

    :cond_17e
    :goto_17e
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, p1

    goto :goto_10e

    :cond_183
    :goto_183
    invoke-direct {v0, v7, v8, v2}, Lmiui/view/ViewPager;->calculatePageOffsets(Lmiui/view/ViewPager$ItemInfo;ILmiui/view/ViewPager$ItemInfo;)V

    :cond_186
    iget-object v1, v0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    iget v9, v0, Lmiui/view/ViewPager;->mCurItem:I

    if-eqz v7, :cond_18f

    iget-object v10, v7, Lmiui/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    goto :goto_190

    :cond_18f
    const/4 v10, 0x0

    :goto_190
    invoke-virtual {v1, v0, v9, v10}, Lmiui/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object v1, v0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v1, v0}, Lmiui/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v1

    const/4 v9, 0x0

    :goto_19d
    if-ge v9, v1, :cond_1c1

    invoke-virtual {v0, v9}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lmiui/view/ViewPager$LayoutParams;

    iget-boolean v12, v11, Lmiui/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v12, :cond_1be

    iget v12, v11, Lmiui/view/ViewPager$LayoutParams;->widthFactor:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_1be

    invoke-virtual {v0, v10}, Lmiui/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v12

    if-eqz v12, :cond_1be

    iget v13, v12, Lmiui/view/ViewPager$ItemInfo;->widthFactor:F

    iput v13, v11, Lmiui/view/ViewPager$LayoutParams;->widthFactor:F

    :cond_1be
    add-int/lit8 v9, v9, 0x1

    goto :goto_19d

    :cond_1c1
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->hasFocus()Z

    move-result v9

    if-eqz v9, :cond_202

    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_1d4

    invoke-virtual {v0, v9}, Lmiui/view/ViewPager;->infoForAnyChild(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v10

    move-object/from16 v16, v10

    goto :goto_1d6

    :cond_1d4
    const/16 v16, 0x0

    :goto_1d6
    move-object/from16 v10, v16

    if-eqz v10, :cond_1e0

    iget v11, v10, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget v12, v0, Lmiui/view/ViewPager;->mCurItem:I

    if-eq v11, v12, :cond_202

    :cond_1e0
    const/4 v11, 0x0

    :goto_1e1
    invoke-virtual/range {p0 .. p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v12

    if-ge v11, v12, :cond_202

    invoke-virtual {v0, v11}, Lmiui/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v0, v12}, Lmiui/view/ViewPager;->infoForChild(Landroid/view/View;)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v10

    if-eqz v10, :cond_1ff

    iget v13, v10, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget v14, v0, Lmiui/view/ViewPager;->mCurItem:I

    if-ne v13, v14, :cond_1ff

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/view/View;->requestFocus(I)Z

    move-result v13

    if-eqz v13, :cond_1ff

    goto :goto_202

    :cond_1ff
    add-int/lit8 v11, v11, 0x1

    goto :goto_1e1

    :cond_202
    :goto_202
    return-void
.end method

.method public setAdapter(Lmiui/view/PagerAdapter;)V
    .registers 8

    iget-object v0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    iget-object v2, p0, Lmiui/view/ViewPager;->mObserver:Lmiui/view/ViewPager$PagerObserver;

    invoke-virtual {v0, v2}, Lmiui/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v0, p0}, Lmiui/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/view/ViewPager$ItemInfo;

    iget-object v3, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    iget v4, v2, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget-object v5, v2, Lmiui/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v5}, Lmiui/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    goto :goto_15

    :cond_2b
    iget-object v0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v0, p0}, Lmiui/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lmiui/view/ViewPager;->removeNonDecorViews()V

    iput v1, p0, Lmiui/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v1, v1}, Lmiui/view/ViewPager;->scrollTo(II)V

    :cond_3d
    iget-object v0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    iput-object p1, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    if-eqz p1, :cond_74

    iget-object v2, p0, Lmiui/view/ViewPager;->mObserver:Lmiui/view/ViewPager$PagerObserver;

    const/4 v3, 0x0

    if-nez v2, :cond_4f

    new-instance v2, Lmiui/view/ViewPager$PagerObserver;

    invoke-direct {v2, p0, v3}, Lmiui/view/ViewPager$PagerObserver;-><init>(Lmiui/view/ViewPager;Lmiui/view/ViewPager$1;)V

    iput-object v2, p0, Lmiui/view/ViewPager;->mObserver:Lmiui/view/ViewPager$PagerObserver;

    :cond_4f
    iget-object v2, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    iget-object v4, p0, Lmiui/view/ViewPager;->mObserver:Lmiui/view/ViewPager$PagerObserver;

    invoke-virtual {v2, v4}, Lmiui/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-boolean v1, p0, Lmiui/view/ViewPager;->mPopulatePending:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/view/ViewPager;->mFirstLayout:Z

    iget v4, p0, Lmiui/view/ViewPager;->mRestoredCurItem:I

    if-ltz v4, :cond_71

    iget-object v4, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    iget-object v5, p0, Lmiui/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    invoke-virtual {v4, v5, v3}, Lmiui/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget v4, p0, Lmiui/view/ViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v4, v1, v2}, Lmiui/view/ViewPager;->setCurrentItemInternal(IZZ)V

    const/4 v1, -0x1

    iput v1, p0, Lmiui/view/ViewPager;->mRestoredCurItem:I

    iput-object v3, p0, Lmiui/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    goto :goto_74

    :cond_71
    invoke-virtual {p0}, Lmiui/view/ViewPager;->populate()V

    :cond_74
    :goto_74
    iget-object v1, p0, Lmiui/view/ViewPager;->mAdapterChangeListener:Lmiui/view/ViewPager$OnAdapterChangeListener;

    if-eqz v1, :cond_7d

    if-eq v0, p1, :cond_7d

    invoke-interface {v1, v0, p1}, Lmiui/view/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Lmiui/view/PagerAdapter;Lmiui/view/PagerAdapter;)V

    :cond_7d
    return-void
.end method

.method public setBottomMarginProgress(F)V
    .registers 3

    iput p1, p0, Lmiui/view/ViewPager;->mBottomMarginProgress:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/view/ViewPager;->mForceReplayout:Z

    invoke-virtual {p0}, Lmiui/view/ViewPager;->requestLayout()V

    invoke-virtual {p0}, Lmiui/view/ViewPager;->invalidate()V

    return-void
.end method

.method public setCurrentItem(I)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/ViewPager;->mPopulatePending:Z

    iget-boolean v1, p0, Lmiui/view/ViewPager;->mFirstLayout:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lmiui/view/ViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/ViewPager;->mPopulatePending:Z

    invoke-virtual {p0, p1, p2, v0}, Lmiui/view/ViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/view/ViewPager;->setCurrentItemInternal(IZZI)V

    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .registers 15

    iget-object v0, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_aa

    invoke-virtual {v0}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_d

    goto/16 :goto_aa

    :cond_d
    if-nez p3, :cond_1f

    iget v0, p0, Lmiui/view/ViewPager;->mCurItem:I

    if-ne v0, p1, :cond_1f

    iget-object v0, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1f

    invoke-direct {p0, v1}, Lmiui/view/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_1f
    const/4 v0, 0x1

    if-gez p1, :cond_24

    const/4 p1, 0x0

    goto :goto_34

    :cond_24
    iget-object v2, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v2}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v2

    if-lt p1, v2, :cond_34

    iget-object v2, p0, Lmiui/view/ViewPager;->mAdapter:Lmiui/view/PagerAdapter;

    invoke-virtual {v2}, Lmiui/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 p1, v2, -0x1

    :cond_34
    :goto_34
    iget v2, p0, Lmiui/view/ViewPager;->mOffscreenPageLimit:I

    iget v3, p0, Lmiui/view/ViewPager;->mCurItem:I

    add-int v4, v3, v2

    if-gt p1, v4, :cond_3f

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_54

    :cond_3f
    iget-object v3, p0, Lmiui/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_45
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/view/ViewPager$ItemInfo;

    iput-boolean v0, v4, Lmiui/view/ViewPager$ItemInfo;->scrolling:Z

    goto :goto_45

    :cond_54
    iget v3, p0, Lmiui/view/ViewPager;->mCurItem:I

    if-eq v3, p1, :cond_59

    goto :goto_5a

    :cond_59
    move v0, v1

    :goto_5a
    invoke-virtual {p0, p1}, Lmiui/view/ViewPager;->populate(I)V

    invoke-virtual {p0, p1}, Lmiui/view/ViewPager;->infoForPosition(I)Lmiui/view/ViewPager$ItemInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_79

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v5

    int-to-float v6, v5

    iget v7, p0, Lmiui/view/ViewPager;->mFirstOffset:F

    iget v8, v3, Lmiui/view/ViewPager$ItemInfo;->offset:F

    iget v9, p0, Lmiui/view/ViewPager;->mLastOffset:F

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v4, v6

    :cond_79
    if-eqz p2, :cond_91

    invoke-virtual {p0, v4, v1, p4}, Lmiui/view/ViewPager;->smoothScrollTo(III)V

    if-eqz v0, :cond_87

    iget-object v1, p0, Lmiui/view/ViewPager;->mOnPageChangeListener:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_87

    invoke-interface {v1, p1}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_87
    if-eqz v0, :cond_a9

    iget-object v1, p0, Lmiui/view/ViewPager;->mInternalPageChangeListener:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_a9

    invoke-interface {v1, p1}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_a9

    :cond_91
    if-eqz v0, :cond_9a

    iget-object v5, p0, Lmiui/view/ViewPager;->mOnPageChangeListener:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz v5, :cond_9a

    invoke-interface {v5, p1}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_9a
    if-eqz v0, :cond_a3

    iget-object v5, p0, Lmiui/view/ViewPager;->mInternalPageChangeListener:Lmiui/view/ViewPager$OnPageChangeListener;

    if-eqz v5, :cond_a3

    invoke-interface {v5, p1}, Lmiui/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_a3
    invoke-direct {p0}, Lmiui/view/ViewPager;->completeScroll()V

    invoke-virtual {p0, v4, v1}, Lmiui/view/ViewPager;->scrollTo(II)V

    :cond_a9
    :goto_a9
    return-void

    :cond_aa
    :goto_aa
    invoke-direct {p0, v1}, Lmiui/view/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method public setDraggable(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/view/ViewPager;->mDragEnabled:Z

    return-void
.end method

.method public setInternalPageChangeListener(Lmiui/view/ViewPager$OnPageChangeListener;)Lmiui/view/ViewPager$OnPageChangeListener;
    .registers 3

    iget-object v0, p0, Lmiui/view/ViewPager;->mInternalPageChangeListener:Lmiui/view/ViewPager$OnPageChangeListener;

    iput-object p1, p0, Lmiui/view/ViewPager;->mInternalPageChangeListener:Lmiui/view/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .registers 5

    const/4 v0, 0x3

    if-ge p1, v0, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " too small; defaulting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewPager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    :cond_22
    iget v0, p0, Lmiui/view/ViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_2b

    iput p1, p0, Lmiui/view/ViewPager;->mOffscreenPageLimit:I

    invoke-virtual {p0}, Lmiui/view/ViewPager;->populate()V

    :cond_2b
    return-void
.end method

.method setOnAdapterChangeListener(Lmiui/view/ViewPager$OnAdapterChangeListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/view/ViewPager;->mAdapterChangeListener:Lmiui/view/ViewPager$OnAdapterChangeListener;

    return-void
.end method

.method public setOnPageChangeListener(Lmiui/view/ViewPager$OnPageChangeListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/view/ViewPager;->mOnPageChangeListener:Lmiui/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setPageMargin(I)V
    .registers 4

    iget v0, p0, Lmiui/view/ViewPager;->mPageMargin:I

    iput p1, p0, Lmiui/view/ViewPager;->mPageMargin:I

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getWidth()I

    move-result v1

    invoke-direct {p0, v1, v1, p1, v0}, Lmiui/view/ViewPager;->recomputeScrollPosition(IIII)V

    invoke-virtual {p0}, Lmiui/view/ViewPager;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .registers 3

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iput-object p1, p0, Lmiui/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lmiui/view/ViewPager;->refreshDrawableState()V

    :cond_7
    if-nez p1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, v0}, Lmiui/view/ViewPager;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lmiui/view/ViewPager;->invalidate()V

    return-void
.end method

.method smoothScrollTo(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmiui/view/ViewPager;->smoothScrollTo(III)V

    return-void
.end method

.method smoothScrollTo(III)V
    .registers 15

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    invoke-direct {p0, v1}, Lmiui/view/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_b
    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lmiui/view/ViewPager;->getScrollY()I

    move-result v2

    sub-int v3, p1, v0

    sub-int v4, p2, v2

    if-nez v3, :cond_25

    if-nez v4, :cond_25

    invoke-direct {p0}, Lmiui/view/ViewPager;->completeScroll()V

    invoke-virtual {p0}, Lmiui/view/ViewPager;->populate()V

    invoke-direct {p0, v1}, Lmiui/view/ViewPager;->setScrollState(I)V

    return-void

    :cond_25
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lmiui/view/ViewPager;->setScrollingCacheEnabled(Z)V

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lmiui/view/ViewPager;->setScrollState(I)V

    iget-object v5, p0, Lmiui/view/ViewPager;->mScroller:Lmiui/view/SpringScroller;

    int-to-float v6, v0

    int-to-float v7, p1

    int-to-float v8, v2

    int-to-float v9, p2

    neg-int v1, p3

    int-to-float v10, v1

    invoke-virtual/range {v5 .. v10}, Lmiui/view/SpringScroller;->startScroll(FFFFF)V

    invoke-virtual {p0}, Lmiui/view/ViewPager;->postInvalidateOnAnimation()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lmiui/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method
