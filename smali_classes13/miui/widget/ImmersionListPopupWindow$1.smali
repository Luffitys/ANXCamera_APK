.class Lmiui/widget/ImmersionListPopupWindow$1;
.super Landroid/database/DataSetObserver;
.source "ImmersionListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ImmersionListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/ImmersionListPopupWindow;


# direct methods
.method constructor <init>(Lmiui/widget/ImmersionListPopupWindow;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow$1;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 4

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$1;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    const/4 v1, 0x0

    # setter for: Lmiui/widget/ImmersionListPopupWindow;->mHasContentWidth:Z
    invoke-static {v0, v1}, Lmiui/widget/ImmersionListPopupWindow;->access$002(Lmiui/widget/ImmersionListPopupWindow;Z)Z

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$1;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ImmersionListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$1;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ImmersionListPopupWindow;->computePopupContentWidth()I

    move-result v1

    iget-object v2, p0, Lmiui/widget/ImmersionListPopupWindow$1;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    invoke-virtual {v2}, Lmiui/widget/ImmersionListPopupWindow;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lmiui/widget/ImmersionListPopupWindow;->update(II)V

    :cond_1d
    return-void
.end method
