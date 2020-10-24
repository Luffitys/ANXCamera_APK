.class Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lmiui/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lmiui/widget/ListPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiui/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/ListPopupWindow;Lmiui/widget/ListPopupWindow$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Lmiui/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    if-nez p1, :cond_0

    iget-object v1, p0, Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiui/widget/ListPopupWindow;

    invoke-static {v1}, Lmiui/widget/ListPopupWindow;->access$800(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ArrowPopupWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiui/widget/ListPopupWindow;

    invoke-static {v1}, Lmiui/widget/ListPopupWindow;->access$800(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ArrowPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiui/widget/ListPopupWindow;

    invoke-static {v1}, Lmiui/widget/ListPopupWindow;->access$800(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ArrowPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/widget/ArrowPopupWindow;->getContentWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiui/widget/ListPopupWindow;

    invoke-static {v0}, Lmiui/widget/ListPopupWindow;->access$800(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ArrowPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->getContentHeight()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object p1, p0, Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiui/widget/ListPopupWindow;

    invoke-static {p1}, Lmiui/widget/ListPopupWindow;->access$1000(Lmiui/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiui/widget/ListPopupWindow;

    invoke-static {p0}, Lmiui/widget/ListPopupWindow;->access$900(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object p0

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiui/widget/ListPopupWindow;

    invoke-static {p1}, Lmiui/widget/ListPopupWindow;->access$1000(Lmiui/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiui/widget/ListPopupWindow;

    invoke-static {p0}, Lmiui/widget/ListPopupWindow;->access$900(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
