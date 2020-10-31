.class Lcom/miui/internal/hybrid/HybridProgressView$1;
.super Landroid/os/Handler;
.source "HybridProgressView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/hybrid/HybridProgressView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/hybrid/HybridProgressView;


# direct methods
.method constructor <init>(Lcom/miui/internal/hybrid/HybridProgressView;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/hybrid/HybridProgressView$1;->this$0:Lcom/miui/internal/hybrid/HybridProgressView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_a2

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView$1;->this$0:Lcom/miui/internal/hybrid/HybridProgressView;

    # getter for: Lcom/miui/internal/hybrid/HybridProgressView;->mCurrentProgress:I
    invoke-static {v0}, Lcom/miui/internal/hybrid/HybridProgressView;->access$000(Lcom/miui/internal/hybrid/HybridProgressView;)I

    move-result v0

    iget-object v2, p0, Lcom/miui/internal/hybrid/HybridProgressView$1;->this$0:Lcom/miui/internal/hybrid/HybridProgressView;

    # getter for: Lcom/miui/internal/hybrid/HybridProgressView;->mTargetProgress:I
    invoke-static {v2}, Lcom/miui/internal/hybrid/HybridProgressView;->access$100(Lcom/miui/internal/hybrid/HybridProgressView;)I

    move-result v2

    const-wide/16 v3, 0x28

    if-ge v0, v2, :cond_5a

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView$1;->this$0:Lcom/miui/internal/hybrid/HybridProgressView;

    # getter for: Lcom/miui/internal/hybrid/HybridProgressView;->mTargetProgress:I
    invoke-static {v0}, Lcom/miui/internal/hybrid/HybridProgressView;->access$100(Lcom/miui/internal/hybrid/HybridProgressView;)I

    move-result v2

    iget-object v5, p0, Lcom/miui/internal/hybrid/HybridProgressView$1;->this$0:Lcom/miui/internal/hybrid/HybridProgressView;

    # getter for: Lcom/miui/internal/hybrid/HybridProgressView;->mCurrentProgress:I
    invoke-static {v5}, Lcom/miui/internal/hybrid/HybridProgressView;->access$000(Lcom/miui/internal/hybrid/HybridProgressView;)I

    move-result v5

    iget-object v6, p0, Lcom/miui/internal/hybrid/HybridProgressView$1;->this$0:Lcom/miui/internal/hybrid/HybridProgressView;

    # getter for: Lcom/miui/internal/hybrid/HybridProgressView;->mIncrement:I
    invoke-static {v6}, Lcom/miui/internal/hybrid/HybridProgressView;->access$200(Lcom/miui/internal/hybrid/HybridProgressView;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    # setter for: Lcom/miui/internal/hybrid/HybridProgressView;->mCurrentProgress:I
    invoke-static {v0, v2}, Lcom/miui/internal/hybrid/HybridProgressView;->access$002(Lcom/miui/internal/hybrid/HybridProgressView;I)I

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView$1;->this$0:Lcom/miui/internal/hybrid/HybridProgressView;

    # getter for: Lcom/miui/internal/hybrid/HybridProgressView;->mBounds:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/miui/internal/hybrid/HybridProgressView;->access$300(Lcom/miui/internal/hybrid/HybridProgressView;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/internal/hybrid/HybridProgressView$1;->this$0:Lcom/miui/internal/hybrid/HybridProgressView;

    invoke-virtual {v2}, Lcom/miui/internal/hybrid/HybridProgressView;->getWidth()I

    move-result v2

    iget-object v5, p0, Lcom/miui/internal/hybrid/HybridProgressView$1;->this$0:Lcom/miui/internal/hybrid/HybridProgressView;

    # getter for: Lcom/miui/internal/hybrid/HybridProgressView;->mCurrentProgress:I
    invoke-static {v5}, Lcom/miui/internal/hybrid/HybridProgressView;->access$000(Lcom/miui/internal/hybrid/HybridProgressView;)I

    move-result v5

    mul-int/2addr v2, v5

    div-int/lit16 v2, v2, 0x2710

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView$1;->this$0:Lcom/miui/internal/hybrid/HybridProgressView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridProgressView;->invalidate()V

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView$1;->this$0:Lcom/miui/internal/hybrid/HybridProgressView;

    # getter for: Lcom/miui/internal/hybrid/HybridProgressView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/internal/hybrid/HybridProgressView;->access$400(Lcom/miui/internal/hybrid/HybridProgressView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Lcom/miui/internal/hybrid/HybridProgressView$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a2

    :cond_5a
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView$1;->this$0:Lcom/miui/internal/hybrid/HybridProgressView;

    # getter for: Lcom/miui/internal/hybrid/HybridProgressView;->mCurrentProgress:I
    invoke-static {v0}, Lcom/miui/internal/hybrid/HybridProgressView;->access$000(Lcom/miui/internal/hybrid/HybridProgressView;)I

    move-result v0

    const/16 v2, 0x251c

    if-gt v0, v2, :cond_a2

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView$1;->this$0:Lcom/miui/internal/hybrid/HybridProgressView;

    # getter for: Lcom/miui/internal/hybrid/HybridProgressView;->mCurrentProgress:I
    invoke-static {v0}, Lcom/miui/internal/hybrid/HybridProgressView;->access$000(Lcom/miui/internal/hybrid/HybridProgressView;)I

    move-result v0

    const/16 v2, 0x320

    if-lt v0, v2, :cond_a2

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView$1;->this$0:Lcom/miui/internal/hybrid/HybridProgressView;

    # getter for: Lcom/miui/internal/hybrid/HybridProgressView;->mCurrentProgress:I
    invoke-static {v0}, Lcom/miui/internal/hybrid/HybridProgressView;->access$000(Lcom/miui/internal/hybrid/HybridProgressView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    # setter for: Lcom/miui/internal/hybrid/HybridProgressView;->mCurrentProgress:I
    invoke-static {v0, v2}, Lcom/miui/internal/hybrid/HybridProgressView;->access$002(Lcom/miui/internal/hybrid/HybridProgressView;I)I

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView$1;->this$0:Lcom/miui/internal/hybrid/HybridProgressView;

    # getter for: Lcom/miui/internal/hybrid/HybridProgressView;->mBounds:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/miui/internal/hybrid/HybridProgressView;->access$300(Lcom/miui/internal/hybrid/HybridProgressView;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/internal/hybrid/HybridProgressView$1;->this$0:Lcom/miui/internal/hybrid/HybridProgressView;

    invoke-virtual {v2}, Lcom/miui/internal/hybrid/HybridProgressView;->getWidth()I

    move-result v2

    iget-object v5, p0, Lcom/miui/internal/hybrid/HybridProgressView$1;->this$0:Lcom/miui/internal/hybrid/HybridProgressView;

    # getter for: Lcom/miui/internal/hybrid/HybridProgressView;->mCurrentProgress:I
    invoke-static {v5}, Lcom/miui/internal/hybrid/HybridProgressView;->access$000(Lcom/miui/internal/hybrid/HybridProgressView;)I

    move-result v5

    mul-int/2addr v2, v5

    div-int/lit16 v2, v2, 0x2710

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView$1;->this$0:Lcom/miui/internal/hybrid/HybridProgressView;

    invoke-virtual {v0}, Lcom/miui/internal/hybrid/HybridProgressView;->invalidate()V

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView$1;->this$0:Lcom/miui/internal/hybrid/HybridProgressView;

    # getter for: Lcom/miui/internal/hybrid/HybridProgressView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/internal/hybrid/HybridProgressView;->access$400(Lcom/miui/internal/hybrid/HybridProgressView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Lcom/miui/internal/hybrid/HybridProgressView$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_a2
    :goto_a2
    return-void
.end method
