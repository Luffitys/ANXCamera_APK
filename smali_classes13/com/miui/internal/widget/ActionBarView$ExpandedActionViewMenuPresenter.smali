.class Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Lcom/miui/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

.field mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Lcom/miui/internal/widget/ActionBarView;


# direct methods
.method private constructor <init>(Lcom/miui/internal/widget/ActionBarView;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/widget/ActionBarView;Lcom/miui/internal/widget/ActionBarView$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/miui/internal/widget/ActionBarView;)V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)Z
    .registers 8

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Landroid/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    :cond_11
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$900(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$1700(Lcom/miui/internal/widget/ActionBarView;)I

    move-result v0

    const/4 v2, 0x2

    and-int/2addr v0, v2

    const/4 v3, 0x0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$1000(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    :cond_3a
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$1700(Lcom/miui/internal/widget/ActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v4, 0x1

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$500(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # invokes: Lcom/miui/internal/widget/ActionBarView;->initTitle()V
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$1800(Lcom/miui/internal/widget/ActionBarView;)V

    goto :goto_58

    :cond_53
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # invokes: Lcom/miui/internal/widget/ActionBarView;->setTitleVisibility(Z)V
    invoke-static {v0, v4}, Lcom/miui/internal/widget/ActionBarView;->access$1100(Lcom/miui/internal/widget/ActionBarView;Z)V

    :cond_58
    :goto_58
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mCollapseTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$1200(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mNavigationMode:I
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$1900(Lcom/miui/internal/widget/ActionBarView;)I

    move-result v0

    if-ne v0, v2, :cond_71

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mCollapseTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$1200(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    :cond_71
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mExpandTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$1300(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mNavigationMode:I
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$1900(Lcom/miui/internal/widget/ActionBarView;)I

    move-result v0

    if-ne v0, v2, :cond_8a

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mExpandTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$1300(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    :cond_8a
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mSecondaryTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$1400(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mNavigationMode:I
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$1900(Lcom/miui/internal/widget/ActionBarView;)I

    move-result v0

    if-ne v0, v2, :cond_a3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mSecondaryTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$1400(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    :cond_a3
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$1500(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_bc

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mNavigationMode:I
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$1900(Lcom/miui/internal/widget/ActionBarView;)I

    move-result v0

    if-ne v0, v4, :cond_bc

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$1500(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    :cond_bc
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$1600(Lcom/miui/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d7

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mDisplayOptions:I
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$1700(Lcom/miui/internal/widget/ActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_d7

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$1600(Lcom/miui/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_d7
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$900(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->requestLayout()V

    invoke-virtual {p2, v3}, Lcom/miui/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    return v4
.end method

.method public expandItemActionView(Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)Z
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p2}, Lcom/miui/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # invokes: Lcom/miui/internal/widget/ActionBarView;->initExpandedHomeLayout()V
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$700(Lcom/miui/internal/widget/ActionBarView;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$900(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # invokes: Lcom/miui/internal/widget/ActionBarView;->getIcon()Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/miui/internal/widget/ActionBarView;->access$800(Lcom/miui/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    if-eq v0, v1, :cond_3d

    iget-object v0, v1, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    :cond_3d
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$900(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    if-eq v0, v1, :cond_52

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;
    invoke-static {v1}, Lcom/miui/internal/widget/ActionBarView;->access$900(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    :cond_52
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$1000(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mHomeLayout:Lcom/miui/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$1000(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    :cond_65
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mCollapseTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$500(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    const/4 v2, 0x0

    # invokes: Lcom/miui/internal/widget/ActionBarView;->setTitleVisibility(Z)V
    invoke-static {v0, v2}, Lcom/miui/internal/widget/ActionBarView;->access$1100(Lcom/miui/internal/widget/ActionBarView;Z)V

    :cond_73
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mCollapseTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$1200(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mCollapseTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$1200(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    :cond_84
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mExpandTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$1300(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mExpandTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$1300(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    :cond_95
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mSecondaryTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$1400(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_a6

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mSecondaryTabs:Lcom/miui/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$1400(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    :cond_a6
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$1500(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_b7

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$1500(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    :cond_b7
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$1600(Lcom/miui/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c8

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    # getter for: Lcom/miui/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$1600(Lcom/miui/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c8
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->requestLayout()V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/miui/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    iget-object v1, v1, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/CollapsibleActionView;

    if-eqz v1, :cond_e2

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    iget-object v1, v1, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    check-cast v1, Landroid/view/CollapsibleActionView;

    invoke-interface {v1}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    :cond_e2
    return v0
.end method

.method public flagActionItems()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    if-eqz v1, :cond_b

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/miui/internal/view/menu/MenuItemImpl;)Z

    :cond_b
    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    return-void
.end method

.method public onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .registers 3

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/miui/internal/view/menu/SubMenuBuilder;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V
    .registers 2

    return-void
.end method

.method public updateMenuView(Z)V
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_28

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuBuilder;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1f

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v3, v2}, Lcom/miui/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    if-ne v3, v4, :cond_1c

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1f
    :goto_1f
    if-nez v0, :cond_28

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v1, v2}, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)Z

    :cond_28
    return-void
.end method
