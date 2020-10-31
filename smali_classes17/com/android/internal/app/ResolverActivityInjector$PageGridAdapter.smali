.class final Lcom/android/internal/app/ResolverActivityInjector$PageGridAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ResolverActivityInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivityInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PageGridAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/internal/app/chooser/TargetInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivityInjector;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivityInjector;Landroid/content/Context;I)V
    .registers 9

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityInjector$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iget-object v0, p1, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v1, p3, -0x1

    iget v2, p1, Lcom/android/internal/app/ResolverActivityInjector;->mMaxPerScreen:I

    mul-int/2addr v1, v2

    iget v2, p1, Lcom/android/internal/app/ResolverActivityInjector;->mMaxPerScreen:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v1

    :goto_1d
    if-gt v3, v2, :cond_2b

    iget-object v4, p1, Lcom/android/internal/app/ResolverActivityInjector;->mAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v4, v3}, Lcom/android/internal/app/ResolverListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/app/ResolverActivityInjector$PageGridAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_2b
    return-void
.end method

.method private final bindView(Landroid/view/View;Lcom/android/internal/app/chooser/TargetInfo;I)V
    .registers 14

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivityInjector$ViewHolder;

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityInjector$ViewHolder;->text2:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez p2, :cond_22

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityInjector$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    # getter for: Lcom/android/internal/app/ResolverActivityInjector;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivityInjector;->access$100(Lcom/android/internal/app/ResolverActivityInjector;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x10807a9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_22
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    # getter for: Lcom/android/internal/app/ResolverActivityInjector;->mRecommendFirstItem:Z
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivityInjector;->access$300(Lcom/android/internal/app/ResolverActivityInjector;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_63

    if-nez p3, :cond_63

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityInjector$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    iget-boolean v1, v1, Lcom/android/internal/app/ResolverActivityInjector;->mRecommendable:Z

    if-nez v1, :cond_63

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityInjector$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivityInjector$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    # getter for: Lcom/android/internal/app/ResolverActivityInjector;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/app/ResolverActivityInjector;->access$100(Lcom/android/internal/app/ResolverActivityInjector;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x110e012e

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/internal/app/ResolverActivityInjector$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    # getter for: Lcom/android/internal/app/ResolverActivityInjector;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/internal/app/ResolverActivityInjector;->access$100(Lcom/android/internal/app/ResolverActivityInjector;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x110e0127

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6c

    :cond_63
    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityInjector$ViewHolder;->text:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindView: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "RAInjector"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v1, p2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v1, :cond_a2

    move-object v1, p2

    check-cast v1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v1

    if-nez v1, :cond_a2

    new-instance v1, Lcom/android/internal/app/ResolverActivityInjector$LoadAdapterIconTask;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivityInjector$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    move-object v6, p2

    check-cast v6, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-direct {v1, v5, p0, v6}, Lcom/android/internal/app/ResolverActivityInjector$LoadAdapterIconTask;-><init>(Lcom/android/internal/app/ResolverActivityInjector;Landroid/widget/BaseAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    new-array v5, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v5}, Lcom/android/internal/app/ResolverActivityInjector$LoadAdapterIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_a2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "info.getDisplayLabel: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " hasDisplayIcon: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, p2

    check-cast v5, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v5}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " position: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityInjector$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityInjector$PageGridAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {p2, v4}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityInjector$ViewHolder;->badge:Landroid/widget/ImageView;

    if-eqz v1, :cond_107

    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getBadgeIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_102

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivityInjector$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    iget-boolean v4, v4, Lcom/android/internal/app/ResolverActivityInjector;->mRecommendable:Z

    if-nez v4, :cond_102

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityInjector$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityInjector$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/android/internal/app/chooser/TargetInfo;->getBadgeContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityInjector$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_107

    :cond_102
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivityInjector$ViewHolder;->badge:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_107
    :goto_107
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    if-nez p2, :cond_b9

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityInjector$PageGridAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x110b0028

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x11090083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MaskLayout;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    iget-boolean v2, v2, Lcom/android/internal/app/ResolverActivityInjector;->mRecommendable:Z

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    # getter for: Lcom/android/internal/app/ResolverActivityInjector;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivityInjector;->access$100(Lcom/android/internal/app/ResolverActivityInjector;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_39

    :cond_33
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    # getter for: Lcom/android/internal/app/ResolverActivityInjector;->mMaskColor:I
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivityInjector;->access$200(Lcom/android/internal/app/ResolverActivityInjector;)I

    move-result v2

    :goto_39
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MaskLayout;->setMaskColor(I)V

    new-instance v1, Lcom/android/internal/app/ResolverActivityInjector$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/internal/app/ResolverActivityInjector$ViewHolder;-><init>(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    # getter for: Lcom/android/internal/app/ResolverActivityInjector;->mRecommendFirstItem:Z
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivityInjector;->access$300(Lcom/android/internal/app/ResolverActivityInjector;)Z

    move-result v2

    if-eqz v2, :cond_60

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    iget-boolean v2, v2, Lcom/android/internal/app/ResolverActivityInjector;->mRecommendable:Z

    if-nez v2, :cond_60

    iget-object v2, v1, Lcom/android/internal/app/ResolverActivityInjector$ViewHolder;->text:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinLines(I)V

    iget-object v2, v1, Lcom/android/internal/app/ResolverActivityInjector$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v2, v1, Lcom/android/internal/app/ResolverActivityInjector$ViewHolder;->text:Landroid/widget/TextView;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxEms(I)V

    :cond_60
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityInjector$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    iget-boolean v2, v2, Lcom/android/internal/app/ResolverActivityInjector;->mRecommendable:Z

    if-eqz v2, :cond_a5

    iget-object v2, v1, Lcom/android/internal/app/ResolverActivityInjector$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityInjector$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    iget-boolean v3, v3, Lcom/android/internal/app/ResolverActivityInjector;->mRecommendable:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v2, v1, Lcom/android/internal/app/ResolverActivityInjector$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityInjector$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    iget-boolean v3, v3, Lcom/android/internal/app/ResolverActivityInjector;->mRecommendable:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v2, v1, Lcom/android/internal/app/ResolverActivityInjector$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityInjector$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    iget-boolean v3, v3, Lcom/android/internal/app/ResolverActivityInjector;->mRecommendable:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    iget-object v2, v1, Lcom/android/internal/app/ResolverActivityInjector$ViewHolder;->text:Landroid/widget/TextView;

    const/4 v3, 0x2

    const/high16 v4, 0x41300000    # 11.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, v1, Lcom/android/internal/app/ResolverActivityInjector$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityInjector$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    # getter for: Lcom/android/internal/app/ResolverActivityInjector;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivityInjector;->access$100(Lcom/android/internal/app/ResolverActivityInjector;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1105004f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a5
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/android/internal/app/ResolverActivityInjector$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityInjector$PageGridAdapter;->this$0:Lcom/android/internal/app/ResolverActivityInjector;

    # getter for: Lcom/android/internal/app/ResolverActivityInjector;->mIconSize:I
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivityInjector;->access$400(Lcom/android/internal/app/ResolverActivityInjector;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_ba

    :cond_b9
    move-object v0, p2

    :goto_ba
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getView: position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivityInjector$PageGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RAInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivityInjector$PageGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/chooser/TargetInfo;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/app/ResolverActivityInjector$PageGridAdapter;->bindView(Landroid/view/View;Lcom/android/internal/app/chooser/TargetInfo;I)V

    return-object v0
.end method
