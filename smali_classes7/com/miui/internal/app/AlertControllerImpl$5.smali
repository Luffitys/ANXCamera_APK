.class Lcom/miui/internal/app/AlertControllerImpl$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/app/AlertControllerImpl;

.field final synthetic val$wrapped:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/AlertControllerImpl;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl$5;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl$5;->val$wrapped:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl$5;->val$wrapped:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    iget-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl$5;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {p1}, Lcom/miui/internal/app/AlertControllerImpl;->access$1500(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl$5;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {p0}, Lcom/miui/internal/app/AlertControllerImpl;->access$1400(Lcom/miui/internal/app/AlertControllerImpl;)Lmiui/widget/EditableListViewWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/widget/EditableListViewWrapper;->isAllItemsChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lmiui/R$string;->deselect_all:I

    goto :goto_0

    :cond_0
    sget p0, Lmiui/R$string;->select_all:I

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setText(I)V

    return-void
.end method
