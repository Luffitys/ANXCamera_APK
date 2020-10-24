.class Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$1;->this$0:Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment$1;->this$0:Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment;->access$002(Lcom/android/camera/fragment/beauty/LiveBeautyFilterFragment;Z)Z

    return-void
.end method
