.class public Lcom/android/internal/widget/MediaNotificationView;
.super Landroid/widget/FrameLayout;
.source "MediaNotificationView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/MediaNotificationView$VisibilityChangeListener;
    }
.end annotation


# instance fields
.field private mActions:Landroid/view/View;

.field private mHeader:Landroid/view/NotificationHeaderView;

.field private mImagePushIn:I

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MediaNotificationView$VisibilityChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMainColumn:Landroid/view/View;

.field private mMediaContent:Landroid/view/View;

.field private final mNotificationContentImageMarginEnd:I

.field private final mNotificationContentMarginEnd:I

.field private mRightIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MediaNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/MediaNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/MediaNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentMarginEnd:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentImageMarginEnd:I

    return-void
.end method

.method private resetHeaderIndention()V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentMarginEnd:I

    if-eq v0, v1, :cond_21

    iget-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v2}, Landroid/view/NotificationHeaderView;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentMarginEnd:I

    iget-object v4, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v4}, Landroid/view/NotificationHeaderView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/NotificationHeaderView;->setPaddingRelative(IIII)V

    :cond_21
    iget-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v1, v0}, Landroid/view/NotificationHeaderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3b
    return-void
.end method


# virtual methods
.method public addVisibilityListener(Lcom/android/internal/widget/MediaNotificationView$VisibilityChangeListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mListeners:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x102044d

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MediaNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    const v0, 0x1020369

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MediaNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mActions:Landroid/view/View;

    const v0, 0x10203b6

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MediaNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/NotificationHeaderView;

    iput-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/NotificationHeaderView;

    const v0, 0x10203b7

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MediaNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mMainColumn:Landroid/view/View;

    const v0, 0x10203be

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MediaNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mMediaContent:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 11

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mImagePushIn:I

    if-lez v0, :cond_35

    invoke-virtual {p0}, Lcom/android/internal/widget/MediaNotificationView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    iget v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mImagePushIn:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mImagePushIn:I

    :cond_14
    iget-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/MediaNotificationView;->mImagePushIn:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getRight()I

    move-result v3

    iget v4, p0, Lcom/android/internal/widget/MediaNotificationView;->mImagePushIn:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    :cond_35
    return-void
.end method

.method protected onMeasure(II)V
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq v1, v3, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    if-nez v1, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/MediaNotificationView;->resetHeaderIndention()V

    :cond_15
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/4 v4, 0x0

    iput v2, v0, Lcom/android/internal/widget/MediaNotificationView;->mImagePushIn:I

    if-eqz v1, :cond_ce

    if-eqz v3, :cond_ce

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    iget-object v6, v0, Lcom/android/internal/widget/MediaNotificationView;->mActions:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, v0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v6}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v7

    sub-int/2addr v5, v7

    iget-object v8, v0, Lcom/android/internal/widget/MediaNotificationView;->mMediaContent:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    if-le v5, v8, :cond_45

    move v5, v8

    goto :goto_4f

    :cond_45
    if-ge v5, v8, :cond_4f

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int v2, v8, v5

    iput v2, v0, Lcom/android/internal/widget/MediaNotificationView;->mImagePushIn:I

    :cond_4f
    :goto_4f
    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v2, v8, :cond_57

    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eq v2, v8, :cond_61

    :cond_57
    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v2, v0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    :cond_61
    iget-object v2, v0, Lcom/android/internal/widget/MediaNotificationView;->mMainColumn:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    add-int v9, v5, v7

    iget v10, v0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentMarginEnd:I

    add-int/2addr v9, v10

    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v10

    if-eq v9, v10, :cond_7d

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v10, v0, Lcom/android/internal/widget/MediaNotificationView;->mMainColumn:Landroid/view/View;

    invoke-virtual {v10, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    :cond_7d
    move v10, v7

    add-int v11, v5, v7

    iget-object v12, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v12}, Landroid/view/NotificationHeaderView;->getHeaderTextMarginEnd()I

    move-result v12

    if-eq v11, v12, :cond_8e

    iget-object v12, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v12, v11}, Landroid/view/NotificationHeaderView;->setHeaderTextMarginEnd(I)V

    const/4 v4, 0x1

    :cond_8e
    iget-object v12, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v12}, Landroid/view/NotificationHeaderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    move-object v2, v12

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v12

    if-eq v12, v10, :cond_a6

    invoke-virtual {v2, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v12, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v12, v2}, Landroid/view/NotificationHeaderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    :cond_a6
    iget-object v12, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v12}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    move-result v12

    iget v13, v0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentImageMarginEnd:I

    if-eq v12, v13, :cond_cb

    iget-object v12, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v12}, Landroid/view/NotificationHeaderView;->getPaddingStart()I

    move-result v13

    iget-object v14, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v14}, Landroid/view/NotificationHeaderView;->getPaddingTop()I

    move-result v14

    iget v15, v0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentImageMarginEnd:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v12, v13, v14, v15, v1}, Landroid/view/NotificationHeaderView;->setPaddingRelative(IIII)V

    const/4 v4, 0x1

    goto :goto_d0

    :cond_cb
    move/from16 v16, v1

    goto :goto_d0

    :cond_ce
    move/from16 v16, v1

    :goto_d0
    if-eqz v4, :cond_d5

    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_d5
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onVisibilityAggregated(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lcom/android/internal/widget/MediaNotificationView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    iget-object v1, p0, Lcom/android/internal/widget/MediaNotificationView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MediaNotificationView$VisibilityChangeListener;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/MediaNotificationView$VisibilityChangeListener;->onAggregatedVisibilityChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1e
    return-void
.end method

.method public removeVisibilityListener(Lcom/android/internal/widget/MediaNotificationView$VisibilityChangeListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method
