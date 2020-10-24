.class Lcom/android/camera/fragment/vv/FragmentVVWorkspace$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$2;->this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$2;->this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;

    invoke-static {v0}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->access$400(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)Lcom/android/camera/visibilityutils/calculator/ListItemsVisibilityCalculator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$2;->this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;

    invoke-static {v1}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->access$200(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$2;->this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;

    invoke-static {v2}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->access$300(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$2;->this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;

    invoke-static {p0}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->access$300(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p0

    invoke-interface {v0, v1, v2, p0}, Lcom/android/camera/visibilityutils/calculator/ListItemsVisibilityCalculator;->onScrollStateIdle(Lcom/android/camera/visibilityutils/scroll_utils/ItemsPositionGetter;II)V

    return-void
.end method
