.class Lmiui/widget/ImmersionListPopupWindow$3;
.super Ljava/lang/Object;
.source "ImmersionListPopupWindow.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/ImmersionListPopupWindow;-><init>(Landroid/content/Context;)V
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

    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow$3;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 2

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$3;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    # getter for: Lmiui/widget/ImmersionListPopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;
    invoke-static {v0}, Lmiui/widget/ImmersionListPopupWindow;->access$100(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$3;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    # getter for: Lmiui/widget/ImmersionListPopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;
    invoke-static {v0}, Lmiui/widget/ImmersionListPopupWindow;->access$100(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_11
    return-void
.end method
