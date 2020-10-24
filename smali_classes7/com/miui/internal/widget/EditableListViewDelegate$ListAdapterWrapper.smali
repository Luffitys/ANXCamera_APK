.class Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source ""

# interfaces
.implements Landroid/widget/WrapperListAdapter;


# instance fields
.field private mWrapped:Landroid/widget/ListAdapter;

.field final synthetic this$0:Lcom/miui/internal/widget/EditableListViewDelegate;


# direct methods
.method public constructor <init>(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/widget/ListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {p0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result p0

    return p0
.end method

.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result p0

    return p0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    instance-of v1, v0, Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {p0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {p0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {p0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p0

    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {p3, p2}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$000(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/view/View;)Landroid/widget/CheckBox;

    move-result-object p3

    if-eqz p3, :cond_5

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$100(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChoiceMode()I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {v1, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->isItemChecked(I)Z

    move-result p1

    const/4 v1, 0x3

    const/16 v2, 0x8

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$300(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/view/ActionMode;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    if-ne v0, p0, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {p3, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_2
    invoke-virtual {p3}, Landroid/widget/CheckBox;->getVisibility()I

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p3}, Landroid/widget/CheckBox;->getTranslationX()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p0, :cond_3

    invoke-virtual {p3}, Landroid/widget/CheckBox;->getAlpha()F

    move-result p0

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_4

    :cond_3
    invoke-virtual {p3, v0}, Landroid/widget/CheckBox;->setTranslationX(F)V

    invoke-virtual {p3, v1}, Landroid/widget/CheckBox;->setAlpha(F)V

    :cond_4
    invoke-virtual {p3, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_5
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {p0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result p0

    return p0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method public hasStableIds()Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {p0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {p0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public isEnabled(I)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {p0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {p0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {p0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
