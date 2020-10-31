.class public Lcom/android/internal/widget/AccountItemView;
.super Landroid/widget/LinearLayout;
.source "AccountItemView.java"


# instance fields
.field private mAccountIcon:Landroid/widget/ImageView;

.field private mAccountName:Landroid/widget/TextView;

.field private mAccountNumber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/AccountItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    nop

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x109010a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AccountItemView;->addView(Landroid/view/View;)V

    invoke-direct {p0, v1}, Lcom/android/internal/widget/AccountItemView;->initViewItem(Landroid/view/View;)V

    return-void
.end method

.method private initViewItem(Landroid/view/View;)V
    .registers 3

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountIcon:Landroid/widget/ImageView;

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountName:Landroid/widget/TextView;

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountNumber:Landroid/widget/TextView;

    return-void
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_13

    :cond_c
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_13
    return-void
.end method


# virtual methods
.method public setAccountIcon(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setAccountIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setAccountName(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountName:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/AccountItemView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public setAccountNumber(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountNumber:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/AccountItemView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public setViewItem(Lcom/android/internal/widget/AccountViewAdapter$AccountElements;)V
    .registers 4

    invoke-virtual {p1}, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AccountItemView;->setAccountIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_11

    :cond_a
    invoke-virtual {p1}, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->getIcon()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AccountItemView;->setAccountIcon(I)V

    :goto_11
    invoke-virtual {p1}, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AccountItemView;->setAccountName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AccountItemView;->setAccountNumber(Ljava/lang/String;)V

    return-void
.end method
