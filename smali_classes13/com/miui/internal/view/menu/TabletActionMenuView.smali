.class public Lcom/miui/internal/view/menu/TabletActionMenuView;
.super Lcom/miui/internal/view/menu/ActionMenuView;
.source "TabletActionMenuView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public filterLeftoverView(I)Z
    .registers 5

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/TabletActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_12

    iget-boolean v2, v1, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    return v2

    :cond_12
    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->filterLeftoverView(I)Z

    move-result v2

    return v2
.end method

.method public getCollapsedHeight()I
    .registers 2

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/TabletActionMenuView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method
