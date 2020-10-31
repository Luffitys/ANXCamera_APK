.class public Lcom/miui/internal/view/menu/PhoneActionMenuView;
.super Lcom/miui/internal/view/menu/ActionMenuView;
.source "PhoneActionMenuView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;,
        Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;
    }
.end annotation


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
    .registers 3

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
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mMaxActionButtonWidth:I

    iput v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mAverageActionButtonWidth:I

    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/miui/internal/view/menu/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView;->ATTRS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mSplitActionBarOverlayHeight:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->extractBackground()V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->addBlurView(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setChildrenDrawingOrderEnabled(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/miui/internal/R$dimen;->action_button_max_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mMaxActionButtonWidth:I

    return-void
.end method

.method static synthetic access$100(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/internal/view/menu/PhoneActionMenuView;Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;)Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isShowBlurBackground:Z

    return v0
.end method

.method static synthetic access$400(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/internal/view/menu/PhoneActionMenuView;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    return-object v0
.end method

.method private addBlurView(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Lcom/miui/internal/widget/BlurBackgroundView;

    invoke-direct {v0, p1}, Lcom/miui/internal/widget/BlurBackgroundView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    invoke-virtual {v1, v0}, Lcom/miui/internal/widget/BlurBackgroundView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->addView(Landroid/view/View;I)V

    iget-boolean v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isShowBlurBackground:Z

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setBlurBackground(Z)Z

    :cond_20
    return-void
.end method

.method private clearBackground()V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private extractBackground()V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    :cond_b
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_14

    :cond_12
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    :goto_14
    if-nez v0, :cond_1c

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_1c
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    return-void
.end method

.method private getOverflowMenuViewAnimator()Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuViewAnimator:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    if-nez v0, :cond_c

    new-instance v0, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;-><init>(Lcom/miui/internal/view/menu/PhoneActionMenuView;Lcom/miui/internal/view/menu/PhoneActionMenuView$1;)V

    iput-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuViewAnimator:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    :cond_c
    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuViewAnimator:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    return-object v0
.end method

.method private getStatusBarHeight()I
    .registers 5

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

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

.method private resetBackground()V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_d

    :cond_b
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    :goto_d
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->extractBackground()V

    return-void
.end method


# virtual methods
.method public filterLeftoverView(I)Z
    .registers 7

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_24

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    if-eq v0, v1, :cond_24

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    if-ne v0, v1, :cond_13

    goto :goto_24

    :cond_13
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_22

    iget-boolean v4, v1, Lcom/miui/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v4, :cond_20

    goto :goto_22

    :cond_20
    move v4, v3

    goto :goto_23

    :cond_22
    :goto_22
    move v4, v2

    :goto_23
    goto :goto_25

    :cond_24
    :goto_24
    const/4 v4, 0x0

    :goto_25
    if-eqz v4, :cond_2e

    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->filterLeftoverView(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_2f

    :cond_2e
    move v2, v3

    :goto_2f
    return v2
.end method

.method protected getChildDrawingOrder(II)I
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-nez p2, :cond_15

    if-eq v0, v2, :cond_12

    return v0

    :cond_12
    if-eq v1, v2, :cond_1d

    return v1

    :cond_15
    const/4 v3, 0x1

    if-ne p2, v3, :cond_1d

    if-eq v0, v2, :cond_1d

    if-eq v1, v2, :cond_1d

    return v1

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-ge v2, p1, :cond_34

    if-eq v2, v0, :cond_31

    if-ne v2, v1, :cond_25

    goto :goto_31

    :cond_25
    move v3, v2

    if-ge v2, v0, :cond_2a

    add-int/lit8 v3, v3, 0x1

    :cond_2a
    if-ge v2, v1, :cond_2e

    add-int/lit8 v3, v3, 0x1

    :cond_2e
    if-ne v3, p2, :cond_31

    return v2

    :cond_31
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_34
    invoke-super {p0, p1, p2}, Lcom/miui/internal/view/menu/ActionMenuView;->getChildDrawingOrder(II)I

    move-result v2

    return v2
.end method

.method public getCollapsedHeight()I
    .registers 3

    iget v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mMenuItemHeight:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mSplitActionBarOverlayHeight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public hasBackgroundView()Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_12

    invoke-virtual {p0, v3}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    if-ne v1, v2, :cond_13

    :cond_12
    move v0, v3

    :cond_13
    return v0
.end method

.method public hasBlurBackgroundView()Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_12

    invoke-virtual {p0, v3}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    if-ne v1, v2, :cond_13

    :cond_12
    move v0, v3

    :cond_13
    return v0
.end method

.method public hideOverflowMenu()Z
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsing:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v1, :cond_24

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v1, :cond_b

    goto :goto_24

    :cond_b
    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getOverflowMenuViewAnimator()Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    move-result-object v1

    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanded:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v2, :cond_1b

    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsing:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    iput-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->hide()V

    goto :goto_22

    :cond_1b
    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanding:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v2, :cond_22

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->reverse()V

    :cond_22
    :goto_22
    const/4 v2, 0x1

    return v2

    :cond_24
    :goto_24
    const/4 v1, 0x0

    return v1
.end method

.method public isBlurEnable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isShowBlurBackground:Z

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanding:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanded:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public isSearchStubSupportBlur()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    invoke-virtual {v0}, Lcom/miui/internal/widget/BlurBackgroundView;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 25

    move-object/from16 v10, p0

    sub-int v11, p4, p2

    sub-int v12, p5, p3

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    iget-object v1, v10, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget-object v1, v10, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move v3, v6

    move v4, v11

    move v5, v7

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    iget-object v0, v10, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v7, v0

    move v14, v0

    goto :goto_25

    :cond_24
    move v14, v0

    :goto_25
    move v3, v14

    iget-object v1, v10, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move v4, v11

    move v5, v12

    invoke-static/range {v0 .. v5}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    iget-object v5, v10, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    const/4 v6, 0x0

    move-object/from16 v4, p0

    move v7, v3

    move v8, v11

    move v9, v12

    invoke-static/range {v4 .. v9}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildCount()I

    move-result v2

    const/4 v4, 0x0

    :goto_42
    if-ge v4, v2, :cond_63

    invoke-virtual {v10, v4}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, v10, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-eq v5, v6, :cond_60

    iget-object v6, v10, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    if-eq v5, v6, :cond_60

    iget-object v6, v10, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    if-ne v5, v6, :cond_55

    goto :goto_60

    :cond_55
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, v10, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mAverageActionButtonWidth:I

    if-lt v6, v7, :cond_5e

    const/4 v0, 0x1

    :cond_5e
    add-int/lit8 v1, v1, 0x1

    :cond_60
    :goto_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    :cond_63
    if-eqz v0, :cond_6d

    iget v4, v10, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mAverageActionButtonWidth:I

    mul-int/2addr v4, v1

    sub-int v4, v11, v4

    shr-int/lit8 v4, v4, 0x1

    goto :goto_73

    :cond_6d
    iget v4, v10, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mMenuItemWidth:I

    sub-int v4, v11, v4

    shr-int/lit8 v4, v4, 0x1

    :goto_73
    const/4 v5, 0x0

    move v13, v4

    move v15, v5

    :goto_76
    if-ge v15, v2, :cond_c3

    invoke-virtual {v10, v15}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iget-object v4, v10, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-eq v9, v4, :cond_be

    iget-object v4, v10, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    if-eq v9, v4, :cond_be

    iget-object v4, v10, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    if-ne v9, v4, :cond_89

    goto :goto_c0

    :cond_89
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    if-eqz v0, :cond_aa

    iget v4, v10, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mAverageActionButtonWidth:I

    sub-int v4, v4, v16

    shr-int/lit8 v17, v4, 0x1

    add-int v13, v13, v17

    add-int v8, v13, v16

    move-object/from16 v4, p0

    move-object v5, v9

    move v6, v13

    move v7, v3

    move-object/from16 v18, v9

    move v9, v12

    invoke-static/range {v4 .. v9}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    sub-int v13, v13, v17

    iget v4, v10, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mAverageActionButtonWidth:I

    add-int/2addr v13, v4

    goto :goto_c0

    :cond_aa
    move-object/from16 v18, v9

    add-int v8, v13, v16

    move-object/from16 v4, p0

    move-object/from16 v5, v18

    move v6, v13

    move v7, v3

    move v9, v12

    invoke-static/range {v4 .. v9}, Lmiui/util/ViewUtils;->layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v13, v4

    goto :goto_c0

    :cond_be
    move-object/from16 v18, v9

    :goto_c0
    add-int/lit8 v15, v15, 0x1

    goto :goto_76

    :cond_c3
    return-void
.end method

.method protected onMeasure(II)V
    .registers 16

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildCount()I

    move-result v3

    iget-object v4, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_15

    add-int/lit8 v3, v3, -0x1

    :cond_15
    iget-object v4, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-eq v4, v5, :cond_1f

    add-int/lit8 v3, v3, -0x1

    :cond_1f
    if-eqz v2, :cond_da

    if-nez v3, :cond_25

    goto/16 :goto_da

    :cond_25
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    div-int/2addr v4, v3

    iget v5, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mMaxActionButtonWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mAverageActionButtonWidth:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v5, 0x0

    :goto_39
    if-ge v5, v2, :cond_65

    invoke-virtual {p0, v5}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    iget-object v6, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-eq v12, v6, :cond_62

    iget-object v6, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    if-eq v12, v6, :cond_62

    iget-object v6, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    if-ne v12, v6, :cond_4c

    goto :goto_62

    :cond_4c
    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, v12

    move v8, v4

    move v10, p2

    invoke-virtual/range {v6 .. v11}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v0, v6

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_62
    :goto_62
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    :cond_65
    iput v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mMenuItemWidth:I

    iput v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mMenuItemHeight:I

    iget-object v5, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-eqz v5, :cond_b1

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getStatusBarHeight()I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mMenuItemHeight:I

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v8, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v7, p0

    move v9, p1

    move v11, p2

    invoke-virtual/range {v7 .. v12}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v6, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v6, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v1, v6

    iget-object v6, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v7, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanded:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v6, v7, :cond_a5

    iget-object v6, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_b1

    :cond_a5
    iget-object v6, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v7, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v6, v7, :cond_b1

    iget-object v6, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    int-to-float v7, v1

    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationY(F)V

    :cond_b1
    :goto_b1
    iget-object v5, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-nez v5, :cond_ba

    iget-object v5, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v5

    :cond_ba
    iget-boolean v5, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isShowBlurBackground:Z

    if-nez v5, :cond_ce

    iget-object v5, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    iget-object v6, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v7, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v6, v7, :cond_c9

    iget-object v6, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_cb

    :cond_c9
    iget-object v6, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    :goto_cb
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_ce
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setMeasuredDimension(II)V

    return-void

    :cond_da
    :goto_da
    const/4 v4, 0x0

    iput v4, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mMenuItemHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .registers 9

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0, p2, p3, p4}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->computeAlpha(FZZ)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setAlpha(F)V

    :cond_b
    invoke-virtual {p0, p2, p3, p4}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->computeTranslationY(FZZ)F

    move-result v0

    const/4 v1, 0x0

    :goto_10
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2d

    invoke-virtual {p0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-eq v2, v3, :cond_2a

    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    if-eq v2, v3, :cond_2a

    iget-object v3, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    if-ne v2, v3, :cond_27

    goto :goto_2a

    :cond_27
    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_2a
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_2d
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    :goto_e
    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1b

    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method public setAlpha(F)V
    .registers 4

    iget-boolean v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isShowBlurBackground:Z

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1e

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/internal/widget/BlurBackgroundView;

    if-eqz v1, :cond_14

    goto :goto_1b

    :cond_14
    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1e
    goto :goto_22

    :cond_1f
    invoke-super {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuView;->setAlpha(F)V

    :goto_22
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_9

    iput-object p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mCollapseBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->extractBackground()V

    :cond_9
    return-void
.end method

.method public setBlurBackground(Z)Z
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBlurBackgroundView:Lcom/miui/internal/widget/BlurBackgroundView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/BlurBackgroundView;->setBlurBackground(Z)Z

    move-result v0

    if-eqz v0, :cond_60

    iput-boolean p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isShowBlurBackground:Z

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandedMenuBlurView:Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    if-eqz v1, :cond_11

    invoke-virtual {v1, p1}, Lcom/miui/internal/view/menu/ExpandedMenuBlurView;->setBlurBackground(Z)Z

    :cond_11
    iget-boolean v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isShowBlurBackground:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandedMenuBlurView:Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    const/4 v3, 0x0

    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/ExpandedMenuBlurView;->getChildCount()I

    move-result v1

    if-le v1, v2, :cond_3c

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandedMenuBlurView:Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    invoke-virtual {v1, v2}, Lcom/miui/internal/view/menu/ExpandedMenuBlurView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowBackgroundBackup:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandedMenuBlurView:Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    invoke-virtual {v1, v2}, Lcom/miui/internal/view/menu/ExpandedMenuBlurView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3c
    invoke-virtual {p0, v3}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_60

    :cond_40
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandedMenuBlurView:Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    if-eqz v1, :cond_60

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/ExpandedMenuBlurView;->getChildCount()I

    move-result v1

    if-le v1, v2, :cond_60

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowBackgroundBackup:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_60

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandedMenuBlurView:Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    invoke-virtual {v1, v2}, Lcom/miui/internal/view/menu/ExpandedMenuBlurView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowBackgroundBackup:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_60
    :goto_60
    return v0
.end method

.method public setOverflowMenuView(Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandedMenuBlurView:Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/ExpandedMenuBlurView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_12

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandedMenuBlurView:Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    invoke-virtual {v1, v2}, Lcom/miui/internal/view/menu/ExpandedMenuBlurView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :cond_12
    if-eq v0, p1, :cond_57

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    :cond_23
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandedMenuBlurView:Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/ExpandedMenuBlurView;->removeAllViews()V

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandedMenuBlurView:Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    invoke-virtual {p0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandedMenuBlurView:Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    :cond_32
    if-eqz p1, :cond_4b

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandedMenuBlurView:Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    if-nez v1, :cond_41

    new-instance v1, Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    iget-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/internal/view/menu/ExpandedMenuBlurView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandedMenuBlurView:Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    :cond_41
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandedMenuBlurView:Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    invoke-virtual {v1, p1}, Lcom/miui/internal/view/menu/ExpandedMenuBlurView;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandedMenuBlurView:Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    invoke-virtual {p0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->addView(Landroid/view/View;)V

    :cond_4b
    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandedMenuBlurView:Lcom/miui/internal/view/menu/ExpandedMenuBlurView;

    iput-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isShowBlurBackground:Z

    invoke-virtual {p0, v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setBlurBackground(Z)Z

    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->extractBackground()V

    :cond_57
    return-void
.end method

.method public setValue(F)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public showOverflowMenu()Z
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanding:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v1, :cond_3f

    sget-object v1, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanded:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-eq v0, v1, :cond_3f

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuView:Landroid/view/View;

    if-nez v1, :cond_f

    goto :goto_3f

    :cond_f
    iget-boolean v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isShowBlurBackground:Z

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mBackgroundView:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mExpandBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1a
    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->getOverflowMenuViewAnimator()Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;

    move-result-object v1

    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsed:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v2, :cond_2a

    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Expanding:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    iput-object v2, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->mOverflowMenuState:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->show()V

    goto :goto_31

    :cond_2a
    sget-object v2, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;->Collapsing:Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuState;

    if-ne v0, v2, :cond_31

    invoke-virtual {v1}, Lcom/miui/internal/view/menu/PhoneActionMenuView$OverflowMenuViewAnimator;->reverse()V

    :cond_31
    :goto_31
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->postInvalidateOnAnimation()V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->requestFocus()Z

    return v2

    :cond_3f
    :goto_3f
    const/4 v1, 0x0

    return v1
.end method

.method public updateBackground(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/miui/internal/view/menu/PhoneActionMenuView;->isShowBlurBackground:Z

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->clearBackground()V

    goto :goto_b

    :cond_8
    invoke-direct {p0}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->resetBackground()V

    :goto_b
    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/PhoneActionMenuView;->setBlurBackground(Z)Z

    return-void
.end method
