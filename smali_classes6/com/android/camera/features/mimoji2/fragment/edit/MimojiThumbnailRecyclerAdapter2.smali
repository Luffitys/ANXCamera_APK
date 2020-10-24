.class public Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRecyclerAdapter2;
.super Lcom/android/camera/features/mimoji2/widget/baseview/BaseRecyclerAdapter;
.source ""


# instance fields
.field private mContext:Landroid/content/Context;

.field private mName:Ljava/lang/String;

.field private mSelectIndex:F


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRecyclerAdapter2;-><init>(Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRecyclerAdapter2;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRecyclerAdapter2;->getSelectItem(I)F

    move-result p1

    iput p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRecyclerAdapter2;->mSelectIndex:F

    iput-object p3, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRecyclerAdapter2;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimoji2/widget/baseview/BaseRecyclerAdapter;-><init>(Ljava/util/List;)V

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRecyclerAdapter2;->mSelectIndex:F

    return-void
.end method

.method public static getSelectItem(I)F
    .locals 1

    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInnerConfigSelectIndex(I)F

    move-result p0

    return p0
.end method


# virtual methods
.method protected onCreateBaseRecyclerViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/features/mimoji2/widget/baseview/BaseRecyclerViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00bf

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRecyclerAdapter2$ThumbnailViewViewHolder;

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRecyclerAdapter2;->mName:Ljava/lang/String;

    invoke-direct {p2, p1, p0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRecyclerAdapter2$ThumbnailViewViewHolder;-><init>(Landroid/view/View;Ljava/lang/String;)V

    return-object p2
.end method

.method public setSelectItem(II)V
    .locals 0

    invoke-static {}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->getInstance()Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->setInnerConfigSelectIndex(IF)V

    return-void
.end method
