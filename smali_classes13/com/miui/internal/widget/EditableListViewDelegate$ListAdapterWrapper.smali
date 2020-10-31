.class Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "EditableListViewDelegate.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/EditableListViewDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapterWrapper"
.end annotation


# instance fields
.field private mWrapped:Landroid/widget/ListAdapter;

.field final synthetic this$0:Lcom/miui/internal/widget/EditableListViewDelegate;


# direct methods
.method public constructor <init>(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/widget/ListAdapter;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    instance-of v1, v0, Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_d

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_d
    invoke-super {p0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # invokes: Lcom/miui/internal/widget/EditableListViewDelegate;->findCheckBoxByView(Landroid/view/View;)Landroid/widget/CheckBox;
    invoke-static {v1, v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$000(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/view/View;)Landroid/widget/CheckBox;

    move-result-object v1

    if-eqz v1, :cond_58

    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;
    invoke-static {v2}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$100(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChoiceMode()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {v3, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->isItemChecked(I)Z

    move-result v3

    const/4 v4, 0x3

    const/16 v5, 0x8

    if-ne v2, v4, :cond_30

    iget-object v4, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v4}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$300(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/view/ActionMode;

    move-result-object v4

    if-eqz v4, :cond_2c

    const/4 v5, 0x0

    :cond_2c
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_36

    :cond_30
    const/4 v4, 0x1

    if-ne v2, v4, :cond_36

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_36
    :goto_36
    invoke-virtual {v1}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v4

    if-nez v4, :cond_55

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getTranslationX()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v4, :cond_4f

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getAlpha()F

    move-result v4

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_55

    :cond_4f
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setTranslationX(F)V

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setAlpha(F)V

    :cond_55
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_58
    return-object v0
.end method

.method public getViewTypeCount()I
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$ListAdapterWrapper;->mWrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
