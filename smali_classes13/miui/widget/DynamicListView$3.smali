.class Lmiui/widget/DynamicListView$3;
.super Ljava/lang/Object;
.source "DynamicListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DynamicListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/DynamicListView;


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/DynamicListView$3;->this$0:Lmiui/widget/DynamicListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lmiui/widget/DynamicListView$3;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mIsMobileScrolling:Z
    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$600(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lmiui/widget/DynamicListView$3;->this$0:Lmiui/widget/DynamicListView;

    # getter for: Lmiui/widget/DynamicListView;->mSmoothScrollAmountAtEdge:I
    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$700(Lmiui/widget/DynamicListView;)I

    move-result v1

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lmiui/widget/DynamicListView;->smoothScrollBy(II)V

    iget-object v0, p0, Lmiui/widget/DynamicListView$3;->this$0:Lmiui/widget/DynamicListView;

    invoke-virtual {v0, p0}, Lmiui/widget/DynamicListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lmiui/widget/DynamicListView$3;->this$0:Lmiui/widget/DynamicListView;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, p0, v1, v2}, Lmiui/widget/DynamicListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1f
    return-void
.end method
