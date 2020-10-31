.class public Lmiui/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/ListPopupWindow$PopupScrollListener;,
        Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;,
        Lmiui/widget/ListPopupWindow$ResizePopupRunnable;,
        Lmiui/widget/ListPopupWindow$ListSelectorHider;,
        Lmiui/widget/ListPopupWindow$PopupDataSetObserver;,
        Lmiui/widget/ListPopupWindow$DropDownListView;
    }
.end annotation


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
    .registers 4

    const/4 v0, 0x0

    const v1, 0x10102ff

    invoke-direct {p0, p1, v0, v1}, Lmiui/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x10102ff

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

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
    .registers 2

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ListPopupWindow$DropDownListView;
    .registers 2

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    return-object v0
.end method

.method static synthetic access$800(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ArrowPopupWindow;
    .registers 2

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    return-object v0
.end method

.method static synthetic access$900(Lmiui/widget/ListPopupWindow;)Lmiui/widget/ListPopupWindow$ResizePopupRunnable;
    .registers 2

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mResizePopupRunnable:Lmiui/widget/ListPopupWindow$ResizePopupRunnable;

    return-object v0
.end method

.method private buildDropDown()I
    .registers 15

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-nez v1, :cond_bb

    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    new-instance v6, Lmiui/widget/ListPopupWindow$1;

    invoke-direct {v6, p0}, Lmiui/widget/ListPopupWindow$1;-><init>(Lmiui/widget/ListPopupWindow;)V

    iput-object v6, p0, Lmiui/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    new-instance v6, Lmiui/widget/ListPopupWindow$DropDownListView;

    iget-boolean v7, p0, Lmiui/widget/ListPopupWindow;->mModal:Z

    xor-int/2addr v7, v5

    invoke-direct {v6, v1, v7}, Lmiui/widget/ListPopupWindow$DropDownListView;-><init>(Landroid/content/Context;Z)V

    iput-object v6, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    iget-object v7, p0, Lmiui/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_24

    invoke-virtual {v6, v7}, Lmiui/widget/ListPopupWindow$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_24
    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    iget-object v7, p0, Lmiui/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v6, v7}, Lmiui/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    iget-object v7, p0, Lmiui/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v6, v7}, Lmiui/widget/ListPopupWindow$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v6, v5}, Lmiui/widget/ListPopupWindow$DropDownListView;->setFocusable(Z)V

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v6, v5}, Lmiui/widget/ListPopupWindow$DropDownListView;->setFocusableInTouchMode(Z)V

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    new-instance v7, Lmiui/widget/ListPopupWindow$2;

    invoke-direct {v7, p0}, Lmiui/widget/ListPopupWindow$2;-><init>(Lmiui/widget/ListPopupWindow;)V

    invoke-virtual {v6, v7}, Lmiui/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    iget-object v7, p0, Lmiui/widget/ListPopupWindow;->mScrollListener:Lmiui/widget/ListPopupWindow$PopupScrollListener;

    invoke-virtual {v6, v7}, Lmiui/widget/ListPopupWindow$DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v6, :cond_56

    iget-object v7, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v7, v6}, Lmiui/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_56
    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    iget-object v7, p0, Lmiui/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v7, :cond_b5

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v9, v4, v3, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget v10, p0, Lmiui/widget/ListPopupWindow;->mPromptPosition:I

    if-eqz v10, :cond_91

    if-eq v10, v5, :cond_8a

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid hint position "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lmiui/widget/ListPopupWindow;->mPromptPosition:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ListPopupWindow"

    invoke-static {v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98

    :cond_8a
    invoke-virtual {v8, v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_98

    :cond_91
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    nop

    :goto_98
    iget v10, p0, Lmiui/widget/ListPopupWindow;->mDropDownWidth:I

    invoke-static {v10, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/view/View;->measure(II)V

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    move-object v9, v12

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    iget v13, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v13

    iget v13, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    move-object v6, v8

    move v0, v12

    :cond_b5
    iget-object v8, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v8, v6}, Lmiui/widget/ArrowPopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_d1

    :cond_bb
    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v1, :cond_d1

    nop

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v0, v7, v8

    :cond_d1
    :goto_d1
    const/4 v1, 0x0

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v6}, Lmiui/widget/ArrowPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_f5

    iget-object v7, p0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v7, p0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int v1, v7, v8

    iget-boolean v7, p0, Lmiui/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v7, :cond_fa

    iget-object v7, p0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    neg-int v7, v7

    iput v7, p0, Lmiui/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    goto :goto_fa

    :cond_f5
    iget-object v7, p0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    :cond_fa
    :goto_fa
    iget-object v7, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v7}, Lmiui/widget/ArrowPopupWindow;->getInputMethodMode()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_104

    move v3, v5

    :cond_104
    nop

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v5

    iget v7, p0, Lmiui/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    invoke-virtual {p0, v5, v7, v3}, Lmiui/widget/ListPopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v5

    iget-boolean v7, p0, Lmiui/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v7, :cond_16e

    iget v7, p0, Lmiui/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v7, v4, :cond_118

    goto :goto_16e

    :cond_118
    iget v7, p0, Lmiui/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v8, -0x2

    if-eq v7, v8, :cond_141

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v7, v4, :cond_126

    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_15c

    :cond_126
    iget-object v4, p0, Lmiui/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    sub-int/2addr v4, v7

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_15c

    :cond_141
    iget-object v4, p0, Lmiui/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    sub-int/2addr v4, v7

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    nop

    :goto_15c
    iget-object v7, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    const/4 v9, 0x0

    const/4 v10, -0x1

    sub-int v11, v5, v0

    const/4 v12, -0x1

    move v8, v2

    invoke-virtual/range {v7 .. v12}, Lmiui/widget/ListPopupWindow$DropDownListView;->measureHeightOfChildrenCompact(IIIII)I

    move-result v4

    if-lez v4, :cond_16b

    add-int/2addr v0, v1

    :cond_16b
    add-int v7, v4, v0

    return v7

    :cond_16e
    :goto_16e
    add-int v2, v5, v1

    return v2
.end method

.method private removePromptView()V
    .registers 4

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lmiui/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_14
    return-void
.end method


# virtual methods
.method public clearListSelection()V
    .registers 3

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    # setter for: Lmiui/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lmiui/widget/ListPopupWindow$DropDownListView;->access$502(Lmiui/widget/ListPopupWindow$DropDownListView;Z)Z

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->requestLayout()V

    :cond_b
    return-void
.end method

.method public dismiss()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/ListPopupWindow;->dismiss(Z)V

    return-void
.end method

.method public dismiss(Z)V
    .registers 4

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->dismiss(Z)V

    invoke-direct {p0}, Lmiui/widget/ListPopupWindow;->removePromptView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->mResizePopupRunnable:Lmiui/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getAnimationStyle()I
    .registers 2

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownHeight:I

    return v0
.end method

.method public getHorizontalOffset()I
    .registers 2

    iget v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getInputMethodMode()I
    .registers 2

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    return-object v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .registers 12

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz p3, :cond_20

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_20
    const/4 v3, 0x1

    aget v4, v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sub-int v4, v2, v4

    sub-int/2addr v4, p2

    aget v3, v1, v3

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    add-int/2addr v3, p2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v6}, Lmiui/widget/ArrowPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_52

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v6}, Lmiui/widget/ArrowPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v7, p0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    :cond_52
    return v5
.end method

.method public getPopupWindow()Lmiui/widget/ArrowPopupWindow;
    .registers 2

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    return-object v0
.end method

.method public getPromptPosition()I
    .registers 2

    iget v0, p0, Lmiui/widget/ListPopupWindow;->mPromptPosition:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemId()J
    .registers 3

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_9

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_9
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .registers 2

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    return v0

    :cond_8
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .registers 2

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSoftInputMode()I
    .registers 2

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->getSoftInputMode()I

    move-result v0

    return v0
.end method

.method public getVerticalOffset()I
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownWidth:I

    return v0
.end method

.method public isDropDownAlwaysVisible()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .registers 3

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isModal()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/ListPopupWindow;->mModal:Z

    return v0
.end method

.method public isShowing()Z
    .registers 2

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_b2

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_af

    iget-object v2, v0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v2}, Lmiui/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v2

    const/16 v4, 0x17

    const/16 v5, 0x42

    if-gez v2, :cond_24

    if-eq v1, v5, :cond_20

    if-eq v1, v4, :cond_20

    goto :goto_24

    :cond_20
    move-object/from16 v14, p2

    goto/16 :goto_b4

    :cond_24
    :goto_24
    iget-object v2, v0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v2}, Lmiui/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v2

    iget-object v6, v0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v6}, Lmiui/widget/ArrowPopupWindow;->isAboveAnchor()Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    iget-object v8, v0, Lmiui/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    const v9, 0x7fffffff

    const/high16 v10, -0x80000000

    if-eqz v8, :cond_5e

    invoke-interface {v8}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v11

    if-eqz v11, :cond_43

    move v12, v3

    goto :goto_49

    :cond_43
    iget-object v12, v0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    # invokes: Lmiui/widget/ListPopupWindow$DropDownListView;->lookForSelectablePosition(IZ)I
    invoke-static {v12, v3, v7}, Lmiui/widget/ListPopupWindow$DropDownListView;->access$600(Lmiui/widget/ListPopupWindow$DropDownListView;IZ)I

    move-result v12

    :goto_49
    move v9, v12

    if-eqz v11, :cond_52

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    sub-int/2addr v12, v7

    goto :goto_5d

    :cond_52
    iget-object v12, v0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v13

    sub-int/2addr v13, v7

    # invokes: Lmiui/widget/ListPopupWindow$DropDownListView;->lookForSelectablePosition(IZ)I
    invoke-static {v12, v13, v3}, Lmiui/widget/ListPopupWindow$DropDownListView;->access$600(Lmiui/widget/ListPopupWindow$DropDownListView;IZ)I

    move-result v12

    :goto_5d
    move v10, v12

    :cond_5e
    const/16 v11, 0x13

    if-eqz v6, :cond_66

    if-ne v1, v11, :cond_66

    if-le v2, v9, :cond_6e

    :cond_66
    const/16 v12, 0x14

    if-nez v6, :cond_7a

    if-ne v1, v12, :cond_7a

    if-lt v2, v10, :cond_7a

    :cond_6e
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ListPopupWindow;->clearListSelection()V

    iget-object v3, v0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v3, v7}, Lmiui/widget/ArrowPopupWindow;->setInputMethodMode(I)V

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ListPopupWindow;->show()V

    return v7

    :cond_7a
    iget-object v13, v0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    # setter for: Lmiui/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v13, v3}, Lmiui/widget/ListPopupWindow$DropDownListView;->access$502(Lmiui/widget/ListPopupWindow$DropDownListView;Z)Z

    iget-object v13, v0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v14, p2

    invoke-virtual {v13, v1, v14}, Lmiui/widget/ListPopupWindow$DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v13

    if-eqz v13, :cond_a1

    iget-object v15, v0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    const/4 v3, 0x2

    invoke-virtual {v15, v3}, Lmiui/widget/ArrowPopupWindow;->setInputMethodMode(I)V

    iget-object v3, v0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v3}, Lmiui/widget/ListPopupWindow$DropDownListView;->requestFocusFromTouch()Z

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ListPopupWindow;->show()V

    if-eq v1, v11, :cond_a0

    if-eq v1, v12, :cond_a0

    if-eq v1, v4, :cond_a0

    if-eq v1, v5, :cond_a0

    goto :goto_b4

    :cond_a0
    return v7

    :cond_a1
    if-eqz v6, :cond_a8

    if-ne v1, v12, :cond_a8

    if-ne v2, v10, :cond_b4

    return v7

    :cond_a8
    if-nez v6, :cond_b4

    if-ne v1, v11, :cond_b4

    if-ne v2, v9, :cond_b4

    return v7

    :cond_af
    move-object/from16 v14, p2

    goto :goto_b4

    :cond_b2
    move-object/from16 v14, p2

    :cond_b4
    :goto_b4
    const/4 v2, 0x0

    return v2
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_24

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0, p1, p2}, Lmiui/widget/ListPopupWindow$DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/16 v1, 0x17

    if-eq p1, v1, :cond_1f

    const/16 v1, 0x42

    if-eq p1, v1, :cond_1f

    goto :goto_23

    :cond_1f
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmiui/widget/ListPopupWindow;->dismiss(Z)V

    :cond_23
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public performItemClick(I)Z
    .registers 11

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lmiui/widget/ListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v8, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    move-object v2, v0

    move-object v3, v7

    move v4, p1

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_26
    const/4 v0, 0x1

    return v0

    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method public postShow()V
    .registers 3

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_d

    new-instance v0, Lmiui/widget/ListPopupWindow$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Lmiui/widget/ListPopupWindow;Lmiui/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lmiui/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    goto :goto_14

    :cond_d
    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_14

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_14
    :goto_14
    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_1d

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1d
    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    if-eqz v0, :cond_26

    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lmiui/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_26
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-void
.end method

.method public setAnimationStyle(I)V
    .registers 3

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setContentWidth(I)V
    .registers 5

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0}, Lmiui/widget/ArrowPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lmiui/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iput v1, p0, Lmiui/widget/ListPopupWindow;->mDropDownWidth:I

    goto :goto_1d

    :cond_1a
    invoke-virtual {p0, p1}, Lmiui/widget/ListPopupWindow;->setWidth(I)V

    :goto_1d
    return-void
.end method

.method public setDropDownAlwaysVisible(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    return-void
.end method

.method public setHeight(I)V
    .registers 2

    iput p1, p0, Lmiui/widget/ListPopupWindow;->mDropDownHeight:I

    return-void
.end method

.method public setHorizontalOffset(I)V
    .registers 2

    iput p1, p0, Lmiui/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return-void
.end method

.method public setInputMethodMode(I)V
    .registers 3

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method setListItemExpandMax(I)V
    .registers 2

    iput p1, p0, Lmiui/widget/ListPopupWindow;->mListItemExpandMaximum:I

    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setModal(Z)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/ListPopupWindow;->mModal:Z

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 3

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public setPromptPosition(I)V
    .registers 2

    iput p1, p0, Lmiui/widget/ListPopupWindow;->mPromptPosition:I

    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lmiui/widget/ListPopupWindow;->removePromptView()V

    :cond_9
    iput-object p1, p0, Lmiui/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->show()V

    :cond_10
    return-void
.end method

.method public setSelection(I)V
    .registers 4

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1b

    const/4 v1, 0x0

    # setter for: Lmiui/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lmiui/widget/ListPopupWindow$DropDownListView;->access$502(Lmiui/widget/ListPopupWindow$DropDownListView;Z)Z

    invoke-virtual {v0, p1}, Lmiui/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    invoke-virtual {v0}, Lmiui/widget/ListPopupWindow$DropDownListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lmiui/widget/ListPopupWindow$DropDownListView;->setItemChecked(IZ)V

    :cond_1b
    return-void
.end method

.method public setSoftInputMode(I)V
    .registers 3

    iget-object v0, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v0, p1}, Lmiui/widget/ArrowPopupWindow;->setSoftInputMode(I)V

    return-void
.end method

.method public setVerticalOffset(I)V
    .registers 3

    iput p1, p0, Lmiui/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    iput p1, p0, Lmiui/widget/ListPopupWindow;->mDropDownWidth:I

    return-void
.end method

.method public show()V
    .registers 14

    invoke-direct {p0}, Lmiui/widget/ListPopupWindow;->buildDropDown()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    iget v3, p0, Lmiui/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v4, -0x2

    const/4 v5, -0x1

    if-ne v3, v5, :cond_e

    const/4 v1, -0x1

    goto :goto_23

    :cond_e
    if-ne v3, v4, :cond_1e

    iget-object v3, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v3, v6}, Lmiui/widget/ArrowPopupWindow;->setContentWidth(I)V

    goto :goto_23

    :cond_1e
    iget-object v6, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v6, v3}, Lmiui/widget/ArrowPopupWindow;->setContentWidth(I)V

    :goto_23
    iget v3, p0, Lmiui/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v3, v5, :cond_29

    const/4 v2, -0x1

    goto :goto_36

    :cond_29
    if-ne v3, v4, :cond_31

    iget-object v3, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v3, v0}, Lmiui/widget/ArrowPopupWindow;->setContentHeight(I)V

    goto :goto_36

    :cond_31
    iget-object v4, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v4, v3}, Lmiui/widget/ArrowPopupWindow;->setContentHeight(I)V

    :goto_36
    iget-object v3, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmiui/widget/ArrowPopupWindow;->setFocusable(Z)V

    iget-object v3, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v3}, Lmiui/widget/ArrowPopupWindow;->isShowing()Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_64

    iget-object v3, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    iget-boolean v5, p0, Lmiui/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v5, :cond_50

    iget-boolean v5, p0, Lmiui/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v5, :cond_50

    goto :goto_51

    :cond_50
    move v4, v6

    :goto_51
    invoke-virtual {v3, v4}, Lmiui/widget/ArrowPopupWindow;->setOutsideTouchable(Z)V

    iget-object v7, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v8

    iget v9, p0, Lmiui/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v10, p0, Lmiui/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    move v11, v1

    move v12, v2

    invoke-virtual/range {v7 .. v12}, Lmiui/widget/ArrowPopupWindow;->update(Landroid/view/View;IIII)V

    goto :goto_ab

    :cond_64
    iget-object v3, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {v3, v1, v2}, Lmiui/widget/ArrowPopupWindow;->setWindowLayoutMode(II)V

    iget-object v3, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    iget-boolean v7, p0, Lmiui/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v7, :cond_74

    iget-boolean v7, p0, Lmiui/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v7, :cond_74

    goto :goto_75

    :cond_74
    move v4, v6

    :goto_75
    invoke-virtual {v3, v4}, Lmiui/widget/ArrowPopupWindow;->setOutsideTouchable(Z)V

    iget-object v3, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    iget-object v4, p0, Lmiui/widget/ListPopupWindow;->mTouchInterceptor:Lmiui/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v3, v4}, Lmiui/widget/ArrowPopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lmiui/widget/ListPopupWindow;->mPopup:Lmiui/widget/ArrowPopupWindow;

    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v4

    iget v6, p0, Lmiui/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v7, p0, Lmiui/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    invoke-virtual {v3, v4, v6, v7}, Lmiui/widget/ArrowPopupWindow;->show(Landroid/view/View;II)V

    iget-object v3, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v3, v5}, Lmiui/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    iget-boolean v3, p0, Lmiui/widget/ListPopupWindow;->mModal:Z

    if-eqz v3, :cond_9d

    iget-object v3, p0, Lmiui/widget/ListPopupWindow;->mDropDownList:Lmiui/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v3}, Lmiui/widget/ListPopupWindow$DropDownListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_a0

    :cond_9d
    invoke-virtual {p0}, Lmiui/widget/ListPopupWindow;->clearListSelection()V

    :cond_a0
    iget-boolean v3, p0, Lmiui/widget/ListPopupWindow;->mModal:Z

    if-nez v3, :cond_ab

    iget-object v3, p0, Lmiui/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lmiui/widget/ListPopupWindow;->mHideSelector:Lmiui/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_ab
    :goto_ab
    return-void
.end method
