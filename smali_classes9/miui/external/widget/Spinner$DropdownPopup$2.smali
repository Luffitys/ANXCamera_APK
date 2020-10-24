.class Lmiui/external/widget/Spinner$DropdownPopup$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$1:Lmiui/external/widget/Spinner$DropdownPopup;

.field final synthetic val$textAlignment:I

.field final synthetic val$textDirection:I


# direct methods
.method constructor <init>(Lmiui/external/widget/Spinner$DropdownPopup;II)V
    .locals 0

    iput-object p1, p0, Lmiui/external/widget/Spinner$DropdownPopup$2;->this$1:Lmiui/external/widget/Spinner$DropdownPopup;

    iput p2, p0, Lmiui/external/widget/Spinner$DropdownPopup$2;->val$textDirection:I

    iput p3, p0, Lmiui/external/widget/Spinner$DropdownPopup$2;->val$textAlignment:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lmiui/external/widget/Spinner$DropdownPopup$2;->this$1:Lmiui/external/widget/Spinner$DropdownPopup;

    iget-object v1, v0, Lmiui/external/widget/Spinner$DropdownPopup;->this$0:Lmiui/external/widget/Spinner;

    invoke-virtual {v0, v1}, Lmiui/external/widget/Spinner$DropdownPopup;->isVisibleToUser(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lmiui/external/widget/Spinner$DropdownPopup$2;->this$1:Lmiui/external/widget/Spinner$DropdownPopup;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/external/widget/Spinner$DropdownPopup$2;->this$1:Lmiui/external/widget/Spinner$DropdownPopup;

    iget v1, p0, Lmiui/external/widget/Spinner$DropdownPopup$2;->val$textDirection:I

    iget v2, p0, Lmiui/external/widget/Spinner$DropdownPopup$2;->val$textAlignment:I

    iget-object v3, v0, Lmiui/external/widget/Spinner$DropdownPopup;->this$0:Lmiui/external/widget/Spinner;

    invoke-static {v3}, Lmiui/external/widget/Spinner;->access$400(Lmiui/external/widget/Spinner;)F

    move-result v3

    iget-object p0, p0, Lmiui/external/widget/Spinner$DropdownPopup$2;->this$1:Lmiui/external/widget/Spinner$DropdownPopup;

    iget-object p0, p0, Lmiui/external/widget/Spinner$DropdownPopup;->this$0:Lmiui/external/widget/Spinner;

    invoke-static {p0}, Lmiui/external/widget/Spinner;->access$500(Lmiui/external/widget/Spinner;)F

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Lmiui/external/widget/Spinner$DropdownPopup;->show(IIFF)V

    :goto_0
    return-void
.end method
