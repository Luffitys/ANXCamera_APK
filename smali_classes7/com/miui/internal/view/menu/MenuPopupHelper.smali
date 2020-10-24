.class public Lcom/miui/internal/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lcom/miui/internal/view/menu/MenuPresenter;


# static fields
.field private static final ITEM_LAYOUT:I


# instance fields
.field private mAdapter:Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field mForceShowIcon:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMeasureParent:Landroid/view/ViewGroup;

.field private mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field private mMenuItemLayout:I

.field private mOverflowOnly:Z

.field private mPopup:Lmiui/widget/ListPopupWindow;

.field private mPopupMaxWidth:I

.field private mPopupVerticalOffset:I

.field private mPresenterCallback:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/miui/internal/R$layout;->popup_menu_item_layout:I

    sput v0, Lcom/miui/internal/view/menu/MenuPopupHelper;->ITEM_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/miui/internal/view/menu/MenuPopupHelper;->ITEM_LAYOUT:I

    iput v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mMenuItemLayout:I

    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    iput-boolean p4, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p4, p4, 0x2

    sget v0, Lcom/miui/internal/R$dimen;->config_prefDialogWidth:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    iput-object p3, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {p2, p0}, Lcom/miui/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/miui/internal/view/menu/MenuPresenter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/internal/view/menu/MenuPopupHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    return p0
.end method

.method static synthetic access$200(Lcom/miui/internal/view/menu/MenuPopupHelper;)I
    .locals 0

    iget p0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mMenuItemLayout:I

    return p0
.end method

.method static synthetic access$300(Lcom/miui/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/internal/view/menu/MenuPopupHelper;)Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method private measureContentWidth(Landroid/widget/ListAdapter;)I
    .locals 10

    iget v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v2, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-interface {p1, v4}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v6, :cond_0

    move-object v7, v3

    move v6, v8

    :cond_0
    iget-object v8, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    if-nez v8, :cond_1

    new-instance v8, Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    :cond_1
    iget-object v8, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    invoke-interface {p1, v4, v7, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v5
.end method


# virtual methods
.method public collapseItemActionView(Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public dismiss(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mPopup:Lmiui/widget/ListPopupWindow;

    invoke-virtual {p0, p1}, Lmiui/widget/ListPopupWindow;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method public expandItemActionView(Lcom/miui/internal/view/menu/MenuBuilder;Lcom/miui/internal/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
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

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "MenuPopupHelpers manage their own views"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;)V
    .locals 0

    return-void
.end method

.method public isShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mPopup:Lmiui/widget/ListPopupWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/MenuPopupHelper;->dismiss(Z)V

    iget-object p0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/miui/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/miui/internal/view/menu/MenuBuilder;Z)V

    :cond_1
    return-void
.end method

.method public onDismiss()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mPopup:Lmiui/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/MenuBuilder;->close()V

    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    :cond_1
    return-void
.end method

.method public onGlobalLayout()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mPopup:Lmiui/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-direct {p0, v1}, Lcom/miui/internal/view/menu/MenuPopupHelper;->measureContentWidth(Landroid/widget/ListAdapter;)I

    move-result v1

    iget v2, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/ListPopupWindow;->setContentWidth(I)V

    iget-object p0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mPopup:Lmiui/widget/ListPopupWindow;

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->show()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/MenuPopupHelper;->dismiss(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-static {p0}, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->access$000(Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object p1

    invoke-virtual {p0, p3}, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/miui/internal/view/menu/MenuItemImpl;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/miui/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    invoke-virtual {p0, p3}, Lcom/miui/internal/view/menu/MenuPopupHelper;->dismiss(Z)V

    return v0

    :cond_0
    return p3
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
    .locals 7

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/miui/internal/view/menu/MenuPopupHelper;

    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-direct {v0, v2, p1, v3, v1}, Lcom/miui/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v0, v2}, Lcom/miui/internal/view/menu/MenuPopupHelper;->setCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    move v3, v1

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_1

    invoke-virtual {p1, v3}, Lcom/miui/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_0

    move v2, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/miui/internal/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcom/miui/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/miui/internal/view/menu/MenuBuilder;)Z

    :cond_2
    return v4

    :cond_3
    return v1
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method public setCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/miui/internal/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    return-void
.end method

.method public setMenuItemLayout(I)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mMenuItemLayout:I

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 0

    iput p1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mPopupVerticalOffset:I

    return-void
.end method

.method public show()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public tryShow()Z
    .locals 4

    new-instance v0, Lmiui/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x1010300

    invoke-direct {v0, v1, v2, v3}, Lmiui/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mPopup:Lmiui/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Lmiui/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mPopup:Lmiui/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Lmiui/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mPopup:Lmiui/widget/ListPopupWindow;

    iget v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mPopupVerticalOffset:I

    invoke-virtual {v0, v1}, Lmiui/widget/ListPopupWindow;->setVerticalOffset(I)V

    new-instance v0, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;

    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;-><init>(Lcom/miui/internal/view/menu/MenuPopupHelper;Lcom/miui/internal/view/menu/MenuBuilder;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;

    iget-object v1, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mPopup:Lmiui/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Lmiui/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mPopup:Lmiui/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/ListPopupWindow;->setModal(Z)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v2, :cond_1

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mPopup:Lmiui/widget/ListPopupWindow;

    invoke-virtual {v2, v0}, Lmiui/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mPopup:Lmiui/widget/ListPopupWindow;

    iget-object v2, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-direct {p0, v2}, Lcom/miui/internal/view/menu/MenuPopupHelper;->measureContentWidth(Landroid/widget/ListAdapter;)I

    move-result v2

    iget v3, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lmiui/widget/ListPopupWindow;->setContentWidth(I)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mPopup:Lmiui/widget/ListPopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lmiui/widget/ListPopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mPopup:Lmiui/widget/ListPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow;->show()V

    iget-object v0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mPopup:Lmiui/widget/ListPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return v1

    :cond_2
    return v2
.end method

.method public updateMenuView(Z)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/MenuPopupHelper$MenuAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
