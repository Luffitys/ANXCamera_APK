.class public Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field private mBadgeView:Landroid/widget/ImageView;

.field private mCustomView:Landroid/view/View;

.field private mIconView:Landroid/widget/ImageView;

.field private mParent:Lcom/miui/internal/widget/ScrollingTabContainerView;

.field private mTab:Landroid/app/ActionBar$Tab;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mBadgeView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method attach(Lcom/miui/internal/widget/ScrollingTabContainerView;Landroid/app/ActionBar$Tab;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mParent:Lcom/miui/internal/widget/ScrollingTabContainerView;

    iput-object p2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    if-eqz p3, :cond_0

    const p1, 0x800013

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->update()V

    return-void
.end method

.method public bindTab(Landroid/app/ActionBar$Tab;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->update()V

    return-void
.end method

.method public getTab()Landroid/app/ActionBar$Tab;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    return-object p0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public update()V
    .locals 11

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mParent:Lcom/miui/internal/widget/ScrollingTabContainerView;

    iget v0, v0, Lcom/miui/internal/widget/ScrollingTabContainerView;->mStyleMode:I

    if-nez v0, :cond_c

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    iput-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_3
    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_4

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v8, -0x2

    if-eqz v4, :cond_6

    iget-object v9, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v9, :cond_5

    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v6, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iput-object v9, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    :cond_5
    iget-object v9, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v4, :cond_7

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    :goto_0
    if-eqz v5, :cond_a

    iget-object v4, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v4, :cond_8

    new-instance v4, Lcom/miui/internal/widget/ScrollingTabTextView;

    iget-object v9, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mParent:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-static {v9}, Lcom/miui/internal/widget/ScrollingTabContainerView;->access$500(Lcom/miui/internal/widget/ScrollingTabContainerView;)Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;

    move-result-object v9

    iget v9, v9, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->tabTextStyle:I

    invoke-direct {v4, v1, v3, v9}, Lcom/miui/internal/widget/ScrollingTabTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput-object v4, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    :cond_8
    iget-object v3, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mBadgeView:Landroid/widget/ImageView;

    if-nez v3, :cond_b

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/miui/internal/R$attr;->actionBarTabBadgeIcon:I

    invoke-static {v1, v4}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/miui/internal/R$dimen;->action_tab_badge_width:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/miui/internal/R$dimen;->action_tab_badge_height:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v2, v2

    iget-object v4, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mParent:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-static {v4}, Lcom/miui/internal/widget/ScrollingTabContainerView;->access$500(Lcom/miui/internal/widget/ScrollingTabContainerView;)Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;

    move-result-object v4

    iget v4, v4, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->iconZoom:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v1, v1

    iget-object v4, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mParent:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-static {v4}, Lcom/miui/internal/widget/ScrollingTabContainerView;->access$500(Lcom/miui/internal/widget/ScrollingTabContainerView;)Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;

    move-result-object v4

    iget v4, v4, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->iconZoom:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x30

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineHeight()I

    move-result v2

    if-le v1, v2, :cond_9

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_9
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mBadgeView:Landroid/widget/ImageView;

    goto :goto_1

    :cond_a
    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_1
    iget-object p0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz p0, :cond_c

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_2
    return-void
.end method
