.class public Lmiui/widget/ImmersionListPopupWindow;
.super Landroid/widget/PopupWindow;
.source ""


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
    .locals 3

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

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/16 v1, 0xc

    iput v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mOffsetX:I

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mOffsetY:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mBackgroundPadding:Landroid/graphics/Rect;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    new-instance v1, Lcom/miui/internal/widget/RoundFrameLayout;

    invoke-direct {v1, p1}, Lcom/miui/internal/widget/RoundFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mRootView:Landroid/widget/FrameLayout;

    new-instance v2, Lmiui/widget/ImmersionListPopupWindow$2;

    invoke-direct {v2, p0}, Lmiui/widget/ImmersionListPopupWindow$2;-><init>(Lmiui/widget/ImmersionListPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Lmiui/widget/ImmersionListPopupWindow;->prepareContentView(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;->setLayoutInScreenEnabled(Landroid/widget/PopupWindow;Z)V

    invoke-virtual {p1, p0, v0}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;->setLayoutInsetDecor(Landroid/widget/PopupWindow;Z)V

    sget-boolean p1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz p1, :cond_0

    sget p1, Lcom/miui/internal/R$style;->Animation_PopupWindow_ImmersionMenu:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/internal/widget/ImmersionListPopupWindowHelper;->getPopupElevation(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lmiui/widget/ImmersionListPopupWindow;->mElevation:I

    new-instance p1, Lmiui/widget/ImmersionListPopupWindow$3;

    invoke-direct {p1, p0}, Lmiui/widget/ImmersionListPopupWindow$3;-><init>(Lmiui/widget/ImmersionListPopupWindow;)V

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method static synthetic access$002(Lmiui/widget/ImmersionListPopupWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/widget/ImmersionListPopupWindow;->mHasContentWidth:Z

    return p1
.end method

.method static synthetic access$100(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/PopupWindow$OnDismissListener;
    .locals 0

    iget-object p0, p0, Lmiui/widget/ImmersionListPopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-object p0
.end method

.method static synthetic access$200(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lmiui/widget/ImmersionListPopupWindow;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$300(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lmiui/widget/ImmersionListPopupWindow;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$400(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/ListAdapter;
    .locals 0

    iget-object p0, p0, Lmiui/widget/ImmersionListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .locals 2

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mWindowManager:Landroid/view/WindowManager;

    :cond_0
    iget-object p0, p0, Lmiui/widget/ImmersionListPopupWindow;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method private static measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I
    .locals 9

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x0

    move v5, v0

    move v6, v5

    move-object v7, v4

    :goto_0
    if-ge v0, v3, :cond_4

    invoke-interface {p0, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v6, :cond_0

    move-object v7, v4

    move v6, v8

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    :cond_1
    invoke-interface {p0, v0, v7, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    if-lt v8, p3, :cond_2

    return p3

    :cond_2
    if-le v8, v5, :cond_3

    move v5, v8

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v5
.end method

.method private showWithAnchor(Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Lmiui/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mIsRtl:Z

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    iget v2, p0, Lmiui/widget/ImmersionListPopupWindow;->mOffsetY:I

    add-int/2addr v0, v2

    iget-boolean v2, p0, Lmiui/widget/ImmersionListPopupWindow;->mIsRtl:Z

    if-eqz v2, :cond_0

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lmiui/widget/ImmersionListPopupWindow;->mOffsetX:I

    sub-int/2addr v1, v2

    rsub-int/lit8 v1, v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lmiui/widget/ImmersionListPopupWindow;->mOffsetX:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x0

    :goto_0
    const v2, 0x800035

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    const p0, 0x10000008

    invoke-static {p0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected computePopupContentWidth()I
    .locals 4

    iget-boolean v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mHasContentWidth:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lmiui/widget/ImmersionListPopupWindow;->mContext:Landroid/content/Context;

    iget v3, p0, Lmiui/widget/ImmersionListPopupWindow;->mMaxAllowedWidth:I

    invoke-static {v0, v1, v2, v3}, Lmiui/widget/ImmersionListPopupWindow;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentWidth:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mHasContentWidth:Z

    :cond_0
    iget v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentWidth:I

    iget v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mMinAllowedWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object p0, p0, Lmiui/widget/ImmersionListPopupWindow;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p0

    return v0
.end method

.method protected createDefaultFadeInAnimation()Landroid/view/animation/LayoutAnimationController;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method protected createDefaultFadeOutAnimation()Landroid/view/animation/LayoutAnimationController;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public dismiss(Z)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public fastShow(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-virtual {p0}, Lmiui/widget/ImmersionListPopupWindow;->computePopupContentWidth()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-direct {p0, p1}, Lmiui/widget/ImmersionListPopupWindow;->showWithAnchor(Landroid/view/View;)V

    iget-object p0, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    return-void
.end method

.method protected getBackgroundAnimator(Landroid/view/animation/LayoutAnimationController;Z)Landroid/animation/Animator;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getBlurBackground(Landroid/content/Context;Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method protected installHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected prepareContentView(Landroid/content/Context;)V
    .locals 1

    iget-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->mContext:Landroid/content/Context;

    sget v0, Lmiui/R$attr;->immersionWindowBackground:I

    invoke-static {p1, v0}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lmiui/widget/ImmersionListPopupWindow;->setPopupWindowContentView(Landroid/view/View;)V

    return-void
.end method

.method public prepareShow(Landroid/view/View;Landroid/view/ViewGroup;)Z
    .locals 5

    const-string p2, "ImmersionListPopupWindow"

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "show: anchor is null"

    :goto_0
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    const v2, 0x102000a

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/ListView;

    iget-object v3, p0, Lmiui/widget/ImmersionListPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    :cond_1
    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    if-eq v1, v4, :cond_3

    :cond_2
    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mRootView:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v4, -0x2

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v4, 0x10

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_3
    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mRootView:Landroid/widget/FrameLayout;

    iget v4, p0, Lmiui/widget/ImmersionListPopupWindow;->mElevation:I

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setElevation(F)V

    iget v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mElevation:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setElevation(F)V

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/miui/internal/widget/ImmersionListPopupWindowHelper;->setPopupShadowAlpha(Landroid/view/View;)V

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mListView:Landroid/widget/ListView;

    if-nez v1, :cond_4

    const-string p0, "list not found"

    goto :goto_0

    :cond_4
    new-instance p2, Lmiui/widget/ImmersionListPopupWindow$4;

    invoke-direct {p2, p0}, Lmiui/widget/ImmersionListPopupWindow$4;-><init>(Lmiui/widget/ImmersionListPopupWindow;)V

    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p2, p0, Lmiui/widget/ImmersionListPopupWindow;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lmiui/widget/ImmersionListPopupWindow;->computePopupContentWidth()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-static {}, Lmiui/view/inputmethod/InputMethodHelper;->getInstance()Lmiui/view/inputmethod/InputMethodHelper;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/view/inputmethod/InputMethodHelper;->getManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return v3
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiui/widget/ImmersionListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lmiui/widget/ImmersionListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, p0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->mContentView:Landroid/view/View;

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method protected setPopupWindowContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lmiui/widget/ImmersionListPopupWindow;->prepareShow(Landroid/view/View;Landroid/view/ViewGroup;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lmiui/widget/ImmersionListPopupWindow;->showWithAnchor(Landroid/view/View;)V

    iget-object p0, p0, Lmiui/widget/ImmersionListPopupWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    const p1, 0x3e99999a    # 0.3f

    invoke-static {p0, p1}, Lcom/miui/internal/widget/ImmersionListPopupWindowHelper;->changeWindowBackground(Landroid/view/View;F)V

    :cond_0
    return-void
.end method
