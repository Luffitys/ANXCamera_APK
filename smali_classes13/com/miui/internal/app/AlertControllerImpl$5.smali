.class Lcom/miui/internal/app/AlertControllerImpl$5;
.super Ljava/lang/Object;
.source "AlertControllerImpl.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/app/AlertControllerImpl;->setupListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/app/AlertControllerImpl;

.field final synthetic val$wrapped:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/AlertControllerImpl;Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl$5;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl$5;->val$wrapped:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl$5;->val$wrapped:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl$5;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # getter for: Lcom/miui/internal/app/AlertControllerImpl;->mButtonSelect:Landroid/widget/Button;
    invoke-static {v0}, Lcom/miui/internal/app/AlertControllerImpl;->access$1500(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl$5;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # getter for: Lcom/miui/internal/app/AlertControllerImpl;->mEditableListViewWrapper:Lmiui/widget/EditableListViewWrapper;
    invoke-static {v1}, Lcom/miui/internal/app/AlertControllerImpl;->access$1400(Lcom/miui/internal/app/AlertControllerImpl;)Lmiui/widget/EditableListViewWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/widget/EditableListViewWrapper;->isAllItemsChecked()Z

    move-result v1

    if-eqz v1, :cond_1e

    sget v1, Lmiui/R$string;->deselect_all:I

    goto :goto_20

    :cond_1e
    sget v1, Lmiui/R$string;->select_all:I

    :goto_20
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method
