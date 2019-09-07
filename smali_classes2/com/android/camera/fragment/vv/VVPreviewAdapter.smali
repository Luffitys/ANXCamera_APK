.class public Lcom/android/camera/fragment/vv/VVPreviewAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "VVPreviewAdapter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mVVList:Lcom/android/camera/fragment/vv/VVList;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/vv/VVList;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVPreviewAdapter;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    iput-object p2, p0, Lcom/android/camera/fragment/vv/VVPreviewAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private getDurationString(J)Ljava/lang/String;
    .locals 1

    long-to-float p0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v0, 0x0

    aput-object p0, p2, v0

    const-string p0, "%.1f"

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Landroid/view/View;

    return-void
.end method

.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVPreviewAdapter;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/BaseResourceList;->getSize()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVPreviewAdapter;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/vv/BaseResourceList;->getItem(I)Lcom/android/camera/fragment/vv/BaseResourceItem;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/vv/VVItem;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0b0046

    invoke-virtual {v1, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f090174

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f090172

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f09017b

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/TextureVideoView;

    const v5, 0x7f090173

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/camera/fragment/vv/VVPreviewAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, v0, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    invoke-static {v3, p2}, Landroid/support/v4/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bumptech/glide/c;->i(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object p2

    iget-object v4, v0, Lcom/android/camera/fragment/vv/VVItem;->coverPath:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/bumptech/glide/m;->load(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/bumptech/glide/j;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    invoke-virtual {v5}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVItem;->getEssentialFragmentSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVItem;->getTotalDuration()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/camera/fragment/vv/VVPreviewAdapter;->getDurationString(J)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    aput-object p0, v3, v0

    const p0, 0x7f0f03ba

    invoke-virtual {p2, p0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
