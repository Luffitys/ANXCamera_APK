.class Lmiui/widget/NavigationLayout$ViewDragCallback;
.super Lcom/miui/internal/widget/ViewDragHelper$Callback;
.source "NavigationLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NavigationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewDragCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/NavigationLayout;


# direct methods
.method private constructor <init>(Lmiui/widget/NavigationLayout;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-direct {p0}, Lcom/miui/internal/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/NavigationLayout;Lmiui/widget/NavigationLayout$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout$ViewDragCallback;-><init>(Lmiui/widget/NavigationLayout;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 7

    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mLayoutRtl:Z
    invoke-static {v0}, Lmiui/widget/NavigationLayout;->access$200(Lmiui/widget/NavigationLayout;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-virtual {v0}, Lmiui/widget/NavigationLayout;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_19

    :cond_14
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    :goto_19
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .registers 3

    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;
    invoke-static {v0}, Lmiui/widget/NavigationLayout;->access$000(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_13

    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;
    invoke-static {v0}, Lmiui/widget/NavigationLayout;->access$000(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public onEdgeDragStarted(II)V
    .registers 5

    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-virtual {v0}, Lmiui/widget/NavigationLayout;->getDrawerLockMode()I

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;
    invoke-static {v0}, Lmiui/widget/NavigationLayout;->access$100(Lmiui/widget/NavigationLayout;)Lcom/miui/internal/widget/ViewDragHelper;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;
    invoke-static {v1}, Lmiui/widget/NavigationLayout;->access$000(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/miui/internal/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mPeekRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lmiui/widget/NavigationLayout;->access$1000(Lmiui/widget/NavigationLayout;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/widget/NavigationLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_20
    return-void
.end method

.method public onEdgeTouched(II)V
    .registers 7

    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mPeekRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lmiui/widget/NavigationLayout;->access$1000(Lmiui/widget/NavigationLayout;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Lmiui/widget/NavigationLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lmiui/widget/NavigationLayout$LayoutParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmiui/widget/NavigationLayout$LayoutParams;->isPeeking:Z

    return-void
.end method

.method public onViewDragStateChanged(I)V
    .registers 3

    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mListener:Lmiui/widget/NavigationLayout$NavigationListener;
    invoke-static {v0}, Lmiui/widget/NavigationLayout;->access$1100(Lmiui/widget/NavigationLayout;)Lmiui/widget/NavigationLayout$NavigationListener;

    move-result-object v0

    if-eqz v0, :cond_2e

    if-nez p1, :cond_25

    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-virtual {v0}, Lmiui/widget/NavigationLayout;->isNavigationDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mListener:Lmiui/widget/NavigationLayout$NavigationListener;
    invoke-static {v0}, Lmiui/widget/NavigationLayout;->access$1100(Lmiui/widget/NavigationLayout;)Lmiui/widget/NavigationLayout$NavigationListener;

    move-result-object v0

    invoke-interface {v0}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerOpened()V

    goto :goto_25

    :cond_1c
    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mListener:Lmiui/widget/NavigationLayout$NavigationListener;
    invoke-static {v0}, Lmiui/widget/NavigationLayout;->access$1100(Lmiui/widget/NavigationLayout;)Lmiui/widget/NavigationLayout$NavigationListener;

    move-result-object v0

    invoke-interface {v0}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerClosed()V

    :cond_25
    :goto_25
    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mListener:Lmiui/widget/NavigationLayout$NavigationListener;
    invoke-static {v0}, Lmiui/widget/NavigationLayout;->access$1100(Lmiui/widget/NavigationLayout;)Lmiui/widget/NavigationLayout$NavigationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerDragStateChanged(I)V

    :cond_2e
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 10

    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;
    invoke-static {v0}, Lmiui/widget/NavigationLayout;->access$000(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_31

    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;
    invoke-static {v0}, Lmiui/widget/NavigationLayout;->access$000(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mLayoutRtl:Z
    invoke-static {v1}, Lmiui/widget/NavigationLayout;->access$200(Lmiui/widget/NavigationLayout;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-virtual {v1}, Lmiui/widget/NavigationLayout;->getWidth()I

    move-result v1

    sub-int/2addr v1, p2

    goto :goto_24

    :cond_22
    add-int v1, p2, v0

    :goto_24
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    iget-object v3, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # invokes: Lmiui/widget/NavigationLayout;->setNavigationOffset(F)V
    invoke-static {v3, v2}, Lmiui/widget/NavigationLayout;->access$800(Lmiui/widget/NavigationLayout;F)V

    iget-object v3, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-virtual {v3}, Lmiui/widget/NavigationLayout;->invalidate()V

    :cond_31
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 12

    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # invokes: Lmiui/widget/NavigationLayout;->getNavigationOffset()F
    invoke-static {v0}, Lmiui/widget/NavigationLayout;->access$900(Lmiui/widget/NavigationLayout;)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mLayoutRtl:Z
    invoke-static {v2}, Lmiui/widget/NavigationLayout;->access$200(Lmiui/widget/NavigationLayout;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-virtual {v2}, Lmiui/widget/NavigationLayout;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    goto :goto_1c

    :cond_1b
    move v2, v3

    :goto_1c
    iget-object v4, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mLayoutRtl:Z
    invoke-static {v4}, Lmiui/widget/NavigationLayout;->access$200(Lmiui/widget/NavigationLayout;)Z

    move-result v4

    if-eqz v4, :cond_2b

    iget-object v4, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-virtual {v4}, Lmiui/widget/NavigationLayout;->getWidth()I

    move-result v4

    goto :goto_2c

    :cond_2b
    neg-int v4, v1

    :goto_2c
    iget-object v5, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mLayoutRtl:Z
    invoke-static {v5}, Lmiui/widget/NavigationLayout;->access$200(Lmiui/widget/NavigationLayout;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_3b

    cmpg-float v5, p2, v7

    if-gez v5, :cond_40

    goto :goto_3f

    :cond_3b
    cmpl-float v5, p2, v7

    if-lez v5, :cond_40

    :goto_3f
    move v3, v6

    :cond_40
    if-nez v3, :cond_4f

    cmpl-float v5, p2, v7

    if-nez v5, :cond_4d

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v5, v0, v5

    if-lez v5, :cond_4d

    goto :goto_4f

    :cond_4d
    move v5, v4

    goto :goto_50

    :cond_4f
    :goto_4f
    move v5, v2

    :goto_50
    iget-object v6, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;
    invoke-static {v6}, Lmiui/widget/NavigationLayout;->access$100(Lmiui/widget/NavigationLayout;)Lcom/miui/internal/widget/ViewDragHelper;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/miui/internal/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    iget-object v6, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-virtual {v6}, Lmiui/widget/NavigationLayout;->invalidate()V

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 4

    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;
    invoke-static {v0}, Lmiui/widget/NavigationLayout;->access$000(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-virtual {v0}, Lmiui/widget/NavigationLayout;->getDrawerLockMode()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method
