.class Lmiui/widget/ListPopupWindow$ResizePopupRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lmiui/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lmiui/widget/ListPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lmiui/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/ListPopupWindow;Lmiui/widget/ListPopupWindow$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Lmiui/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lmiui/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lmiui/widget/ListPopupWindow;

    invoke-static {v0}, Lmiui/widget/ListPopupWindow;->access$700(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lmiui/widget/ListPopupWindow;

    invoke-static {v0}, Lmiui/widget/ListPopupWindow;->access$700(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lmiui/widget/ListPopupWindow;

    invoke-static {v1}, Lmiui/widget/ListPopupWindow;->access$700(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ListPopupWindow$DropDownListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lmiui/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lmiui/widget/ListPopupWindow;

    invoke-static {v0}, Lmiui/widget/ListPopupWindow;->access$700(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lmiui/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lmiui/widget/ListPopupWindow;

    iget v2, v1, Lmiui/widget/ListPopupWindow;->mListItemExpandMaximum:I

    if-gt v0, v2, :cond_0

    invoke-static {v1}, Lmiui/widget/ListPopupWindow;->access$800(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ArrowPopupWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object p0, p0, Lmiui/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lmiui/widget/ListPopupWindow;

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->show()V

    :cond_0
    return-void
.end method
