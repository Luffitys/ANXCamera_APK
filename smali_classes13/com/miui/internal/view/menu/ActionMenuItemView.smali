.class public Lcom/miui/internal/view/menu/ActionMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuItemView.java"

# interfaces
.implements Lcom/miui/internal/view/menu/MenuView$ItemView;


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mIsCheckable:Z

.field private mItemData:Lcom/miui/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Lcom/miui/internal/view/menu/MenuBuilder$ItemInvoker;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p0}, Lcom/miui/internal/util/FolmeAnimHelper;->addAlphaPressAnim(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuItemView;->setOrientation(I)V

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuItemView;->setGravity(I)V

    new-instance v1, Landroid/widget/ImageView;

    sget v2, Lcom/miui/internal/R$attr;->actionBarButtonIconViewStyle:I

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuItemView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/miui/internal/view/menu/ActionMenuItemView;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    sget v2, Lcom/miui/internal/R$attr;->actionBarButtonTextViewStyle:I

    invoke-direct {v1, p1, v3, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/miui/internal/view/menu/ActionMenuItemView;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_3d

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuItemView;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_44

    :cond_3d
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuItemView;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_44
    return-void
.end method


# virtual methods
.method public getItemData()Lcom/miui/internal/view/menu/MenuItemImpl;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/miui/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Lcom/miui/internal/view/menu/MenuItemImpl;I)V
    .registers 4

    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/miui/internal/view/menu/MenuItemImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuItemView;->setSelected(Z)V

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuItemView;->setCheckable(Z)V

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuItemView;->setChecked(Z)V

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuItemView;->setEnabled(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/view/menu/ActionMenuItemView;->setClickable(Z)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuItemView;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_22

    :cond_1b
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuItemView;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_22
    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$dimen;->action_button_bg_top_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/internal/R$dimen;->action_button_bg_bottom_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuItemView;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/internal/view/menu/ActionMenuItemView;->getPaddingEnd()I

    move-result v3

    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/miui/internal/view/menu/ActionMenuItemView;->setPaddingRelative(IIII)V

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
    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/miui/internal/view/menu/MenuBuilder$ItemInvoker;

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    iget-object v3, p0, Lcom/miui/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-interface {v0, v3}, Lcom/miui/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/miui/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0, v2}, Lcom/miui/internal/view/menu/ActionMenuItemView;->playSoundEffect(I)V

    return v1

    :cond_19
    return v2
.end method

.method public prefersCondensedTitle()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/miui/internal/view/menu/ActionMenuItemView;->mIsCheckable:Z

    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/miui/internal/view/menu/ActionMenuItemView;->mIsCheckable:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ActionMenuItemView;->setSelected(Z)V

    :cond_7
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuItemView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuItemView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_d

    iget-object v1, p0, Lcom/miui/internal/view/menu/ActionMenuItemView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_d
    return-void
.end method

.method public setItemInvoker(Lcom/miui/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/miui/internal/view/menu/MenuBuilder$ItemInvoker;

    return-void
.end method

.method public setShortcut(ZC)V
    .registers 3

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/view/menu/ActionMenuItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showsIcon()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
