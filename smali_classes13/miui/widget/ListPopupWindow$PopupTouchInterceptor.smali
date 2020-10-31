.class Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupTouchInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lmiui/widget/ListPopupWindow;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiui/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/ListPopupWindow;Lmiui/widget/ListPopupWindow$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Lmiui/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    if-nez v0, :cond_52

    iget-object v3, p0, Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiui/widget/ListPopupWindow;

    # getter for: Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;
    invoke-static {v3}, Lmiui/widget/ListPopupWindow;->access$800(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ArrowPopupWindow;

    move-result-object v3

    if-eqz v3, :cond_52

    iget-object v3, p0, Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiui/widget/ListPopupWindow;

    # getter for: Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;
    invoke-static {v3}, Lmiui/widget/ListPopupWindow;->access$800(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ArrowPopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/widget/ArrowPopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_52

    if-ltz v1, :cond_52

    iget-object v3, p0, Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiui/widget/ListPopupWindow;

    # getter for: Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;
    invoke-static {v3}, Lmiui/widget/ListPopupWindow;->access$800(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ArrowPopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/widget/ArrowPopupWindow;->getContentWidth()I

    move-result v3

    if-ge v1, v3, :cond_52

    if-ltz v2, :cond_52

    iget-object v3, p0, Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiui/widget/ListPopupWindow;

    # getter for: Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;
    invoke-static {v3}, Lmiui/widget/ListPopupWindow;->access$800(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ArrowPopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/widget/ArrowPopupWindow;->getContentHeight()I

    move-result v3

    if-ge v2, v3, :cond_52

    iget-object v3, p0, Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiui/widget/ListPopupWindow;

    # getter for: Lmiui/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lmiui/widget/ListPopupWindow;->access$1000(Lmiui/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiui/widget/ListPopupWindow;

    # getter for: Lmiui/widget/ListPopupWindow;->mResizePopupRunnable:Lmiui/widget/ListPopupWindow$ResizePopupRunnable;
    invoke-static {v4}, Lmiui/widget/ListPopupWindow;->access$900(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v4

    const-wide/16 v5, 0xfa

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_64

    :cond_52
    const/4 v3, 0x1

    if-ne v0, v3, :cond_64

    iget-object v3, p0, Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiui/widget/ListPopupWindow;

    # getter for: Lmiui/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lmiui/widget/ListPopupWindow;->access$1000(Lmiui/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiui/widget/ListPopupWindow;

    # getter for: Lmiui/widget/ListPopupWindow;->mResizePopupRunnable:Lmiui/widget/ListPopupWindow$ResizePopupRunnable;
    invoke-static {v4}, Lmiui/widget/ListPopupWindow;->access$900(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_64
    :goto_64
    const/4 v3, 0x0

    return v3
.end method
