.class Lmiui/notification/SwipeHelper$1;
.super Ljava/lang/Object;
.source "SwipeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/notification/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/notification/SwipeHelper;


# direct methods
.method constructor <init>(Lmiui/notification/SwipeHelper;)V
    .registers 2

    iput-object p1, p0, Lmiui/notification/SwipeHelper$1;->this$0:Lmiui/notification/SwipeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lmiui/notification/SwipeHelper$1;->this$0:Lmiui/notification/SwipeHelper;

    # getter for: Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;
    invoke-static {v0}, Lmiui/notification/SwipeHelper;->access$000(Lmiui/notification/SwipeHelper;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lmiui/notification/SwipeHelper$1;->this$0:Lmiui/notification/SwipeHelper;

    # getter for: Lmiui/notification/SwipeHelper;->mLongPressSent:Z
    invoke-static {v0}, Lmiui/notification/SwipeHelper;->access$100(Lmiui/notification/SwipeHelper;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lmiui/notification/SwipeHelper$1;->this$0:Lmiui/notification/SwipeHelper;

    const/4 v1, 0x1

    # setter for: Lmiui/notification/SwipeHelper;->mLongPressSent:Z
    invoke-static {v0, v1}, Lmiui/notification/SwipeHelper;->access$102(Lmiui/notification/SwipeHelper;Z)Z

    iget-object v0, p0, Lmiui/notification/SwipeHelper$1;->this$0:Lmiui/notification/SwipeHelper;

    # getter for: Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;
    invoke-static {v0}, Lmiui/notification/SwipeHelper;->access$000(Lmiui/notification/SwipeHelper;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lmiui/notification/SwipeHelper$1;->this$0:Lmiui/notification/SwipeHelper;

    # getter for: Lmiui/notification/SwipeHelper;->mLongPressListener:Landroid/view/View$OnLongClickListener;
    invoke-static {v0}, Lmiui/notification/SwipeHelper;->access$200(Lmiui/notification/SwipeHelper;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lmiui/notification/SwipeHelper$1;->this$0:Lmiui/notification/SwipeHelper;

    # getter for: Lmiui/notification/SwipeHelper;->mCurrView:Landroid/view/View;
    invoke-static {v1}, Lmiui/notification/SwipeHelper;->access$000(Lmiui/notification/SwipeHelper;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_2f
    return-void
.end method
