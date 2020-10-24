.class public Lcom/miui/internal/view/menu/PhoneActionMenuView;
.super Lcom/miui/internal/view/menu/ActionMenuView;
.source ""


# static fields
.field private static final ATTRS:[I


# instance fields
.field private isShowBlurBackground:Z

.field private mAverageActionButtonWidth:I

.field private mBackgroundPadding:Landroid/graphics/Rect;

.field private mBackgroundView:Landroid/view/View;

.field private mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

.field private mCollapseBackground:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mExpandBackground:Landroid/graphics/drawable/Drawable;

.field private mExpandedMenuBlurView:Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

.field private mMaxActionButtonWidth:I

.field private mMenuItemHeight:I

.field private mMenuItemWidth:I

.field private mOverflowBackgroundBackup:Landroid/graphics/drawable/Drawable;

.field private mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

.field private mOverflowMenuView:Landroid/view/View;

.field private mOverflowMenuViewAnimator:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

.field private mSplitActionBarOverlayHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100d4

    aput v2, v0, v1

    sget v1, Lcom/miui/internal/R$attr;->expandBackground:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/miui/internal/R$attr;->splitActionBarOverlayHeight:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mMaxActionButtonWidth:I

    iput v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mAverageActionButtonWidth:I

    const/4 v1, 0x0

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView;->ATTRS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mSplitActionBarOverlayHeight:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->extractBackground()V

    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->addBlurView(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setChildrenDrawingOrderEnabled(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/miui/internal/R$dimen;->action_button_max_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mMaxActionButtonWidth:I

    return-void
.end method

.method static synthetic access$100(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/internal/view/menu/PhoneActionMenuView;Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isShowBlurBackground:Z

    return p0
.end method

.method static synthetic access$400(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    return-object p0
.end method

.method private addBlurView(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/miui/internal/widget/BlurBackgroundView;

    invoke-direct {v0, p1}, Lcom/miui/internal/widget/BlurBackgroundView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iget-boolean p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isShowBlurBackground:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setBlurBackground(Z)Z

    :cond_0
    return-void
.end method

.method private clearBackground()V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private extractBackground()V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget-object p0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_2
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    return-void
.end method

.method private getOverflowMenuViewAnimator()Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuViewAnimator:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;-><init>(Lcom/miui/internal/view/menu/PhoneActionMenuView;Lcom/miui/internal/view/menu/PhoneActionMenuView$1;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuViewAnimator:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuViewAnimator:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    return-object p0
.end method

.method private getStatusBarHeight()I
    .locals 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "status_bar_height"

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

.method private resetBackground()V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->extractBackground()V

    return-void
.end method


# virtual methods
.method public filterLeftoverView(I)Z
    .locals 4

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->filterLeftoverView(I)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    return v2
.end method

.method protected getChildDrawingOrder(II)I
    .locals 4

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-nez p2, :cond_1

    if-eq v0, v2, :cond_0

    return v0

    :cond_0
    if-eq v1, v2, :cond_2

    return v1

    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    if-eq v0, v2, :cond_2

    if-eq v1, v2, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_7

    if-eq v2, v0, :cond_6

    if-ne v2, v1, :cond_3

    goto :goto_2

    :cond_3
    if-ge v2, v0, :cond_4

    add-int/lit8 v3, v2, 0x1

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    if-ge v2, v1, :cond_5

    add-int/lit8 v3, v3, 0x1

    :cond_5
    if-ne v3, p2, :cond_6

    return v2

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->getChildDrawingOrder(II)I

    move-result p0

    return p0
.end method

.method public getCollapsedHeight()I
    .locals 2

    iget v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mMenuItemHeight:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mSplitActionBarOverlayHeight:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public hasBackgroundView()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    if-ne v1, p0, :cond_1

    :cond_0
    move v0, v3

    :cond_1
    return v0
.end method

.method public hasBlurBackgroundView()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    if-ne v1, p0, :cond_1

    :cond_0
    move v0, v3

    :cond_1
    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsing:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getOverflowMenuViewAnimator()Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    move-result-object v1

    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanded:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsing:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->hide()V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanding:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, p0, :cond_2

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->reverse()V

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public isBlurEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isShowBlurBackground:Z

    return p0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanding:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanded:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSearchStubSupportBlur()Z
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/BlurBackgroundView;->isSupportBlur()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p4

    move v5, p1

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    iget-object p3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p3

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p3

    move v0, p2

    move v1, v0

    move v6, v1

    :goto_1
    const/4 v7, 0x1

    if-ge v0, p3, :cond_4

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-eq v2, v3, :cond_3

    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    if-eq v2, v3, :cond_3

    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    if-ne v2, v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mAverageActionButtonWidth:I

    if-lt v2, v3, :cond_2

    move v6, v7

    :cond_2
    add-int/lit8 v1, v1, 0x1

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-eqz v6, :cond_5

    iget v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mAverageActionButtonWidth:I

    mul-int/2addr v0, v1

    goto :goto_3

    :cond_5
    iget v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mMenuItemWidth:I

    :goto_3
    sub-int/2addr p4, v0

    shr-int/2addr p4, v7

    :goto_4
    if-ge p2, p3, :cond_9

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-eq v8, v0, :cond_8

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    if-eq v8, v0, :cond_8

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    if-ne v8, v0, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v6, :cond_7

    iget v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mAverageActionButtonWidth:I

    sub-int/2addr v1, v0

    shr-int/lit8 v9, v1, 0x1

    add-int/2addr p4, v9

    add-int v4, p4, v0

    move-object v0, p0

    move-object v1, v8

    move v2, p4

    move v3, p1

    move v5, p5

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    sub-int/2addr p4, v9

    iget v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mAverageActionButtonWidth:I

    goto :goto_5

    :cond_7
    add-int v4, p4, v0

    move-object v0, p0

    move-object v1, v8

    move v2, p4

    move v3, p1

    move v5, p5

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_5
    add-int/2addr p4, v0

    :cond_8
    :goto_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_9
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    iget-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    iget-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-eq v2, v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    const/4 v2, 0x0

    if-eqz v0, :cond_b

    if-nez v1, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    div-int/2addr v3, v1

    iget v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mMaxActionButtonWidth:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mAverageActionButtonWidth:I

    const/high16 v3, -0x80000000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    move v3, v2

    move v10, v3

    :goto_0
    if-ge v2, v0, :cond_5

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    iget-object v4, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-eq v11, v4, :cond_4

    iget-object v4, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    if-eq v11, v4, :cond_4

    iget-object v4, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    if-ne v11, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, v11

    move v6, v1

    move v8, p2

    invoke-virtual/range {v4 .. v9}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v10, v4

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iput v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mMenuItemWidth:I

    iput v10, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mMenuItemHeight:I

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getStatusBarHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mMenuItemHeight:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v5, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move v6, p1

    move v8, p2

    invoke-virtual/range {v4 .. v9}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object p2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object p2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr v10, p2

    iget-object p2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanded:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne p2, v0, :cond_6

    iget-object p2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_3

    :cond_6
    sget-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne p2, v0, :cond_7

    iget-object p2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    int-to-float v0, v10

    goto :goto_2

    :cond_7
    :goto_3
    iget-object p2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, p2

    :cond_8
    iget-boolean p2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isShowBlurBackground:Z

    if-nez p2, :cond_a

    iget-object p2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    :goto_4
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1, v10}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void

    :cond_b
    :goto_5
    iput v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mMenuItemHeight:I

    invoke-virtual {p0, v2, v2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 0

    sget-boolean p1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2, p3, p4}, Lcom/miui/internal/view/menu/ActionMenuView;->computeAlpha(FZZ)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setAlpha(F)V

    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/miui/internal/view/menu/ActionMenuView;->computeTranslationY(FZZ)F

    move-result p1

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p3

    if-ge p2, p3, :cond_3

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    iget-object p4, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-eq p3, p4, :cond_2

    iget-object p4, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    if-eq p3, p4, :cond_2

    iget-object p4, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    if-ne p3, p4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    :goto_0
    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method public setAlpha(F)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isShowBlurBackground:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/internal/widget/BlurBackgroundView;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->extractBackground()V

    :cond_0
    return-void
.end method

.method public setBlurBackground(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/BlurBackgroundView;->setBlurBackground(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isShowBlurBackground:Z

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandedMenuBlurView:Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/miui/internal/view/menu/ExpandedMenuBlurView;->setBlurBackground(Z)Z

    :cond_0
    iget-boolean p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isShowBlurBackground:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandedMenuBlurView:Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-le p1, v1, :cond_1

    iget-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandedMenuBlurView:Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowBackgroundBackup:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandedMenuBlurView:Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p0, v2}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandedMenuBlurView:Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-le p1, v1, :cond_3

    iget-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowBackgroundBackup:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandedMenuBlurView:Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowBackgroundBackup:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_0
    return v0
.end method

.method public setOverflowMenuView(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandedMenuBlurView:Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandedMenuBlurView:Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eq v0, p1, :cond_5

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandedMenuBlurView:Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandedMenuBlurView:Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandedMenuBlurView:Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    :cond_2
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandedMenuBlurView:Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    if-nez v0, :cond_3

    new-instance v0, Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/internal/view/menu/ExpandedMenuBlurView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandedMenuBlurView:Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    :cond_3
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandedMenuBlurView:Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandedMenuBlurView:Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_4
    iget-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandedMenuBlurView:Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    iput-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    iget-boolean p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isShowBlurBackground:Z

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setBlurBackground(Z)Z

    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->extractBackground()V

    :cond_5
    return-void
.end method

.method public setValue(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public showOverflowMenu()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanding:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanded:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isShowBlurBackground:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getOverflowMenuViewAnimator()Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    move-result-object v1

    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanding:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->show()V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsing:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v2, :cond_3

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->reverse()V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->postInvalidateOnAnimation()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    return v0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public updateBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isShowBlurBackground:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->clearBackground()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->resetBackground()V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setBlurBackground(Z)Z

    return-void
.end method
