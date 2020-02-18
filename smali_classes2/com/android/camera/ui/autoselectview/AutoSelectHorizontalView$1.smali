.class Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView$1;
.super Ljava/lang/Object;
.source "AutoSelectHorizontalView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView$1;->this$0:Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView$1;->this$0:Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;

    invoke-static {v0}, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->access$000(Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView$1;->this$0:Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;

    invoke-static {v0}, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->access$100(Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;)Lcom/android/camera/ui/autoselectview/AutoSelectAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "View"

    const-string v0, "mAutoSelectAdapter  \u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView$1;->this$0:Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->selectedPositionChanged(I)V

    iget-object v0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView$1;->this$0:Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;

    invoke-static {v0}, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->access$300(Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;)Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView$1;->this$0:Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;

    invoke-static {v2}, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->access$200(Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    iget-object p0, p0, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView$1;->this$0:Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;

    invoke-static {p0, v1}, Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;->access$002(Lcom/android/camera/ui/autoselectview/AutoSelectHorizontalView;Z)Z

    :cond_1
    return-void
.end method
