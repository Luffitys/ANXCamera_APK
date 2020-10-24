.class public Lcom/android/camera/features/mimoji2/widget/baseview/BaseLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source ""


# instance fields
.field private baseLinearSmoothScroller:Lcom/android/camera/features/mimoji2/widget/baseview/BaseLinearSmoothScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "BaseLinearLayoutManager"

    const-string p1, "IndexOutOfBoundsException "

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    iget-object p2, p0, Lcom/android/camera/features/mimoji2/widget/baseview/BaseLinearLayoutManager;->baseLinearSmoothScroller:Lcom/android/camera/features/mimoji2/widget/baseview/BaseLinearSmoothScroller;

    if-nez p2, :cond_0

    new-instance p2, Lcom/android/camera/features/mimoji2/widget/baseview/BaseLinearSmoothScroller;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/camera/features/mimoji2/widget/baseview/BaseLinearSmoothScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/camera/features/mimoji2/widget/baseview/BaseLinearLayoutManager;->baseLinearSmoothScroller:Lcom/android/camera/features/mimoji2/widget/baseview/BaseLinearSmoothScroller;

    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/widget/baseview/BaseLinearLayoutManager;->baseLinearSmoothScroller:Lcom/android/camera/features/mimoji2/widget/baseview/BaseLinearSmoothScroller;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/widget/baseview/BaseLinearLayoutManager;->baseLinearSmoothScroller:Lcom/android/camera/features/mimoji2/widget/baseview/BaseLinearSmoothScroller;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
