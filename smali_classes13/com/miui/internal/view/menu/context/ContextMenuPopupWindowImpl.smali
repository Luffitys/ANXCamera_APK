.class public Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;
.super Lmiui/widget/ImmersionListPopupWindow;
.source "ContextMenuPopupWindowImpl.java"

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
    .registers 6

    invoke-direct {p0, p1}, Lmiui/widget/ImmersionListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    new-instance v0, Lcom/miui/internal/view/menu/context/ContextMenuAdapter;

    iget-object v1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p1, v1}, Lcom/miui/internal/view/menu/context/ContextMenuAdapter;-><init>(Landroid/content/Context;Landroid/view/Menu;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mAdapter:Lcom/miui/internal/view/menu/context/ContextMenuAdapter;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/context/ContextMenuAdapter;->getLastCategorySystemOrderMenuItem()Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuItem:Landroid/view/MenuItem;

    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->prepareMultipleChoiceMenu(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mAdapter:Lcom/miui/internal/view/menu/context/ContextMenuAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$1;-><init>(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)V

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    if-eqz p3, :cond_29

    invoke-virtual {p0, p3}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$dimen;->context_menu_window_margin_screen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMarginScreen:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)Lcom/miui/internal/view/menu/context/ContextMenuAdapter;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mAdapter:Lcom/miui/internal/view/menu/context/ContextMenuAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)Lcom/miui/internal/view/menu/MenuBuilder;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mLastAnchor:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)F
    .registers 2

    iget v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mX:F

    return v0
.end method

.method static synthetic access$400(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)F
    .registers 2

    iget v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mY:F

    return v0
.end method

.method static synthetic access$500(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;Landroid/view/View;FF)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->fastShowAsContextMenu(Landroid/view/View;FF)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)Landroid/view/MenuItem;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method private fastShowAsContextMenu(Landroid/view/View;FF)V
    .registers 6

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->computePopupContentWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->setWidth(I)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->setHeight(I)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->showWithAnchor(Landroid/view/View;FF)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    return-void
.end method

.method private getListViewHeight()I
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mContentView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ListView;

    const/4 v2, 0x0

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mContentView:Landroid/view/View;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    const/4 v3, 0x0

    :goto_11
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_33

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mContentView:Landroid/view/View;

    check-cast v5, Landroid/widget/ListView;

    invoke-interface {v1, v3, v4, v5}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_33
    goto :goto_48

    :cond_34
    iget-object v1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mContentView:Landroid/view/View;

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->measure(II)V

    iget-object v1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    :goto_48
    return v0
.end method

.method private getMultipleChoiceViewHeight()I
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_20

    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v2

    :cond_20
    iget-object v2, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Landroid/view/View;->measure(II)V

    iget-object v2, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, v2

    :cond_35
    return v0
.end method

.method private prepareMultipleChoiceMenu(Landroid/content/Context;)V
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuItem:Landroid/view/MenuItem;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_35

    :cond_c
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

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2b
    iget-object v2, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    new-instance v3, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$2;

    invoke-direct {v3, p0}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl$2;-><init>(Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_35
    return-void
.end method

.method private showWithAnchor(Landroid/view/View;FF)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    new-array v3, v2, [I

    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v4, 0x0

    aget v5, v3, v4

    move/from16 v6, p2

    float-to-int v7, v6

    add-int/2addr v5, v7

    const/4 v7, 0x1

    aget v8, v3, v7

    move/from16 v9, p3

    float-to-int v10, v9

    add-int/2addr v8, v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v11

    div-int/2addr v11, v2

    if-gt v5, v11, :cond_27

    goto :goto_28

    :cond_27
    move v7, v4

    :goto_28
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->getListViewHeight()I

    move-result v11

    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->getListViewHeight()I

    move-result v12

    div-int/2addr v12, v2

    sub-int v2, v8, v12

    int-to-float v2, v2

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    const v13, 0x3dcccccd    # 0.1f

    mul-float/2addr v12, v13

    cmpg-float v12, v2, v12

    if-gez v12, :cond_48

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float v2, v12, v13

    :cond_48
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->getMultipleChoiceViewHeight()I

    move-result v12

    add-int/2addr v12, v11

    int-to-float v14, v12

    add-float/2addr v14, v2

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v15

    int-to-float v15, v15

    const v16, 0x3f666666    # 0.9f

    mul-float v15, v15, v16

    cmpl-float v14, v14, v15

    if-lez v14, :cond_67

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float v14, v14, v16

    int-to-float v15, v12

    sub-float v2, v14, v15

    :cond_67
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v13

    cmpg-float v14, v2, v14

    if-gez v14, :cond_85

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float v2, v14, v13

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    const v14, 0x3f4ccccc    # 0.79999995f

    mul-float/2addr v13, v14

    float-to-int v14, v13

    invoke-virtual {v0, v14}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->setHeight(I)V

    :cond_85
    if-eqz v7, :cond_8a

    iget v13, v0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMarginScreen:I

    goto :goto_96

    :cond_8a
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v13

    iget v14, v0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mMarginScreen:I

    sub-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->getWidth()I

    move-result v14

    sub-int/2addr v13, v14

    :goto_96
    float-to-int v14, v2

    invoke-virtual {v0, v1, v4, v13, v14}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method


# virtual methods
.method protected prepareContentView(Landroid/content/Context;)V
    .registers 12

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

    if-eqz v0, :cond_38

    iget-object v1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_38
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/miui/internal/R$dimen;->context_menu_separate_item_margin_top:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v3, v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v6, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mPopupContentView:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mRootView:Landroid/widget/FrameLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v8, v5, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mPopupContentView:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    invoke-virtual {v3, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mPopupContentView:Landroid/widget/LinearLayout;

    invoke-super {p0, v2}, Lmiui/widget/ImmersionListPopupWindow;->setPopupWindowContentView(Landroid/view/View;)V

    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/ViewGroup;FF)V
    .registers 7

    iput-object p1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mLastAnchor:Landroid/view/View;

    iput p3, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mX:F

    iput p4, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mY:F

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->prepareShow(Landroid/view/View;Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mSeparateMenuView:Landroid/view/View;

    iget v1, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mElevation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mRootView:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/miui/internal/widget/ImmersionListPopupWindowHelper;->setPopupShadowAlpha(Landroid/view/View;)V

    invoke-direct {p0, p1, p3, p4}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->showWithAnchor(Landroid/view/View;FF)V

    :cond_1c
    return-void
.end method

.method public update(Landroid/view/Menu;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowImpl;->mAdapter:Lcom/miui/internal/view/menu/context/ContextMenuAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/context/ContextMenuAdapter;->update(Landroid/view/Menu;)V

    return-void
.end method
