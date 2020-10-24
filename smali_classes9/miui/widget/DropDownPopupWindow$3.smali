.class Lmiui/widget/DropDownPopupWindow$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic this$0:Lmiui/widget/DropDownPopupWindow;


# direct methods
.method constructor <init>(Lmiui/widget/DropDownPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow$3;->this$0:Lmiui/widget/DropDownPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$3;->this$0:Lmiui/widget/DropDownPopupWindow;

    invoke-static {v0}, Lmiui/widget/DropDownPopupWindow;->access$500(Lmiui/widget/DropDownPopupWindow;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lmiui/widget/DropDownPopupWindow$3;->this$0:Lmiui/widget/DropDownPopupWindow;

    invoke-static {p0}, Lmiui/widget/DropDownPopupWindow;->access$600(Lmiui/widget/DropDownPopupWindow;)V

    :cond_0
    return-void
.end method
