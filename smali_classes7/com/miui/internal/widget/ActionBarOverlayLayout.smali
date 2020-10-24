.class public Lcom/miui/internal/widget/ActionBarOverlayLayout;
.super Lmiui/view/RoundedFrameLayout;
.source ""

# interfaces
.implements Lmiui/core/view/NestedScrollingParent3;


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionBarOverlayLayout"


# instance fields
.field private isBackupPadding:Z

.field private mActionBar:Lmiui/app/ActionBar;

.field private mActionBarBottom:Lcom/miui/internal/widget/ActionBarContainer;

.field private mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

.field protected mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

.field protected mActionBarView:Lcom/miui/internal/widget/ActionBarView;

.field private mActionMode:Landroid/view/ActionMode;

.field private mAnimating:Z

.field private mBaseContentInsets:Landroid/graphics/Rect;

.field private mBaseInnerInsets:Landroid/graphics/Rect;

.field private mCallback:Landroid/view/Window$Callback;

.field private mContentAutoFitSystemWindow:Z

.field private mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

.field private mContentInsets:Landroid/graphics/Rect;

.field private mContentMask:Landroid/view/View;

.field private mContentMaskInsets:Landroid/graphics/Rect;

.field protected mContentView:Landroid/view/View;

.field private mContentViewPaddingTopBackup:I

.field private mContentViewePaddingBottomBackup:I

.field private mContextMenu:Lcom/miui/internal/view/menu/ContextMenuBuilder;

.field private mContextMenuCallback:Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;

.field private mContextMenuHelper:Lcom/miui/internal/view/menu/MenuDialogHelper;

.field private mContextMenuPopupWindowHelper:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowHelper;

.field private mFixedHeightMajor:Landroid/util/TypedValue;

.field private mFixedHeightMinor:Landroid/util/TypedValue;

.field private mFixedWidthMajor:Landroid/util/TypedValue;

.field private mFixedWidthMinor:Landroid/util/TypedValue;

.field private mInnerInsets:Landroid/graphics/Rect;

.field private mIsAttachedToFloatingWindow:Z

.field private mLastBaseContentInsets:Landroid/graphics/Rect;

.field private mLastInnerInsets:Landroid/graphics/Rect;

.field private mMask1:Landroid/graphics/Bitmap;

.field private mMask2:Landroid/graphics/Bitmap;

.field private mMask3:Landroid/graphics/Bitmap;

.field private mMask4:Landroid/graphics/Bitmap;

.field private mOffsetInWindow:[I

.field private mOnStatusBarChangeListener:Lmiui/app/OnStatusBarChangeListener;

.field private mOverlayMode:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mRequestFitSystemWindow:Z

.field private mRootSubDecor:Z

.field private mTranslucentStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lmiui/view/RoundedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mRootSubDecor:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentMaskInsets:Landroid/graphics/Rect;

    new-instance v0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;-><init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Lcom/miui/internal/widget/ActionBarOverlayLayout$1;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentViewPaddingTopBackup:I

    iput v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentViewePaddingBottomBackup:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isBackupPadding:Z

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    sget-object v1, Lcom/miui/internal/R$styleable;->Window:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/miui/internal/R$styleable;->Window_windowFixedWidthMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    sget p3, Lcom/miui/internal/R$styleable;->Window_windowFixedWidthMajor:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_0
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowFixedWidthMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    sget p3, Lcom/miui/internal/R$styleable;->Window_windowFixedWidthMinor:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_1
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowFixedHeightMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    sget p3, Lcom/miui/internal/R$styleable;->Window_windowFixedHeightMajor:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_2
    sget p2, Lcom/miui/internal/R$styleable;->Window_windowFixedHeightMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    sget p3, Lcom/miui/internal/R$styleable;->Window_windowFixedHeightMinor:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_3
    sget p2, Lmiui/R$styleable;->Window_contentAutoFitSystemWindow:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    if-eqz p2, :cond_4

    sget p2, Lmiui/R$styleable;->Window_contentHeaderBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    :cond_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$202(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Lcom/miui/internal/widget/ActionBarContainer;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/miui/internal/widget/ActionBarContainer;

    return-object p0
.end method

.method private applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p1, 0x1

    if-eqz p3, :cond_0

    iget p3, p0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-eq p3, v0, :cond_0

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move p3, p1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p4, :cond_1

    iget p4, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-eq p4, v0, :cond_1

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move p3, p1

    :cond_1
    if-eqz p6, :cond_2

    iget p4, p0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget p6, p2, Landroid/graphics/Rect;->right:I

    if-eq p4, p6, :cond_2

    iput p6, p0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move p3, p1

    :cond_2
    if-eqz p5, :cond_3

    iget p4, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-eq p4, p2, :cond_3

    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_3
    move p1, p3

    :goto_1
    return p1
.end method

.method private computeFitSystemInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v1

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    if-nez p0, :cond_1

    const/4 p0, 0x0

    iput p0, p2, Landroid/graphics/Rect;->top:I

    :cond_1
    return-void
.end method

.method private createActionModeCallbackWrapper(Landroid/view/ActionMode$Callback;)Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;
    .locals 1

    instance-of v0, p1, Lmiui/view/SearchActionMode$Callback;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/internal/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;-><init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/ActionMode$Callback;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;-><init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/ActionMode$Callback;)V

    return-object v0
.end method

.method private getHeightMeasureSpec(I)I
    .locals 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    :goto_1
    if-eqz p0, :cond_4

    iget v2, p0, Landroid/util/TypedValue;->type:I

    if-eqz v2, :cond_4

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p0

    :goto_2
    float-to-int v4, p0

    goto :goto_3

    :cond_2
    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v0

    int-to-float v0, v0

    invoke-virtual {p0, v2, v0}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p0

    goto :goto_2

    :cond_3
    :goto_3
    if-lez v4, :cond_4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_4
    return p1
.end method

.method private getNavigationBarHeight()I
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "navigation_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getWidthMeasureSpec(I)I
    .locals 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    :goto_1
    if-eqz p0, :cond_4

    iget v2, p0, Landroid/util/TypedValue;->type:I

    if-eqz v2, :cond_4

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p0

    :goto_2
    float-to-int v4, p0

    goto :goto_3

    :cond_2
    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v0

    int-to-float v0, v0

    invoke-virtual {p0, v2, v0}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p0

    goto :goto_2

    :cond_3
    :goto_3
    if-lez v4, :cond_4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_4
    return p1
.end method

.method private internalShowContextMenu(Landroid/view/View;FF)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenu:Lcom/miui/internal/view/menu/ContextMenuBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenu:Lcom/miui/internal/view/menu/ContextMenuBuilder;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->clear()V

    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenu:Lcom/miui/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/miui/internal/view/menu/ContextMenuBuilder;->show(Landroid/view/View;Landroid/os/IBinder;FF)Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenuPopupWindowHelper:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowHelper;

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;

    invoke-virtual {p2, p0}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowHelper;->setPresenterCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->showContextMenuForChild(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private isAttachedToFloatingWindow()Z
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    aget v3, v0, v4

    if-eqz v3, :cond_0

    aget v3, v0, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v3, v5

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-eq v3, v5, :cond_0

    aget v0, v0, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    add-int/2addr v0, p0

    iget p0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v0, p0, :cond_0

    move v2, v4

    :cond_0
    return v2
.end method

.method private isBackPressed(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isBottomAnimating()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mAnimating:Z

    return p0
.end method

.method private isLayoutHideNavigation()Z
    .locals 0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowSystemUiVisibility()I

    move-result p0

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private pullChildren()V
    .locals 4

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    if-nez v0, :cond_2

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    sget v0, Lcom/miui/internal/R$id;->content_mask:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->IS_OLED:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$drawable;->window_content_mask_oled:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    sget v0, Lcom/miui/internal/R$id;->action_bar_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    sget v1, Lcom/miui/internal/R$id;->action_context_bar:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContextView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    sget v1, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    :cond_1
    sget v0, Lcom/miui/internal/R$id;->split_action_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/miui/internal/widget/ActionBarContainer;

    :cond_2
    return-void
.end method


# virtual methods
.method public animateContentMarginBottom(I)V
    .locals 7

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, v2, Landroid/graphics/Rect;->top:I

    iput p1, v2, Landroid/graphics/Rect;->bottom:I

    iget p1, v0, Landroid/graphics/Rect;->right:I

    iput p1, v2, Landroid/graphics/Rect;->right:I

    iget p1, v0, Landroid/graphics/Rect;->left:I

    iput p1, v2, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public dismissContextMenu()V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenuHelper:Lcom/miui/internal/view/menu/MenuDialogHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuDialogHelper;->dismiss()V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenu:Lcom/miui/internal/view/menu/ContextMenuBuilder;

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenuPopupWindowHelper:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowHelper;->dismiss()V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenuPopupWindowHelper:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowHelper;

    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mIsAttachedToFloatingWindow:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmiui/view/RoundedFrameLayout;->isClipRoundedCorner()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask1:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask2:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask2:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask3:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask3:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask4:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask4:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask4:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isBackPressed(Landroid/view/KeyEvent;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/internal/widget/ActionBarContextView;->hideOverflowMenu()Z

    move-result p1

    if-nez p1, :cond_4

    :cond_1
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarView;->hideOverflowMenu()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    :cond_4
    :goto_0
    return v1
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 12

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mOnStatusBarChangeListener:Lmiui/app/OnStatusBarChangeListener;

    if-eqz v0, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-interface {v0, v1}, Lmiui/app/OnStatusBarChangeListener;->onStatusBarHeightChange(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-static {p0}, Lcom/miui/internal/util/ContextHelper;->getActivityContextFromView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x1010586

    invoke-static {v0, v3, v2}, Lmiui/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    :cond_4
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isLayoutHideNavigation()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getNavigationBarHeight()I

    move-result v3

    if-eq v0, v3, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v2

    :goto_2
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v3, p1}, Lcom/miui/internal/widget/ActionBarContainer;->setPendingInsets(Landroid/graphics/Rect;)V

    :cond_7
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result p1

    if-nez p1, :cond_8

    move v8, v1

    goto :goto_3

    :cond_8
    move v8, v2

    :goto_3
    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result p1

    goto :goto_4

    :cond_9
    move p1, v2

    :goto_4
    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentMaskInsets:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/miui/internal/widget/ActionBarContainer;

    iget-object v7, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v3

    or-int/2addr p1, v3

    :cond_a
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v3

    if-nez v3, :cond_b

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    :cond_b
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->computeFitSystemInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_5

    :cond_c
    move v1, p1

    :goto_5
    if-eqz v1, :cond_d

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_d
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result p0

    return p0
.end method

.method public getActionBar()Lmiui/app/ActionBar;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBar:Lmiui/app/ActionBar;

    return-object p0
.end method

.method public getActionBarView()Lcom/miui/internal/widget/ActionBarView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    return-object p0
.end method

.method protected getBottomInset()I
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->getInsetHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCallback()Landroid/view/Window$Callback;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mCallback:Landroid/view/Window$Callback;

    return-object p0
.end method

.method public getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;
    .locals 2

    new-instance v0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;-><init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/View$OnClickListener;Lcom/miui/internal/widget/ActionBarOverlayLayout$1;)V

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public isRootSubDecor()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mRootSubDecor:Z

    return p0
.end method

.method public isTranslucentStatus()Z
    .locals 4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit16 v1, v0, 0x100

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iget p0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mTranslucentStatus:I

    if-eqz p0, :cond_2

    move p0, v2

    goto :goto_2

    :cond_2
    move p0, v3

    :goto_2
    if-eqz v1, :cond_3

    if-nez v0, :cond_5

    :cond_3
    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :cond_5
    :goto_3
    return v2
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p0, v0, :cond_0

    :try_start_0
    const-class p0, Landroid/view/WindowInsets;

    const-string v0, "consumeDisplayCutout"

    const-string v1, "()Landroid/view/WindowInsets;"

    invoke-static {p0, v0, v1}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object p0

    const-class v0, Landroid/view/WindowInsets;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, v1}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowInsets;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onApplyWindowInsets, consumeDisplayCutout failed, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActionBarOverlayLayout"

    invoke-static {v0, p0}, Lmiui/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->isBlurEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarContainer;->updateAllClipView()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 19

    move-object/from16 v7, p0

    invoke-direct/range {p0 .. p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getWidthMeasureSpec(I)I

    move-result v8

    move/from16 v0, p2

    invoke-direct {v7, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getHeightMeasureSpec(I)I

    move-result v9

    iget-object v10, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    iget-object v11, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    const/4 v12, 0x0

    move v6, v12

    move v13, v6

    move v14, v13

    move v15, v14

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-ge v6, v0, :cond_2

    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eq v5, v10, :cond_1

    if-eq v5, v11, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v8

    move v4, v9

    move-object/from16 v17, v5

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v15, v0}, Landroid/widget/FrameLayout;->combineMeasuredStates(II)I

    move-result v15

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarContainer;->isBlurEnable()Z

    move-result v1

    if-eqz v1, :cond_4

    if-gtz v0, :cond_3

    move v1, v12

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    move/from16 v16, v1

    goto :goto_3

    :cond_4
    move/from16 v16, v12

    goto :goto_3

    :cond_5
    move v0, v12

    move/from16 v16, v0

    :goto_3
    iget-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarView;->isSplitActionBar()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getBottomInset()I

    move-result v1

    move/from16 v17, v1

    goto :goto_4

    :cond_6
    move/from16 v17, v12

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v1

    const/4 v6, 0x1

    if-eqz v1, :cond_9

    iget-boolean v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    if-eqz v1, :cond_9

    iget-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v12, v12, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_5

    :cond_7
    const v1, 0x1020002

    invoke-virtual {v7, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ne v2, v6, :cond_9

    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    if-gtz v0, :cond_8

    iget-object v3, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_5

    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, v12, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_9
    :goto_5
    iget-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v1

    if-eqz v1, :cond_a

    if-lez v0, :cond_a

    iget-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iput v12, v1, Landroid/graphics/Rect;->top:I

    :cond_a
    iget-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarContainer;->isBlurEnable()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v0, :cond_b

    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iput v12, v0, Landroid/graphics/Rect;->top:I

    goto :goto_6

    :cond_b
    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iput v12, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iput v12, v1, Landroid/graphics/Rect;->top:I

    :goto_6
    iput v12, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_8

    :cond_c
    iget-boolean v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v1, :cond_d

    iget-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    add-int v0, v0, v17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_8

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v1

    if-eqz v1, :cond_e

    if-lez v0, :cond_f

    iget-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->top:I

    goto :goto_7

    :cond_e
    iget-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    :cond_f
    :goto_7
    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int v1, v1, v17

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isLayoutHideNavigation()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_11

    :cond_10
    :goto_9
    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iput v12, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_a

    :cond_11
    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iput v12, v0, Landroid/graphics/Rect;->right:I

    iput v12, v0, Landroid/graphics/Rect;->left:I

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-nez v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/util/DeviceHelper;->isHideGestureLine(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_9

    :cond_12
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isBottomAnimating()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v2, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object v1, v10

    move v12, v6

    move/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    goto :goto_b

    :cond_13
    move v12, v6

    :goto_b
    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->isBlurEnable()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v0, :cond_16

    iget-boolean v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isBackupPadding:Z

    if-nez v0, :cond_14

    iput-boolean v12, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isBackupPadding:Z

    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iput v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentViewPaddingTopBackup:I

    invoke-virtual {v10}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iput v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentViewePaddingBottomBackup:I

    :cond_14
    invoke-virtual {v10}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentViewPaddingTopBackup:I

    add-int v1, v16, v1

    invoke-virtual {v10}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    if-nez v17, :cond_15

    invoke-virtual {v10}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    goto :goto_c

    :cond_15
    iget v3, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentViewePaddingBottomBackup:I

    add-int v3, v17, v3

    :goto_c
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_d

    :cond_16
    iget-boolean v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v0, :cond_18

    iget-boolean v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isBackupPadding:Z

    if-eqz v0, :cond_17

    invoke-virtual {v10}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentViewPaddingTopBackup:I

    invoke-virtual {v10}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget v3, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentViewePaddingBottomBackup:I

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_17
    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isBackupPadding:Z

    :cond_18
    :goto_d
    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    iget-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mRequestFitSystemWindow:Z

    if-eqz v0, :cond_1a

    :cond_19
    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    iget-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-super {v7, v0}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mRequestFitSystemWindow:Z

    :cond_1a
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move v2, v8

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v15, v0}, Landroid/widget/FrameLayout;->combineMeasuredStates(II)I

    move-result v10

    if-eqz v11, :cond_1b

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1b

    iget-object v2, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentMaskInsets:Landroid/graphics/Rect;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v2, v8

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v13, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v14, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v8, v10}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v2, v10, 0x10

    invoke-static {v0, v9, v2}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {v7, v1, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isAttachedToFloatingWindow()Z

    move-result v0

    iput-boolean v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mIsAttachedToFloatingWindow:Z

    if-eqz v0, :cond_1c

    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1c

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$drawable;->floating_window_mask_1:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask1:Landroid/graphics/Bitmap;

    sget v1, Lcom/miui/internal/R$drawable;->floating_window_mask_2:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask2:Landroid/graphics/Bitmap;

    sget v1, Lcom/miui/internal/R$drawable;->floating_window_mask_3:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask3:Landroid/graphics/Bitmap;

    sget v1, Lcom/miui/internal/R$drawable;->floating_window_mask_4:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask4:Landroid/graphics/Bitmap;

    :cond_1c
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 8

    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    const/4 v0, 0x0

    const/4 v7, 0x1

    aput v0, v6, v7

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/widget/ActionBarContainer;->onNestedPreScroll(Landroid/view/View;II[II[I)V

    :cond_0
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    aget p0, p0, v7

    neg-int p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->offsetTopAndBottom(I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 0

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 11

    move-object v0, p0

    iget-object v9, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    const/4 v1, 0x0

    const/4 v10, 0x1

    aput v1, v9, v10

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Lcom/miui/internal/widget/ActionBarContainer;->onNestedScroll(Landroid/view/View;IIIII[I[I)V

    :cond_0
    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    iget-object v0, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    aget v0, v0, v10

    neg-int v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/widget/ActionBarContainer;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/widget/ActionBarContainer;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/widget/ActionBarContainer;->onStopNestedScroll(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public requestFitSystemWindows()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->requestFitSystemWindows()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mRequestFitSystemWindow:Z

    return-void
.end method

.method public setActionBar(Lmiui/app/ActionBar;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBar:Lmiui/app/ActionBar;

    return-void
.end method

.method public setAnimating(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mAnimating:Z

    return-void
.end method

.method public setCallback(Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mCallback:Landroid/view/Window$Callback;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    return-void
.end method

.method public setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mOnStatusBarChangeListener:Lmiui/app/OnStatusBarChangeListener;

    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    return-void
.end method

.method public setRootSubDecor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mRootSubDecor:Z

    return-void
.end method

.method public setTranslucentStatus(I)V
    .locals 1

    iget v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mTranslucentStatus:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mTranslucentStatus:I

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    :cond_0
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenu:Lcom/miui/internal/view/menu/ContextMenuBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenu:Lcom/miui/internal/view/menu/ContextMenuBuilder;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuBuilder;->setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuBuilder;->clear()V

    :goto_0
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenu:Lcom/miui/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/internal/view/menu/ContextMenuBuilder;->show(Landroid/view/View;Landroid/os/IBinder;)Lcom/miui/internal/view/menu/MenuDialogHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenuHelper:Lcom/miui/internal/view/menu/MenuDialogHelper;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;

    invoke-virtual {v0, p0}, Lcom/miui/internal/view/menu/MenuDialogHelper;->setPresenterCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->showContextMenuForChild(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->internalShowContextMenu(Landroid/view/View;FF)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->createActionModeCallbackWrapper(Landroid/view/ActionMode$Callback;)Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    :cond_2
    iget-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    invoke-interface {p1, v0}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    :cond_3
    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method public startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    instance-of v0, p1, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->createActionModeCallbackWrapper(Landroid/view/ActionMode$Callback;)Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    return-object p1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method
