.class Lmiui/widget/ImmersionListPopupWindow$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic this$0:Lmiui/widget/ImmersionListPopupWindow;


# direct methods
.method constructor <init>(Lmiui/widget/ImmersionListPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow$3;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$3;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    invoke-static {v0}, Lmiui/widget/ImmersionListPopupWindow;->access$100(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiui/widget/ImmersionListPopupWindow$3;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    invoke-static {p0}, Lmiui/widget/ImmersionListPopupWindow;->access$100(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object p0

    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method
