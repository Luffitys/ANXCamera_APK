.class Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$1;
.super Landroid/widget/ArrayAdapter;
.source "AlertControllerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->createMultiChoiceListAdapter(Landroid/widget/ListView;ILcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;Landroid/content/Context;II[Ljava/lang/Object;Landroid/widget/ListView;)V
    .registers 7

    iput-object p1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$1;->this$0:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iput-object p6, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$1;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$1;->this$0:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-boolean v1, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mEditMode:Z

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$1;->this$0:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCheckedItems:[Z

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$1;->this$0:Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;

    iget-object v1, v1, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;->mCheckedItems:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_1e

    iget-object v2, p0, Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams$1;->val$listView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_1e
    return-object v0
.end method
