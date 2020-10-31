.class Lmiui/widget/ListPopupWindow$PopupScrollListener;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lmiui/widget/ListPopupWindow;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/ListPopupWindow$PopupScrollListener;->this$0:Lmiui/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/ListPopupWindow;Lmiui/widget/ListPopupWindow$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/widget/ListPopupWindow$PopupScrollListener;-><init>(Lmiui/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 5

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2f

    iget-object v0, p0, Lmiui/widget/ListPopupWindow$PopupScrollListener;->this$0:Lmiui/widget/ListPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lmiui/widget/ListPopupWindow$PopupScrollListener;->this$0:Lmiui/widget/ListPopupWindow;

    # getter for: Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;
    invoke-static {v0}, Lmiui/widget/ListPopupWindow;->access$800(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ArrowPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lmiui/widget/ListPopupWindow$PopupScrollListener;->this$0:Lmiui/widget/ListPopupWindow;

    # getter for: Lmiui/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/widget/ListPopupWindow;->access$1000(Lmiui/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/ListPopupWindow$PopupScrollListener;->this$0:Lmiui/widget/ListPopupWindow;

    # getter for: Lmiui/widget/ListPopupWindow;->mResizePopupRunnable:Lmiui/widget/ListPopupWindow$ResizePopupRunnable;
    invoke-static {v1}, Lmiui/widget/ListPopupWindow;->access$900(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lmiui/widget/ListPopupWindow$PopupScrollListener;->this$0:Lmiui/widget/ListPopupWindow;

    # getter for: Lmiui/widget/ListPopupWindow;->mResizePopupRunnable:Lmiui/widget/ListPopupWindow$ResizePopupRunnable;
    invoke-static {v0}, Lmiui/widget/ListPopupWindow;->access$900(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$ResizePopupRunnable;->run()V

    :cond_2f
    return-void
.end method
