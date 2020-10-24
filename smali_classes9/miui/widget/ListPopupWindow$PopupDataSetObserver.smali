.class Lmiui/widget/ListPopupWindow$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source ""


# instance fields
.field final synthetic this$0:Lmiui/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lmiui/widget/ListPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Lmiui/widget/ListPopupWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/ListPopupWindow;Lmiui/widget/ListPopupWindow$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Lmiui/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lmiui/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Lmiui/widget/ListPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiui/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Lmiui/widget/ListPopupWindow;

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->show()V

    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object p0, p0, Lmiui/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Lmiui/widget/ListPopupWindow;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/ListPopupWindow;->dismiss(Z)V

    return-void
.end method
