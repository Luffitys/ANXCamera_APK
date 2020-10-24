.class public Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "FastMotionDescriptionAdapter"

.field private static final TYPE_TEXT:I = 0x1

.field private static final TYPE_VIDEO:I = 0x2


# instance fields
.field private isInit:Z

.field private mContext:Landroid/content/Context;

.field private mLists:Ljava/util/List;

.field private mPlayingHolder:Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;

.field private mPlayingPosition:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;->isInit:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;->mPlayingPosition:I

    iput-object p3, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;->mLists:Ljava/util/List;

    iput-object p2, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;->mLists:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;->mLists:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;->onBindViewHolder(Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;I)V
    .locals 5
    .param p1    # Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;->mLists:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object p0, p1, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;->mTextTitle:Landroid/widget/TextView;

    iget-object p2, v0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;->mType:Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;->mTextDesc:Landroid/widget/TextView;

    iget-object p1, v0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;->mTypeDesc:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;->mLists:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;->mVideoDesc:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;->mVideoDesc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;->mCoverView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;->mCoverView:Landroid/view/View;

    iget v4, v0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;->mVideoCover:I

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iput p2, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;->mPlayingPosition:I

    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;->mPlayingHolder:Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;

    iget-object p2, p1, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;->mVideoView:Lcom/android/camera/ui/FastmotionTextureVideoView;

    invoke-virtual {p2, v3}, Landroid/view/TextureView;->setVisibility(I)V

    iget-object p2, p1, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;->mVideoView:Lcom/android/camera/ui/FastmotionTextureVideoView;

    invoke-virtual {p2, v2}, Lcom/android/camera/ui/FastmotionTextureVideoView;->setLoop(Z)V

    iget-object p2, p1, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;->mVideoView:Lcom/android/camera/ui/FastmotionTextureVideoView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;->mVideoId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/camera/ui/FastmotionTextureVideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object p2, p1, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;->mVideoView:Lcom/android/camera/ui/FastmotionTextureVideoView;

    new-instance v0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$1;-><init>(Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;)V

    invoke-virtual {p2, v0}, Lcom/android/camera/ui/FastmotionTextureVideoView;->setMediaPlayerCallback(Lcom/android/camera/ui/FastmotionTextureVideoView$MediaPlayerCallback;)V

    iget-object p0, p1, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;->mVideoView:Lcom/android/camera/ui/FastmotionTextureVideoView;

    invoke-virtual {p0}, Lcom/android/camera/ui/FastmotionTextureVideoView;->start()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    if-ne p2, v1, :cond_0

    const p2, 0x7f0c0039

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_0
    const p2, 0x7f0c003a

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
