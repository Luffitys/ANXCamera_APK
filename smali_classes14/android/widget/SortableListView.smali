.class public Landroid/widget/SortableListView;
.super Landroid/widget/MiuiListView;
.source "SortableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SortableListView$OnOrderChangedListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xc8

.field private static final SCROLL_BOUND:F = 0.25f

.field private static final SCROLL_SPEED_MAX:I = 0x10

.field private static final SNAPSHOT_ALPHA:I = 0x99

.field private static final TAG:Ljava/lang/String; = "SortableListView"


# instance fields
.field private mDraggingFrom:I

.field private mDraggingItemHeight:I

.field private mDraggingItemWidth:I

.field private mDraggingTo:I

.field private mDraggingY:I

.field private mInterceptTouchForSorting:Z

.field private mItemUpperBound:I

.field private mOffsetYInDraggingItem:I

.field private mOnOrderChangedListener:Landroid/widget/SortableListView$OnOrderChangedListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mScrollBound:I

.field private mScrollLowerBound:I

.field private mScrollUpperBound:I

.field private mSnapshot:Landroid/graphics/drawable/BitmapDrawable;

.field private mSnapshotBackgroundForOverUpperBound:Landroid/graphics/drawable/Drawable;

.field private mSnapshotShadow:Landroid/graphics/drawable/Drawable;

.field private mSnapshotShadowPaddingBottom:I

.field private mSnapshotShadowPaddingTop:I

.field private mTmpLocation:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SortableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SortableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/MiuiListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SortableListView;->mDraggingFrom:I

    iput v0, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    iput v0, p0, Landroid/widget/SortableListView;->mItemUpperBound:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/SortableListView;->mTmpLocation:[I

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/system/internal/R$drawable;->sortable_list_dragging_item_shadow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SortableListView;->mSnapshotShadow:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x99

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Landroid/widget/SortableListView;->mSnapshotShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/SortableListView;->mSnapshotShadowPaddingTop:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/SortableListView;->mSnapshotShadowPaddingBottom:I

    new-instance v1, Landroid/widget/SortableListView$1;

    invoke-direct {v1, p0}, Landroid/widget/SortableListView$1;-><init>(Landroid/widget/SortableListView;)V

    iput-object v1, p0, Landroid/widget/SortableListView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$000(Landroid/widget/SortableListView;)Landroid/widget/SortableListView$OnOrderChangedListener;
    .registers 2

    iget-object v0, p0, Landroid/widget/SortableListView;->mOnOrderChangedListener:Landroid/widget/SortableListView$OnOrderChangedListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/SortableListView;Landroid/view/MotionEvent;)I
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/SortableListView;->getHittenItemPosition(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/SortableListView;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 2

    iget-object v0, p0, Landroid/widget/SortableListView;->mSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/widget/SortableListView;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 2

    iput-object p1, p0, Landroid/widget/SortableListView;->mSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/widget/SortableListView;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroid/widget/SortableListView;->mSnapshotBackgroundForOverUpperBound:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/SortableListView;)I
    .registers 2

    iget v0, p0, Landroid/widget/SortableListView;->mSnapshotShadowPaddingTop:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/SortableListView;)I
    .registers 2

    iget v0, p0, Landroid/widget/SortableListView;->mSnapshotShadowPaddingBottom:I

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/SortableListView;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroid/widget/SortableListView;->mSnapshotShadow:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/SortableListView;IIII)Landroid/view/animation/Animation;
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SortableListView;->createAnimation(IIII)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Landroid/widget/SortableListView;I)I
    .registers 2

    iput p1, p0, Landroid/widget/SortableListView;->mDraggingFrom:I

    return p1
.end method

.method static synthetic access$302(Landroid/widget/SortableListView;I)I
    .registers 2

    iput p1, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    return p1
.end method

.method static synthetic access$400(Landroid/widget/SortableListView;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/SortableListView;->mInterceptTouchForSorting:Z

    return v0
.end method

.method static synthetic access$402(Landroid/widget/SortableListView;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/widget/SortableListView;->mInterceptTouchForSorting:Z

    return p1
.end method

.method static synthetic access$500(Landroid/widget/SortableListView;)I
    .registers 2

    iget v0, p0, Landroid/widget/SortableListView;->mDraggingItemWidth:I

    return v0
.end method

.method static synthetic access$502(Landroid/widget/SortableListView;I)I
    .registers 2

    iput p1, p0, Landroid/widget/SortableListView;->mDraggingItemWidth:I

    return p1
.end method

.method static synthetic access$600(Landroid/widget/SortableListView;)I
    .registers 2

    iget v0, p0, Landroid/widget/SortableListView;->mDraggingItemHeight:I

    return v0
.end method

.method static synthetic access$602(Landroid/widget/SortableListView;I)I
    .registers 2

    iput p1, p0, Landroid/widget/SortableListView;->mDraggingItemHeight:I

    return p1
.end method

.method static synthetic access$700(Landroid/widget/SortableListView;)[I
    .registers 2

    iget-object v0, p0, Landroid/widget/SortableListView;->mTmpLocation:[I

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/SortableListView;)I
    .registers 2

    iget v0, p0, Landroid/widget/SortableListView;->mDraggingY:I

    return v0
.end method

.method static synthetic access$802(Landroid/widget/SortableListView;I)I
    .registers 2

    iput p1, p0, Landroid/widget/SortableListView;->mDraggingY:I

    return p1
.end method

.method static synthetic access$902(Landroid/widget/SortableListView;I)I
    .registers 2

    iput p1, p0, Landroid/widget/SortableListView;->mOffsetYInDraggingItem:I

    return p1
.end method

.method private createAnimation(IIII)Landroid/view/animation/Animation;
    .registers 10

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-object v0
.end method

.method private getHittenItemPosition(Landroid/view/MotionEvent;)I
    .registers 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/SortableListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/SortableListView;->getLastVisiblePosition()I

    move-result v3

    :goto_10
    if-lt v3, v2, :cond_4f

    sub-int v4, v3, v2

    invoke-virtual {p0, v4}, Landroid/widget/SortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4c

    iget-object v5, p0, Landroid/widget/SortableListView;->mTmpLocation:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v5, p0, Landroid/widget/SortableListView;->mTmpLocation:[I

    const/4 v6, 0x0

    aget v7, v5, v6

    int-to-float v7, v7

    cmpg-float v7, v7, v0

    if-gtz v7, :cond_4c

    aget v5, v5, v6

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, v5, v0

    if-ltz v5, :cond_4c

    iget-object v5, p0, Landroid/widget/SortableListView;->mTmpLocation:[I

    const/4 v6, 0x1

    aget v7, v5, v6

    int-to-float v7, v7

    cmpg-float v7, v7, v1

    if-gtz v7, :cond_4c

    aget v5, v5, v6

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, v5, v1

    if-ltz v5, :cond_4c

    return v3

    :cond_4c
    add-int/lit8 v3, v3, -0x1

    goto :goto_10

    :cond_4f
    const/4 v3, -0x1

    return v3
.end method

.method private setViewAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_9

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_c

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    :goto_c
    return-void
.end method

.method private setViewAnimationByPisition(ILandroid/view/animation/Animation;)V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/SortableListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/widget/SortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/SortableListView;->setViewAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    return-void
.end method

.method private updateDraggingToPisition(I)V
    .registers 7

    iget v0, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    if-eq p1, v0, :cond_10e

    if-gez p1, :cond_8

    goto/16 :goto_10e

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sort item from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/widget/SortableListView;->mDraggingFrom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " To "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SortableListView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/widget/SortableListView;->mDraggingFrom:I

    iget v2, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    const-string v3, "item "

    const/4 v4, 0x0

    if-ge v0, v2, :cond_67

    :goto_35
    iget v0, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    if-le v0, p1, :cond_67

    iget v2, p0, Landroid/widget/SortableListView;->mDraggingFrom:I

    if-le v0, v2, :cond_67

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " set move down reverse animation"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    iget v2, p0, Landroid/widget/SortableListView;->mDraggingItemHeight:I

    neg-int v2, v2

    invoke-direct {p0, v4, v4, v2, v4}, Landroid/widget/SortableListView;->createAnimation(IIII)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/widget/SortableListView;->setViewAnimationByPisition(ILandroid/view/animation/Animation;)V

    goto :goto_35

    :cond_67
    iget v0, p0, Landroid/widget/SortableListView;->mDraggingFrom:I

    iget v2, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-le v0, v2, :cond_a2

    :goto_71
    iget v0, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    if-ge v0, p1, :cond_a2

    iget v2, p0, Landroid/widget/SortableListView;->mDraggingFrom:I

    if-ge v0, v2, :cond_a2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " set move up reverse animation"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    iget v2, p0, Landroid/widget/SortableListView;->mDraggingItemHeight:I

    invoke-direct {p0, v4, v4, v2, v4}, Landroid/widget/SortableListView;->createAnimation(IIII)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/widget/SortableListView;->setViewAnimationByPisition(ILandroid/view/animation/Animation;)V

    goto :goto_71

    :cond_a2
    iget v0, p0, Landroid/widget/SortableListView;->mDraggingFrom:I

    iget v2, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ge v0, v2, :cond_d8

    :goto_ac
    iget v0, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    if-ge v0, p1, :cond_d8

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    iget v2, p0, Landroid/widget/SortableListView;->mDraggingItemHeight:I

    neg-int v2, v2

    invoke-direct {p0, v4, v4, v4, v2}, Landroid/widget/SortableListView;->createAnimation(IIII)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/widget/SortableListView;->setViewAnimationByPisition(ILandroid/view/animation/Animation;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " set move up animation"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac

    :cond_d8
    iget v0, p0, Landroid/widget/SortableListView;->mDraggingFrom:I

    iget v2, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-le v0, v2, :cond_10d

    :goto_e2
    iget v0, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    if-le v0, p1, :cond_10d

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    iget v2, p0, Landroid/widget/SortableListView;->mDraggingItemHeight:I

    invoke-direct {p0, v4, v4, v4, v2}, Landroid/widget/SortableListView;->createAnimation(IIII)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/widget/SortableListView;->setViewAnimationByPisition(ILandroid/view/animation/Animation;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " set move down animation"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e2

    :cond_10d
    return-void

    :cond_10e
    :goto_10e
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/widget/MiuiListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Landroid/widget/SortableListView;->mDraggingFrom:I

    if-ltz v0, :cond_81

    iget v0, p0, Landroid/widget/SortableListView;->mDraggingY:I

    iget v1, p0, Landroid/widget/SortableListView;->mOffsetYInDraggingItem:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/SortableListView;->getHeaderViewsCount()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/SortableListView;->getFirstVisiblePosition()I

    move-result v2

    if-lt v1, v2, :cond_1c

    invoke-virtual {p0}, Landroid/widget/SortableListView;->getLastVisiblePosition()I

    move-result v2

    if-le v1, v2, :cond_20

    :cond_1c
    invoke-virtual {p0}, Landroid/widget/SortableListView;->getFirstVisiblePosition()I

    move-result v1

    :cond_20
    invoke-virtual {p0}, Landroid/widget/SortableListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/SortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SortableListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Landroid/widget/SortableListView;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/SortableListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt v2, v1, :cond_48

    invoke-virtual {p0}, Landroid/widget/SortableListView;->getLastVisiblePosition()I

    move-result v1

    if-le v2, v1, :cond_4c

    :cond_48
    invoke-virtual {p0}, Landroid/widget/SortableListView;->getLastVisiblePosition()I

    move-result v2

    :cond_4c
    invoke-virtual {p0}, Landroid/widget/SortableListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Landroid/widget/SortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v3, p0, Landroid/widget/SortableListView;->mDraggingItemHeight:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v1, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Landroid/widget/SortableListView;->mSnapshotShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Landroid/widget/SortableListView;->mSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Landroid/widget/SortableListView;->mSnapshotBackgroundForOverUpperBound:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7c

    iget v4, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    iget v5, p0, Landroid/widget/SortableListView;->mItemUpperBound:I

    if-ge v4, v5, :cond_7c

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7c
    neg-int v1, v0

    int-to-float v1, v1

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_81
    return-void
.end method

.method public getListenerForStartingSort()Landroid/view/View$OnTouchListener;
    .registers 2

    iget-object v0, p0, Landroid/widget/SortableListView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method protected obtainView(I[Z)Landroid/view/View;
    .registers 9

    invoke-super {p0, p1, p2}, Landroid/widget/MiuiListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/SortableListView;->mDraggingFrom:I

    const-string v3, "item "

    const-string v4, "SortableListView"

    const/4 v5, 0x0

    if-ne v2, p1, :cond_2c

    iget v2, p0, Landroid/widget/SortableListView;->mDraggingItemWidth:I

    invoke-direct {p0, v2, v2, v5, v5}, Landroid/widget/SortableListView;->createAnimation(IIII)Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " set move out animation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    :cond_2c
    if-ge v2, p1, :cond_51

    iget v2, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    if-gt p1, v2, :cond_51

    iget v2, p0, Landroid/widget/SortableListView;->mDraggingItemHeight:I

    neg-int v2, v2

    invoke-direct {p0, v5, v5, v5, v2}, Landroid/widget/SortableListView;->createAnimation(IIII)Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " set move up animation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    :cond_51
    iget v2, p0, Landroid/widget/SortableListView;->mDraggingFrom:I

    if-le v2, p1, :cond_76

    iget v2, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    if-lt p1, v2, :cond_76

    iget v2, p0, Landroid/widget/SortableListView;->mDraggingItemHeight:I

    invoke-direct {p0, v5, v5, v5, v2}, Landroid/widget/SortableListView;->createAnimation(IIII)Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " set move down animation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_76
    :goto_76
    invoke-direct {p0, v0, v1}, Landroid/widget/SortableListView;->setViewAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-boolean v0, p0, Landroid/widget/SortableListView;->mInterceptTouchForSorting:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/SortableListView;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/SortableListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v0

    :cond_c
    invoke-super {p0, p1}, Landroid/widget/MiuiListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 7

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/MiuiListView;->onSizeChanged(IIII)V

    int-to-float v0, p2

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SortableListView;->mScrollBound:I

    iput v0, p0, Landroid/widget/SortableListView;->mScrollUpperBound:I

    sub-int v0, p2, v0

    iput v0, p0, Landroid/widget/SortableListView;->mScrollLowerBound:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    iget-boolean v0, p0, Landroid/widget/SortableListView;->mInterceptTouchForSorting:Z

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Landroid/widget/MiuiListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1d

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7a

    const/4 v2, 0x5

    if-eq v0, v2, :cond_7a

    goto/16 :goto_aa

    :cond_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget-boolean v2, p0, Landroid/widget/SortableListView;->mInterceptTouchForSorting:Z

    if-nez v2, :cond_2c

    iget v2, p0, Landroid/widget/SortableListView;->mDraggingY:I

    if-ne v0, v2, :cond_2c

    goto/16 :goto_aa

    :cond_2c
    invoke-direct {p0, p1}, Landroid/widget/SortableListView;->getHittenItemPosition(Landroid/view/MotionEvent;)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/SortableListView;->getHeaderViewsCount()I

    move-result v3

    if-lt v2, v3, :cond_41

    invoke-virtual {p0}, Landroid/widget/SortableListView;->getCount()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SortableListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_43

    :cond_41
    iget v2, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    :cond_43
    invoke-direct {p0, v2}, Landroid/widget/SortableListView;->updateDraggingToPisition(I)V

    iput v0, p0, Landroid/widget/SortableListView;->mDraggingY:I

    invoke-virtual {p0}, Landroid/widget/SortableListView;->invalidate()V

    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/SortableListView;->mScrollLowerBound:I

    if-le v0, v4, :cond_58

    sub-int/2addr v4, v0

    mul-int/lit8 v4, v4, 0x10

    iget v5, p0, Landroid/widget/SortableListView;->mScrollBound:I

    div-int v3, v4, v5

    goto :goto_63

    :cond_58
    iget v4, p0, Landroid/widget/SortableListView;->mScrollUpperBound:I

    if-ge v0, v4, :cond_63

    sub-int/2addr v4, v0

    mul-int/lit8 v4, v4, 0x10

    iget v5, p0, Landroid/widget/SortableListView;->mScrollBound:I

    div-int v3, v4, v5

    :cond_63
    :goto_63
    if-eqz v3, :cond_aa

    invoke-virtual {p0}, Landroid/widget/SortableListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {p0, v4}, Landroid/widget/SortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_79

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p0, v2, v5}, Landroid/widget/SortableListView;->setSelectionFromTop(II)V

    :cond_79
    goto :goto_aa

    :cond_7a
    iget v0, p0, Landroid/widget/SortableListView;->mDraggingFrom:I

    if-ltz v0, :cond_9f

    iget-object v2, p0, Landroid/widget/SortableListView;->mOnOrderChangedListener:Landroid/widget/SortableListView$OnOrderChangedListener;

    if-eqz v2, :cond_99

    iget v3, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    if-eq v0, v3, :cond_99

    if-ltz v3, :cond_99

    nop

    invoke-virtual {p0}, Landroid/widget/SortableListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    invoke-virtual {p0}, Landroid/widget/SortableListView;->getHeaderViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {v2, v0, v3}, Landroid/widget/SortableListView$OnOrderChangedListener;->OnOrderChanged(II)V

    goto :goto_9f

    :cond_99
    iget v0, p0, Landroid/widget/SortableListView;->mDraggingFrom:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Landroid/widget/SortableListView;->setViewAnimationByPisition(ILandroid/view/animation/Animation;)V

    :cond_9f
    :goto_9f
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SortableListView;->mInterceptTouchForSorting:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SortableListView;->mDraggingFrom:I

    iput v0, p0, Landroid/widget/SortableListView;->mDraggingTo:I

    invoke-virtual {p0}, Landroid/widget/SortableListView;->invalidate()V

    :cond_aa
    :goto_aa
    return v1
.end method

.method public setItemUpperBound(ILandroid/graphics/drawable/Drawable;)V
    .registers 3

    iput p1, p0, Landroid/widget/SortableListView;->mItemUpperBound:I

    iput-object p2, p0, Landroid/widget/SortableListView;->mSnapshotBackgroundForOverUpperBound:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setOnOrderChangedListener(Landroid/widget/SortableListView$OnOrderChangedListener;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/SortableListView;->mOnOrderChangedListener:Landroid/widget/SortableListView$OnOrderChangedListener;

    return-void
.end method
