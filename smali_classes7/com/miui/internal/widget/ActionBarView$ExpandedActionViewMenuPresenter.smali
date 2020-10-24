.class Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/internal/view/menu/MenuPresenter;


# instance fields
.field mCurrentExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

.field mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Lcom/miui/internal/widget/ActionBarView;


# direct methods
.method private constructor <init>(Lcom/miui/internal/widget/ActionBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/widget/ActionBarView;Lcom/miui/internal/widget/ActionBarView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/miui/internal/widget/ActionBarView;)V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)Z
    .locals 4

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    iget-object p1, p1, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    instance-of v0, p1, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/CollapsibleActionView;

    invoke-interface {p1}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    :cond_0
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    iget-object v0, p1, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$900(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$1700(Lcom/miui/internal/widget/ActionBarView;)I

    move-result p1

    const/4 v1, 0x2

    and-int/2addr p1, v1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$1000(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$1700(Lcom/miui/internal/widget/ActionBarView;)I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$500(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$1800(Lcom/miui/internal/widget/ActionBarView;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1, v3}, Lcom/miui/internal/widget/ActionBarView;->access$1100(Lcom/miui/internal/widget/ActionBarView;Z)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$1200(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$1900(Lcom/miui/internal/widget/ActionBarView;)I

    move-result p1

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$1200(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :cond_4
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$1300(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$1900(Lcom/miui/internal/widget/ActionBarView;)I

    move-result p1

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$1300(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :cond_5
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$1400(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$1900(Lcom/miui/internal/widget/ActionBarView;)I

    move-result p1

    if-ne p1, v1, :cond_6

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$1400(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :cond_6
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$1500(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$1900(Lcom/miui/internal/widget/ActionBarView;)I

    move-result p1

    if-ne p1, v3, :cond_7

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$1500(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    :cond_7
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$1600(Lcom/miui/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$1700(Lcom/miui/internal/widget/ActionBarView;)I

    move-result p1

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$1600(Lcom/miui/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$900(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    invoke-virtual {p2, v2}, Lcom/miui/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    return v3
.end method

.method public expandItemActionView(Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)Z
    .locals 2

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p2}, Lcom/miui/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$700(Lcom/miui/internal/widget/ActionBarView;)V

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$900(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$800(Lcom/miui/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    iget-object p1, p1, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    if-eq p1, v0, :cond_0

    iget-object p1, v0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$900(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    if-eq p1, v0, :cond_1

    invoke-static {v0}, Lcom/miui/internal/widget/ActionBarView;->access$900(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$1000(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;

    move-result-object p1

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$1000(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ActionBarView$HomeView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$500(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/miui/internal/widget/ActionBarView;->access$1100(Lcom/miui/internal/widget/ActionBarView;Z)V

    :cond_3
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$1200(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$1200(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :cond_4
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$1300(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$1300(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :cond_5
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$1400(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$1400(Lcom/miui/internal/widget/ActionBarView;)Lcom/miui/internal/widget/ScrollingTabContainerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :cond_6
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$1500(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$1500(Lcom/miui/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    :cond_7
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$1600(Lcom/miui/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-static {p1}, Lcom/miui/internal/widget/ActionBarView;->access$1600(Lcom/miui/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/miui/internal/widget/ActionBarView;

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    instance-of p2, p0, Landroid/view/CollapsibleActionView;

    if-eqz p2, :cond_9

    check-cast p0, Landroid/view/CollapsibleActionView;

    invoke-interface {p0}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    :cond_9
    return p1
.end method

.method public flagActionItems()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/miui/internal/view/menu/MenuView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/miui/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/miui/internal/view/menu/MenuItemImpl;)Z

    :cond_0
    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    return-void
.end method

.method public onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onSubMenuSelected(Lcom/miui/internal/view/menu/SubMenuBuilder;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0

    return-void
.end method

.method public updateMenuView(Z)V
    .locals 4

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuBuilder;->size()I

    move-result p1

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, p1, v0}, Lcom/miui/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)Z

    :cond_2
    return-void
.end method
