.class Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;
.super Lcom/android/camera/features/mimoji2/widget/baseview/BaseRecyclerViewHolder;
.source ""


# instance fields
.field private mAdapterSelectState:Ljava/lang/String;

.field private mCartoonSwitchView:Landroid/view/View;

.field private mItemImageView:Landroid/widget/ImageView;

.field private mLongSelectedView:Landroid/view/View;

.field private mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

.field private mSelectItemView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->this$0:Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter;

    invoke-direct {p0, p2}, Lcom/android/camera/features/mimoji2/widget/baseview/BaseRecyclerViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator;->DEFAULT_LIST_DURATION:I

    invoke-static {p2, v0}, Lcom/android/camera/animation/FolmeUtils;->handleListItemTouch(Landroid/view/View;I)V

    const v0, 0x7f090225

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->mItemImageView:Landroid/widget/ImageView;

    const v0, 0x7f090226

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->mSelectItemView:Landroid/view/View;

    const v0, 0x7f090229

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->mLongSelectedView:Landroid/view/View;

    const v0, 0x7f090224

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->mCartoonSwitchView:Landroid/view/View;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager2()Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-static {p1}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter;->access$000(Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter;)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private synthetic OooO0O0()V
    .locals 1

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method


# virtual methods
.method public synthetic OooO0OO()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->OooO0O0()V

    return-void
.end method

.method public getRotateViews()[Landroid/view/View;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->mCartoonSwitchView:Landroid/view/View;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->mItemImageView:Landroid/widget/ImageView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->mLongSelectedView:Landroid/view/View;

    const/4 v1, 0x2

    aput-object p0, v0, v1

    return-object v0
.end method

.method public setData(Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;I)V
    .locals 8

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getCurrentMimojiState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->mAdapterSelectState:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->mCartoonSwitchView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_d

    iget-object v0, p1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mConfigPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v0, p1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mConfigPath:Ljava/lang/String;

    const-string v2, "close_state"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "add_state"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->mItemImageView:Landroid/widget/ImageView;

    const v6, 0x7f080295

    :goto_0
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_1
    iget-object v0, p1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mConfigPath:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->mItemImageView:Landroid/widget/ImageView;

    const v6, 0x7f08028a

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->getFrame()I

    move-result v0

    const/16 v6, 0xa

    if-lez v0, :cond_3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v7, p1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mThumbnailUrl2:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    sget-object v7, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v7}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    new-instance v7, Lcom/android/camera/fragment/music/RoundedCornersTransformation;

    invoke-direct {v7, v6, v4}, Lcom/android/camera/fragment/music/RoundedCornersTransformation;-><init>(II)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v7, p1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mThumbnailUrl:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    sget-object v7, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v7}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    new-instance v7, Lcom/android/camera/fragment/music/RoundedCornersTransformation;

    invoke-direct {v7, v6, v4}, Lcom/android/camera/fragment/music/RoundedCornersTransformation;-><init>(II)V

    :goto_1
    invoke-static {v7}, Lcom/bumptech/glide/request/RequestOptions;->bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->mItemImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->getDefaultFrame()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->mMimojiStatusManager2:Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/helper/MimojiStatusManager2;->getCurrentMimojiInfo()Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v6, v0, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mAvatarTemplatePath:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v0, v0, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mAvatarTemplatePath:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mAvatarTemplatePath:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->mCartoonSwitchView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f100377

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p2, v4

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->getFrame()I

    move-result v0

    if-lez v0, :cond_5

    iget v0, p1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mName2:I

    if-lez v0, :cond_5

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v0, p1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mName2:I

    goto :goto_3

    :cond_5
    iget v0, p1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mName:I

    if-lez v0, :cond_6

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v0, p1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mName:I

    :goto_3
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_6
    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->mAdapterSelectState:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->mAdapterSelectState:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mConfigPath:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mConfigPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mConfigPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/features/mimoji2/widget/helper/AvatarEngineManager2;->isPrefabModel(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f080099

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->mAdapterSelectState:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mConfigPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    new-array v0, v4, [Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->mLongSelectedView:Landroid/view/View;

    aput-object v2, v0, v5

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimoji2/widget/baseview/BaseRecyclerViewHolder;->showView([Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->mSelectItemView:Landroid/view/View;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_5

    :cond_8
    :goto_4
    sget v0, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator;->DEFAULT_LIST_DURATION:I

    new-array v2, v4, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->mLongSelectedView:Landroid/view/View;

    aput-object v3, v2, v5

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/features/mimoji2/widget/baseview/BaseRecyclerViewHolder;->alphaGone(I[Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->mSelectItemView:Landroid/view/View;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08008a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->getDefaultFrame()I

    move-result v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->mAdapterSelectState:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->mConfigPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->mCartoonSwitchView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->isIsNeedAnim()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->mCartoonSwitchView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->getFrame()I

    move-result v2

    if-nez v2, :cond_9

    const/high16 v2, -0x3ccc0000    # -180.0f

    goto :goto_6

    :cond_9
    const/high16 v2, 0x43340000    # 180.0f

    :goto_6
    invoke-virtual {v0, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->rotationBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    sget v2, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator;->DEFAULT_LIST_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    invoke-virtual {p1, v5}, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;->setIsNeedAnim(Z)V

    :cond_a
    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->mSelectItemView:Landroid/view/View;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    new-array p1, v4, [Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->mSelectItemView:Landroid/view/View;

    aput-object v0, p1, v5

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimoji2/widget/baseview/BaseRecyclerViewHolder;->showView([Landroid/view/View;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f1000a5

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/android/camera/features/mimoji2/fragment/bottomlist/OooO;

    invoke-direct {p2, p0}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/OooO;-><init>(Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    :cond_c
    sget p1, Lcom/android/camera/features/mimoji2/widget/baseview/BaseItemAnimator;->DEFAULT_LIST_DURATION:I

    new-array v0, v4, [Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->mSelectItemView:Landroid/view/View;

    aput-object v2, v0, v5

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/features/mimoji2/widget/baseview/BaseRecyclerViewHolder;->alphaGone(I[Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->mLongSelectedView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->mCartoonSwitchView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_d
    :goto_7
    return-void
.end method

.method public bridge synthetic setData(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/features/mimoji2/fragment/bottomlist/MimojiAvatarAdapter$AvatarViewViewHolder;->setData(Lcom/android/camera/features/mimoji2/bean/MimojiInfo2;I)V

    return-void
.end method
