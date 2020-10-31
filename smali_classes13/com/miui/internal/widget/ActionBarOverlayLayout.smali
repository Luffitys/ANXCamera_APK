.class public Lcom/miui/internal/widget/ActionBarOverlayLayout;
.super Lmiui/view/RoundedFrameLayout;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Lmiui/core/view/NestedScrollingParent3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;,
        Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;,
        Lcom/miui/internal/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;,
        Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;
    }
.end annotation


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
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

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

    move-result-object v1

    sget v2, Lcom/miui/internal/R$styleable;->Window_windowFixedWidthMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_68

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    sget v2, Lcom/miui/internal/R$styleable;->Window_windowFixedWidthMajor:I

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_68
    sget v2, Lcom/miui/internal/R$styleable;->Window_windowFixedWidthMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_7e

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    sget v2, Lcom/miui/internal/R$styleable;->Window_windowFixedWidthMinor:I

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_7e
    sget v2, Lcom/miui/internal/R$styleable;->Window_windowFixedHeightMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_94

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    sget v2, Lcom/miui/internal/R$styleable;->Window_windowFixedHeightMajor:I

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_94
    sget v2, Lcom/miui/internal/R$styleable;->Window_windowFixedHeightMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_aa

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iput-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    sget v2, Lcom/miui/internal/R$styleable;->Window_windowFixedHeightMinor:I

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_aa
    sget v2, Lmiui/R$styleable;->Window_contentAutoFitSystemWindow:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    if-eqz v0, :cond_bc

    sget v0, Lmiui/R$styleable;->Window_contentHeaderBackground:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    :cond_bc
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$202(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/internal/widget/ActionBarOverlayLayout;)Lcom/miui/internal/widget/ActionBarContainer;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/miui/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method private applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .registers 11

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p3, :cond_14

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-eq v2, v3, :cond_14

    const/4 v0, 0x1

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :cond_14
    if-eqz p4, :cond_21

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_21

    const/4 v0, 0x1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_21
    if-eqz p6, :cond_2e

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-eq v2, v3, :cond_2e

    const/4 v0, 0x1

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_2e
    if-eqz p5, :cond_3b

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_3b

    const/4 v0, 0x1

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_3b
    return v0
.end method

.method private computeFitSystemInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v1

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v0, :cond_f

    if-eqz v1, :cond_16

    :cond_f
    iget-boolean v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    if-nez v2, :cond_16

    const/4 v2, 0x0

    iput v2, p2, Landroid/graphics/Rect;->top:I

    :cond_16
    return-void
.end method

.method private createActionModeCallbackWrapper(Landroid/view/ActionMode$Callback;)Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;
    .registers 3

    instance-of v0, p1, Lmiui/view/SearchActionMode$Callback;

    if-eqz v0, :cond_a

    new-instance v0, Lcom/miui/internal/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$SearchActionModeCallbackWrapper;-><init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/ActionMode$Callback;)V

    return-object v0

    :cond_a
    new-instance v0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;-><init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/ActionMode$Callback;)V

    return-object v0
.end method

.method private getHeightMeasureSpec(I)I
    .registers 10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_57

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v3, v4, :cond_20

    const/4 v3, 0x1

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    :goto_21
    if-eqz v3, :cond_26

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    goto :goto_28

    :cond_26
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    :goto_28
    if-eqz v4, :cond_57

    iget v5, v4, Landroid/util/TypedValue;->type:I

    if-eqz v5, :cond_57

    iget v5, v4, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_39

    invoke-virtual {v4, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    goto :goto_4b

    :cond_39
    iget v5, v4, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_4a

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v5

    float-to-int v5, v5

    goto :goto_4b

    :cond_4a
    const/4 v5, 0x0

    :goto_4b
    if-lez v5, :cond_57

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_57
    return p1
.end method

.method private getNavigationBarHeight()I
    .registers 5

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_15

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    return v2

    :cond_15
    const/4 v2, 0x0

    return v2
.end method

.method private getWidthMeasureSpec(I)I
    .registers 10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_57

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v3, v4, :cond_20

    const/4 v3, 0x1

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    :goto_21
    if-eqz v3, :cond_26

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    goto :goto_28

    :cond_26
    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    :goto_28
    if-eqz v4, :cond_57

    iget v5, v4, Landroid/util/TypedValue;->type:I

    if-eqz v5, :cond_57

    iget v5, v4, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_39

    invoke-virtual {v4, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    goto :goto_4b

    :cond_39
    iget v5, v4, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_4a

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v5

    float-to-int v5, v5

    goto :goto_4b

    :cond_4a
    const/4 v5, 0x0

    :goto_4b
    if-lez v5, :cond_57

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_57
    return p1
.end method

.method private internalShowContextMenu(Landroid/view/View;FF)Z
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenu:Lcom/miui/internal/view/menu/ContextMenuBuilder;

    if-nez v0, :cond_15

    new-instance v0, Lcom/miui/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenu:Lcom/miui/internal/view/menu/ContextMenuBuilder;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ContextMenuBuilder;->setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V

    goto :goto_18

    :cond_15
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ContextMenuBuilder;->clear()V

    :goto_18
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenu:Lcom/miui/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/miui/internal/view/menu/ContextMenuBuilder;->show(Landroid/view/View;Landroid/os/IBinder;FF)Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenuPopupWindowHelper:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowHelper;

    if-eqz v0, :cond_2d

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowHelper;->setPresenterCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    const/4 v0, 0x1

    return v0

    :cond_2d
    invoke-super {p0, p1}, Lmiui/view/RoundedFrameLayout;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private isAttachedToFloatingWindow()Z
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getLocationOnScreen([I)V

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    if-eqz v3, :cond_30

    aget v3, v0, v4

    if-eqz v3, :cond_30

    aget v3, v0, v2

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v3, v5

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-eq v3, v5, :cond_30

    aget v3, v0, v4

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v3, v5

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v3, v5, :cond_30

    move v2, v4

    goto :goto_31

    :cond_30
    nop

    :goto_31
    return v2
.end method

.method private isBackPressed(Landroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_f

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method private isBottomAnimating()Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mAnimating:Z

    return v0
.end method

.method private isLayoutHideNavigation()Z
    .registers 3

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private pullChildren()V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    if-nez v0, :cond_62

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    sget v0, Lcom/miui/internal/R$id;->content_mask:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_OLED:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$drawable;->window_content_mask_oled:I

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_36
    sget v0, Lcom/miui/internal/R$id;->action_bar_container:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_58

    sget v1, Lcom/miui/internal/R$id;->action_context_bar:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContextView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    sget v1, Lcom/miui/internal/R$id;->action_bar:I

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    :cond_58
    sget v0, Lcom/miui/internal/R$id;->split_action_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/miui/internal/widget/ActionBarContainer;

    :cond_62
    return-void
.end method


# virtual methods
.method public animateContentMarginBottom(I)V
    .registers 10

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    return-void
.end method

.method public dismissContextMenu()V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenuHelper:Lcom/miui/internal/view/menu/MenuDialogHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuDialogHelper;->dismiss()V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenu:Lcom/miui/internal/view/menu/ContextMenuBuilder;

    :cond_a
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenuPopupWindowHelper:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowHelper;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowHelper;->dismiss()V

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenuPopupWindowHelper:Lcom/miui/internal/view/menu/context/ContextMenuPopupWindowHelper;

    :cond_13
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 10

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1e
    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mIsAttachedToFloatingWindow:Z

    if-eqz v0, :cond_8e

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isClipRoundedCorner()Z

    move-result v0

    if-nez v0, :cond_8e

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    invoke-super {p0, p1}, Lmiui/view/RoundedFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask1:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask2:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask2:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask3:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getHeight()I

    move-result v1

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask3:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask4:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask4:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask4:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_91

    :cond_8e
    invoke-super {p0, p1}, Lmiui/view/RoundedFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_91
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    invoke-super {p0, p1}, Lmiui/view/RoundedFrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isBackPressed(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_27

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarContextView:Lcom/miui/internal/widget/ActionBarContextView;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarContextView;->hideOverflowMenu()Z

    move-result v1

    if-nez v1, :cond_25

    :cond_1d
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    :cond_25
    const/4 v0, 0x1

    goto :goto_34

    :cond_27
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v2, :cond_32

    invoke-virtual {v2}, Lcom/miui/internal/widget/ActionBarView;->hideOverflowMenu()Z

    move-result v2

    if-eqz v2, :cond_32

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :goto_33
    move v0, v1

    :cond_34
    :goto_34
    return v0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .registers 16

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mOnStatusBarChangeListener:Lmiui/app/OnStatusBarChangeListener;

    if-eqz v0, :cond_9

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-interface {v0, v1}, Lmiui/app/OnStatusBarChangeListener;->onStatusBarHeightChange(I)V

    :cond_9
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/miui/internal/util/ContextHelper;->getActivityContextFromView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-eqz v4, :cond_29

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-ne v6, v2, :cond_27

    move v6, v2

    goto :goto_28

    :cond_27
    move v6, v3

    :goto_28
    move v0, v6

    :cond_29
    if-nez v0, :cond_3c

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1010586

    invoke-static {v4, v5, v3}, Lmiui/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v4

    if-ne v4, v2, :cond_3a

    move v4, v2

    goto :goto_3b

    :cond_3a
    move v4, v3

    :goto_3b
    move v0, v4

    :cond_3c
    if-eqz v0, :cond_46

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->right:I

    :cond_46
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v5

    if-nez v5, :cond_62

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isLayoutHideNavigation()Z

    move-result v5

    if-eqz v5, :cond_5d

    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getNavigationBarHeight()I

    move-result v6

    if-eq v5, v6, :cond_62

    :cond_5d
    iget-object v5, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iput v3, v5, Landroid/graphics/Rect;->bottom:I

    const/4 v4, 0x1

    :cond_62
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v6, :cond_8d

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v6

    if-eqz v6, :cond_72

    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v6, p1}, Lcom/miui/internal/widget/ActionBarContainer;->setPendingInsets(Landroid/graphics/Rect;)V

    :cond_72
    iget-object v8, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    iget-object v9, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v6

    if-eqz v6, :cond_85

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v6

    if-nez v6, :cond_85

    move v11, v2

    goto :goto_86

    :cond_85
    move v11, v3

    :goto_86
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v5

    :cond_8d
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_a6

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentMaskInsets:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v8, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/miui/internal/widget/ActionBarContainer;

    iget-object v9, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v2

    or-int/2addr v5, v2

    :cond_a6
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v2

    if-nez v2, :cond_b2

    if-nez v4, :cond_b2

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    :cond_b2
    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->computeFitSystemInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cb

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v5, 0x1

    :cond_cb
    if-eqz v5, :cond_d0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->requestLayout()V

    :cond_d0
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v2

    return v2
.end method

.method public getActionBar()Lmiui/app/ActionBar;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBar:Lmiui/app/ActionBar;

    return-object v0
.end method

.method public getActionBarView()Lcom/miui/internal/widget/ActionBarView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    return-object v0
.end method

.method protected getBottomInset()I
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getInsetHeight()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getCallback()Landroid/view/Window$Callback;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public getContentMaskAnimator(Landroid/view/View$OnClickListener;)Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;
    .registers 4

    new-instance v0, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/internal/widget/ActionBarOverlayLayout$ContentMaskAnimator;-><init>(Lcom/miui/internal/widget/ActionBarOverlayLayout;Landroid/view/View$OnClickListener;Lcom/miui/internal/widget/ActionBarOverlayLayout$1;)V

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public isRootSubDecor()Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mRootSubDecor:Z

    return v0
.end method

.method public isTranslucentStatus()Z
    .registers 7

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit16 v1, v0, 0x100

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_c

    move v1, v2

    goto :goto_d

    :cond_c
    move v1, v3

    :goto_d
    and-int/lit16 v4, v0, 0x400

    if-eqz v4, :cond_13

    move v4, v2

    goto :goto_14

    :cond_13
    move v4, v3

    :goto_14
    iget v5, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mTranslucentStatus:I

    if-eqz v5, :cond_1a

    move v5, v2

    goto :goto_1b

    :cond_1a
    move v5, v3

    :goto_1b
    if-eqz v1, :cond_1f

    if-nez v4, :cond_21

    :cond_1f
    if-eqz v5, :cond_22

    :cond_21
    goto :goto_23

    :cond_22
    move v2, v3

    :goto_23
    return v2
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 6

    invoke-super {p0, p1}, Lmiui/view/RoundedFrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v1

    if-nez v1, :cond_44

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isRootSubDecor()Z

    move-result v1

    if-eqz v1, :cond_44

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_44

    :try_start_16
    const-class v1, Landroid/view/WindowInsets;

    const-string v2, "consumeDisplayCutout"

    const-string v3, "()Landroid/view/WindowInsets;"

    invoke-static {v1, v2, v3}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    const-class v2, Landroid/view/WindowInsets;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0, v3}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInsets;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2b} :catch_2d

    move-object v0, v2

    goto :goto_44

    :catch_2d
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApplyWindowInsets, consumeDisplayCutout failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActionBarOverlayLayout"

    invoke-static {v3, v2}, Lmiui/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_44
    :goto_44
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Lmiui/view/RoundedFrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->isBlurEnable()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->updateAllClipView()V

    :cond_15
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    invoke-super {p0}, Lmiui/view/RoundedFrameLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 23

    move-object/from16 v7, p0

    invoke-direct/range {p0 .. p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getWidthMeasureSpec(I)I

    move-result v8

    move/from16 v0, p2

    invoke-direct {v7, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getHeightMeasureSpec(I)I

    move-result v9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    iget-object v13, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentMask:Landroid/view/View;

    const/4 v3, 0x0

    move v14, v0

    move v15, v1

    move v5, v2

    move v4, v3

    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getChildCount()I

    move-result v0

    if-ge v4, v0, :cond_89

    invoke-virtual {v7, v4}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eq v3, v12, :cond_7c

    if-eq v3, v13, :cond_7c

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_37

    move/from16 v16, v4

    move/from16 p1, v6

    move v6, v5

    goto :goto_83

    :cond_37
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v8

    move-object/from16 v18, v3

    move/from16 v3, v16

    move/from16 v16, v4

    move v4, v9

    move/from16 p1, v6

    move v6, v5

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v6, v3}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->combineMeasuredStates(II)I

    move-result v3

    move v15, v1

    move v14, v2

    move v5, v3

    goto :goto_84

    :cond_7c
    move-object/from16 v18, v3

    move/from16 v16, v4

    move/from16 p1, v6

    move v6, v5

    :goto_83
    move v5, v6

    :goto_84
    add-int/lit8 v4, v16, 0x1

    move/from16 v6, p1

    goto :goto_1b

    :cond_89
    move/from16 v16, v4

    move/from16 p1, v6

    move v6, v5

    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    const/4 v5, 0x0

    if-eqz v0, :cond_b7

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b7

    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_b3

    invoke-virtual {v1}, Lcom/miui/internal/widget/ActionBarContainer;->isBlurEnable()Z

    move-result v1

    if-eqz v1, :cond_b3

    if-gtz v0, :cond_ad

    move v1, v5

    goto :goto_ae

    :cond_ad
    move v1, v0

    :goto_ae
    move v11, v1

    move/from16 v16, v11

    move v11, v0

    goto :goto_bb

    :cond_b3
    move/from16 v16, v11

    move v11, v0

    goto :goto_bb

    :cond_b7
    move/from16 v16, v11

    move/from16 v11, p1

    :goto_bb
    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarView:Lcom/miui/internal/widget/ActionBarView;

    if-eqz v0, :cond_c9

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarView;->isSplitActionBar()Z

    move-result v0

    if-eqz v0, :cond_c9

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getBottomInset()I

    move-result v10

    :cond_c9
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_124

    iget-boolean v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentAutoFitSystemWindow:Z

    if-eqz v0, :cond_124

    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentHeaderBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e9

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getRight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_124

    :cond_e9
    const v0, 0x1020002

    invoke-virtual {v7, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_124

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ne v1, v4, :cond_124

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-gtz v11, :cond_114

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_124

    :cond_114
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_124
    :goto_124
    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v0

    if-eqz v0, :cond_13f

    if-lez v11, :cond_13f

    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_13f
    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_165

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->isBlurEnable()Z

    move-result v0

    if-eqz v0, :cond_165

    iget-boolean v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v0, :cond_157

    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_193

    :cond_157
    const/4 v1, 0x0

    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_193

    :cond_165
    iget-boolean v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v0, :cond_178

    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v11

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v10

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_193

    :cond_178
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isTranslucentStatus()Z

    move-result v0

    if-eqz v0, :cond_185

    if-lez v11, :cond_18c

    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iput v11, v0, Landroid/graphics/Rect;->top:I

    goto :goto_18c

    :cond_185
    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v11

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_18c
    :goto_18c
    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v10

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_193
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isLayoutHideNavigation()Z

    move-result v0

    if-eqz v0, :cond_1cd

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1ad

    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v1

    goto :goto_1cf

    :cond_1ad
    const/4 v1, 0x0

    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-nez v0, :cond_1c7

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/util/DeviceHelper;->isHideGestureLine(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1c5

    goto :goto_1c7

    :cond_1c5
    const/4 v5, 0x0

    goto :goto_1cf

    :cond_1c7
    :goto_1c7
    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1cf

    :cond_1cd
    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_1cf
    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isBottomAnimating()Z

    move-result v0

    if-nez v0, :cond_1ee

    iget-object v2, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    const/4 v3, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 p1, v11

    move v11, v6

    move/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    goto :goto_1f1

    :cond_1ee
    move/from16 p1, v11

    move v11, v6

    :goto_1f1
    iget-object v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_22f

    invoke-virtual {v0}, Lcom/miui/internal/widget/ActionBarContainer;->isBlurEnable()Z

    move-result v0

    if-eqz v0, :cond_22f

    iget-boolean v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v0, :cond_22f

    iget-boolean v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isBackupPadding:Z

    if-nez v0, :cond_213

    const/4 v6, 0x1

    iput-boolean v6, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isBackupPadding:Z

    invoke-virtual {v12}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iput v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentViewPaddingTopBackup:I

    invoke-virtual {v12}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iput v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentViewePaddingBottomBackup:I

    goto :goto_214

    :cond_213
    const/4 v6, 0x1

    :goto_214
    invoke-virtual {v12}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentViewPaddingTopBackup:I

    add-int v1, v16, v1

    invoke-virtual {v12}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    if-nez v10, :cond_227

    invoke-virtual {v12}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    goto :goto_22a

    :cond_227
    iget v3, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentViewePaddingBottomBackup:I

    add-int/2addr v3, v10

    :goto_22a
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    const/4 v0, 0x0

    goto :goto_24c

    :cond_22f
    const/4 v6, 0x1

    iget-boolean v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v0, :cond_24b

    iget-boolean v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isBackupPadding:Z

    if-eqz v0, :cond_247

    invoke-virtual {v12}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentViewPaddingTopBackup:I

    invoke-virtual {v12}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget v3, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentViewePaddingBottomBackup:I

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_247
    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isBackupPadding:Z

    goto :goto_24c

    :cond_24b
    const/4 v0, 0x0

    :goto_24c
    iget-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25a

    iget-boolean v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mRequestFitSystemWindow:Z

    if-eqz v1, :cond_268

    :cond_25a
    iget-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-super {v7, v1}, Lmiui/view/RoundedFrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    iput-boolean v0, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mRequestFitSystemWindow:Z

    :cond_268
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v8

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iget v1, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v11, v0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->combineMeasuredStates(II)I

    move-result v11

    if-eqz v13, :cond_2c4

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2c4

    iget-object v2, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentMaskInsets:Landroid/graphics/Rect;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v19, v5

    move/from16 v5, v17

    move/from16 p2, v10

    move v10, v6

    move/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v2, v8

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_2c9

    :cond_2c4
    move-object/from16 v19, v5

    move/from16 p2, v10

    move v10, v6

    :goto_2c9
    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v15, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v14, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v8, v11}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->resolveSizeAndState(III)I

    move-result v2

    shl-int/lit8 v3, v11, 0x10

    invoke-static {v0, v9, v3}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->resolveSizeAndState(III)I

    move-result v3

    invoke-virtual {v7, v2, v3}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->setMeasuredDimension(II)V

    invoke-direct/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->isAttachedToFloatingWindow()Z

    move-result v2

    iput-boolean v2, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mIsAttachedToFloatingWindow:Z

    if-eqz v2, :cond_340

    iget-object v2, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_340

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/internal/R$drawable;->floating_window_mask_1:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask1:Landroid/graphics/Bitmap;

    sget v3, Lcom/miui/internal/R$drawable;->floating_window_mask_2:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask2:Landroid/graphics/Bitmap;

    sget v3, Lcom/miui/internal/R$drawable;->floating_window_mask_3:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask3:Landroid/graphics/Bitmap;

    sget v3, Lcom/miui/internal/R$drawable;->floating_window_mask_4:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v7, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mMask4:Landroid/graphics/Bitmap;

    :cond_340
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .registers 14

    iget-object v6, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    const/4 v0, 0x0

    const/4 v7, 0x1

    aput v0, v6, v7

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_12

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/widget/ActionBarContainer;->onNestedPreScroll(Landroid/view/View;II[II[I)V

    :cond_12
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    aget v1, v1, v7

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .registers 7

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .registers 19

    move-object v0, p0

    iget-object v9, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    const/4 v1, 0x0

    const/4 v10, 0x1

    aput v1, v9, v10

    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_18

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Lcom/miui/internal/widget/ActionBarContainer;->onNestedScroll(Landroid/view/View;IIIII[I[I)V

    :cond_18
    iget-object v1, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    iget-object v2, v0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mOffsetInWindow:[I

    aget v2, v2, v10

    neg-int v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/internal/widget/ActionBarContainer;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    :cond_7
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/internal/widget/ActionBarContainer;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/widget/ActionBarContainer;->onStopNestedScroll(Landroid/view/View;I)V

    :cond_7
    return-void
.end method

.method public requestFitSystemWindows()V
    .registers 2

    invoke-super {p0}, Lmiui/view/RoundedFrameLayout;->requestFitSystemWindows()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mRequestFitSystemWindow:Z

    return-void
.end method

.method public setActionBar(Lmiui/app/ActionBar;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionBar:Lmiui/app/ActionBar;

    return-void
.end method

.method public setAnimating(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mAnimating:Z

    return-void
.end method

.method public setCallback(Landroid/view/Window$Callback;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mCallback:Landroid/view/Window$Callback;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContentView:Landroid/view/View;

    return-void
.end method

.method public setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mOnStatusBarChangeListener:Lmiui/app/OnStatusBarChangeListener;

    return-void
.end method

.method public setOverlayMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    return-void
.end method

.method public setRootSubDecor(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mRootSubDecor:Z

    return-void
.end method

.method public setTranslucentStatus(I)V
    .registers 3

    iget v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mTranslucentStatus:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mTranslucentStatus:I

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    :cond_9
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenu:Lcom/miui/internal/view/menu/ContextMenuBuilder;

    if-nez v0, :cond_15

    new-instance v0, Lcom/miui/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenu:Lcom/miui/internal/view/menu/ContextMenuBuilder;

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ContextMenuBuilder;->setCallback(Lcom/miui/internal/view/menu/MenuBuilder$Callback;)V

    goto :goto_18

    :cond_15
    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ContextMenuBuilder;->clear()V

    :goto_18
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenu:Lcom/miui/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/internal/view/menu/ContextMenuBuilder;->show(Landroid/view/View;Landroid/os/IBinder;)Lcom/miui/internal/view/menu/MenuDialogHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenuHelper:Lcom/miui/internal/view/menu/MenuDialogHelper;

    if-eqz v0, :cond_2d

    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mContextMenuCallback:Lcom/miui/internal/widget/ActionBarOverlayLayout$ContextMenuCallback;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/MenuDialogHelper;->setPresenterCallback(Lcom/miui/internal/view/menu/MenuPresenter$Callback;)V

    const/4 v0, 0x1

    return v0

    :cond_2d
    invoke-super {p0, p1}, Lmiui/view/RoundedFrameLayout;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->internalShowContextMenu(Landroid/view/View;FF)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->createActionModeCallbackWrapper(Landroid/view/ActionMode$Callback;)Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    :cond_1d
    if-eqz v0, :cond_21

    iput-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    :cond_21
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_34

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    if-eqz v1, :cond_34

    invoke-virtual {p0}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    invoke-interface {v1, v2}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    :cond_34
    iget-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    return-object v1
.end method

.method public startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 5

    instance-of v0, p1, Lcom/miui/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_b
    invoke-direct {p0, p2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->createActionModeCallbackWrapper(Landroid/view/ActionMode$Callback;)Lcom/miui/internal/widget/ActionBarOverlayLayout$ActionModeCallbackWrapper;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/widget/ActionBarOverlayLayout;->mActionMode:Landroid/view/ActionMode;

    return-object v1

    :cond_16
    invoke-virtual {p0, p2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/widget/ActionBarOverlayLayout;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
