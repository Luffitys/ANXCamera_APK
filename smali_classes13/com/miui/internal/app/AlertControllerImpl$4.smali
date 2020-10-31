.class Lcom/miui/internal/app/AlertControllerImpl$4;
.super Ljava/lang/Object;
.source "AlertControllerImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$selectButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/AlertControllerImpl;Landroid/widget/Button;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl$4;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    iput-object p2, p0, Lcom/miui/internal/app/AlertControllerImpl$4;->val$selectButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/app/AlertControllerImpl$4;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # getter for: Lcom/miui/internal/app/AlertControllerImpl;->mEditableListViewWrapper:Lmiui/widget/EditableListViewWrapper;
    invoke-static {v0}, Lcom/miui/internal/app/AlertControllerImpl;->access$1400(Lcom/miui/internal/app/AlertControllerImpl;)Lmiui/widget/EditableListViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/EditableListViewWrapper;->isAllItemsChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl$4;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    # getter for: Lcom/miui/internal/app/AlertControllerImpl;->mEditableListViewWrapper:Lmiui/widget/EditableListViewWrapper;
    invoke-static {v1}, Lcom/miui/internal/app/AlertControllerImpl;->access$1400(Lcom/miui/internal/app/AlertControllerImpl;)Lmiui/widget/EditableListViewWrapper;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lmiui/widget/EditableListViewWrapper;->setAllItemsChecked(Z)V

    iget-object v1, p0, Lcom/miui/internal/app/AlertControllerImpl$4;->val$selectButton:Landroid/widget/Button;

    if-eqz v0, :cond_1c

    sget v2, Lmiui/R$string;->select_all:I

    goto :goto_1e

    :cond_1c
    sget v2, Lmiui/R$string;->deselect_all:I

    :goto_1e
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    return-void
.end method
