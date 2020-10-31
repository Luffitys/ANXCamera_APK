.class Landroid/view/GestureExclusionTracker;
.super Ljava/lang/Object;
.source "GestureExclusionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GestureExclusionTracker$GestureExclusionViewInfo;
    }
.end annotation


# instance fields
.field private mGestureExclusionRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureExclusionViewInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/GestureExclusionTracker$GestureExclusionViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureExclusionViewsChanged:Z

.field private mRootGestureExclusionRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mRootGestureExclusionRectsChanged:Z


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GestureExclusionTracker;->mGestureExclusionViewsChanged:Z

    iput-boolean v0, p0, Landroid/view/GestureExclusionTracker;->mRootGestureExclusionRectsChanged:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/view/GestureExclusionTracker;->mRootGestureExclusionRects:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/GestureExclusionTracker;->mGestureExclusionViewInfos:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/view/GestureExclusionTracker;->mGestureExclusionRects:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public computeChangedRects()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/view/GestureExclusionTracker;->mRootGestureExclusionRectsChanged:Z

    iget-object v1, p0, Landroid/view/GestureExclusionTracker;->mGestureExclusionViewInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/view/GestureExclusionTracker;->mRootGestureExclusionRects:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/GestureExclusionTracker$GestureExclusionViewInfo;

    invoke-virtual {v3}, Landroid/view/GestureExclusionTracker$GestureExclusionViewInfo;->update()I

    move-result v4

    if-eqz v4, :cond_2e

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2f

    const/4 v6, 0x2

    if-eq v4, v6, :cond_28

    goto :goto_35

    :cond_28
    iput-boolean v5, p0, Landroid/view/GestureExclusionTracker;->mGestureExclusionViewsChanged:Z

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_35

    :cond_2e
    const/4 v0, 0x1

    :cond_2f
    iget-object v4, v3, Landroid/view/GestureExclusionTracker$GestureExclusionViewInfo;->mExclusionRects:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    nop

    :goto_35
    goto :goto_f

    :cond_36
    if-nez v0, :cond_3c

    iget-boolean v3, p0, Landroid/view/GestureExclusionTracker;->mGestureExclusionViewsChanged:Z

    if-eqz v3, :cond_4c

    :cond_3c
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/view/GestureExclusionTracker;->mGestureExclusionViewsChanged:Z

    iput-boolean v3, p0, Landroid/view/GestureExclusionTracker;->mRootGestureExclusionRectsChanged:Z

    iget-object v3, p0, Landroid/view/GestureExclusionTracker;->mGestureExclusionRects:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    iput-object v2, p0, Landroid/view/GestureExclusionTracker;->mGestureExclusionRects:Ljava/util/List;

    return-object v2

    :cond_4c
    const/4 v3, 0x0

    return-object v3
.end method

.method public getRootSystemGestureExclusionRects()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/GestureExclusionTracker;->mRootGestureExclusionRects:Ljava/util/List;

    return-object v0
.end method

.method public setRootSystemGestureExclusionRects(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "rects must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/view/GestureExclusionTracker;->mRootGestureExclusionRects:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/GestureExclusionTracker;->mRootGestureExclusionRectsChanged:Z

    return-void
.end method

.method public updateRectsForView(Landroid/view/View;)V
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/GestureExclusionTracker;->mGestureExclusionViewInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/GestureExclusionTracker$GestureExclusionViewInfo;

    invoke-virtual {v2}, Landroid/view/GestureExclusionTracker$GestureExclusionViewInfo;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2e

    invoke-virtual {v4}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-virtual {v4}, Landroid/view/View;->isAggregatedVisible()Z

    move-result v5

    if-nez v5, :cond_27

    goto :goto_2e

    :cond_27
    if-ne v4, p1, :cond_2d

    const/4 v0, 0x1

    iput-boolean v3, v2, Landroid/view/GestureExclusionTracker$GestureExclusionViewInfo;->mDirty:Z

    goto :goto_34

    :cond_2d
    goto :goto_7

    :cond_2e
    :goto_2e
    iput-boolean v3, p0, Landroid/view/GestureExclusionTracker;->mGestureExclusionViewsChanged:Z

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    :cond_34
    :goto_34
    if-nez v0, :cond_48

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, p0, Landroid/view/GestureExclusionTracker;->mGestureExclusionViewInfos:Ljava/util/List;

    new-instance v4, Landroid/view/GestureExclusionTracker$GestureExclusionViewInfo;

    invoke-direct {v4, p1}, Landroid/view/GestureExclusionTracker$GestureExclusionViewInfo;-><init>(Landroid/view/View;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v3, p0, Landroid/view/GestureExclusionTracker;->mGestureExclusionViewsChanged:Z

    :cond_48
    return-void
.end method
