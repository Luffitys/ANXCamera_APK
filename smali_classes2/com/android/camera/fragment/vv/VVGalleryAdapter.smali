.class public Lcom/android/camera/fragment/vv/VVGalleryAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "VVGalleryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/android/camera/fragment/CommonRecyclerViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mGlideOptions:Lcom/bumptech/glide/request/f;

.field private mParentClickListener:Landroid/view/View$OnClickListener;

.field private mResourceSelectedListener:Lcom/android/camera/fragment/vv/ResourceSelectedListener;

.field private mSelectedIndex:I

.field private mVVList:Lcom/android/camera/fragment/vv/VVList;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/vv/VVList;Landroid/view/View$OnClickListener;Lcom/android/camera/fragment/vv/ResourceSelectedListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    iput-object p2, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mParentClickListener:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mResourceSelectedListener:Lcom/android/camera/fragment/vv/ResourceSelectedListener;

    new-instance p1, Lcom/bumptech/glide/request/f;

    invoke-direct {p1}, Lcom/bumptech/glide/request/f;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mGlideOptions:Lcom/bumptech/glide/request/f;

    iget-object p1, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mGlideOptions:Lcom/bumptech/glide/request/f;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/f;->q(Z)Lcom/bumptech/glide/request/f;

    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mGlideOptions:Lcom/bumptech/glide/request/f;

    sget-object p1, Lcom/bumptech/glide/load/engine/o;->NONE:Lcom/bumptech/glide/load/engine/o;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/engine/o;)Lcom/bumptech/glide/request/f;

    return-void
.end method

.method private getDurationString(J)Ljava/lang/String;
    .locals 1

    long-to-float p0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x0

    aput-object p0, p2, v0

    const-string p0, "00:%02d"

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/BaseResourceList;->getSize()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V
    .locals 7
    .param p1    # Lcom/android/camera/fragment/CommonRecyclerViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/vv/BaseResourceList;->getItem(I)Lcom/android/camera/fragment/vv/BaseResourceItem;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/vv/VVItem;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090168

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f09016a

    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f090169

    invoke-virtual {p1, v3}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f09016b

    invoke-virtual {p1, v4}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090167

    invoke-virtual {p1, v5}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v0, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v6, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mSelectedIndex:I

    if-ne v6, p2, :cond_0

    const/4 p2, -0x1

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p2, 0x0

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVItem;->getTotalDuration()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->getDurationString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v6, 0x7f06004f

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p2, 0x8

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object p2, v0, Lcom/android/camera/fragment/vv/VVItem;->name:Ljava/lang/String;

    invoke-static {v1, p2}, Landroid/support/v4/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1}, Lcom/bumptech/glide/c;->d(Landroid/view/View;)Lcom/bumptech/glide/m;

    move-result-object p1

    iget-object p2, v0, Lcom/android/camera/fragment/vv/VVItem;->coverPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/m;->load(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mGlideOptions:Lcom/bumptech/glide/request/f;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/j;->b(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/j;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/j;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mResourceSelectedListener:Lcom/android/camera/fragment/vv/ResourceSelectedListener;

    iget-object v2, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    invoke-virtual {v2, v0}, Lcom/android/camera/fragment/vv/BaseResourceList;->getItem(I)Lcom/android/camera/fragment/vv/BaseResourceItem;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/vv/VVItem;

    invoke-interface {v1, v2}, Lcom/android/camera/fragment/vv/ResourceSelectedListener;->onResourceSelected(Lcom/android/camera/fragment/vv/VVItem;)V

    iget v1, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mSelectedIndex:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mSelectedIndex:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->mParentClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/vv/VVGalleryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0b0044

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
