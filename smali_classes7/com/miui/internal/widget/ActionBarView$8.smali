.class Lcom/miui/internal/widget/ActionBarView$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/ActionBarView;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ActionBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView$8;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$8;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$2100(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$8;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$2100(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView$8;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {v2}, Lcom/miui/internal/widget/ActionBarView;->access$2300(Lcom/miui/internal/widget/ActionBarView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/miui/internal/widget/ActionBarView;->access$2202(Lcom/miui/internal/widget/ActionBarView;I)I

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$8;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$8;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$2100(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$8;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$8;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$2100(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$8;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {v1}, Lcom/miui/internal/widget/ActionBarView;->access$2300(Lcom/miui/internal/widget/ActionBarView;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView$8;->this$0:Lcom/miui/internal/widget/ActionBarView;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarView;->setExpandState(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$8;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$2100(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$8;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {v1}, Lcom/miui/internal/widget/ActionBarView;->access$2300(Lcom/miui/internal/widget/ActionBarView;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView$8;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {v2}, Lcom/miui/internal/widget/ActionBarView;->access$2400(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView$8;->this$0:Lcom/miui/internal/widget/ActionBarView;

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
