.class Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;
.super Landroid/widget/LinearLayout;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcom/miui/internal/view/menu/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuButton"
.end annotation


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    # getter for: Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowMenuAttrs:I
    invoke-static {p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->access$200(Lcom/miui/internal/view/menu/ActionMenuPresenter;)I

    move-result v0

    invoke-direct {p0, p2, p3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setOrientation(I)V

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setGravity(I)V

    new-instance v1, Landroid/widget/ImageView;

    sget v2, Lcom/miui/internal/R$attr;->actionBarButtonIconViewStyle:I

    const/4 v3, 0x0

    invoke-direct {v1, p2, v3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    sget v2, Lcom/miui/internal/R$attr;->actionBarButtonTextViewStyle:I

    invoke-direct {v1, p2, v3, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_40

    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_47

    :cond_40
    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->mTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_47
    sget-object v1, Lcom/miui/internal/R$styleable;->OverflowMenuButton:[I

    # getter for: Lcom/miui/internal/view/menu/ActionMenuPresenter;->mOverflowMenuAttrs:I
    invoke-static {p1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->access$200(Lcom/miui/internal/view/menu/ActionMenuPresenter;)I

    move-result p1

    invoke-virtual {p2, p3, v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v1, Lcom/miui/internal/R$styleable;->OverflowMenuButton_android_drawableTop:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v3, Lcom/miui/internal/R$styleable;->OverflowMenuButton_android_text:I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setClickable(Z)V

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setEnabled(Z)V

    invoke-static {p0}, Lcom/miui/internal/util/FolmeAnimHelper;->addAlphaPressAnim(Landroid/view/View;)V

    return-void
.end method

.method private isVisible()Z
    .registers 4

    move-object v0, p0

    :goto_1
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v0, 0x0

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_15

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    :cond_15
    goto :goto_1

    :cond_16
    if-nez v0, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method


# virtual methods
.method public needsDividerAfter()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_22

    :cond_1b
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_22
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$dimen;->action_button_bg_top_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$dimen;->action_button_bg_bottom_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->getPaddingEnd()I

    move-result v3

    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setPaddingRelative(IIII)V

    return-void
.end method

.method public performClick()Z
    .registers 5

    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-direct {p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->isVisible()Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    :cond_f
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    iget-object v2, v2, Lcom/miui/internal/view/menu/ActionMenuPresenter;->mMenu:Lcom/miui/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/miui/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/miui/internal/view/menu/MenuBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    # invokes: Lcom/miui/internal/view/menu/ActionMenuPresenter;->getOverflowMenuItem()Lcom/miui/internal/view/menu/MenuItemImpl;
    invoke-static {v3}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->access$300(Lcom/miui/internal/view/menu/ActionMenuPresenter;)Lcom/miui/internal/view/menu/MenuItemImpl;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/miui/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/miui/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    :cond_2a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->playSoundEffect(I)V

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    goto :goto_3f

    :cond_3a
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/miui/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    :goto_3f
    return v1
.end method

.method public setEnabled(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
