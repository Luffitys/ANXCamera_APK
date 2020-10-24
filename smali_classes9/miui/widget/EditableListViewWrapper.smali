.class public Lmiui/widget/EditableListViewWrapper;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mDelegate:Lcom/miui/internal/widget/EditableListViewDelegate;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-direct {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;-><init>()V

    iput-object v0, p0, Lmiui/widget/EditableListViewWrapper;->mDelegate:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->initialize(Landroid/widget/AbsListView;Ljava/lang/Class;)V

    iget-object p1, p0, Lmiui/widget/EditableListViewWrapper;->mDelegate:Lcom/miui/internal/widget/EditableListViewDelegate;

    new-instance v0, Lmiui/widget/EditableListViewWrapper$1;

    invoke-direct {v0, p0}, Lmiui/widget/EditableListViewWrapper$1;-><init>(Lmiui/widget/EditableListViewWrapper;)V

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->setUpdateListener(Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "absListView is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public clearChoices()V
    .locals 0

    iget-object p0, p0, Lmiui/widget/EditableListViewWrapper;->mDelegate:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->clearChoices()V

    return-void
.end method

.method protected getAdapter()Landroid/widget/ListAdapter;
    .locals 0

    iget-object p0, p0, Lmiui/widget/EditableListViewWrapper;->mDelegate:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getCheckedItemCount()I
    .locals 0

    iget-object p0, p0, Lmiui/widget/EditableListViewWrapper;->mDelegate:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getListView()Landroid/widget/AbsListView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result p0

    return p0
.end method

.method public getCheckedItemIds()[J
    .locals 0

    iget-object p0, p0, Lmiui/widget/EditableListViewWrapper;->mDelegate:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getListView()Landroid/widget/AbsListView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemIds()[J

    move-result-object p0

    return-object p0
.end method

.method public getCheckedItemPosition()I
    .locals 0

    iget-object p0, p0, Lmiui/widget/EditableListViewWrapper;->mDelegate:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getListView()Landroid/widget/AbsListView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result p0

    return p0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 0

    iget-object p0, p0, Lmiui/widget/EditableListViewWrapper;->mDelegate:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object p0

    return-object p0
.end method

.method public isAllItemsChecked()Z
    .locals 0

    iget-object p0, p0, Lmiui/widget/EditableListViewWrapper;->mDelegate:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->isAllItemsChecked()Z

    move-result p0

    return p0
.end method

.method public isInActionMode()Z
    .locals 0

    iget-object p0, p0, Lmiui/widget/EditableListViewWrapper;->mDelegate:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->isInActionMode()Z

    move-result p0

    return p0
.end method

.method public isItemChecked(I)Z
    .locals 0

    iget-object p0, p0, Lmiui/widget/EditableListViewWrapper;->mDelegate:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->isItemChecked(I)Z

    move-result p0

    return p0
.end method

.method public isItemIdChecked(J)Z
    .locals 0

    iget-object p0, p0, Lmiui/widget/EditableListViewWrapper;->mDelegate:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/widget/EditableListViewDelegate;->isItemIdChecked(J)Z

    move-result p0

    return p0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/EditableListViewWrapper;->mDelegate:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAllItemsChecked(Z)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/EditableListViewWrapper;->mDelegate:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->setAllItemsChecked(Z)V

    return-void
.end method

.method public setItemCheckFilter(Lmiui/widget/EditableListView$ItemCheckFilter;)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/EditableListViewWrapper;->mDelegate:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->setItemCheckFilter(Lmiui/widget/EditableListView$ItemCheckFilter;)V

    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/EditableListViewWrapper;->mDelegate:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/widget/EditableListViewDelegate;->setItemChecked(IZ)V

    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/EditableListViewWrapper;->mDelegate:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    return-void
.end method

.method protected updateCheckStatus(Landroid/view/ActionMode;)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/EditableListViewWrapper;->mDelegate:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->updateCheckStatus(Landroid/view/ActionMode;)V

    return-void
.end method

.method protected updateOnScreenCheckedView(Landroid/view/View;IJ)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/EditableListViewWrapper;->mDelegate:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/widget/EditableListViewDelegate;->updateOnScreenCheckedView(Landroid/view/View;IJ)V

    return-void
.end method
