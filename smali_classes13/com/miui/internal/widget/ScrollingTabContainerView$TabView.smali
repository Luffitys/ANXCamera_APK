.class public Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;
.super Landroid/widget/LinearLayout;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabView"
.end annotation


# instance fields
.field private mBadgeView:Landroid/widget/ImageView;

.field private mCustomView:Landroid/view/View;

.field private mIconView:Landroid/widget/ImageView;

.field private mParent:Lcom/miui/internal/widget/ScrollingTabContainerView;

.field private mTab:Landroid/app/ActionBar$Tab;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mBadgeView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method attach(Lcom/miui/internal/widget/ScrollingTabContainerView;Landroid/app/ActionBar$Tab;Z)V
    .registers 5

    iput-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mParent:Lcom/miui/internal/widget/ScrollingTabContainerView;

    iput-object p2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    if-eqz p3, :cond_c

    const v0, 0x800013

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->setGravity(I)V

    :cond_c
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->update()V

    return-void
.end method

.method public bindTab(Landroid/app/ActionBar$Tab;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->update()V

    return-void
.end method

.method public getTab()Landroid/app/ActionBar$Tab;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public update()V
    .registers 14

    iget-object v0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_39

    iget-object v4, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mParent:Lcom/miui/internal/widget/ScrollingTabContainerView;

    iget v4, v4, Lcom/miui/internal/widget/ScrollingTabContainerView;->mStyleMode:I

    if-nez v4, :cond_136

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eq v4, p0, :cond_22

    if-eqz v4, :cond_1f

    move-object v5, v4

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1f
    invoke-virtual {p0, v1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    :cond_22
    iput-object v1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    iget-object v5, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_2b

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2b
    iget-object v5, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v5, :cond_37

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_37
    goto/16 :goto_136

    :cond_39
    iget-object v4, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    if-eqz v4, :cond_42

    invoke-virtual {p0, v4}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    :cond_42
    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v9, -0x2

    if-eqz v5, :cond_77

    iget-object v10, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v10, :cond_6c

    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v7, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v10, v8}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;I)V

    iput-object v10, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    :cond_6c
    iget-object v10, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v10, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_83

    :cond_77
    iget-object v10, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v10, :cond_83

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v10, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_83
    :goto_83
    if-eqz v6, :cond_11f

    iget-object v10, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v10, :cond_ac

    new-instance v10, Lcom/miui/internal/widget/ScrollingTabTextView;

    iget-object v11, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mParent:Lcom/miui/internal/widget/ScrollingTabContainerView;

    # getter for: Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabData:Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;
    invoke-static {v11}, Lcom/miui/internal/widget/ScrollingTabContainerView;->access$500(Lcom/miui/internal/widget/ScrollingTabContainerView;)Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;

    move-result-object v11

    iget v11, v11, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->tabTextStyle:I

    invoke-direct {v10, v4, v3, v11}, Lcom/miui/internal/widget/ScrollingTabTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v3, v10

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v9, v10

    iput v7, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v3}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    :cond_ac
    iget-object v3, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mBadgeView:Landroid/widget/ImageView;

    if-nez v3, :cond_12b

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v7, Lcom/miui/internal/R$attr;->actionBarTabBadgeIcon:I

    invoke-static {v4, v7}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lcom/miui/internal/R$dimen;->action_tab_badge_width:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/miui/internal/R$dimen;->action_tab_badge_height:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    int-to-float v8, v2

    iget-object v9, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mParent:Lcom/miui/internal/widget/ScrollingTabContainerView;

    # getter for: Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabData:Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;
    invoke-static {v9}, Lcom/miui/internal/widget/ScrollingTabContainerView;->access$500(Lcom/miui/internal/widget/ScrollingTabContainerView;)Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;

    move-result-object v9

    iget v9, v9, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->iconZoom:F

    mul-float/2addr v8, v9

    float-to-int v2, v8

    int-to-float v8, v7

    iget-object v9, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mParent:Lcom/miui/internal/widget/ScrollingTabContainerView;

    # getter for: Lcom/miui/internal/widget/ScrollingTabContainerView;->mTabData:Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;
    invoke-static {v9}, Lcom/miui/internal/widget/ScrollingTabContainerView;->access$500(Lcom/miui/internal/widget/ScrollingTabContainerView;)Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;

    move-result-object v9

    iget v9, v9, Lcom/miui/internal/widget/ScrollingTabContainerView$TabViewResData;->iconZoom:F

    mul-float/2addr v8, v9

    float-to-int v7, v8

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0x30

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_116

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    iget-object v11, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getLineHeight()I

    move-result v11

    if-le v10, v11, :cond_116

    sub-int v12, v10, v11

    div-int/lit8 v12, v12, 0x2

    iput v12, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_116
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v3}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mBadgeView:Landroid/widget/ImageView;

    goto :goto_12b

    :cond_11f
    iget-object v7, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_12b

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_12b
    :goto_12b
    iget-object v2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_136

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_136
    :goto_136
    return-void
.end method
