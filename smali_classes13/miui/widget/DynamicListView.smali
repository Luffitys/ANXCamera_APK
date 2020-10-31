.class public Lmiui/widget/DynamicListView;
.super Landroid/widget/ListView;
.source "DynamicListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/DynamicListView$RearrangeListener;,
        Lmiui/widget/DynamicListView$OnItemRemoveListener;
    }
.end annotation


# static fields
.field private static final EDGE_OFFSET:I = 0x32

.field private static final FULL_ALPHA:I = 0xff

.field private static final SMOOTH_SCROLL_AMOUNT_AT_EDGE:I = 0x5

.field private static final sBoundEvaluator:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final INVALID_ID:I

.field private final INVALID_POINTER_ID:I

.field private mAboveItemId:J

.field private mActivePointerId:I

.field private mBelowItemId:J

.field private mCellIsMobile:Z

.field private mDownY:I

.field private mDuration:J

.field private mEdgeOffset:I

.field private mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

.field private mHoverCellCurrentBounds:Landroid/graphics/Rect;

.field private mHoverCellOriginalBounds:Landroid/graphics/Rect;

.field private mInternalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mIsMobileScrolling:Z

.field private mIsWaitingForScrollFinish:Z

.field private mItemIdTopMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLargeSmoothScrollAmount:I

.field private mLastEventY:I

.field private mLastShadowBounds:Landroid/graphics/Rect;

.field private mLastStateBitmap:Landroid/graphics/Bitmap;

.field private mMobileItemId:J

.field private mOnItemRemoveListener:Lmiui/widget/DynamicListView$OnItemRemoveListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mRearrangeListener:Lmiui/widget/DynamicListView$RearrangeListener;

.field private mScaleAnimator:Landroid/animation/ObjectAnimator;

.field private mScaleFactor:F

.field private mScrollListRunnable:Ljava/lang/Runnable;

.field private mScrollState:I

.field private mShadowBounds:Landroid/graphics/Rect;

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowHeight:I

.field private mSmallSmoothScrollAmount:I

.field private mSmoothScrollAmountAtEdge:I

.field private mTotalOffset:I

.field private mTouchEndAnimator:Landroid/animation/ObjectAnimator;

.field private mTouchEndAnimatorListener:Landroid/animation/AnimatorListenerAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/widget/DynamicListView$1;

    invoke-direct {v0}, Lmiui/widget/DynamicListView$1;-><init>()V

    sput-object v0, Lmiui/widget/DynamicListView;->sBoundEvaluator:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/DynamicListView;->INVALID_ID:I

    iput v0, p0, Lmiui/widget/DynamicListView;->INVALID_POINTER_ID:I

    const/4 v1, 0x0

    iput v1, p0, Lmiui/widget/DynamicListView;->mScaleFactor:F

    const-wide/16 v1, 0xc8

    iput-wide v1, p0, Lmiui/widget/DynamicListView;->mDuration:J

    iput v0, p0, Lmiui/widget/DynamicListView;->mLastEventY:I

    iput v0, p0, Lmiui/widget/DynamicListView;->mDownY:I

    const/4 v1, 0x0

    iput v1, p0, Lmiui/widget/DynamicListView;->mTotalOffset:I

    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->mCellIsMobile:Z

    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->mIsMobileScrolling:Z

    iput v1, p0, Lmiui/widget/DynamicListView;->mSmoothScrollAmountAtEdge:I

    iput v1, p0, Lmiui/widget/DynamicListView;->mEdgeOffset:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lmiui/widget/DynamicListView;->mAboveItemId:J

    iput-wide v2, p0, Lmiui/widget/DynamicListView;->mMobileItemId:J

    iput-wide v2, p0, Lmiui/widget/DynamicListView;->mBelowItemId:J

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lmiui/widget/DynamicListView;->mShadowBounds:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lmiui/widget/DynamicListView;->mLastShadowBounds:Landroid/graphics/Rect;

    iput v0, p0, Lmiui/widget/DynamicListView;->mActivePointerId:I

    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->mIsWaitingForScrollFinish:Z

    iput v1, p0, Lmiui/widget/DynamicListView;->mScrollState:I

    new-instance v0, Lmiui/util/ArrayMap;

    invoke-direct {v0}, Lmiui/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mItemIdTopMap:Ljava/util/Map;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Lmiui/widget/DynamicListView$2;

    invoke-direct {v0, p0}, Lmiui/widget/DynamicListView$2;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mTouchEndAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Lmiui/widget/DynamicListView$3;

    invoke-direct {v0, p0}, Lmiui/widget/DynamicListView$3;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mScrollListRunnable:Ljava/lang/Runnable;

    new-instance v0, Lmiui/widget/DynamicListView$4;

    invoke-direct {v0, p0}, Lmiui/widget/DynamicListView$4;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mInternalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {p0, p1}, Lmiui/widget/DynamicListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/DynamicListView;->INVALID_ID:I

    iput v0, p0, Lmiui/widget/DynamicListView;->INVALID_POINTER_ID:I

    const/4 v1, 0x0

    iput v1, p0, Lmiui/widget/DynamicListView;->mScaleFactor:F

    const-wide/16 v1, 0xc8

    iput-wide v1, p0, Lmiui/widget/DynamicListView;->mDuration:J

    iput v0, p0, Lmiui/widget/DynamicListView;->mLastEventY:I

    iput v0, p0, Lmiui/widget/DynamicListView;->mDownY:I

    const/4 v1, 0x0

    iput v1, p0, Lmiui/widget/DynamicListView;->mTotalOffset:I

    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->mCellIsMobile:Z

    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->mIsMobileScrolling:Z

    iput v1, p0, Lmiui/widget/DynamicListView;->mSmoothScrollAmountAtEdge:I

    iput v1, p0, Lmiui/widget/DynamicListView;->mEdgeOffset:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lmiui/widget/DynamicListView;->mAboveItemId:J

    iput-wide v2, p0, Lmiui/widget/DynamicListView;->mMobileItemId:J

    iput-wide v2, p0, Lmiui/widget/DynamicListView;->mBelowItemId:J

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lmiui/widget/DynamicListView;->mShadowBounds:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lmiui/widget/DynamicListView;->mLastShadowBounds:Landroid/graphics/Rect;

    iput v0, p0, Lmiui/widget/DynamicListView;->mActivePointerId:I

    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->mIsWaitingForScrollFinish:Z

    iput v1, p0, Lmiui/widget/DynamicListView;->mScrollState:I

    new-instance v0, Lmiui/util/ArrayMap;

    invoke-direct {v0}, Lmiui/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mItemIdTopMap:Ljava/util/Map;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Lmiui/widget/DynamicListView$2;

    invoke-direct {v0, p0}, Lmiui/widget/DynamicListView$2;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mTouchEndAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Lmiui/widget/DynamicListView$3;

    invoke-direct {v0, p0}, Lmiui/widget/DynamicListView$3;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mScrollListRunnable:Ljava/lang/Runnable;

    new-instance v0, Lmiui/widget/DynamicListView$4;

    invoke-direct {v0, p0}, Lmiui/widget/DynamicListView$4;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mInternalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {p0, p1}, Lmiui/widget/DynamicListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/DynamicListView;->INVALID_ID:I

    iput v0, p0, Lmiui/widget/DynamicListView;->INVALID_POINTER_ID:I

    const/4 v1, 0x0

    iput v1, p0, Lmiui/widget/DynamicListView;->mScaleFactor:F

    const-wide/16 v1, 0xc8

    iput-wide v1, p0, Lmiui/widget/DynamicListView;->mDuration:J

    iput v0, p0, Lmiui/widget/DynamicListView;->mLastEventY:I

    iput v0, p0, Lmiui/widget/DynamicListView;->mDownY:I

    const/4 v1, 0x0

    iput v1, p0, Lmiui/widget/DynamicListView;->mTotalOffset:I

    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->mCellIsMobile:Z

    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->mIsMobileScrolling:Z

    iput v1, p0, Lmiui/widget/DynamicListView;->mSmoothScrollAmountAtEdge:I

    iput v1, p0, Lmiui/widget/DynamicListView;->mEdgeOffset:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lmiui/widget/DynamicListView;->mAboveItemId:J

    iput-wide v2, p0, Lmiui/widget/DynamicListView;->mMobileItemId:J

    iput-wide v2, p0, Lmiui/widget/DynamicListView;->mBelowItemId:J

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lmiui/widget/DynamicListView;->mShadowBounds:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lmiui/widget/DynamicListView;->mLastShadowBounds:Landroid/graphics/Rect;

    iput v0, p0, Lmiui/widget/DynamicListView;->mActivePointerId:I

    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->mIsWaitingForScrollFinish:Z

    iput v1, p0, Lmiui/widget/DynamicListView;->mScrollState:I

    new-instance v0, Lmiui/util/ArrayMap;

    invoke-direct {v0}, Lmiui/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mItemIdTopMap:Ljava/util/Map;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Lmiui/widget/DynamicListView$2;

    invoke-direct {v0, p0}, Lmiui/widget/DynamicListView$2;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mTouchEndAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Lmiui/widget/DynamicListView$3;

    invoke-direct {v0, p0}, Lmiui/widget/DynamicListView$3;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mScrollListRunnable:Ljava/lang/Runnable;

    new-instance v0, Lmiui/widget/DynamicListView$4;

    invoke-direct {v0, p0}, Lmiui/widget/DynamicListView$4;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->mInternalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {p0, p1}, Lmiui/widget/DynamicListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lmiui/widget/DynamicListView;)J
    .registers 3

    iget-wide v0, p0, Lmiui/widget/DynamicListView;->mMobileItemId:J

    return-wide v0
.end method

.method static synthetic access$002(Lmiui/widget/DynamicListView;J)J
    .registers 3

    iput-wide p1, p0, Lmiui/widget/DynamicListView;->mMobileItemId:J

    return-wide p1
.end method

.method static synthetic access$1000(Lmiui/widget/DynamicListView;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/DynamicListView;->mCellIsMobile:Z

    return v0
.end method

.method static synthetic access$102(Lmiui/widget/DynamicListView;J)J
    .registers 3

    iput-wide p1, p0, Lmiui/widget/DynamicListView;->mAboveItemId:J

    return-wide p1
.end method

.method static synthetic access$1100(Lmiui/widget/DynamicListView;)V
    .registers 1

    invoke-direct {p0}, Lmiui/widget/DynamicListView;->handleMobileCellScroll()V

    return-void
.end method

.method static synthetic access$1200(Lmiui/widget/DynamicListView;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/DynamicListView;->mIsWaitingForScrollFinish:Z

    return v0
.end method

.method static synthetic access$1300(Lmiui/widget/DynamicListView;)V
    .registers 1

    invoke-direct {p0}, Lmiui/widget/DynamicListView;->touchEventsEnded()V

    return-void
.end method

.method static synthetic access$1400(Lmiui/widget/DynamicListView;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/widget/DynamicListView;->updateNeighborViewsForID(J)V

    return-void
.end method

.method static synthetic access$1500(Lmiui/widget/DynamicListView;)V
    .registers 1

    invoke-direct {p0}, Lmiui/widget/DynamicListView;->handleCellSwitch()V

    return-void
.end method

.method static synthetic access$1600(Lmiui/widget/DynamicListView;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lmiui/widget/DynamicListView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1702(Lmiui/widget/DynamicListView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .registers 2

    iput-object p1, p0, Lmiui/widget/DynamicListView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$1812(Lmiui/widget/DynamicListView;I)I
    .registers 3

    iget v0, p0, Lmiui/widget/DynamicListView;->mTotalOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/widget/DynamicListView;->mTotalOffset:I

    return v0
.end method

.method static synthetic access$1900(Lmiui/widget/DynamicListView;)J
    .registers 3

    iget-wide v0, p0, Lmiui/widget/DynamicListView;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$2002(Lmiui/widget/DynamicListView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lmiui/widget/DynamicListView;->mLastStateBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$202(Lmiui/widget/DynamicListView;J)J
    .registers 3

    iput-wide p1, p0, Lmiui/widget/DynamicListView;->mBelowItemId:J

    return-wide p1
.end method

.method static synthetic access$2100(Lmiui/widget/DynamicListView;)Landroid/graphics/Paint;
    .registers 2

    iget-object v0, p0, Lmiui/widget/DynamicListView;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2200(Lmiui/widget/DynamicListView;Ljava/util/List;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/widget/DynamicListView;->animateRemoval(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2300(Lmiui/widget/DynamicListView;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lmiui/widget/DynamicListView;->mItemIdTopMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$302(Lmiui/widget/DynamicListView;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 2

    iput-object p1, p0, Lmiui/widget/DynamicListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic access$402(Lmiui/widget/DynamicListView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .registers 2

    iput-object p1, p0, Lmiui/widget/DynamicListView;->mTouchEndAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$500(Lmiui/widget/DynamicListView;)Lmiui/widget/DynamicListView$RearrangeListener;
    .registers 2

    iget-object v0, p0, Lmiui/widget/DynamicListView;->mRearrangeListener:Lmiui/widget/DynamicListView$RearrangeListener;

    return-object v0
.end method

.method static synthetic access$600(Lmiui/widget/DynamicListView;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/DynamicListView;->mIsMobileScrolling:Z

    return v0
.end method

.method static synthetic access$700(Lmiui/widget/DynamicListView;)I
    .registers 2

    iget v0, p0, Lmiui/widget/DynamicListView;->mSmoothScrollAmountAtEdge:I

    return v0
.end method

.method static synthetic access$800(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;
    .registers 2

    iget-object v0, p0, Lmiui/widget/DynamicListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$902(Lmiui/widget/DynamicListView;I)I
    .registers 2

    iput p1, p0, Lmiui/widget/DynamicListView;->mScrollState:I

    return p1
.end method

.method private animateRemoval(Ljava/util/List;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lmiui/widget/DynamicListView;->getViewForPosition(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_29

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    goto :goto_10

    :cond_2a
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getFirstVisiblePosition()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/DynamicListView;->mItemIdTopMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    const/4 v3, 0x0

    :goto_34
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_62

    invoke-virtual {p0, v3}, Lmiui/widget/DynamicListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationX(F)V

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5f

    add-int v5, v2, v3

    invoke-virtual {v0, v5}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v5

    iget-object v7, p0, Lmiui/widget/DynamicListView;->mItemIdTopMap:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_62
    iget-object v3, p0, Lmiui/widget/DynamicListView;->mOnItemRemoveListener:Lmiui/widget/DynamicListView$OnItemRemoveListener;

    invoke-interface {v3, p1}, Lmiui/widget/DynamicListView$OnItemRemoveListener;->onItemRemove(Ljava/util/List;)V

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lmiui/widget/DynamicListView$12;

    invoke-direct {v4, p0, v0, p2}, Lmiui/widget/DynamicListView$12;-><init>(Lmiui/widget/DynamicListView;Landroid/widget/BaseAdapter;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private getAndAddHoverView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 11

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-direct {p0, p1}, Lmiui/widget/DynamicListView;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v3, v0

    add-int v8, v2, v1

    invoke-direct {v6, v3, v2, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Lmiui/widget/DynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lmiui/widget/DynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v6, p0, Lmiui/widget/DynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    return-object v5
.end method

.method private getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private getViewForPosition(I)Landroid/view/View;
    .registers 4

    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getFirstVisiblePosition()I

    move-result v0

    if-lt p1, v0, :cond_13

    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getLastVisiblePosition()I

    move-result v1

    if-gt p1, v1, :cond_13

    sub-int v1, p1, v0

    invoke-virtual {p0, v1}, Lmiui/widget/DynamicListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method private getViewsForPosition(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lmiui/widget/DynamicListView;->getViewForPosition(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_23

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    goto :goto_a

    :cond_24
    return-object v0
.end method

.method private handleCellSwitch()V
    .registers 21

    move-object/from16 v7, p0

    iget v0, v7, Lmiui/widget/DynamicListView;->mLastEventY:I

    iget v1, v7, Lmiui/widget/DynamicListView;->mDownY:I

    sub-int v8, v0, v1

    iget-object v0, v7, Lmiui/widget/DynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, v7, Lmiui/widget/DynamicListView;->mTotalOffset:I

    add-int/2addr v0, v1

    add-int v9, v0, v8

    iget-object v0, v7, Lmiui/widget/DynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v10, v0, 0x2

    iget-wide v0, v7, Lmiui/widget/DynamicListView;->mBelowItemId:J

    invoke-virtual {v7, v0, v1}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v11

    iget-wide v0, v7, Lmiui/widget/DynamicListView;->mMobileItemId:J

    invoke-virtual {v7, v0, v1}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v12

    iget-wide v0, v7, Lmiui/widget/DynamicListView;->mAboveItemId:J

    invoke-virtual {v7, v0, v1}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v13

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v11, :cond_39

    add-int v2, v9, v10

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v3

    if-le v2, v3, :cond_39

    move v2, v0

    goto :goto_3a

    :cond_39
    move v2, v1

    :goto_3a
    move v14, v2

    if-eqz v13, :cond_46

    sub-int v2, v9, v10

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v2, v3, :cond_46

    goto :goto_47

    :cond_46
    move v0, v1

    :goto_47
    move v15, v0

    if-eqz v12, :cond_a4

    if-nez v14, :cond_4e

    if-eqz v15, :cond_a4

    :cond_4e
    if-eqz v14, :cond_53

    iget-wide v2, v7, Lmiui/widget/DynamicListView;->mBelowItemId:J

    goto :goto_55

    :cond_53
    iget-wide v2, v7, Lmiui/widget/DynamicListView;->mAboveItemId:J

    :goto_55
    move-wide v3, v2

    if-eqz v14, :cond_5a

    move-object v0, v11

    goto :goto_5b

    :cond_5a
    move-object v0, v13

    :goto_5b
    move-object v6, v0

    invoke-virtual {v7, v12}, Lmiui/widget/DynamicListView;->getPositionForView(Landroid/view/View;)I

    move-result v5

    iget-object v0, v7, Lmiui/widget/DynamicListView;->mRearrangeListener:Lmiui/widget/DynamicListView$RearrangeListener;

    if-eqz v0, :cond_6c

    nop

    invoke-virtual {v7, v6}, Lmiui/widget/DynamicListView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    invoke-interface {v0, v5, v2}, Lmiui/widget/DynamicListView$RearrangeListener;->onOrderChanged(II)V

    :cond_6c
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget v0, v7, Lmiui/widget/DynamicListView;->mLastEventY:I

    iput v0, v7, Lmiui/widget/DynamicListView;->mDownY:I

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v16

    invoke-virtual {v12, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    iget-wide v0, v7, Lmiui/widget/DynamicListView;->mMobileItemId:J

    invoke-direct {v7, v0, v1}, Lmiui/widget/DynamicListView;->updateNeighborViewsForID(J)V

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/DynamicListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v1, Lmiui/widget/DynamicListView$7;

    move-object v0, v1

    move-object v7, v1

    move-object/from16 v1, p0

    move-object/from16 v17, v2

    move/from16 v18, v5

    move v5, v8

    move-object/from16 v19, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lmiui/widget/DynamicListView$7;-><init>(Lmiui/widget/DynamicListView;Landroid/view/ViewTreeObserver;JII)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_a4
    return-void
.end method

.method private handleMobileCellScroll()V
    .registers 2

    iget-object v0, p0, Lmiui/widget/DynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lmiui/widget/DynamicListView;->handleMobileCellScroll(Landroid/graphics/Rect;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/widget/DynamicListView;->mIsMobileScrolling:Z

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 6

    iget-object v0, p0, Lmiui/widget/DynamicListView;->mInternalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lmiui/widget/DynamicListView;->mSmallSmoothScrollAmount:I

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lmiui/widget/DynamicListView;->mLargeSmoothScrollAmount:I

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42480000    # 50.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lmiui/widget/DynamicListView;->mEdgeOffset:I

    sget v2, Lcom/miui/internal/R$attr;->dynamicListviewDraggingItemShadow:I

    invoke-static {p1, v2}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lmiui/widget/DynamicListView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_45

    invoke-static {p1}, Lmiui/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3d

    sget v2, Lcom/miui/internal/R$drawable;->dynamic_listview_dragging_item_shadow_dark:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lmiui/widget/DynamicListView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_45

    :cond_3d
    sget v2, Lcom/miui/internal/R$drawable;->dynamic_listview_dragging_item_shadow_light:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lmiui/widget/DynamicListView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    :cond_45
    :goto_45
    iget-object v2, p0, Lmiui/widget/DynamicListView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lmiui/widget/DynamicListView;->mShadowHeight:I

    return-void
.end method

.method private makeScalingAnimation()V
    .registers 8

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lmiui/widget/DynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lmiui/widget/DynamicListView;->mScaleFactor:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lmiui/widget/DynamicListView;->mScaleFactor:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v2

    float-to-int v2, v3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lmiui/widget/DynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lmiui/widget/DynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-object v3, Lmiui/widget/DynamicListView;->sBoundEvaluator:Landroid/animation/TypeEvaluator;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const-string v5, "HoverCellBounds"

    invoke-static {p0, v5, v3, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lmiui/widget/DynamicListView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    sget-boolean v4, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v4, :cond_4e

    iget-wide v4, p0, Lmiui/widget/DynamicListView;->mDuration:J

    goto :goto_50

    :cond_4e
    const-wide/16 v4, 0x0

    :goto_50
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lmiui/widget/DynamicListView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Lmiui/widget/DynamicListView$5;

    invoke-direct {v4, p0}, Lmiui/widget/DynamicListView$5;-><init>(Lmiui/widget/DynamicListView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Lmiui/widget/DynamicListView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Lmiui/widget/DynamicListView$6;

    invoke-direct {v4, p0}, Lmiui/widget/DynamicListView$6;-><init>(Lmiui/widget/DynamicListView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lmiui/widget/DynamicListView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private touchEventsCancelled()V
    .registers 6

    iget-wide v0, p0, Lmiui/widget/DynamicListView;->mMobileItemId:J

    invoke-virtual {p0, v0, v1}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lmiui/widget/DynamicListView;->mCellIsMobile:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lmiui/widget/DynamicListView;->mAboveItemId:J

    iput-wide v3, p0, Lmiui/widget/DynamicListView;->mMobileItemId:J

    iput-wide v3, p0, Lmiui/widget/DynamicListView;->mBelowItemId:J

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/widget/DynamicListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->invalidate()V

    :cond_1c
    iput-boolean v2, p0, Lmiui/widget/DynamicListView;->mCellIsMobile:Z

    iput-boolean v2, p0, Lmiui/widget/DynamicListView;->mIsMobileScrolling:Z

    const/4 v1, -0x1

    iput v1, p0, Lmiui/widget/DynamicListView;->mActivePointerId:I

    return-void
.end method

.method private touchEventsEnded()V
    .registers 10

    iget-wide v0, p0, Lmiui/widget/DynamicListView;->mMobileItemId:J

    invoke-virtual {p0, v0, v1}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lmiui/widget/DynamicListView;->mCellIsMobile:Z

    if-nez v1, :cond_13

    iget-boolean v1, p0, Lmiui/widget/DynamicListView;->mIsWaitingForScrollFinish:Z

    if-eqz v1, :cond_f

    goto :goto_13

    :cond_f
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->touchEventsCancelled()V

    goto :goto_83

    :cond_13
    :goto_13
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->mCellIsMobile:Z

    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->mIsWaitingForScrollFinish:Z

    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->mIsMobileScrolling:Z

    const/4 v2, -0x1

    iput v2, p0, Lmiui/widget/DynamicListView;->mActivePointerId:I

    iget v2, p0, Lmiui/widget/DynamicListView;->mScrollState:I

    const/4 v3, 0x1

    if-eqz v2, :cond_25

    iput-boolean v3, p0, Lmiui/widget/DynamicListView;->mIsWaitingForScrollFinish:Z

    return-void

    :cond_25
    iget-object v2, p0, Lmiui/widget/DynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lmiui/widget/DynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v2, p0, Lmiui/widget/DynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lmiui/widget/DynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lmiui/widget/DynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Lmiui/widget/DynamicListView;->sBoundEvaluator:Landroid/animation/TypeEvaluator;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lmiui/widget/DynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    aput-object v4, v3, v1

    const-string v1, "HoverCellBounds"

    invoke-static {p0, v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/DynamicListView;->mTouchEndAnimator:Landroid/animation/ObjectAnimator;

    sget-boolean v2, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v2, :cond_68

    iget-wide v2, p0, Lmiui/widget/DynamicListView;->mDuration:J

    goto :goto_6a

    :cond_68
    const-wide/16 v2, 0x0

    :goto_6a
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lmiui/widget/DynamicListView;->mTouchEndAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lmiui/widget/DynamicListView$8;

    invoke-direct {v2, p0}, Lmiui/widget/DynamicListView$8;-><init>(Lmiui/widget/DynamicListView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lmiui/widget/DynamicListView;->mTouchEndAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lmiui/widget/DynamicListView;->mTouchEndAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lmiui/widget/DynamicListView;->mTouchEndAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    :goto_83
    return-void
.end method

.method private updateNeighborViewsForID(J)V
    .registers 7

    invoke-virtual {p0, p1, p2}, Lmiui/widget/DynamicListView;->getPositionForId(J)I

    move-result v0

    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/BaseAdapter;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/widget/DynamicListView;->mAboveItemId:J

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/widget/DynamicListView;->mBelowItemId:J

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lmiui/widget/DynamicListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lmiui/widget/DynamicListView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lmiui/widget/DynamicListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_11
    iget-object v0, p0, Lmiui/widget/DynamicListView;->mLastStateBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lmiui/widget/DynamicListView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1b
    return-void
.end method

.method public getHoverCellBounds()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lmiui/widget/DynamicListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getLastStateAlpha()I
    .registers 2

    iget-object v0, p0, Lmiui/widget/DynamicListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getPositionForId(J)I
    .registers 5

    invoke-virtual {p0, p1, p2}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, -0x1

    return v1

    :cond_8
    invoke-virtual {p0, v0}, Lmiui/widget/DynamicListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    return v1
.end method

.method public getViewForId(J)Landroid/view/View;
    .registers 11

    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/BaseAdapter;

    const/4 v2, 0x0

    :goto_b
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_23

    invoke-virtual {p0, v2}, Lmiui/widget/DynamicListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    add-int v4, v0, v2

    invoke-virtual {v1, v4}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v5

    cmp-long v7, v5, p1

    if-nez v7, :cond_20

    return-object v3

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_23
    const/4 v2, 0x0

    return-object v2
.end method

.method public handleMobileCellScroll(Landroid/graphics/Rect;)Z
    .registers 14

    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->computeVerticalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->computeVerticalScrollExtent()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->computeVerticalScrollRange()I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, p0, Lmiui/widget/DynamicListView;->mEdgeOffset:I

    mul-int/lit8 v7, v6, 0x2

    const/4 v8, 0x1

    const-wide/16 v9, 0xa

    if-gt v4, v7, :cond_33

    if-lez v0, :cond_33

    iget v7, p0, Lmiui/widget/DynamicListView;->mSmallSmoothScrollAmount:I

    neg-int v7, v7

    iput v7, p0, Lmiui/widget/DynamicListView;->mSmoothScrollAmountAtEdge:I

    if-gt v4, v6, :cond_2d

    iget v6, p0, Lmiui/widget/DynamicListView;->mLargeSmoothScrollAmount:I

    neg-int v6, v6

    iput v6, p0, Lmiui/widget/DynamicListView;->mSmoothScrollAmountAtEdge:I

    :cond_2d
    iget-object v6, p0, Lmiui/widget/DynamicListView;->mScrollListRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v6, v9, v10}, Lmiui/widget/DynamicListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return v8

    :cond_33
    add-int v6, v4, v5

    iget v7, p0, Lmiui/widget/DynamicListView;->mEdgeOffset:I

    mul-int/lit8 v11, v7, 0x2

    sub-int v11, v1, v11

    if-lt v6, v11, :cond_55

    add-int v6, v0, v2

    if-ge v6, v3, :cond_55

    iget v6, p0, Lmiui/widget/DynamicListView;->mSmallSmoothScrollAmount:I

    iput v6, p0, Lmiui/widget/DynamicListView;->mSmoothScrollAmountAtEdge:I

    add-int v6, v4, v5

    sub-int v7, v1, v7

    if-lt v6, v7, :cond_4f

    iget v6, p0, Lmiui/widget/DynamicListView;->mLargeSmoothScrollAmount:I

    iput v6, p0, Lmiui/widget/DynamicListView;->mSmoothScrollAmountAtEdge:I

    :cond_4f
    iget-object v6, p0, Lmiui/widget/DynamicListView;->mScrollListRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v6, v9, v10}, Lmiui/widget/DynamicListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return v8

    :cond_55
    iget-object v6, p0, Lmiui/widget/DynamicListView;->mScrollListRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lmiui/widget/DynamicListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v6, 0x0

    return v6
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    if-eqz v0, :cond_9a

    const/4 v2, 0x1

    if-eq v0, v2, :cond_96

    const/4 v2, 0x2

    if-eq v0, v2, :cond_33

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x6

    if-eq v0, v1, :cond_17

    goto/16 :goto_a8

    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lmiui/widget/DynamicListView;->mActivePointerId:I

    if-ne v1, v2, :cond_a8

    invoke-direct {p0}, Lmiui/widget/DynamicListView;->touchEventsEnded()V

    goto/16 :goto_a8

    :cond_2e
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->touchEventsCancelled()V

    goto/16 :goto_a8

    :cond_33
    iget v0, p0, Lmiui/widget/DynamicListView;->mActivePointerId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_39

    goto :goto_a8

    :cond_39
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lmiui/widget/DynamicListView;->mLastEventY:I

    iget v3, p0, Lmiui/widget/DynamicListView;->mDownY:I

    sub-int/2addr v2, v3

    iget-boolean v3, p0, Lmiui/widget/DynamicListView;->mCellIsMobile:Z

    if-eqz v3, :cond_a8

    iget-object v3, p0, Lmiui/widget/DynamicListView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_5a

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_5a

    iget-object v3, p0, Lmiui/widget/DynamicListView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->end()V

    :cond_5a
    iget-object v3, p0, Lmiui/widget/DynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v2

    iget v4, p0, Lmiui/widget/DynamicListView;->mTotalOffset:I

    add-int/2addr v3, v4

    if-gez v3, :cond_66

    const/4 v3, 0x0

    goto :goto_7f

    :cond_66
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lmiui/widget/DynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_7f

    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lmiui/widget/DynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int v3, v4, v5

    :cond_7f
    :goto_7f
    iget-object v4, p0, Lmiui/widget/DynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lmiui/widget/DynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v4, p0, Lmiui/widget/DynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lmiui/widget/DynamicListView;->setHoverCellBounds(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lmiui/widget/DynamicListView;->handleCellSwitch()V

    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->mIsMobileScrolling:Z

    invoke-direct {p0}, Lmiui/widget/DynamicListView;->handleMobileCellScroll()V

    return v1

    :cond_96
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->touchEventsEnded()V

    goto :goto_a8

    :cond_9a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lmiui/widget/DynamicListView;->mDownY:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiui/widget/DynamicListView;->mActivePointerId:I

    nop

    :cond_a8
    :goto_a8
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public removeItems(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/widget/DynamicListView;->removeItems(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public removeItems(Ljava/util/List;Ljava/util/List;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lmiui/widget/DynamicListView;->getPositionForId(J)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_4c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_4b

    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4b

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4b
    goto :goto_1e

    :cond_4c
    const/4 v6, 0x1

    nop

    :cond_4e
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_81

    invoke-direct {v0, v0}, Lmiui/widget/DynamicListView;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v0, Lmiui/widget/DynamicListView;->mLastStateBitmap:Landroid/graphics/Bitmap;

    iget-object v9, v0, Lmiui/widget/DynamicListView;->mOnItemRemoveListener:Lmiui/widget/DynamicListView$OnItemRemoveListener;

    invoke-interface {v9, v1}, Lmiui/widget/DynamicListView$OnItemRemoveListener;->onItemRemove(Ljava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v9

    check-cast v9, Landroid/widget/BaseAdapter;

    invoke-virtual {v9}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    new-array v8, v8, [I

    aput v7, v8, v7

    const-string v7, "LastStateAlpha"

    invoke-static {v0, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-wide v8, v0, Lmiui/widget/DynamicListView;->mDuration:J

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    new-instance v8, Lmiui/widget/DynamicListView$9;

    invoke-direct {v8, v0}, Lmiui/widget/DynamicListView$9;-><init>(Lmiui/widget/DynamicListView;)V

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_81
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-direct {v0, v4}, Lmiui/widget/DynamicListView;->getViewsForPosition(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v0, v5}, Lmiui/widget/DynamicListView;->getViewsForPosition(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_146

    invoke-virtual {v0, v7}, Lmiui/widget/DynamicListView;->setEnabled(Z)V

    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_b1
    if-ge v15, v14, :cond_11a

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Landroid/view/View;

    invoke-interface {v10, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v8

    neg-int v8, v8

    goto :goto_cb

    :cond_c7
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v8

    :goto_cb
    nop

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    move-object/from16 v16, v5

    const/4 v2, 0x1

    new-array v5, v2, [F

    int-to-float v2, v8

    const/16 v17, 0x0

    aput v2, v5, v17

    invoke-static {v7, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lmiui/widget/DynamicListView$10;

    invoke-direct {v2, v0, v7}, Lmiui/widget/DynamicListView$10;-><init>(Lmiui/widget/DynamicListView;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v6

    iget-wide v5, v0, Lmiui/widget/DynamicListView;->mDuration:J

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_14c

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    move-object v6, v1

    move/from16 v18, v2

    iget-wide v1, v0, Lmiui/widget/DynamicListView;->mDuration:J

    const-wide/16 v19, 0x3

    div-long v1, v1, v19

    move-object/from16 v20, v6

    move-object/from16 v19, v7

    int-to-long v6, v15

    mul-long/2addr v1, v6

    invoke-virtual {v5, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, v16

    move/from16 v7, v17

    move/from16 v6, v18

    const/4 v8, 0x1

    goto :goto_b1

    :cond_11a
    move-object/from16 v16, v5

    move/from16 v18, v6

    invoke-virtual {v11, v13}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const/4 v1, 0x0

    :goto_122
    if-ge v1, v14, :cond_13a

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v11, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_122

    :cond_13a
    new-instance v2, Lmiui/widget/DynamicListView$11;

    invoke-direct {v2, v0, v3, v4}, Lmiui/widget/DynamicListView$11;-><init>(Lmiui/widget/DynamicListView;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v11, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_14a

    :cond_146
    move-object/from16 v16, v5

    move/from16 v18, v6

    :goto_14a
    return-void

    nop

    :array_14c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setDuration(J)V
    .registers 3

    iput-wide p1, p0, Lmiui/widget/DynamicListView;->mDuration:J

    return-void
.end method

.method public setHoverCellBounds(Landroid/graphics/Rect;)V
    .registers 8

    iget-object v0, p0, Lmiui/widget/DynamicListView;->mLastShadowBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiui/widget/DynamicListView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lmiui/widget/DynamicListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lmiui/widget/DynamicListView;->mShadowBounds:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lmiui/widget/DynamicListView;->mShadowHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lmiui/widget/DynamicListView;->mShadowHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lmiui/widget/DynamicListView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiui/widget/DynamicListView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lmiui/widget/DynamicListView;->mLastShadowBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiui/widget/DynamicListView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lmiui/widget/DynamicListView;->mLastShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lmiui/widget/DynamicListView;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setLastStateAlpha(I)V
    .registers 3

    iget-object v0, p0, Lmiui/widget/DynamicListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->invalidate()V

    return-void
.end method

.method public setOnItemRemoveListener(Lmiui/widget/DynamicListView$OnItemRemoveListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/DynamicListView;->mOnItemRemoveListener:Lmiui/widget/DynamicListView$OnItemRemoveListener;

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/DynamicListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setRearrangeListener(Lmiui/widget/DynamicListView$RearrangeListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/DynamicListView;->mRearrangeListener:Lmiui/widget/DynamicListView$RearrangeListener;

    return-void
.end method

.method public setScaleFactor(F)V
    .registers 2

    iput p1, p0, Lmiui/widget/DynamicListView;->mScaleFactor:F

    return-void
.end method

.method public startDragging(I)V
    .registers 5

    iget-object v0, p0, Lmiui/widget/DynamicListView;->mTouchEndAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lmiui/widget/DynamicListView;->mTouchEndAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    iget-object v0, p0, Lmiui/widget/DynamicListView;->mTouchEndAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    iget-object v1, p0, Lmiui/widget/DynamicListView;->mTouchEndAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_16
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/DynamicListView;->mTotalOffset:I

    invoke-direct {p0, p1}, Lmiui/widget/DynamicListView;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    iput-wide v1, p0, Lmiui/widget/DynamicListView;->mMobileItemId:J

    invoke-direct {p0, v0}, Lmiui/widget/DynamicListView;->getAndAddHoverView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/DynamicListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Lmiui/widget/DynamicListView;->makeScalingAnimation()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->mCellIsMobile:Z

    iget-wide v1, p0, Lmiui/widget/DynamicListView;->mMobileItemId:J

    invoke-direct {p0, v1, v2}, Lmiui/widget/DynamicListView;->updateNeighborViewsForID(J)V

    iget-object v1, p0, Lmiui/widget/DynamicListView;->mRearrangeListener:Lmiui/widget/DynamicListView$RearrangeListener;

    if-eqz v1, :cond_43

    invoke-interface {v1}, Lmiui/widget/DynamicListView$RearrangeListener;->onDragStart()V

    :cond_43
    return-void
.end method
