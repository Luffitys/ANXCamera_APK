.class Lmiui/widget/NavigationLayout$ViewDragCallback;
.super Lcom/miui/internal/widget/ViewDragHelper$Callback;
.source ""


# instance fields
.field final synthetic this$0:Lmiui/widget/NavigationLayout;


# direct methods
.method private constructor <init>(Lmiui/widget/NavigationLayout;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-direct {p0}, Lcom/miui/internal/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/NavigationLayout;Lmiui/widget/NavigationLayout$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/widget/NavigationLayout$ViewDragCallback;-><init>(Lmiui/widget/NavigationLayout;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 0

    iget-object p3, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-static {p3}, Lmiui/widget/NavigationLayout;->access$200(Lmiui/widget/NavigationLayout;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int/2addr p0, p3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    neg-int p0, p0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, p0

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-static {v0}, Lmiui/widget/NavigationLayout;->access$000(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-static {p0}, Lmiui/widget/NavigationLayout;->access$000(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onEdgeDragStarted(II)V
    .locals 1

    iget-object p1, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-virtual {p1}, Lmiui/widget/NavigationLayout;->getDrawerLockMode()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-static {p1}, Lmiui/widget/NavigationLayout;->access$100(Lmiui/widget/NavigationLayout;)Lcom/miui/internal/widget/ViewDragHelper;

    move-result-object p1

    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-static {v0}, Lmiui/widget/NavigationLayout;->access$000(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/miui/internal/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    iget-object p0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-static {p0}, Lmiui/widget/NavigationLayout;->access$1000(Lmiui/widget/NavigationLayout;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onEdgeTouched(II)V
    .locals 2

    iget-object p0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-static {p0}, Lmiui/widget/NavigationLayout;->access$1000(Lmiui/widget/NavigationLayout;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lmiui/widget/NavigationLayout$LayoutParams;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiui/widget/NavigationLayout$LayoutParams;->isPeeking:Z

    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-static {v0}, Lmiui/widget/NavigationLayout;->access$1100(Lmiui/widget/NavigationLayout;)Lmiui/widget/NavigationLayout$NavigationListener;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-virtual {v0}, Lmiui/widget/NavigationLayout;->isNavigationDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-static {v0}, Lmiui/widget/NavigationLayout;->access$1100(Lmiui/widget/NavigationLayout;)Lmiui/widget/NavigationLayout$NavigationListener;

    move-result-object v0

    invoke-interface {v0}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerOpened()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-static {v0}, Lmiui/widget/NavigationLayout;->access$1100(Lmiui/widget/NavigationLayout;)Lmiui/widget/NavigationLayout$NavigationListener;

    move-result-object v0

    invoke-interface {v0}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerClosed()V

    :cond_1
    :goto_0
    iget-object p0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-static {p0}, Lmiui/widget/NavigationLayout;->access$1100(Lmiui/widget/NavigationLayout;)Lmiui/widget/NavigationLayout$NavigationListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lmiui/widget/NavigationLayout$NavigationListener;->onDrawerDragStateChanged(I)V

    :cond_2
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0

    iget-object p3, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-static {p3}, Lmiui/widget/NavigationLayout;->access$000(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object p3

    if-ne p1, p3, :cond_1

    iget-object p1, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-static {p1}, Lmiui/widget/NavigationLayout;->access$000(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object p3, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-static {p3}, Lmiui/widget/NavigationLayout;->access$200(Lmiui/widget/NavigationLayout;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    sub-int/2addr p3, p2

    goto :goto_0

    :cond_0
    add-int p3, p2, p1

    :goto_0
    int-to-float p2, p3

    int-to-float p1, p1

    div-float/2addr p2, p1

    iget-object p1, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-static {p1, p2}, Lmiui/widget/NavigationLayout;->access$800(Lmiui/widget/NavigationLayout;F)V

    iget-object p0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 6

    iget-object p3, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-static {p3}, Lmiui/widget/NavigationLayout;->access$900(Lmiui/widget/NavigationLayout;)F

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-static {v1}, Lmiui/widget/NavigationLayout;->access$200(Lmiui/widget/NavigationLayout;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-static {v3}, Lmiui/widget/NavigationLayout;->access$200(Lmiui/widget/NavigationLayout;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    goto :goto_1

    :cond_1
    neg-int v0, v0

    :goto_1
    iget-object v3, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-static {v3}, Lmiui/widget/NavigationLayout;->access$200(Lmiui/widget/NavigationLayout;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    cmpg-float v3, p2, v5

    if-gez v3, :cond_3

    goto :goto_2

    :cond_2
    cmpl-float v3, p2, v5

    if-lez v3, :cond_3

    :goto_2
    move v2, v4

    :cond_3
    if-nez v2, :cond_5

    cmpl-float p2, p2, v5

    if-nez p2, :cond_4

    const/high16 p2, 0x3f000000    # 0.5f

    cmpl-float p2, p3, p2

    if-lez p2, :cond_4

    goto :goto_3

    :cond_4
    move v1, v0

    :cond_5
    :goto_3
    iget-object p2, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-static {p2}, Lmiui/widget/NavigationLayout;->access$100(Lmiui/widget/NavigationLayout;)Lcom/miui/internal/widget/ViewDragHelper;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2, v1, p1}, Lcom/miui/internal/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    iget-object p0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 0

    iget-object p2, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-static {p2}, Lmiui/widget/NavigationLayout;->access$000(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object p2

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lmiui/widget/NavigationLayout$ViewDragCallback;->this$0:Lmiui/widget/NavigationLayout;

    invoke-virtual {p0}, Lmiui/widget/NavigationLayout;->getDrawerLockMode()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
