.class Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

.field final synthetic val$impl:Lcom/miui/internal/app/AlertControllerImpl;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;Landroid/widget/ListView;Lcom/miui/internal/app/AlertControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$4;->this$0:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$4;->val$listView:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$4;->val$impl:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$4;->this$0:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object p1, p1, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$4;->val$listView:Landroid/widget/ListView;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p2

    aput-boolean p2, p1, p3

    :cond_0
    iget-object p1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$4;->this$0:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object p1, p1, Lcom/android/internal/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object p2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$4;->val$impl:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {p2}, Lcom/miui/internal/app/AlertControllerImpl;->getDialogInterface()Landroid/content/DialogInterface;

    move-result-object p2

    iget-object p0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$4;->val$listView:Landroid/widget/ListView;

    invoke-virtual {p0, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p0

    invoke-interface {p1, p2, p3, p0}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    return-void
.end method
