.class public Lcom/android/camera/ui/ModeSelectView$ModeSnapHelper;
.super Landroidx/recyclerview/widget/LinearSnapHelper;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ModeSelectView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/ModeSelectView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/ModeSelectView$ModeSnapHelper;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/LinearSnapHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearSnapHelper;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object p0

    return-object p0
.end method

.method public calculateScrollDistance(II)[I
    .locals 1

    const/4 p2, 0x2

    new-array p2, p2, [I

    iget-object v0, p0, Lcom/android/camera/ui/ModeSelectView$ModeSnapHelper;->this$0:Lcom/android/camera/ui/ModeSelectView;

    invoke-static {v0}, Lcom/android/camera/ui/ModeSelectView;->access$1200(Lcom/android/camera/ui/ModeSelectView;)Lcom/android/camera/ui/ModeSelectView$ModeLayoutManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeSelectView$ModeSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    neg-int p0, p0

    :goto_0
    aput p0, p2, v0

    :cond_1
    return-object p2
.end method

.method public findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearSnapHelper;->findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I

    move-result p0

    return p0
.end method
