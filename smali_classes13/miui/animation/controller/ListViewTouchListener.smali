.class public Lmiui/animation/controller/ListViewTouchListener;
.super Ljava/lang/Object;
.source "ListViewTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mDownX:F

.field private mDownY:F

.field private mListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Landroid/view/View$OnTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRect:Landroid/graphics/Rect;

.field private mTouchSlop:I


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lmiui/animation/controller/ListViewTouchListener;->mListeners:Ljava/util/WeakHashMap;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/animation/controller/ListViewTouchListener;->mRect:Landroid/graphics/Rect;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lmiui/animation/controller/ListViewTouchListener;->mDownX:F

    iput v0, p0, Lmiui/animation/controller/ListViewTouchListener;->mDownY:F

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lmiui/animation/controller/ListViewTouchListener;->mTouchSlop:I

    return-void
.end method

.method private getTouchedItemView(Landroid/widget/AbsListView;Landroid/view/MotionEvent;)Landroid/view/View;
    .registers 11

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    :goto_f
    if-ge v2, v3, :cond_33

    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lmiui/animation/controller/ListViewTouchListener;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v5, p0, Lmiui/animation/controller/ListViewTouchListener;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    iget-object v5, p0, Lmiui/animation/controller/ListViewTouchListener;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_30

    return-object v4

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_33
    const/4 v2, 0x0

    return-object v2
.end method

.method private notifyItemListeners(Landroid/widget/AbsListView;Landroid/view/MotionEvent;Z)V
    .registers 11

    invoke-direct {p0, p1, p2}, Lmiui/animation/controller/ListViewTouchListener;->getTouchedItemView(Landroid/widget/AbsListView;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiui/animation/controller/ListViewTouchListener;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-nez p3, :cond_26

    if-ne v3, v0, :cond_26

    const/4 v4, 0x1

    goto :goto_27

    :cond_26
    const/4 v4, 0x0

    :goto_27
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View$OnTouchListener;

    if-eqz v4, :cond_31

    move-object v6, p2

    goto :goto_32

    :cond_31
    const/4 v6, 0x0

    :goto_32
    invoke-interface {v5, v3, v6}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_e

    :cond_36
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    const/4 v3, 0x2

    if-eq v1, v3, :cond_13

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Lmiui/animation/controller/ListViewTouchListener;->mDownY:F

    iput v1, p0, Lmiui/animation/controller/ListViewTouchListener;->mDownX:F

    goto :goto_42

    :cond_13
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v3, p0, Lmiui/animation/controller/ListViewTouchListener;->mDownY:F

    sub-float/2addr v1, v3

    iget v3, p0, Lmiui/animation/controller/ListViewTouchListener;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_32

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, p0, Lmiui/animation/controller/ListViewTouchListener;->mDownX:F

    sub-float/2addr v1, v3

    iget v3, p0, Lmiui/animation/controller/ListViewTouchListener;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_30

    goto :goto_32

    :cond_30
    move v1, v2

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v1, 0x1

    :goto_33
    move v0, v1

    goto :goto_42

    :cond_35
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lmiui/animation/controller/ListViewTouchListener;->mDownX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lmiui/animation/controller/ListViewTouchListener;->mDownY:F

    nop

    :goto_42
    move-object v1, p1

    check-cast v1, Landroid/widget/AbsListView;

    invoke-direct {p0, v1, p2, v0}, Lmiui/animation/controller/ListViewTouchListener;->notifyItemListeners(Landroid/widget/AbsListView;Landroid/view/MotionEvent;Z)V

    return v2
.end method

.method public putListener(Landroid/view/View;Landroid/view/View$OnTouchListener;)V
    .registers 4

    iget-object v0, p0, Lmiui/animation/controller/ListViewTouchListener;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
