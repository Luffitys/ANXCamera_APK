.class Lmiui/widget/NavigationLayout$1;
.super Ljava/lang/Object;
.source "NavigationLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NavigationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/NavigationLayout;


# direct methods
.method constructor <init>(Lmiui/widget/NavigationLayout;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/NavigationLayout$1;->this$0:Lmiui/widget/NavigationLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lmiui/widget/NavigationLayout$1;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mNavigation:Landroid/view/View;
    invoke-static {v0}, Lmiui/widget/NavigationLayout;->access$000(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/NavigationLayout$1;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;
    invoke-static {v1}, Lmiui/widget/NavigationLayout;->access$100(Lmiui/widget/NavigationLayout;)Lcom/miui/internal/widget/ViewDragHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/widget/ViewDragHelper;->getEdgeSize()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NavigationLayout$1;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mLayoutRtl:Z
    invoke-static {v2}, Lmiui/widget/NavigationLayout;->access$200(Lmiui/widget/NavigationLayout;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_23

    if-eqz v0, :cond_21

    iget-object v2, p0, Lmiui/widget/NavigationLayout$1;->this$0:Lmiui/widget/NavigationLayout;

    invoke-virtual {v2}, Lmiui/widget/NavigationLayout;->getWidth()I

    move-result v3

    :cond_21
    sub-int/2addr v3, v1

    goto :goto_2b

    :cond_23
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v3, v2

    :cond_2a
    add-int/2addr v3, v1

    :goto_2b
    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    if-ge v2, v3, :cond_5b

    iget-object v2, p0, Lmiui/widget/NavigationLayout$1;->this$0:Lmiui/widget/NavigationLayout;

    invoke-virtual {v2}, Lmiui/widget/NavigationLayout;->getDrawerLockMode()I

    move-result v2

    if-nez v2, :cond_5b

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lmiui/widget/NavigationLayout$LayoutParams;

    iget-object v4, p0, Lmiui/widget/NavigationLayout$1;->this$0:Lmiui/widget/NavigationLayout;

    # getter for: Lmiui/widget/NavigationLayout;->mDragger:Lcom/miui/internal/widget/ViewDragHelper;
    invoke-static {v4}, Lmiui/widget/NavigationLayout;->access$100(Lmiui/widget/NavigationLayout;)Lcom/miui/internal/widget/ViewDragHelper;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4, v0, v3, v5}, Lcom/miui/internal/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    const/4 v4, 0x1

    iput-boolean v4, v2, Lmiui/widget/NavigationLayout$LayoutParams;->isPeeking:Z

    iget-object v4, p0, Lmiui/widget/NavigationLayout$1;->this$0:Lmiui/widget/NavigationLayout;

    invoke-virtual {v4}, Lmiui/widget/NavigationLayout;->invalidate()V

    iget-object v4, p0, Lmiui/widget/NavigationLayout$1;->this$0:Lmiui/widget/NavigationLayout;

    # invokes: Lmiui/widget/NavigationLayout;->cancelChildViewTouch()V
    invoke-static {v4}, Lmiui/widget/NavigationLayout;->access$300(Lmiui/widget/NavigationLayout;)V

    :cond_5b
    return-void
.end method
