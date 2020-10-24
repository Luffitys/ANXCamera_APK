.class Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$1;
.super Landroid/widget/ArrayAdapter;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;Landroid/content/Context;II[Ljava/lang/Object;Landroid/widget/ListView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$1;->this$0:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p6, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$1;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$1;->this$0:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-boolean v0, p3, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mEditMode:Z

    if-nez v0, :cond_0

    iget-object p3, p3, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz p3, :cond_0

    aget-boolean p3, p3, p1

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$1;->val$listView:Landroid/widget/ListView;

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    return-object p2
.end method
