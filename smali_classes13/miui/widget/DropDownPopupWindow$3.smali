.class Lmiui/widget/DropDownPopupWindow$3;
.super Ljava/lang/Object;
.source "DropDownPopupWindow.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/DropDownPopupWindow;->initPopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/DropDownPopupWindow;


# direct methods
.method constructor <init>(Lmiui/widget/DropDownPopupWindow;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow$3;->this$0:Lmiui/widget/DropDownPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 2

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$3;->this$0:Lmiui/widget/DropDownPopupWindow;

    # getter for: Lmiui/widget/DropDownPopupWindow;->mDismissPending:Z
    invoke-static {v0}, Lmiui/widget/DropDownPopupWindow;->access$500(Lmiui/widget/DropDownPopupWindow;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$3;->this$0:Lmiui/widget/DropDownPopupWindow;

    # invokes: Lmiui/widget/DropDownPopupWindow;->realDismiss()V
    invoke-static {v0}, Lmiui/widget/DropDownPopupWindow;->access$600(Lmiui/widget/DropDownPopupWindow;)V

    :cond_d
    return-void
.end method
