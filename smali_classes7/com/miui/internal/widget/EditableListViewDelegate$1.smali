.class Lcom/miui/internal/widget/EditableListViewDelegate$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/EditableListViewDelegate;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/EditableListViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$1;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateCheckStatus(Landroid/view/ActionMode;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$1;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->updateCheckStatus(Landroid/view/ActionMode;)V

    return-void
.end method

.method public updateOnScreenCheckedView(Landroid/view/View;IJ)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$1;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/widget/EditableListViewDelegate;->updateOnScreenCheckedView(Landroid/view/View;IJ)V

    return-void
.end method
