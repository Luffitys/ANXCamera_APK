.class Lcom/android/camera/fragment/vv/FragmentVVPreviewItem$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;

.field final synthetic val$init:Z


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem$1;->this$0:Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;

    iput-boolean p2, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem$1;->val$init:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem$1;->this$0:Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;

    invoke-static {v0}, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->access$000(Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;)Lcom/android/camera/fragment/vv/VVItem;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/camera/resource/BaseResourceItem;->setState(I)V

    iget-boolean v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem$1;->val$init:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem$1;->this$0:Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;

    invoke-static {v0}, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->access$100(Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem$1;->this$0:Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;

    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/FragmentVVPreviewItem;->startPlay()V

    :cond_0
    return-void
.end method
