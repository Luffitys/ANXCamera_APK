.class public Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;
.super Lmiui/widget/ImmersionListPopupWindow;
.source ""

# interfaces
.implements Lcom/miui/internal/view/menu/context/ContextMenuPopupWindow;


# static fields
.field private static final SCREEN_MARGIN_BOTTOM_PROPORTION:F = 0.1f

.field private static final SCREEN_MARGIN_TOP_PROPORTION:F = 0.1f


# instance fields
.field private mAdapter:Lcom/miui/internal/view/menu/context/ContextMenuAdapter;

.field private mLastAnchor:Landroid/view/View;

.field private mMarginScreen:I

.field private mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

.field private mPopupContentView:Landroid/widget/LinearLayout;

.field private mSeparateMenuItem:Landroid/view/MenuItem;

.field private mSeparateMenuView:Landroid/view/View;

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/internal/view/menu/MenuBuilder;Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lmiui/widget/ImmersionListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    new-instance p2, Lcom/miui/internal/view/menu/context/ContextMenuAdapter;

    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-direct {p2, p1, v0}, Lcom/miui/internal/view/menu/context/ContextMenuAdapter;-><init>(Landroid/content/Context;Landroid/view/Menu;)V

    iput-object p2, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mAdapter:Lcom/miui/internal/view/menu/context/ContextMenuAdapter;

    invoke-virtual {p2}, Lcom/miui/internal/view/menu/context/ContextMenuAdapter;->getLastCategorySystemOrderMenuItem()Landroid/view/MenuItem;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuItem:Landroid/view/MenuItem;

    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->prepareMultipleChoiceMenu(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mAdapter:Lcom/miui/internal/view/menu/context/ContextMenuAdapter;

    invoke-virtual {p0, p2}, Lmiui/widget/ImmersionListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance p2, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;

    invoke-direct {p2, p0}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;-><init>(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)V

    invoke-virtual {p0, p2}, Lmiui/widget/ImmersionListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, Lmiui/widget/ImmersionListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/miui/internal/R$dimen;->context_menu_window_margin_screen:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMarginScreen:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)Lcom/miui/internal/view/menu/context/ContextMenuAdapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mAdapter:Lcom/miui/internal/view/menu/context/ContextMenuAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)Lcom/miui/internal/view/menu/MenuBuilder;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mLastAnchor:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)F
    .locals 0

    iget p0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mX:F

    return p0
.end method

.method static synthetic access$400(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)F
    .locals 0

    iget p0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mY:F

    return p0
.end method

.method static synthetic access$500(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;Landroid/view/View;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->fastShowAsContextMenu(Landroid/view/View;FF)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)Landroid/view/MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuItem:Landroid/view/MenuItem;

    return-object p0
.end method

.method private fastShowAsContextMenu(Landroid/view/View;FF)V
    .locals 2

    invoke-virtual {p0}, Lmiui/widget/ImmersionListPopupWindow;->computePopupContentWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->showWithAnchor(Landroid/view/View;FF)V

    iget-object p0, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    return-void
.end method

.method private getListViewHeight()I
    .locals 7

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ListView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    move v1, v2

    move v3, v1

    :goto_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    const/4 v4, 0x0

    iget-object v5, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    check-cast v5, Landroid/widget/ListView;

    invoke-interface {v0, v1, v4, v5}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->measure(II)V

    iget-object p0, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/lit8 v3, p0, 0x0

    :cond_1
    return v3
.end method

.method private getMultipleChoiceViewHeight()I
    .locals 4

    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/view/View;->measure(II)V

    iget-object p0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int v1, v0, p0

    :cond_1
    return v1
.end method

.method private prepareMultipleChoiceMenu(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuItem:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/miui/internal/R$attr;->contextMenuSeparateItemBackground:I

    invoke-static {p1, v1}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object p1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    new-instance v0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$2;

    invoke-direct {v0, p0}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$2;-><init>(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private showWithAnchor(Landroid/view/View;FF)V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x0

    aget v3, v1, v2

    float-to-int p2, p2

    add-int/2addr v3, p2

    const/4 p2, 0x1

    aget v4, v1, p2

    float-to-int p3, p3

    add-int/2addr v4, p3

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/2addr v1, v0

    if-gt v3, v1, :cond_0

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    invoke-direct {p0}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->getListViewHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->getListViewHeight()I

    move-result v3

    div-int/2addr v3, v0

    sub-int/2addr v4, v3

    int-to-float v0, v4

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v4

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    :cond_1
    invoke-direct {p0}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->getMultipleChoiceViewHeight()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    add-float v3, v0, v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f666666    # 0.9f

    mul-float/2addr v5, v6

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v6

    sub-float/2addr v0, v1

    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v3, 0x3f4ccccc    # 0.79999995f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    :cond_3
    if-eqz p2, :cond_4

    iget p2, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMarginScreen:I

    goto :goto_1

    :cond_4
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p2

    iget p3, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMarginScreen:I

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    :goto_1
    float-to-int p3, v0

    invoke-virtual {p0, p1, v2, p2, p3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method


# virtual methods
.method protected prepareContentView(Landroid/content/Context;)V
    .locals 7

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mPopupContentView:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$layout;->immersion_popup_menu_item:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    sget v0, Lcom/miui/internal/R$attr;->immersionWindowBackground:I

    invoke-static {p1, v0}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v4, -0x1

    invoke-direct {v0, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/miui/internal/R$dimen;->context_menu_separate_item_margin_top:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, v3, p1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mPopupContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mRootView:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v4, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mPopupContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mPopupContentView:Landroid/widget/LinearLayout;

    invoke-super {p0, p1}, Lmiui/widget/ImmersionListPopupWindow;->setPopupWindowContentView(Landroid/view/View;)V

    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/ViewGroup;FF)V
    .locals 1

    iput-object p1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mLastAnchor:Landroid/view/View;

    iput p3, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mX:F

    iput p4, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mY:F

    invoke-virtual {p0, p1, p2}, Lmiui/widget/ImmersionListPopupWindow;->prepareShow(Landroid/view/View;Landroid/view/ViewGroup;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    iget v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mElevation:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setElevation(F)V

    iget-object p2, p0, Lmiui/widget/ImmersionListPopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-static {p2}, Lcom/miui/internal/widget/ImmersionListPopupWindowHelper;->setPopupShadowAlpha(Landroid/view/View;)V

    invoke-direct {p0, p1, p3, p4}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->showWithAnchor(Landroid/view/View;FF)V

    :cond_0
    return-void
.end method

.method public update(Landroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mAdapter:Lcom/miui/internal/view/menu/context/ContextMenuAdapter;

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->update(Landroid/view/Menu;)V

    return-void
.end method
