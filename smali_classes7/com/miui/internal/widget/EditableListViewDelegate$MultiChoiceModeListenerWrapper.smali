.class Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/widget/EditableListView$MultiChoiceModeListener;


# instance fields
.field private mActionModeAnimationListener:Lmiui/view/ActionModeAnimationListener;

.field private mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

.field final synthetic this$0:Lcom/miui/internal/widget/EditableListViewDelegate;


# direct methods
.method public constructor <init>(Lcom/miui/internal/widget/EditableListViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;

    invoke-direct {p1, p0}, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;-><init>(Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;)V

    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->mActionModeAnimationListener:Lmiui/view/ActionModeAnimationListener;

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x1020019

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102001a

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->isAllItemsChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->setAllItemsChecked(Z)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {p0, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V
    .locals 1

    iget-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    instance-of v0, p1, Lmiui/widget/EditableListView$MultiChoiceModeListener;

    if-eqz v0, :cond_0

    check-cast p1, Lmiui/widget/EditableListView$MultiChoiceModeListener;

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$300(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/view/ActionMode;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Lmiui/widget/EditableListView$MultiChoiceModeListener;->onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V

    :cond_0
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$402(Lcom/miui/internal/widget/EditableListViewDelegate;I)I

    sget v0, Lmiui/R$string;->select_item:I

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {p2, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$302(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object p2, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {p2}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$300(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/view/ActionMode;

    move-result-object p2

    check-cast p2, Lmiui/view/EditActionMode;

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->mActionModeAnimationListener:Lmiui/view/ActionModeAnimationListener;

    invoke-interface {p2, v0}, Lmiui/view/EditActionMode;->addAnimationListener(Lmiui/view/ActionModeAnimationListener;)V

    iget-object p2, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {p2}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$500(Lcom/miui/internal/widget/EditableListViewDelegate;)Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;->updateCheckStatus(Landroid/view/ActionMode;)V

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$202(Lcom/miui/internal/widget/EditableListViewDelegate;I)I

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$402(Lcom/miui/internal/widget/EditableListViewDelegate;I)I

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {p0, p1}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 10

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$600(Lcom/miui/internal/widget/EditableListViewDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$700(Lcom/miui/internal/widget/EditableListViewDelegate;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$100(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lt p2, v0, :cond_5

    add-int/2addr v1, v0

    if-ge p2, v1, :cond_5

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$100(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    if-gt p2, v1, :cond_5

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$100(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt p2, v1, :cond_5

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    sub-int v0, p2, v0

    invoke-static {v1, v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$800(Lcom/miui/internal/widget/EditableListViewDelegate;I)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz p5, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    invoke-static {v0, v3}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$412(Lcom/miui/internal/widget/EditableListViewDelegate;I)I

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$100(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v3}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$100(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v3}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$500(Lcom/miui/internal/widget/EditableListViewDelegate;)Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    move-result-object v3

    invoke-interface {v3, v0, p2, p3, p4}, Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;->updateOnScreenCheckedView(Landroid/view/View;IJ)V

    iget-object v3, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {v3}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$500(Lcom/miui/internal/widget/EditableListViewDelegate;)Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;->updateCheckStatus(Landroid/view/ActionMode;)V

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_4
    iget-object v4, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-object v5, p1

    move v6, p2

    move-wide v7, p3

    move v9, p5

    invoke-interface/range {v4 .. v9}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    iget-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$200(Lcom/miui/internal/widget/EditableListViewDelegate;)I

    move-result p1

    if-ne p1, v2, :cond_5

    iget-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$100(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object p1

    iget-object p3, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {p3}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$100(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-static {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$202(Lcom/miui/internal/widget/EditableListViewDelegate;I)I

    :cond_5
    :goto_2
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {p0, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    return-void
.end method
