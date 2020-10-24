.class Lmiui/widget/DynamicListView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lmiui/widget/DynamicListView;


# direct methods
.method constructor <init>(Lmiui/widget/DynamicListView;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/DynamicListView$3;->this$0:Lmiui/widget/DynamicListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lmiui/widget/DynamicListView$3;->this$0:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$600(Lmiui/widget/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DynamicListView$3;->this$0:Lmiui/widget/DynamicListView;

    invoke-static {v0}, Lmiui/widget/DynamicListView;->access$700(Lmiui/widget/DynamicListView;)I

    move-result v1

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->smoothScrollBy(II)V

    iget-object v0, p0, Lmiui/widget/DynamicListView$3;->this$0:Lmiui/widget/DynamicListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lmiui/widget/DynamicListView$3;->this$0:Lmiui/widget/DynamicListView;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
