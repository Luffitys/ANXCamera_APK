.class Lmiui/widget/EditableListViewWrapper$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;


# instance fields
.field final synthetic this$0:Lmiui/widget/EditableListViewWrapper;


# direct methods
.method constructor <init>(Lmiui/widget/EditableListViewWrapper;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/EditableListViewWrapper$1;->this$0:Lmiui/widget/EditableListViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateCheckStatus(Landroid/view/ActionMode;)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/EditableListViewWrapper$1;->this$0:Lmiui/widget/EditableListViewWrapper;

    invoke-virtual {p0, p1}, Lmiui/widget/EditableListViewWrapper;->updateCheckStatus(Landroid/view/ActionMode;)V

    return-void
.end method

.method public updateOnScreenCheckedView(Landroid/view/View;IJ)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/EditableListViewWrapper$1;->this$0:Lmiui/widget/EditableListViewWrapper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lmiui/widget/EditableListViewWrapper;->updateOnScreenCheckedView(Landroid/view/View;IJ)V

    return-void
.end method
