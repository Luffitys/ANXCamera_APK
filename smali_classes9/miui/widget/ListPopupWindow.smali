.class public Lmiui/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEBUG:Z = false

.field private static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mForceIgnoreOutsideTouch:Z

.field private mHandler:Landroid/os/Handler;

.field private final mHideSelector:Lmiui/widget/ListPopupWindow$ListSelectorHider;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mPopup:Lmiui/widget/ArrowPopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field private final mResizePopupRunnable:Lmiui/widget/ListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Lmiui/widget/ListPopupWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x10102ff

    invoke-direct {p0, p1, v0, v1}, Lmiui/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x10102ff

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/widget/ListPopupWindow$ResizePopupRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Lmiui/widget/ListPopupWindow;Lmiui/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->mResizePopupRunnable:Lmiui/widget/ListPopupWindow$ResizePopupRunnable;

    new-instance v0, Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v0, p0, v1}, Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Lmiui/widget/ListPopupWindow;Lmiui/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->mTouchInterceptor:Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;

    new-instance v0, Lmiui/widget/ListPopupWindow$PopupScrollListener;

    invoke-direct {v0, p0, v1}, Lmiui/widget/ListPopupWindow$PopupScrollListener;-><init>(Lmiui/widget/ListPopupWindow;Lmiui/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->mScrollListener:Lmiui/widget/ListPopupWindow$PopupScrollListener;

    new-instance v0, Lmiui/widget/ListPopupWindow$ListSelectorHider;

    invoke-direct {v0, p0, v1}, Lmiui/widget/ListPopupWindow$ListSelectorHider;-><init>(Lmiui/widget/ListPopupWindow;Lmiui/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->mHideSelector:Lmiui/widget/ListPopupWindow$ListSelectorHider;

    const v0, 0x7fffffff

    iput v0, p0, Lmiui/widget/ListPopupWindow;->mListItemExpandMaximum:I

    const/4 v0, -0x2

    iput v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownHeight:I

    iput v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    iput-boolean v0, p0, Lmiui/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    iput v0, p0, Lmiui/widget/ListPopupWindow;->mPromptPosition:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    new-instance v0, Lmiui/widget/ArrowPopupWindow;

    invoke-direct {v0, p1, p2, p3}, Lmiui/widget/ArrowPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    return-void
.end method

.method static synthetic access$1000(Lmiui/widget/ListPopupWindow;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ListPopupWindow$DropDownListView;
    .locals 0

    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    return-object p0
.end method

.method static synthetic access$800(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ArrowPopupWindow;
    .locals 0

    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    return-object p0
.end method

.method static synthetic access$900(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ListPopupWindow$ResizePopupRunnable;
    .locals 0

    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->mResizePopupRunnable:Lmiui/widget/ListPopupWindow$ResizePopupRunnable;

    return-object p0
.end method

.method private buildDropDown()I
    .locals 12

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    const/high16 v1, -0x80000000

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    new-instance v5, Lmiui/widget/ListPopupWindow$1;

    invoke-direct {v5, p0}, Lmiui/widget/ListPopupWindow$1;-><init>(Lmiui/widget/ListPopupWindow;)V

    iput-object v5, p0, Lmiui/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    new-instance v5, Lmiui/widget/ListPopupWindow$DropDownListView;

    iget-boolean v6, p0, Lmiui/widget/ListPopupWindow;->mModal:Z

    xor-int/2addr v6, v4

    invoke-direct {v5, v0, v6}, Lmiui/widget/ListPopupWindow$DropDownListView;-><init>(Landroid/content/Context;Z)V

    iput-object v5, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->setFocusable(Z)V

    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    new-instance v6, Lmiui/widget/ListPopupWindow$2;

    invoke-direct {v6, p0}, Lmiui/widget/ListPopupWindow$2;-><init>(Lmiui/widget/ListPopupWindow;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->mScrollListener:Lmiui/widget/ListPopupWindow$PopupScrollListener;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v5, :cond_1

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v6, v5}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_1
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v6, :cond_4

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget v8, p0, Lmiui/widget/ListPopupWindow;->mPromptPosition:I

    if-eqz v8, :cond_3

    if-eq v8, v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid hint position "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lmiui/widget/ListPopupWindow;->mPromptPosition:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ListPopupWindow"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v7, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownWidth:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v6, v0, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v0

    move v0, v5

    move-object v5, v7

    goto :goto_1

    :cond_4
    move v0, v3

    :goto_1
    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v6, v5}, Lmiui/widget/ArrowPopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v6

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v5

    goto :goto_2

    :cond_6
    move v0, v3

    :goto_2
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iget-boolean v7, p0, Lmiui/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v7, :cond_8

    neg-int v6, v6

    iput v6, p0, Lmiui/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    goto :goto_3

    :cond_7
    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    move v5, v3

    :cond_8
    :goto_3
    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_9

    move v3, v4

    :cond_9
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v4

    iget v6, p0, Lmiui/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    invoke-virtual {p0, v4, v6, v3}, Lmiui/widget/ListPopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v3

    iget-boolean v4, p0, Lmiui/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v4, :cond_d

    iget v4, p0, Lmiui/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v4, v2, :cond_a

    goto :goto_5

    :cond_a
    iget v4, p0, Lmiui/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v6, -0x2

    if-eq v4, v6, :cond_b

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v4, v2, :cond_b

    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_4

    :cond_b
    iget-object v2, p0, Lmiui/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, p0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v4

    sub-int/2addr v2, v6

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_4
    move v7, v1

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    const/4 v8, 0x0

    const/4 v9, -0x1

    sub-int v10, v3, v0

    const/4 v11, -0x1

    invoke-virtual/range {v6 .. v11}, Lmiui/widget/ListPopupWindow$DropDownListView;->measureHeightOfChildrenCompact(IIIII)I

    move-result p0

    if-lez p0, :cond_c

    add-int/2addr v0, v5

    :cond_c
    add-int/2addr p0, v0

    return p0

    :cond_d
    :goto_5
    add-int/2addr v3, v5

    return v3
.end method

.method private removePromptView()V
    .locals 2

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearListSelection()V
    .locals 1

    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->access$502(Lmiui/widget/ListPopupWindow$DropDownListView;Z)Z

    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/ListPopupWindow;->dismiss(Z)V

    return-void
.end method

.method public dismiss(Z)V
    .locals 1

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->dismiss(Z)V

    invoke-direct {p0}, Lmiui/widget/ListPopupWindow;->removePromptView()V

    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    iget-object p1, p0, Lmiui/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->mResizePopupRunnable:Lmiui/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object p0
.end method

.method public getAnimationStyle()I
    .locals 0

    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result p0

    return p0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lmiui/widget/ListPopupWindow;->mDropDownHeight:I

    return p0
.end method

.method public getHorizontalOffset()I
    .locals 0

    iget p0, p0, Lmiui/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return p0
.end method

.method public getInputMethodMode()I
    .locals 0

    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result p0

    return p0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    return-object p0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget v2, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_0
    const/4 p3, 0x1

    aget v3, v1, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v3, p1

    sub-int/2addr v2, v3

    sub-int/2addr v2, p2

    aget p1, v1, p3

    iget p3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p3

    add-int/2addr p1, p2

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object p2, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object p3, p0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget p2, p0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, p0

    sub-int/2addr p1, p2

    :cond_1
    return p1
.end method

.method public getPopupWindow()Lmiui/widget/ArrowPopupWindow;
    .locals 0

    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    return-object p0
.end method

.method public getPromptPosition()I
    .locals 0

    iget p0, p0, Lmiui/widget/ListPopupWindow;->mPromptPosition:I

    return p0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedItemId()J
    .locals 2

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result p0

    return p0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getSoftInputMode()I
    .locals 0

    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getSoftInputMode()I

    move-result p0

    return p0
.end method

.method public getVerticalOffset()I
    .locals 1

    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lmiui/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lmiui/widget/ListPopupWindow;->mDropDownWidth:I

    return p0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 0

    iget-boolean p0, p0, Lmiui/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    return p0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 1

    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isModal()Z
    .locals 0

    iget-boolean p0, p0, Lmiui/widget/ListPopupWindow;->mModal:Z

    return p0
.end method

.method public isShowing()Z
    .locals 0

    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 11

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    const/16 v2, 0x17

    const/16 v3, 0x42

    if-gez v0, :cond_0

    if-eq p1, v3, :cond_a

    if-eq p1, v2, :cond_a

    :cond_0
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    iget-object v4, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    move v8, v1

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-static {v8, v1, v5}, Lmiui/widget/ListPopupWindow$DropDownListView;->access$600(Lmiui/widget/ListPopupWindow$DropDownListView;IZ)I

    move-result v8

    :goto_0
    if-eqz v7, :cond_2

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    sub-int/2addr v6, v5

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-static {v7, v6, v1}, Lmiui/widget/ListPopupWindow$DropDownListView;->access$600(Lmiui/widget/ListPopupWindow$DropDownListView;IZ)I

    move-result v6

    :goto_1
    move v7, v8

    move v8, v6

    :cond_3
    const/16 v6, 0x13

    if-eqz v4, :cond_4

    if-ne p1, v6, :cond_4

    if-le v0, v7, :cond_5

    :cond_4
    const/16 v9, 0x14

    if-nez v4, :cond_6

    if-ne p1, v9, :cond_6

    if-lt v0, v8, :cond_6

    :cond_5
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->clearListSelection()V

    iget-object p1, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p1, v5}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->show()V

    return v5

    :cond_6
    iget-object v10, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-static {v10, v1}, Lmiui/widget/ListPopupWindow$DropDownListView;->access$502(Lmiui/widget/ListPopupWindow$DropDownListView;Z)Z

    iget-object v10, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v10, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object p2, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->requestFocusFromTouch()Z

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->show()V

    if-eq p1, v6, :cond_7

    if-eq p1, v9, :cond_7

    if-eq p1, v2, :cond_7

    if-eq p1, v3, :cond_7

    goto :goto_2

    :cond_7
    return v5

    :cond_8
    if-eqz v4, :cond_9

    if-ne p1, v9, :cond_9

    if-ne v0, v8, :cond_a

    return v5

    :cond_9
    if-nez v4, :cond_a

    if-ne p1, v6, :cond_a

    if-ne v0, v7, :cond_a

    return v5

    :cond_a
    :goto_2
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiui/widget/ListPopupWindow;->dismiss(Z)V

    :cond_1
    :goto_0
    return p2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public performItemClick(I)Z
    .locals 7

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    move v4, p1

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public postShow()V
    .locals 1

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/widget/ListPopupWindow$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Lmiui/widget/ListPopupWindow;Lmiui/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    :goto_0
    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_2
    iget-object p1, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setContentWidth(I)V
    .locals 2

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    iput v1, p0, Lmiui/widget/ListPopupWindow;->mDropDownWidth:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lmiui/widget/ListPopupWindow;->setWidth(I)V

    :goto_0
    return-void
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiui/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiui/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lmiui/widget/ListPopupWindow;->mDropDownHeight:I

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0

    iput p1, p0, Lmiui/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method setListItemExpandMax(I)V
    .locals 0

    iput p1, p0, Lmiui/widget/ListPopupWindow;->mListItemExpandMaximum:I

    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setModal(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/ListPopupWindow;->mModal:Z

    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0

    iput p1, p0, Lmiui/widget/ListPopupWindow;->mPromptPosition:I

    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmiui/widget/ListPopupWindow;->removePromptView()V

    :cond_0
    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->show()V

    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 1

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lmiui/widget/ListPopupWindow$DropDownListView;->access$502(Lmiui/widget/ListPopupWindow$DropDownListView;Z)Z

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    invoke-virtual {v0}, Landroid/widget/ListView;->getChoiceMode()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    invoke-virtual {v0, p1, p0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 0

    iput p1, p0, Lmiui/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lmiui/widget/ListPopupWindow;->mDropDownWidth:I

    return-void
.end method

.method public show()V
    .locals 11

    invoke-direct {p0}, Lmiui/widget/ListPopupWindow;->buildDropDown()I

    move-result v0

    iget v1, p0, Lmiui/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v1, v4}, Lmiui/widget/ArrowPopupWindow;->setContentWidth(I)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v4, v1}, Lmiui/widget/ArrowPopupWindow;->setContentWidth(I)V

    :goto_0
    const/4 v9, -0x1

    iget v1, p0, Lmiui/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v1, v3, :cond_2

    goto :goto_1

    :cond_2
    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v1, v0}, Lmiui/widget/ArrowPopupWindow;->setContentHeight(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0, v1}, Lmiui/widget/ArrowPopupWindow;->setContentHeight(I)V

    :goto_1
    const/4 v10, -0x1

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    iget-boolean v3, p0, Lmiui/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lmiui/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v5, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v6

    iget v7, p0, Lmiui/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v8, p0, Lmiui/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    invoke-virtual/range {v5 .. v10}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0, v9, v10}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    iget-boolean v4, p0, Lmiui/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lmiui/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->mTouchInterceptor:Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v0, v1}, Lmiui/widget/ArrowPopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lmiui/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v4, p0, Lmiui/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    invoke-virtual {v0, v1, v2, v4}, Lmiui/widget/ArrowPopupWindow;->show(Landroid/view/View;II)V

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSelection(I)V

    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow;->mModal:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->clearListSelection()V

    :cond_8
    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow;->mModal:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lmiui/widget/ListPopupWindow;->mHideSelector:Lmiui/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    :goto_4
    return-void
.end method
