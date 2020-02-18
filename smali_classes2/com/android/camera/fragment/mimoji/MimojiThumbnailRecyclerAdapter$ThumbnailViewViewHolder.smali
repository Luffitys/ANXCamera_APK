.class Lcom/android/camera/fragment/mimoji/MimojiThumbnailRecyclerAdapter$ThumbnailViewViewHolder;
.super Lcom/android/camera/ui/baseview/BaseRecyclerViewHolder;
.source "MimojiThumbnailRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/mimoji/MimojiThumbnailRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThumbnailViewViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/ui/baseview/BaseRecyclerViewHolder<",
        "Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigInfo;",
        ">;"
    }
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/android/camera/ui/baseview/BaseRecyclerViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090152

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRecyclerAdapter$ThumbnailViewViewHolder;->imageView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public setData(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigInfo;I)V
    .locals 3

    new-instance p2, Lcom/bumptech/glide/request/a/c$a;

    const/16 v0, 0x12c

    invoke-direct {p2, v0}, Lcom/bumptech/glide/request/a/c$a;-><init>(I)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/request/a/c$a;->setCrossFadeEnabled(Z)Lcom/bumptech/glide/request/a/c$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bumptech/glide/request/a/c$a;->build()Lcom/bumptech/glide/request/a/c;

    if-eqz p1, :cond_0

    iget-object p2, p1, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigInfo;->thum:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bumptech/glide/c;->G(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object p2

    iget-object v1, p1, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigInfo;->thum:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/m;->g(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/j;

    move-result-object p2

    new-instance v1, Lcom/bumptech/glide/request/f;

    invoke-direct {v1}, Lcom/bumptech/glide/request/f;-><init>()V

    iget-object v2, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRecyclerAdapter$ThumbnailViewViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/f;->i(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/f;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/j;->b(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/j;

    move-result-object p2

    new-instance v1, Lcom/android/camera/fragment/music/RoundedCornersTransformation;

    const/16 v2, 0x14

    invoke-direct {v1, v2, v0}, Lcom/android/camera/fragment/music/RoundedCornersTransformation;-><init>(II)V

    invoke-static {v1}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/request/f;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/j;->b(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/j;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRecyclerAdapter$ThumbnailViewViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/j;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    :cond_0
    const-class p2, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRecyclerAdapter$ThumbnailViewViewHolder;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "fmoji bitmap isRecycled"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p2, p0, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRecyclerAdapter$ThumbnailViewViewHolder;->imageView:Landroid/widget/ImageView;

    iget v0, p1, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigInfo;->configType:I

    invoke-static {v0}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRecyclerAdapter;->getSelectItem(I)F

    move-result v0

    iget p1, p1, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigInfo;->configID:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f080013

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic setData(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRecyclerAdapter$ThumbnailViewViewHolder;->setData(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigInfo;I)V

    return-void
.end method
