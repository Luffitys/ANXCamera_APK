.class public Lmiui/widget/ImmersionListPopupWindow;
.super Landroid/widget/PopupWindow;
.source "ImmersionListPopupWindow.java"


# static fields
.field private static final DIM:F = 0.3f

.field private static final OFFSET_X:F = 12.0f

.field private static final OFFSET_Y:F = 8.0f

.field private static final TAG:Ljava/lang/String; = "ImmersionListPopupWindow"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field protected final mBackgroundPadding:Landroid/graphics/Rect;

.field protected mContentView:Landroid/view/View;

.field private mContentWidth:I

.field private mContext:Landroid/content/Context;

.field protected mElevation:I

.field private mHasContentWidth:Z

.field private mIsRtl:Z

.field private mListView:Landroid/widget/ListView;

.field private mMaxAllowedWidth:I

.field private mMinAllowedWidth:I

.field private mObserver:Landroid/database/DataSetObserver;

.field private final mOffsetX:I

.field private final mOffsetY:I

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field protected mRootView:Landroid/widget/FrameLayout;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    new-instance v0, Lmiui/widget/ImmersionListPopupWindow$1;

    invoke-direct {v0, p0}, Lmiui/widget/ImmersionListPopupWindow$1;-><init>(Lmiui/widget/ImmersionListPopupWindow;)V

    iput-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$dimen;->list_menu_dialog_maximum_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mMaxAllowedWidth:I

    sget v1, Lcom/miui/internal/R$dimen;->list_menu_dialog_minimum_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mMinAllowedWidth:I

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/16 v2, 0xc

    iput v2, p0, Lmiui/widget/ImmersionListPopupWindow;->mOffsetX:I

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lmiui/widget/ImmersionListPopupWindow;->mOffsetY:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lmiui/widget/ImmersionListPopupWindow;->mBackgroundPadding:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lmiui/widget/ImmersionListPopupWindow;->setFocusable(Z)V

    new-instance v3, Lcom/miui/internal/widget/RoundFrameLayout;

    invoke-direct {v3, p1}, Lcom/miui/internal/widget/RoundFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lmiui/widget/ImmersionListPopupWindow;->mRootView:Landroid/widget/FrameLayout;

    new-instance v4, Lmiui/widget/ImmersionListPopupWindow$2;

    invoke-direct {v4, p0}, Lmiui/widget/ImmersionListPopupWindow$2;-><init>(Lmiui/widget/ImmersionListPopupWindow;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Lmiui/widget/ImmersionListPopupWindow;->prepareContentView(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;->setLayoutInScreenEnabled(Landroid/widget/PopupWindow;Z)V

    invoke-virtual {v3, p0, v2}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;->setLayoutInsetDecor(Landroid/widget/PopupWindow;Z)V

    sget-boolean v2, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v2, :cond_62

    sget v2, Lcom/miui/internal/R$style;->Animation_PopupWindow_ImmersionMenu:I

    goto :goto_63

    :cond_62
    const/4 v2, 0x0

    :goto_63
    invoke-virtual {p0, v2}, Lmiui/widget/ImmersionListPopupWindow;->setAnimationStyle(I)V

    iget-object v2, p0, Lmiui/widget/ImmersionListPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/internal/widget/ImmersionListPopupWindowHelper;->getPopupElevation(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lmiui/widget/ImmersionListPopupWindow;->mElevation:I

    new-instance v2, Lmiui/widget/ImmersionListPopupWindow$3;

    invoke-direct {v2, p0}, Lmiui/widget/ImmersionListPopupWindow$3;-><init>(Lmiui/widget/ImmersionListPopupWindow;)V

    invoke-super {p0, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method static synthetic access$002(Lmiui/widget/ImmersionListPopupWindow;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/widget/ImmersionListPopupWindow;->mHasContentWidth:Z

    return p1
.end method

.method static synthetic access$100(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/PopupWindow$OnDismissListener;
    .registers 2

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/ListAdapter;
    .registers 2

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .registers 3

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mWindowManager:Landroid/view/WindowManager;

    :cond_10
    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private static measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I
    .registers 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    nop

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    nop

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    const/4 v6, 0x0

    :goto_13
    if-ge v6, v5, :cond_39

    invoke-interface {p0, v6}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v7

    if-eq v7, v2, :cond_1d

    move v2, v7

    const/4 v1, 0x0

    :cond_1d
    if-nez p1, :cond_25

    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object p1, v8

    :cond_25
    invoke-interface {p0, v6, v1, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    if-lt v8, p3, :cond_33

    return p3

    :cond_33
    if-le v8, v0, :cond_36

    move v0, v8

    :cond_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_39
    return v0
.end method

.method private showWithAnchor(Landroid/view/View;)V
    .registers 6

    invoke-static {p1}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mIsRtl:Z

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mOffsetY:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lmiui/widget/ImmersionListPopupWindow;->mIsRtl:Z

    if-eqz v2, :cond_21

    iget-object v2, p0, Lmiui/widget/ImmersionListPopupWindow;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lmiui/widget/ImmersionListPopupWindow;->mOffsetX:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    goto :goto_29

    :cond_21
    iget-object v2, p0, Lmiui/widget/ImmersionListPopupWindow;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lmiui/widget/ImmersionListPopupWindow;->mOffsetX:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    :goto_29
    const v2, 0x800035

    invoke-virtual {p0, p1, v1, v0, v2}, Lmiui/widget/ImmersionListPopupWindow;->showAsDropDown(Landroid/view/View;III)V

    const v2, 0x10000008

    invoke-static {v2}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-virtual {p1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_3b
    return-void
.end method


# virtual methods
.method protected computePopupContentWidth()I
    .registers 5

    iget-boolean v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mHasContentWidth:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lmiui/widget/ImmersionListPopupWindow;->mContext:Landroid/content/Context;

    iget v3, p0, Lmiui/widget/ImmersionListPopupWindow;->mMaxAllowedWidth:I

    invoke-static {v0, v1, v2, v3}, Lmiui/widget/ImmersionListPopupWindow;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentWidth:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mHasContentWidth:Z

    :cond_14
    iget v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentWidth:I

    iget v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mMinAllowedWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected createDefaultFadeInAnimation()Landroid/view/animation/LayoutAnimationController;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected createDefaultFadeOutAnimation()Landroid/view/animation/LayoutAnimationController;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public dismiss(Z)V
    .registers 2

    invoke-virtual {p0}, Lmiui/widget/ImmersionListPopupWindow;->dismiss()V

    return-void
.end method

.method public fastShow(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 4

    invoke-virtual {p0}, Lmiui/widget/ImmersionListPopupWindow;->computePopupContentWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/widget/ImmersionListPopupWindow;->setWidth(I)V

    invoke-direct {p0, p1}, Lmiui/widget/ImmersionListPopupWindow;->showWithAnchor(Landroid/view/View;)V

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    return-void
.end method

.method protected getBackgroundAnimator(Landroid/view/animation/LayoutAnimationController;Z)Landroid/animation/Animator;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getBlurBackground(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method protected installHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected prepareContentView(Landroid/content/Context;)V
    .registers 5

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mContext:Landroid/content/Context;

    sget v1, Lmiui/R$attr;->immersionWindowBackground:I

    invoke-static {v0, v1}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_14
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1}, Lmiui/widget/ImmersionListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lmiui/widget/ImmersionListPopupWindow;->setPopupWindowContentView(Landroid/view/View;)V

    return-void
.end method

.method public prepareShow(Landroid/view/View;Landroid/view/ViewGroup;)Z
    .registers 9

    const-string v0, "ImmersionListPopupWindow"

    const/4 v1, 0x0

    if-nez p1, :cond_b

    const-string v2, "show: anchor is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_b
    iget-object v2, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    const v3, 0x102000a

    if-nez v2, :cond_1e

    new-instance v2, Landroid/widget/ListView;

    iget-object v4, p0, Lmiui/widget/ImmersionListPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    :cond_1e
    iget-object v2, p0, Lmiui/widget/ImmersionListPopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_31

    iget-object v2, p0, Lmiui/widget/ImmersionListPopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v5, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    if-eq v2, v5, :cond_4f

    :cond_31
    iget-object v2, p0, Lmiui/widget/ImmersionListPopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v2, p0, Lmiui/widget/ImmersionListPopupWindow;->mRootView:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v5, -0x2

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v5, 0x10

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_4f
    iget-object v2, p0, Lmiui/widget/ImmersionListPopupWindow;->mRootView:Landroid/widget/FrameLayout;

    iget v5, p0, Lmiui/widget/ImmersionListPopupWindow;->mElevation:I

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setElevation(F)V

    iget v2, p0, Lmiui/widget/ImmersionListPopupWindow;->mElevation:I

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lmiui/widget/ImmersionListPopupWindow;->setElevation(F)V

    iget-object v2, p0, Lmiui/widget/ImmersionListPopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-static {v2}, Lcom/miui/internal/widget/ImmersionListPopupWindowHelper;->setPopupShadowAlpha(Landroid/view/View;)V

    iget-object v2, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lmiui/widget/ImmersionListPopupWindow;->mListView:Landroid/widget/ListView;

    if-nez v2, :cond_74

    const-string v2, "list not found"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_74
    new-instance v0, Lmiui/widget/ImmersionListPopupWindow$4;

    invoke-direct {v0, p0}, Lmiui/widget/ImmersionListPopupWindow$4;-><init>(Lmiui/widget/ImmersionListPopupWindow;)V

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lmiui/widget/ImmersionListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lmiui/widget/ImmersionListPopupWindow;->computePopupContentWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/widget/ImmersionListPopupWindow;->setWidth(I)V

    invoke-static {}, Lmiui/view/inputmethod/InputMethodHelper;->getInstance()Lmiui/view/inputmethod/InputMethodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/view/inputmethod/InputMethodHelper;->getManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return v4
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_9
    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_12

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_12
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method protected setPopupWindowContentView(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 5

    invoke-virtual {p0, p1, p2}, Lmiui/widget/ImmersionListPopupWindow;->prepareShow(Landroid/view/View;Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0, p1}, Lmiui/widget/ImmersionListPopupWindow;->showWithAnchor(Landroid/view/View;)V

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    invoke-static {v0, v1}, Lcom/miui/internal/widget/ImmersionListPopupWindowHelper;->changeWindowBackground(Landroid/view/View;F)V

    :cond_15
    return-void
.end method
