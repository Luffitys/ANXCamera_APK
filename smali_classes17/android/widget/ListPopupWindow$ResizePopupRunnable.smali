.class Landroid/widget/ListPopupWindow$ResizePopupRunnable;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizePopupRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Landroid/widget/ListPopupWindow;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Landroid/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    # getter for: Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;
    invoke-static {v0}, Landroid/widget/ListPopupWindow;->access$500(Landroid/widget/ListPopupWindow;)Landroid/widget/DropDownListView;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    # getter for: Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;
    invoke-static {v0}, Landroid/widget/ListPopupWindow;->access$500(Landroid/widget/ListPopupWindow;)Landroid/widget/DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    # getter for: Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;
    invoke-static {v0}, Landroid/widget/ListPopupWindow;->access$500(Landroid/widget/ListPopupWindow;)Landroid/widget/DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    # getter for: Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;
    invoke-static {v1}, Landroid/widget/ListPopupWindow;->access$500(Landroid/widget/ListPopupWindow;)Landroid/widget/DropDownListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/DropDownListView;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_47

    iget-object v0, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    # getter for: Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;
    invoke-static {v0}, Landroid/widget/ListPopupWindow;->access$500(Landroid/widget/ListPopupWindow;)Landroid/widget/DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    iget v1, v1, Landroid/widget/ListPopupWindow;->mListItemExpandMaximum:I

    if-gt v0, v1, :cond_47

    iget-object v0, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    iget-object v0, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    :cond_47
    return-void
.end method
