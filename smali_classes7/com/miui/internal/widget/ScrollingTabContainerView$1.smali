.class Lcom/miui/internal/widget/ScrollingTabContainerView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/ScrollingTabContainerView;

.field final synthetic val$tabView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/miui/internal/widget/ScrollingTabContainerView;

    iput-object p2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$1;->val$tabView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :goto_0
    iget-object p0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/miui/internal/widget/ScrollingTabContainerView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    return-void
.end method
