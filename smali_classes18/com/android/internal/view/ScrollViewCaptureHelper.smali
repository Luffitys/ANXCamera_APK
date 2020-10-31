.class public Lcom/android/internal/view/ScrollViewCaptureHelper;
.super Ljava/lang/Object;
.source "ScrollViewCaptureHelper.java"

# interfaces
.implements Lcom/android/internal/view/ScrollCaptureViewHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/view/ScrollCaptureViewHelper<",
        "Landroid/view/ViewGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private mOverScrollMode:I

.field private mScrollBarEnabled:Z

.field private mStartScrollY:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPrepareForEnd(Landroid/view/View;)V
    .registers 2

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/android/internal/view/ScrollViewCaptureHelper;->onPrepareForEnd(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onPrepareForEnd(Landroid/view/ViewGroup;)V
    .registers 4

    iget v0, p0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mStartScrollY:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    iget v0, p0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mOverScrollMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    :cond_e
    iget-boolean v0, p0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mScrollBarEnabled:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    :cond_16
    return-void
.end method

.method public bridge synthetic onPrepareForStart(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/ScrollViewCaptureHelper;->onPrepareForStart(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onPrepareForStart(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mStartScrollY:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mOverScrollMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    :cond_12
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isVerticalScrollBarEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mScrollBarEnabled:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    :cond_1e
    return-void
.end method

.method public bridge synthetic onScrollRequested(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 4

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/view/ScrollViewCaptureHelper;->onScrollRequested(Landroid/view/ViewGroup;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public onScrollRequested(Landroid/view/ViewGroup;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 14

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    return-object v0

    :cond_9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    iget v3, p0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mStartScrollY:I

    sub-int/2addr v2, v3

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    neg-int v4, v2

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Rect;->offset(II)V

    iget v4, p2, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    nop

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    iget v6, p0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mStartScrollY:I

    sub-int/2addr v5, v6

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v1, v6, v2}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v7

    if-nez v7, :cond_5f

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    return-object v6

    :cond_5f
    iget v7, v2, Landroid/graphics/Point;->x:I

    neg-int v7, v7

    iget v8, v2, Landroid/graphics/Point;->y:I

    neg-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    nop

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    iget v7, p2, Landroid/graphics/Rect;->left:I

    neg-int v7, v7

    iget v8, p2, Landroid/graphics/Rect;->top:I

    neg-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v6, v0, v5}, Landroid/graphics/Rect;->offset(II)V

    return-object v6
.end method
