.class public Lmiui/widget/EditableListView;
.super Landroid/widget/ListView;
.source ""


# instance fields
.field private mDelegate:Lcom/miui/internal/widget/EditableListViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lmiui/widget/EditableListView;->getDelegate()Lcom/miui/internal/widget/EditableListViewDelegate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lmiui/widget/EditableListView;->getDelegate()Lcom/miui/internal/widget/EditableListViewDelegate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lmiui/widget/EditableListView;->getDelegate()Lcom/miui/internal/widget/EditableListViewDelegate;

    return-void
.end method

.method private getDelegate()Lcom/miui/internal/widget/EditableListViewDelegate;
    .locals 2

    iget-object v0, p0, Lmiui/widget/EditableListView;->mDelegate:Lcom/miui/internal/widget/EditableListViewDelegate;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-direct {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;-><init>()V

    iput-object v0, p0, Lmiui/widget/EditableListView;->mDelegate:Lcom/miui/internal/widget/EditableListViewDelegate;

    const-class v1, Landroid/widget/ListView;

    invoke-virtual {v0, p0, v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->initialize(Landroid/widget/AbsListView;Ljava/lang/Class;)V

    iget-object v0, p0, Lmiui/widget/EditableListView;->mDelegate:Lcom/miui/internal/widget/EditableListViewDelegate;

    new-instance v1, Lmiui/widget/EditableListView$1;

    invoke-direct {v1, p0}, Lmiui/widget/EditableListView$1;-><init>(Lmiui/widget/EditableListView;)V

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->setUpdateListener(Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;)V

    :cond_0
    iget-object p0, p0, Lmiui/widget/EditableListView;->mDelegate:Lcom/miui/internal/widget/EditableListViewDelegate;

    return-object p0
.end method


# virtual methods
.method public clearChoices()V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/EditableListView;->getDelegate()Lcom/miui/internal/widget/EditableListViewDelegate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->clearChoices()V

    return-void
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 0

    invoke-direct {p0}, Lmiui/widget/EditableListView;->getDelegate()Lcom/miui/internal/widget/EditableListViewDelegate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object p0

    return-object p0
.end method

.method public isAllItemsChecked()Z
    .locals 0

    invoke-direct {p0}, Lmiui/widget/EditableListView;->getDelegate()Lcom/miui/internal/widget/EditableListViewDelegate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->isAllItemsChecked()Z

    move-result p0

    return p0
.end method

.method public isInActionMode()Z
    .locals 0

    invoke-direct {p0}, Lmiui/widget/EditableListView;->getDelegate()Lcom/miui/internal/widget/EditableListViewDelegate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->isInActionMode()Z

    move-result p0

    return p0
.end method

.method public isItemChecked(I)Z
    .locals 0

    invoke-direct {p0}, Lmiui/widget/EditableListView;->getDelegate()Lcom/miui/internal/widget/EditableListViewDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->isItemChecked(I)Z

    move-result p0

    return p0
.end method

.method public isItemIdChecked(J)Z
    .locals 0

    invoke-direct {p0}, Lmiui/widget/EditableListView;->getDelegate()Lcom/miui/internal/widget/EditableListViewDelegate;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/widget/EditableListViewDelegate;->isItemIdChecked(J)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lmiui/widget/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/EditableListView;->getDelegate()Lcom/miui/internal/widget/EditableListViewDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAllItemsChecked(Z)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/EditableListView;->getDelegate()Lcom/miui/internal/widget/EditableListViewDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->setAllItemsChecked(Z)V

    return-void
.end method

.method public setItemCheckFilter(Lmiui/widget/EditableListView$ItemCheckFilter;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/EditableListView;->getDelegate()Lcom/miui/internal/widget/EditableListViewDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->setItemCheckFilter(Lmiui/widget/EditableListView$ItemCheckFilter;)V

    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/EditableListView;->getDelegate()Lcom/miui/internal/widget/EditableListViewDelegate;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/widget/EditableListViewDelegate;->setItemChecked(IZ)V

    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/EditableListView;->getDelegate()Lcom/miui/internal/widget/EditableListViewDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    return-void
.end method

.method protected updateCheckStatus(Landroid/view/ActionMode;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/EditableListView;->getDelegate()Lcom/miui/internal/widget/EditableListViewDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->updateCheckStatus(Landroid/view/ActionMode;)V

    return-void
.end method

.method protected updateOnScreenCheckedView(Landroid/view/View;IJ)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/EditableListView;->getDelegate()Lcom/miui/internal/widget/EditableListViewDelegate;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/widget/EditableListViewDelegate;->updateOnScreenCheckedView(Landroid/view/View;IJ)V

    return-void
.end method
