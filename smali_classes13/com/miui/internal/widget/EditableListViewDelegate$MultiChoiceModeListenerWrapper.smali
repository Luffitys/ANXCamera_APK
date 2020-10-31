.class Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;
.super Ljava/lang/Object;
.source "EditableListViewDelegate.java"

# interfaces
.implements Lmiui/widget/EditableListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/EditableListViewDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiChoiceModeListenerWrapper"
.end annotation


# instance fields
.field private mActionModeAnimationListener:Lmiui/view/ActionModeAnimationListener;

.field private mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

.field final synthetic this$0:Lcom/miui/internal/widget/EditableListViewDelegate;


# direct methods
.method public constructor <init>(Lcom/miui/internal/widget/EditableListViewDelegate;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;

    invoke-direct {p1, p0}, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;-><init>(Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;)V

    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->mActionModeAnimationListener:Lmiui/view/ActionModeAnimationListener;

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 5

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x1020019

    if-ne v0, v1, :cond_d

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_21

    :cond_d
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102001a

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->isAllItemsChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->setAllItemsChecked(Z)V

    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    instance-of v1, v0, Lmiui/widget/EditableListView$MultiChoiceModeListener;

    if-eqz v1, :cond_12

    move-object v1, v0

    check-cast v1, Lmiui/widget/EditableListView$MultiChoiceModeListener;

    iget-object v2, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v2}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$300(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/view/ActionMode;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lmiui/widget/EditableListView$MultiChoiceModeListener;->onAllItemCheckedStateChanged(Landroid/view/ActionMode;Z)V

    :cond_12
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    const/4 v1, 0x0

    # setter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckedItemCount:I
    invoke-static {v0, v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$402(Lcom/miui/internal/widget/EditableListViewDelegate;I)I

    sget v0, Lmiui/R$string;->select_item:I

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # setter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$302(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$300(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/view/ActionMode;

    move-result-object v0

    check-cast v0, Lmiui/view/EditActionMode;

    iget-object v1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->mActionModeAnimationListener:Lmiui/view/ActionModeAnimationListener;

    invoke-interface {v0, v1}, Lmiui/view/EditActionMode;->addAnimationListener(Lmiui/view/ActionModeAnimationListener;)V

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mDefaultUpdateListener:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;
    invoke-static {v0}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$500(Lcom/miui/internal/widget/EditableListViewDelegate;)Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;->updateCheckStatus(Landroid/view/ActionMode;)V

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    const/4 v1, -0x1

    # setter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mLastBottom:I
    invoke-static {v0, v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$202(Lcom/miui/internal/widget/EditableListViewDelegate;I)I

    const/4 v0, 0x1

    return v0

    :cond_36
    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    const/4 v1, 0x0

    # setter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckedItemCount:I
    invoke-static {v0, v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$402(Lcom/miui/internal/widget/EditableListViewDelegate;I)I

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .registers 21

    move-object v0, p0

    move/from16 v7, p2

    iget-object v1, v0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mPreventDispatchItemCheckedStateChange:Z
    invoke-static {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$600(Lcom/miui/internal/widget/EditableListViewDelegate;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-void

    :cond_c
    iget-object v1, v0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mSupportHeaderView:Z
    invoke-static {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$700(Lcom/miui/internal/widget/EditableListViewDelegate;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, v0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;
    invoke-static {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$100(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    move v8, v1

    iget-object v1, v0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    if-lt v7, v8, :cond_d7

    add-int v1, v9, v8

    if-ge v7, v1, :cond_d7

    iget-object v1, v0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;
    invoke-static {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$100(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    if-gt v7, v1, :cond_d2

    iget-object v1, v0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;
    invoke-static {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$100(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt v7, v1, :cond_cd

    iget-object v1, v0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    sub-int v2, v7, v8

    # invokes: Lcom/miui/internal/widget/EditableListViewDelegate;->isItemCheckable(I)Z
    invoke-static {v1, v2}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$800(Lcom/miui/internal/widget/EditableListViewDelegate;I)Z

    move-result v1

    if-nez v1, :cond_5b

    move-object/from16 v14, p1

    move-wide/from16 v12, p3

    goto/16 :goto_db

    :cond_5b
    iget-object v1, v0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    const/4 v2, 0x1

    const/4 v10, -0x1

    if-eqz p5, :cond_63

    move v3, v2

    goto :goto_64

    :cond_63
    move v3, v10

    :goto_64
    # += operator for: Lcom/miui/internal/widget/EditableListViewDelegate;->mCheckedItemCount:I
    invoke-static {v1, v3}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$412(Lcom/miui/internal/widget/EditableListViewDelegate;I)I

    iget-object v1, v0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;
    invoke-static {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$100(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v1

    iget-object v3, v0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;
    invoke-static {v3}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$100(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v7, v3

    invoke-virtual {v1, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    iget-object v1, v0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mDefaultUpdateListener:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;
    invoke-static {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$500(Lcom/miui/internal/widget/EditableListViewDelegate;)Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    move-result-object v1

    move-wide/from16 v12, p3

    invoke-interface {v1, v11, v7, v12, v13}, Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;->updateOnScreenCheckedView(Landroid/view/View;IJ)V

    iget-object v1, v0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mDefaultUpdateListener:Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;
    invoke-static {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$500(Lcom/miui/internal/widget/EditableListViewDelegate;)Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;

    move-result-object v1

    move-object/from16 v14, p1

    invoke-interface {v1, v14}, Lcom/miui/internal/widget/EditableListViewDelegate$UpdateListener;->updateCheckStatus(Landroid/view/ActionMode;)V

    if-eqz v11, :cond_98

    invoke-virtual {v11, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_98
    iget-object v1, v0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    iget-object v1, v0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mLastBottom:I
    invoke-static {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$200(Lcom/miui/internal/widget/EditableListViewDelegate;)I

    move-result v1

    if-ne v1, v10, :cond_cc

    iget-object v1, v0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;
    invoke-static {v1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$100(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v1

    iget-object v2, v0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    # getter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mAbsListView:Landroid/widget/AbsListView;
    invoke-static {v2}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$100(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v7, v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    # setter for: Lcom/miui/internal/widget/EditableListViewDelegate;->mLastBottom:I
    invoke-static {v2, v3}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$202(Lcom/miui/internal/widget/EditableListViewDelegate;I)I

    :cond_cc
    return-void

    :cond_cd
    move-object/from16 v14, p1

    move-wide/from16 v12, p3

    goto :goto_db

    :cond_d2
    move-object/from16 v14, p1

    move-wide/from16 v12, p3

    goto :goto_db

    :cond_d7
    move-object/from16 v14, p1

    move-wide/from16 v12, p3

    :goto_db
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->mWrapped:Landroid/widget/AbsListView$MultiChoiceModeListener;

    return-void
.end method
