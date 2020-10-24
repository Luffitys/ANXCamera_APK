.class Lcom/miui/internal/hybrid/HybridProgressView$1;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/internal/hybrid/HybridProgressView;


# direct methods
.method constructor <init>(Lcom/miui/internal/hybrid/HybridProgressView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/hybrid/HybridProgressView$1;->this$0:Lcom/miui/internal/hybrid/HybridProgressView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/internal/hybrid/HybridProgressView$1;->this$0:Lcom/miui/internal/hybrid/HybridProgressView;

    invoke-static {p1}, Lcom/miui/internal/hybrid/HybridProgressView;->access$000(Lcom/miui/internal/hybrid/HybridProgressView;)I

    move-result p1

    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridProgressView$1;->this$0:Lcom/miui/internal/hybrid/HybridProgressView;

    invoke-static {v1}, Lcom/miui/internal/hybrid/HybridProgressView;->access$100(Lcom/miui/internal/hybrid/HybridProgressView;)I

    move-result v1

    const-wide/16 v2, 0x28

    if-ge p1, v1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/hybrid/HybridProgressView$1;->this$0:Lcom/miui/internal/hybrid/HybridProgressView;

    invoke-static {p1}, Lcom/miui/internal/hybrid/HybridProgressView;->access$100(Lcom/miui/internal/hybrid/HybridProgressView;)I

    move-result v1

    iget-object v4, p0, Lcom/miui/internal/hybrid/HybridProgressView$1;->this$0:Lcom/miui/internal/hybrid/HybridProgressView;

    invoke-static {v4}, Lcom/miui/internal/hybrid/HybridProgressView;->access$000(Lcom/miui/internal/hybrid/HybridProgressView;)I

    move-result v4

    iget-object v5, p0, Lcom/miui/internal/hybrid/HybridProgressView$1;->this$0:Lcom/miui/internal/hybrid/HybridProgressView;

    invoke-static {v5}, Lcom/miui/internal/hybrid/HybridProgressView;->access$200(Lcom/miui/internal/hybrid/HybridProgressView;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    invoke-static {p1, v1}, Lcom/miui/internal/hybrid/HybridProgressView;->access$002(Lcom/miui/internal/hybrid/HybridProgressView;I)I

    iget-object p1, p0, Lcom/miui/internal/hybrid/HybridProgressView$1;->this$0:Lcom/miui/internal/hybrid/HybridProgressView;

    invoke-static {p1}, Lcom/miui/internal/hybrid/HybridProgressView;->access$300(Lcom/miui/internal/hybrid/HybridProgressView;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridProgressView$1;->this$0:Lcom/miui/internal/hybrid/HybridProgressView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iget-object v4, p0, Lcom/miui/internal/hybrid/HybridProgressView$1;->this$0:Lcom/miui/internal/hybrid/HybridProgressView;

    invoke-static {v4}, Lcom/miui/internal/hybrid/HybridProgressView;->access$000(Lcom/miui/internal/hybrid/HybridProgressView;)I

    move-result v4

    mul-int/2addr v1, v4

    div-int/lit16 v1, v1, 0x2710

    iput v1, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/miui/internal/hybrid/HybridProgressView$1;->this$0:Lcom/miui/internal/hybrid/HybridProgressView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    iget-object p1, p0, Lcom/miui/internal/hybrid/HybridProgressView$1;->this$0:Lcom/miui/internal/hybrid/HybridProgressView;

    invoke-static {p1}, Lcom/miui/internal/hybrid/HybridProgressView;->access$400(Lcom/miui/internal/hybrid/HybridProgressView;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/miui/internal/hybrid/HybridProgressView$1;->this$0:Lcom/miui/internal/hybrid/HybridProgressView;

    invoke-static {p1}, Lcom/miui/internal/hybrid/HybridProgressView;->access$000(Lcom/miui/internal/hybrid/HybridProgressView;)I

    move-result p1

    const/16 v1, 0x251c

    if-gt p1, v1, :cond_1

    iget-object p1, p0, Lcom/miui/internal/hybrid/HybridProgressView$1;->this$0:Lcom/miui/internal/hybrid/HybridProgressView;

    invoke-static {p1}, Lcom/miui/internal/hybrid/HybridProgressView;->access$000(Lcom/miui/internal/hybrid/HybridProgressView;)I

    move-result p1

    const/16 v1, 0x320

    if-lt p1, v1, :cond_1

    iget-object p1, p0, Lcom/miui/internal/hybrid/HybridProgressView$1;->this$0:Lcom/miui/internal/hybrid/HybridProgressView;

    invoke-static {p1}, Lcom/miui/internal/hybrid/HybridProgressView;->access$000(Lcom/miui/internal/hybrid/HybridProgressView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1e

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
