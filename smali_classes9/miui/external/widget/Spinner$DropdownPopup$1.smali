.class Lmiui/external/widget/Spinner$DropdownPopup$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$1:Lmiui/external/widget/Spinner$DropdownPopup;

.field final synthetic val$this$0:Lmiui/external/widget/Spinner;


# direct methods
.method constructor <init>(Lmiui/external/widget/Spinner$DropdownPopup;Lmiui/external/widget/Spinner;)V
    .locals 0

    iput-object p1, p0, Lmiui/external/widget/Spinner$DropdownPopup$1;->this$1:Lmiui/external/widget/Spinner$DropdownPopup;

    iput-object p2, p0, Lmiui/external/widget/Spinner$DropdownPopup$1;->val$this$0:Lmiui/external/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object p1, p0, Lmiui/external/widget/Spinner$DropdownPopup$1;->this$1:Lmiui/external/widget/Spinner$DropdownPopup;

    iget-object p1, p1, Lmiui/external/widget/Spinner$DropdownPopup;->this$0:Lmiui/external/widget/Spinner;

    invoke-virtual {p1, p3}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object p1, p0, Lmiui/external/widget/Spinner$DropdownPopup$1;->this$1:Lmiui/external/widget/Spinner$DropdownPopup;

    iget-object p1, p1, Lmiui/external/widget/Spinner$DropdownPopup;->this$0:Lmiui/external/widget/Spinner;

    invoke-static {p1}, Lmiui/external/widget/Spinner;->access$300(Lmiui/external/widget/Spinner;)V

    iget-object p1, p0, Lmiui/external/widget/Spinner$DropdownPopup$1;->this$1:Lmiui/external/widget/Spinner$DropdownPopup;

    iget-object p1, p1, Lmiui/external/widget/Spinner$DropdownPopup;->this$0:Lmiui/external/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/external/widget/Spinner$DropdownPopup$1;->this$1:Lmiui/external/widget/Spinner$DropdownPopup;

    iget-object p4, p1, Lmiui/external/widget/Spinner$DropdownPopup;->this$0:Lmiui/external/widget/Spinner;

    iget-object p1, p1, Lmiui/external/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    invoke-virtual {p4, p2, p3, v0, v1}, Landroid/widget/Spinner;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    iget-object p0, p0, Lmiui/external/widget/Spinner$DropdownPopup$1;->this$1:Lmiui/external/widget/Spinner$DropdownPopup;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
