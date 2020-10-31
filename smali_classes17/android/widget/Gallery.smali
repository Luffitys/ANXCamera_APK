.class public Landroid/widget/Gallery;
.super Landroid/widget/AbsSpinner;
.source "Gallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Gallery$LayoutParams;,
        Landroid/widget/Gallery$FlingRunnable;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "Gallery"

.field private static final localLOGV:Z


# instance fields
.field private mAnimationDuration:I

.field private mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field private mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mIsFirstScroll:Z

.field private mIsRtl:Z

.field private mLeftMost:I

.field private mReceivedInvokeKeyDown:Z

.field private mRightMost:I

.field private mSelectedCenterOffset:I

.field private mSelectedChild:Landroid/view/View;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mSuppressSelectionChanged:Z

.field private mUnselectedAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Gallery;->mSpacing:I

    const/16 v1, 0x190

    iput v1, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    new-instance v1, Landroid/widget/Gallery$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/Gallery$FlingRunnable;-><init>(Landroid/widget/Gallery;)V

    iput-object v1, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    new-instance v1, Landroid/widget/Gallery$1;

    invoke-direct {v1, p0}, Landroid/widget/Gallery$1;-><init>(Landroid/widget/Gallery;)V

    iput-object v1, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    iput-boolean v1, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    iput-boolean v1, p0, Landroid/widget/Gallery;->mIsRtl:Z

    sget-object v2, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    sget-object v5, Lcom/android/internal/R$styleable;->Gallery:[I

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, v2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v3 .. v9}, Landroid/widget/Gallery;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ltz v4, :cond_3a

    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->setGravity(I)V

    :cond_3a
    nop

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-lez v1, :cond_44

    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->setAnimationDuration(I)V

    :cond_44
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->setSpacing(I)V

    const/4 v3, 0x3

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/Gallery;->setUnselectedAlpha(F)V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    iget v5, p0, Landroid/widget/Gallery;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Landroid/widget/Gallery;->mGroupFlags:I

    iget v5, p0, Landroid/widget/Gallery;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Landroid/widget/Gallery;->mGroupFlags:I

    return-void
.end method

.method static synthetic access$002(Landroid/widget/Gallery;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1000(Landroid/widget/Gallery;)I
    .registers 2

    iget v0, p0, Landroid/widget/Gallery;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/Gallery;)I
    .registers 2

    iget v0, p0, Landroid/widget/Gallery;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/Gallery;)I
    .registers 2

    iget v0, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/Gallery;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Gallery;->dispatchUnpress()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/Gallery;)I
    .registers 2

    iget v0, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/Gallery;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Gallery;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/Gallery;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$602(Landroid/widget/Gallery;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$702(Landroid/widget/Gallery;I)I
    .registers 2

    iput p1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    return p1
.end method

.method static synthetic access$800(Landroid/widget/Gallery;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    return v0
.end method

.method static synthetic access$900(Landroid/widget/Gallery;)I
    .registers 2

    iget v0, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    return v0
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .registers 9

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Landroid/widget/Gallery;->getMeasuredHeight()I

    move-result v0

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Landroid/widget/Gallery;->getHeight()I

    move-result v0

    :goto_b
    if-eqz p2, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_16

    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    :goto_16
    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/Gallery;->mGravity:I

    const/16 v4, 0x10

    if-eq v3, v4, :cond_34

    const/16 v4, 0x30

    if-eq v3, v4, :cond_2f

    const/16 v4, 0x50

    if-eq v3, v4, :cond_26

    goto :goto_49

    :cond_26
    iget-object v3, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v0, v3

    sub-int v2, v3, v1

    goto :goto_49

    :cond_2f
    iget-object v3, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v3, Landroid/graphics/Rect;->top:I

    goto :goto_49

    :cond_34
    iget-object v3, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v0, v3

    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v3, 0x2

    add-int v2, v4, v5

    nop

    :goto_49
    return v2
.end method

.method private detachOffScreenChildren(Z)V
    .registers 12

    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_36

    iget v4, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v0, :cond_30

    iget-boolean v6, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v6, :cond_17

    add-int/lit8 v6, v0, -0x1

    sub-int/2addr v6, v5

    goto :goto_18

    :cond_17
    move v6, v5

    :goto_18
    invoke-virtual {p0, v6}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v4, :cond_23

    goto :goto_30

    :cond_23
    move v2, v6

    add-int/lit8 v3, v3, 0x1

    iget-object v8, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v9, v1, v6

    invoke-virtual {v8, v9, v7}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_30
    :goto_30
    iget-boolean v5, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-nez v5, :cond_35

    const/4 v2, 0x0

    :cond_35
    goto :goto_67

    :cond_36
    invoke-virtual {p0}, Landroid/widget/Gallery;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int/2addr v4, v5

    add-int/lit8 v5, v0, -0x1

    :goto_3f
    if-ltz v5, :cond_62

    iget-boolean v6, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v6, :cond_49

    add-int/lit8 v6, v0, -0x1

    sub-int/2addr v6, v5

    goto :goto_4a

    :cond_49
    move v6, v5

    :goto_4a
    invoke-virtual {p0, v6}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v4, :cond_55

    goto :goto_62

    :cond_55
    move v2, v6

    add-int/lit8 v3, v3, 0x1

    iget-object v8, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v9, v1, v6

    invoke-virtual {v8, v9, v7}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_3f

    :cond_62
    :goto_62
    iget-boolean v5, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v5, :cond_67

    const/4 v2, 0x0

    :cond_67
    :goto_67
    invoke-virtual {p0, v2, v3}, Landroid/widget/Gallery;->detachViewsFromParent(II)V

    iget-boolean v4, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eq p1, v4, :cond_73

    iget v4, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int/2addr v4, v3

    iput v4, p0, Landroid/widget/Gallery;->mFirstPosition:I

    :cond_73
    return-void
.end method

.method private dispatchLongPress(Landroid/view/View;IJFFZ)Z
    .registers 16

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/Gallery;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v1, :cond_11

    iget-object v2, p0, Landroid/widget/Gallery;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    iget-object v4, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v5, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    move-object v3, p0

    move-wide v6, p3

    invoke-interface/range {v2 .. v7}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    :cond_11
    if-nez v0, :cond_25

    new-instance v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v1, p0, Landroid/widget/Gallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz p7, :cond_21

    invoke-super {p0, p1, p5, p6}, Landroid/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v0

    goto :goto_25

    :cond_21
    invoke-super {p0, p0}, Landroid/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    :cond_25
    :goto_25
    if-eqz v0, :cond_2b

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->performHapticFeedback(I)Z

    :cond_2b
    return v0
.end method

.method private dispatchPress(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_6
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->setPressed(Z)V

    return-void
.end method

.method private dispatchUnpress()V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    const/4 v1, 0x0

    if-ltz v0, :cond_13

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_13
    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->setPressed(Z)V

    return-void
.end method

.method private fillToGalleryLeft()V
    .registers 2

    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeftRtl()V

    goto :goto_b

    :cond_8
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeftLtr()V

    :goto_b
    return-void
.end method

.method private fillToGalleryLeftLtr()V
    .registers 9

    iget v0, p0, Landroid/widget/Gallery;->mSpacing:I

    iget v1, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_15

    iget v5, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v5, v4

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v0

    goto :goto_21

    :cond_15
    const/4 v5, 0x0

    iget v6, p0, Landroid/widget/Gallery;->mRight:I

    iget v7, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int/2addr v6, v7

    iput-boolean v4, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    move v4, v6

    :goto_21
    if-le v4, v1, :cond_38

    if-ltz v5, :cond_38

    iget v6, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    sub-int v6, v5, v6

    invoke-direct {p0, v5, v6, v4, v2}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v3

    iput v5, p0, Landroid/widget/Gallery;->mFirstPosition:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int v4, v6, v0

    add-int/lit8 v5, v5, -0x1

    goto :goto_21

    :cond_38
    return-void
.end method

.method private fillToGalleryLeftRtl()V
    .registers 10

    iget v0, p0, Landroid/widget/Gallery;->mSpacing:I

    iget v1, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/Gallery;->mItemCount:I

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1b

    iget v5, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int/2addr v5, v2

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v6, v0

    goto :goto_2e

    :cond_1b
    iget v5, p0, Landroid/widget/Gallery;->mItemCount:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v7, v5

    iput v5, p0, Landroid/widget/Gallery;->mFirstPosition:I

    iget v5, p0, Landroid/widget/Gallery;->mRight:I

    iget v8, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v5, v8

    iget v8, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int/2addr v5, v8

    iput-boolean v6, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    move v6, v5

    move v5, v7

    :goto_2e
    if-le v6, v1, :cond_46

    iget v7, p0, Landroid/widget/Gallery;->mItemCount:I

    if-ge v5, v7, :cond_46

    iget v7, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    sub-int v7, v5, v7

    const/4 v8, 0x0

    invoke-direct {p0, v5, v7, v6, v8}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v6, v7, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    :cond_46
    return-void
.end method

.method private fillToGalleryRight()V
    .registers 2

    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRightRtl()V

    goto :goto_b

    :cond_8
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRightLtr()V

    :goto_b
    return-void
.end method

.method private fillToGalleryRightLtr()V
    .registers 11

    iget v0, p0, Landroid/widget/Gallery;->mSpacing:I

    iget v1, p0, Landroid/widget/Gallery;->mRight:I

    iget v2, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/Gallery;->mItemCount:I

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_22

    iget v6, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int/2addr v6, v2

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v7

    add-int/2addr v7, v0

    goto :goto_2f

    :cond_22
    iget v6, p0, Landroid/widget/Gallery;->mItemCount:I

    sub-int/2addr v6, v5

    move v7, v6

    iput v6, p0, Landroid/widget/Gallery;->mFirstPosition:I

    iget v6, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    iput-boolean v5, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    move v9, v7

    move v7, v6

    move v6, v9

    :goto_2f
    if-ge v7, v1, :cond_44

    if-ge v6, v3, :cond_44

    iget v8, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    sub-int v8, v6, v8

    invoke-direct {p0, v6, v8, v7, v5}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v8

    add-int v7, v8, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    :cond_44
    return-void
.end method

.method private fillToGalleryRightRtl()V
    .registers 8

    iget v0, p0, Landroid/widget/Gallery;->mSpacing:I

    iget v1, p0, Landroid/widget/Gallery;->mRight:I

    iget v2, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1b

    iget v4, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    add-int/2addr v5, v0

    goto :goto_20

    :cond_1b
    const/4 v4, 0x0

    iget v5, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    iput-boolean v3, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    :goto_20
    if-ge v5, v1, :cond_37

    if-ltz v4, :cond_37

    iget v6, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    sub-int v6, v4, v6

    invoke-direct {p0, v4, v6, v5, v3}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    iput v4, p0, Landroid/widget/Gallery;->mFirstPosition:I

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    add-int v5, v6, v0

    add-int/lit8 v4, v4, -0x1

    goto :goto_20

    :cond_37
    return-void
.end method

.method private getCenterOfGallery()I
    .registers 3

    invoke-virtual {p0}, Landroid/widget/Gallery;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .registers 9

    iget-boolean v0, p0, Landroid/widget/Gallery;->mDataChanged:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Landroid/widget/Gallery;->mRightMost:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Gallery;->mRightMost:I

    iget v2, p0, Landroid/widget/Gallery;->mLeftMost:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Gallery;->mLeftMost:I

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    return-object v0

    :cond_29
    iget-object v0, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    return-object v0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_12

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_12
    return-void
.end method

.method private onFinishedMovement()V
    .registers 3

    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iput-boolean v1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    invoke-super {p0}, Landroid/widget/AbsSpinner;->selectionChanged()V

    :cond_a
    iput v1, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    invoke-virtual {p0}, Landroid/widget/Gallery;->invalidate()V

    return-void
.end method

.method private scrollIntoSlots()V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v0, :cond_b

    goto :goto_21

    :cond_b
    invoke-static {v0}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v1

    sub-int v2, v1, v0

    if-eqz v2, :cond_1d

    iget-object v3, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-virtual {v3, v2}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    goto :goto_20

    :cond_1d
    invoke-direct {p0}, Landroid/widget/Gallery;->onFinishedMovement()V

    :goto_20
    return-void

    :cond_21
    :goto_21
    return-void
.end method

.method private scrollToChild(I)Z
    .registers 5

    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v1

    invoke-static {v0}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-virtual {v2, v1}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    const/4 v2, 0x1

    return v2

    :cond_16
    const/4 v1, 0x0

    return v1
.end method

.method private setSelectionToCenterChild()V
    .registers 9

    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v1, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    if-gt v2, v1, :cond_18

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    if-lt v2, v1, :cond_18

    return-void

    :cond_18
    const v2, 0x7fffffff

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_22
    if-ltz v4, :cond_53

    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    if-gt v6, v1, :cond_36

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v6

    if-lt v6, v1, :cond_36

    move v3, v4

    goto :goto_53

    :cond_36
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v6, v2, :cond_50

    move v2, v6

    move v3, v4

    :cond_50
    add-int/lit8 v4, v4, -0x1

    goto :goto_22

    :cond_53
    :goto_53
    iget v4, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int/2addr v4, v3

    iget v5, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-eq v4, v5, :cond_63

    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Landroid/widget/Gallery;->checkSelectionChanged()V

    :cond_63
    return-void
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .registers 13

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery$LayoutParams;

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Gallery$LayoutParams;

    :cond_f
    iget-boolean v1, p0, Landroid/widget/Gallery;->mIsRtl:Z

    const/4 v2, 0x0

    if-eq p4, v1, :cond_16

    const/4 v1, -0x1

    goto :goto_17

    :cond_16
    move v1, v2

    :goto_17
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v1, v0, v3}, Landroid/widget/Gallery;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    if-nez p2, :cond_1e

    move v2, v3

    :cond_1e
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    iget v1, p0, Landroid/widget/Gallery;->mHeightMeasureSpec:I

    iget-object v2, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v4

    iget v4, v0, Landroid/widget/Gallery$LayoutParams;->height:I

    invoke-static {v1, v2, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v2, p0, Landroid/widget/Gallery;->mWidthMeasureSpec:I

    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/widget/Gallery$LayoutParams;->width:I

    invoke-static {v2, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    invoke-direct {p0, p1, v3}, Landroid/widget/Gallery;->calculateTop(Landroid/view/View;Z)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-eqz p4, :cond_59

    move v6, p3

    add-int v7, v6, v5

    goto :goto_5c

    :cond_59
    sub-int v6, p3, v5

    move v7, p3

    :goto_5c
    invoke-virtual {p1, v6, v3, v7, v4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private showContextMenuForChildInternal(Landroid/view/View;FFZ)Z
    .registers 16

    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->getPositionForView(Landroid/view/View;)I

    move-result v8

    if-gez v8, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    iget-object v0, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, v8}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v9

    move-object v0, p0

    move-object v1, p1

    move v2, v8

    move-wide v3, v9

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJFFZ)Z

    move-result v0

    return v0
.end method

.method private showContextMenuInternal(FFZ)Z
    .registers 14

    invoke-virtual {p0}, Landroid/widget/Gallery;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_21

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-ltz v0, :cond_21

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iget v3, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/Gallery;->mSelectedRowId:J

    move-object v1, p0

    move-object v2, v9

    move v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v1 .. v8}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJFFZ)Z

    move-result v1

    return v1

    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method private updateSelectedItemMetadata()V
    .registers 4

    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v1, :cond_10

    return-void

    :cond_10
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/widget/Gallery;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_20
    if-eqz v0, :cond_2b

    if-eq v0, v1, :cond_2b

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    :cond_2b
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Landroid/widget/Gallery$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .registers 2

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .registers 2

    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .registers 3

    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    :cond_7
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .registers 2

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/Gallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    const-class v0, Landroid/widget/Gallery;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 5

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_8

    return p2

    :cond_8
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_d

    return v0

    :cond_d
    if-lt p2, v0, :cond_12

    add-int/lit8 v1, p2, 0x1

    return v1

    :cond_12
    return p2
.end method

.method getChildHeight(Landroid/view/View;)I
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .registers 4

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_a

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_c

    :cond_a
    iget v0, p0, Landroid/widget/Gallery;->mUnselectedAlpha:F

    :goto_c
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    const/4 v0, 0x1

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    iget-object v0, p0, Landroid/widget/Gallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .registers 9

    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    const/4 v1, 0x0

    if-eq p1, v0, :cond_a

    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_16

    return p2

    :cond_16
    invoke-static {v2}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v3

    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v4

    if-eqz p1, :cond_23

    if-gt v3, v4, :cond_26

    return v1

    :cond_23
    if-lt v3, v4, :cond_26

    return v1

    :cond_26
    sub-int v1, v4, v3

    if-eqz p1, :cond_2f

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_33

    :cond_2f
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_33
    return v5
.end method

.method layout(IZ)V
    .registers 9

    invoke-virtual {p0}, Landroid/widget/Gallery;->isLayoutRtl()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    iget-object v0, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/widget/Gallery;->mRight:I

    iget v2, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget-boolean v2, p0, Landroid/widget/Gallery;->mDataChanged:Z

    if-eqz v2, :cond_20

    invoke-virtual {p0}, Landroid/widget/Gallery;->handleDataChanged()V

    :cond_20
    iget v2, p0, Landroid/widget/Gallery;->mItemCount:I

    if-nez v2, :cond_28

    invoke-virtual {p0}, Landroid/widget/Gallery;->resetList()V

    return-void

    :cond_28
    iget v2, p0, Landroid/widget/Gallery;->mNextSelectedPosition:I

    if-ltz v2, :cond_31

    iget v2, p0, Landroid/widget/Gallery;->mNextSelectedPosition:I

    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->setSelectedPositionInt(I)V

    :cond_31
    invoke-virtual {p0}, Landroid/widget/Gallery;->recycleAllViews()V

    invoke-virtual {p0}, Landroid/widget/Gallery;->detachAllViewsFromParent()V

    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/Gallery;->mRightMost:I

    iput v2, p0, Landroid/widget/Gallery;->mLeftMost:I

    iget v3, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iput v3, p0, Landroid/widget/Gallery;->mFirstPosition:I

    iget v3, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    const/4 v4, 0x1

    invoke-direct {p0, v3, v2, v2, v4}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v3

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v0

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRight()V

    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeft()V

    iget-object v5, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v5}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    invoke-virtual {p0}, Landroid/widget/Gallery;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/Gallery;->checkSelectionChanged()V

    iput-boolean v2, p0, Landroid/widget/Gallery;->mDataChanged:Z

    iput-boolean v2, p0, Landroid/widget/Gallery;->mNeedSync:Z

    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->setNextSelectedPositionInt(I)V

    invoke-direct {p0}, Landroid/widget/Gallery;->updateSelectedItemMetadata()V

    return-void
.end method

.method moveDirection(I)Z
    .registers 4

    invoke-virtual {p0}, Landroid/widget/Gallery;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_8

    neg-int v0, p1

    goto :goto_9

    :cond_8
    move v0, p1

    :goto_9
    move p1, v0

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v1, :cond_20

    if-ltz v0, :cond_20

    iget v1, p0, Landroid/widget/Gallery;->mItemCount:I

    if-ge v0, v1, :cond_20

    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v1, v0, v1

    invoke-direct {p0, v1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    const/4 v1, 0x1

    return v1

    :cond_20
    const/4 v1, 0x0

    return v1
.end method

.method protected onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/AbsSpinner;->onAttachedToWindow()V

    iget-object v0, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_16

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/Gallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    :cond_16
    return-void
.end method

.method onCancel()V
    .registers 1

    invoke-virtual {p0}, Landroid/widget/Gallery;->onUp()V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Gallery$FlingRunnable;->stop(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/Gallery;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    const/4 v1, 0x1

    if-ltz v0, :cond_25

    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_25
    iput-boolean v1, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8

    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    const/4 v1, 0x1

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_10

    iput-boolean v1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    :cond_10
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    neg-float v2, p3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/Gallery$FlingRunnable;->startUsingVelocity(I)V

    return v1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_12

    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_12
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    invoke-virtual {p0}, Landroid/widget/Gallery;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_37

    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v0, :cond_24

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/Gallery;->mItemCount:I

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_24

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_24
    invoke-virtual {p0}, Landroid/widget/Gallery;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_37

    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v0, :cond_37

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-lez v0, :cond_37

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_37
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    const/16 v0, 0x42

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1f

    packed-switch p1, :pswitch_data_26

    goto :goto_21

    :pswitch_9
    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->moveDirection(I)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->playSoundEffect(I)V

    return v1

    :pswitch_14
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->moveDirection(I)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->playSoundEffect(I)V

    return v1

    :cond_1f
    :pswitch_1f
    iput-boolean v1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    :cond_21
    :goto_21
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_data_26
    .packed-switch 0x15
        :pswitch_14
        :pswitch_9
        :pswitch_1f
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 8

    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    if-eqz v0, :cond_36

    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v0, :cond_36

    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/Gallery;->dispatchPress(Landroid/view/View;)V

    new-instance v0, Landroid/widget/Gallery$2;

    invoke-direct {v0, p0}, Landroid/widget/Gallery$2;-><init>(Landroid/widget/Gallery;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/Gallery;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget-object v3, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v4, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/Gallery;->performItemClick(Landroid/view/View;IJ)Z

    :cond_36
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    const/4 v0, 0x1

    return v0

    :cond_3b
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    invoke-super/range {p0 .. p5}, Landroid/widget/AbsSpinner;->onLayout(ZIIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Gallery;->mInLayout:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/Gallery;->layout(IZ)V

    iput-boolean v0, p0, Landroid/widget/Gallery;->mInLayout:Z

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 13

    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    if-gez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->performHapticFeedback(I)Z

    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getItemIdAtPosition(I)J

    move-result-wide v9

    iget-object v2, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    const/4 v8, 0x1

    move-object v1, p0

    move-wide v4, v9

    invoke-direct/range {v1 .. v8}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJFFZ)Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10

    iget-object v0, p0, Landroid/widget/Gallery;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_15

    iput-boolean v1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    :cond_15
    iget-object v0, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0xfa

    invoke-virtual {p0, v0, v3, v4}, Landroid/widget/Gallery;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_23

    :cond_1d
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_23

    iput-boolean v2, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    :cond_23
    :goto_23
    float-to-int v0, p3

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->trackMotionScroll(I)V

    iput-boolean v2, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    return v1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 6

    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    if-ltz v0, :cond_25

    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/widget/Gallery;->scrollToChild(I)Z

    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_14

    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-ne v0, v1, :cond_23

    :cond_14
    iget-object v0, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget-object v2, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/Gallery;->performItemClick(Landroid/view/View;IJ)Z

    :cond_23
    const/4 v0, 0x1

    return v0

    :cond_25
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object v0, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    invoke-virtual {p0}, Landroid/widget/Gallery;->onUp()V

    goto :goto_17

    :cond_11
    const/4 v2, 0x3

    if-ne v1, v2, :cond_17

    invoke-virtual {p0}, Landroid/widget/Gallery;->onCancel()V

    :cond_17
    :goto_17
    return v0
.end method

.method onUp()V
    .registers 2

    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    # getter for: Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Landroid/widget/Gallery$FlingRunnable;->access$200(Landroid/widget/Gallery$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/widget/Gallery;->scrollIntoSlots()V

    :cond_f
    invoke-direct {p0}, Landroid/widget/Gallery;->dispatchUnpress()V

    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 7

    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/16 v0, 0x1000

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2d

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_12

    return v2

    :cond_12
    invoke-virtual {p0}, Landroid/widget/Gallery;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v0, :cond_2c

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-lez v0, :cond_2c

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    move-result v1

    return v1

    :cond_2c
    return v2

    :cond_2d
    invoke-virtual {p0}, Landroid/widget/Gallery;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v0, :cond_4a

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/Gallery;->mItemCount:I

    sub-int/2addr v3, v1

    if-ge v0, v3, :cond_4a

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    move-result v1

    return v1

    :cond_4a
    return v2
.end method

.method selectionChanged()V
    .registers 2

    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_7

    invoke-super {p0}, Landroid/widget/AbsSpinner;->selectionChanged()V

    :cond_7
    return-void
.end method

.method public setAnimationDuration(I)V
    .registers 2

    iput p1, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    return-void
.end method

.method public setGravity(I)V
    .registers 3

    iget v0, p0, Landroid/widget/Gallery;->mGravity:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Landroid/widget/Gallery;->mGravity:I

    invoke-virtual {p0}, Landroid/widget/Gallery;->requestLayout()V

    :cond_9
    return-void
.end method

.method setSelectedPositionInt(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setSelectedPositionInt(I)V

    invoke-direct {p0}, Landroid/widget/Gallery;->updateSelectedItemMetadata()V

    return-void
.end method

.method public setSpacing(I)V
    .registers 2

    iput p1, p0, Landroid/widget/Gallery;->mSpacing:I

    return-void
.end method

.method public setUnselectedAlpha(F)V
    .registers 2

    iput p1, p0, Landroid/widget/Gallery;->mUnselectedAlpha:F

    return-void
.end method

.method public showContextMenu()Z
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1}, Landroid/widget/Gallery;->showContextMenuInternal(FFZ)Z

    move-result v0

    return v0
.end method

.method public showContextMenu(FF)Z
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Gallery;->showContextMenuInternal(FFZ)Z

    move-result v0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/widget/Gallery;->isShowingContextMenuWithCoords()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v1}, Landroid/widget/Gallery;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Gallery;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method trackMotionScroll(I)V
    .registers 10

    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    if-gez p1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    move v1, v0

    :goto_d
    invoke-virtual {p0, v1, p1}, Landroid/widget/Gallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v2

    if-eq v2, p1, :cond_1b

    iget-object v3, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    # invokes: Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V
    invoke-static {v3, v0}, Landroid/widget/Gallery$FlingRunnable;->access$100(Landroid/widget/Gallery$FlingRunnable;Z)V

    invoke-direct {p0}, Landroid/widget/Gallery;->onFinishedMovement()V

    :cond_1b
    invoke-direct {p0, v2}, Landroid/widget/Gallery;->offsetChildrenLeftAndRight(I)V

    invoke-direct {p0, v1}, Landroid/widget/Gallery;->detachOffScreenChildren(Z)V

    if-eqz v1, :cond_27

    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRight()V

    goto :goto_2a

    :cond_27
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeft()V

    :goto_2a
    iget-object v3, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v3}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    invoke-direct {p0}, Landroid/widget/Gallery;->setSelectionToCenterChild()V

    iget-object v3, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v3, :cond_4b

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Landroid/widget/Gallery;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v7, v4, v5

    sub-int/2addr v7, v6

    iput v7, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    :cond_4b
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/Gallery;->onScrollChanged(IIII)V

    invoke-virtual {p0}, Landroid/widget/Gallery;->invalidate()V

    return-void
.end method
