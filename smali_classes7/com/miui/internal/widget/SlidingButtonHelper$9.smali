.class Lcom/miui/internal/widget/SlidingButtonHelper$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/SlidingButtonHelper;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SlidingButtonHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper$9;->this$0:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper$9;->this$0:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-static {v0}, Lcom/miui/internal/widget/SlidingButtonHelper;->access$200(Lcom/miui/internal/widget/SlidingButtonHelper;)I

    move-result v1

    iget-object p0, p0, Lcom/miui/internal/widget/SlidingButtonHelper$9;->this$0:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-static {p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->access$300(Lcom/miui/internal/widget/SlidingButtonHelper;)I

    move-result p0

    if-lt v1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {v0, p0}, Lcom/miui/internal/widget/SlidingButtonHelper;->access$102(Lcom/miui/internal/widget/SlidingButtonHelper;Z)Z

    return-void
.end method
