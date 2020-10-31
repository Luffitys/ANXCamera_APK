.class Lcom/miui/internal/widget/SlidingButtonHelper$9;
.super Ljava/lang/Object;
.source "SlidingButtonHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/widget/SlidingButtonHelper;->animateToState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/SlidingButtonHelper;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/SlidingButtonHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/SlidingButtonHelper$9;->this$0:Lcom/miui/internal/widget/SlidingButtonHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/widget/SlidingButtonHelper$9;->this$0:Lcom/miui/internal/widget/SlidingButtonHelper;

    # getter for: Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderOffset:I
    invoke-static {v0}, Lcom/miui/internal/widget/SlidingButtonHelper;->access$200(Lcom/miui/internal/widget/SlidingButtonHelper;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/internal/widget/SlidingButtonHelper$9;->this$0:Lcom/miui/internal/widget/SlidingButtonHelper;

    # getter for: Lcom/miui/internal/widget/SlidingButtonHelper;->mSliderPositionEnd:I
    invoke-static {v2}, Lcom/miui/internal/widget/SlidingButtonHelper;->access$300(Lcom/miui/internal/widget/SlidingButtonHelper;)I

    move-result v2

    if-lt v1, v2, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    # setter for: Lcom/miui/internal/widget/SlidingButtonHelper;->mAnimChecked:Z
    invoke-static {v0, v1}, Lcom/miui/internal/widget/SlidingButtonHelper;->access$102(Lcom/miui/internal/widget/SlidingButtonHelper;Z)Z

    return-void
.end method
