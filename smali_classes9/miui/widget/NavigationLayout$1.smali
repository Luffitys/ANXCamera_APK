.class Lmiui/widget/NavigationLayout$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lmiui/widget/NavigationLayout;


# direct methods
.method constructor <init>(Lmiui/widget/NavigationLayout;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/NavigationLayout$1;->this$0:Lmiui/widget/NavigationLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lmiui/widget/NavigationLayout$1;->this$0:Lmiui/widget/NavigationLayout;

    invoke-static {v0}, Lmiui/widget/NavigationLayout;->access$000(Lmiui/widget/NavigationLayout;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/NavigationLayout$1;->this$0:Lmiui/widget/NavigationLayout;

    invoke-static {v1}, Lmiui/widget/NavigationLayout;->access$100(Lmiui/widget/NavigationLayout;)Lcom/miui/internal/widget/ViewDragHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/widget/ViewDragHelper;->getEdgeSize()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/NavigationLayout$1;->this$0:Lmiui/widget/NavigationLayout;

    invoke-static {v2}, Lmiui/widget/NavigationLayout;->access$200(Lmiui/widget/NavigationLayout;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lmiui/widget/NavigationLayout$1;->this$0:Lmiui/widget/NavigationLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    :cond_0
    sub-int/2addr v3, v1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v3, v2

    :cond_2
    add-int/2addr v3, v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ge v1, v3, :cond_3

    iget-object v1, p0, Lmiui/widget/NavigationLayout$1;->this$0:Lmiui/widget/NavigationLayout;

    invoke-virtual {v1}, Lmiui/widget/NavigationLayout;->getDrawerLockMode()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lmiui/widget/NavigationLayout$LayoutParams;

    iget-object v2, p0, Lmiui/widget/NavigationLayout$1;->this$0:Lmiui/widget/NavigationLayout;

    invoke-static {v2}, Lmiui/widget/NavigationLayout;->access$100(Lmiui/widget/NavigationLayout;)Lcom/miui/internal/widget/ViewDragHelper;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/miui/internal/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    const/4 v0, 0x1

    iput-boolean v0, v1, Lmiui/widget/NavigationLayout$LayoutParams;->isPeeking:Z

    iget-object v0, p0, Lmiui/widget/NavigationLayout$1;->this$0:Lmiui/widget/NavigationLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    iget-object p0, p0, Lmiui/widget/NavigationLayout$1;->this$0:Lmiui/widget/NavigationLayout;

    invoke-static {p0}, Lmiui/widget/NavigationLayout;->access$300(Lmiui/widget/NavigationLayout;)V

    :cond_3
    return-void
.end method
