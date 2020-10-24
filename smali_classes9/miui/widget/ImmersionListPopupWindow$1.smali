.class Lmiui/widget/ImmersionListPopupWindow$1;
.super Landroid/database/DataSetObserver;
.source ""


# instance fields
.field final synthetic this$0:Lmiui/widget/ImmersionListPopupWindow;


# direct methods
.method constructor <init>(Lmiui/widget/ImmersionListPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow$1;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$1;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/widget/ImmersionListPopupWindow;->access$002(Lmiui/widget/ImmersionListPopupWindow;Z)Z

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$1;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$1;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ImmersionListPopupWindow;->computePopupContentWidth()I

    move-result v1

    iget-object p0, p0, Lmiui/widget/ImmersionListPopupWindow$1;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/PopupWindow;->update(II)V

    :cond_0
    return-void
.end method
