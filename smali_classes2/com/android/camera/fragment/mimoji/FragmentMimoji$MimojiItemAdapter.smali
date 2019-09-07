.class public Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "FragmentMimoji.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/mimoji/FragmentMimoji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MimojiItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter$MimojiItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter$MimojiItemHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private adapterSelectState:Ljava/lang/String;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/mimoji/MimojiInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSelectItemView:Landroid/view/View;

.field private mimojiInfoSelected:Lcom/android/camera/fragment/mimoji/MimojiInfo;

.field final synthetic this$0:Lcom/android/camera/fragment/mimoji/FragmentMimoji;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/mimoji/FragmentMimoji;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimoji;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter;->adapterSelectState:Ljava/lang/String;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter;->datas:Ljava/util/List;

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter;->datas:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimoji;

    invoke-static {p0}, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->access$300(Lcom/android/camera/fragment/mimoji/FragmentMimoji;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getMimojiInfoSelected()Lcom/android/camera/fragment/mimoji/MimojiInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter;->mimojiInfoSelected:Lcom/android/camera/fragment/mimoji/MimojiInfo;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter$MimojiItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter;->onBindViewHolder(Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter$MimojiItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter$MimojiItemHolder;I)V
    .locals 6

    const v0, 0x7f0900c0

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0900c1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter;->mSelectItemView:Landroid/view/View;

    const v1, 0x7f0900c4

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter;->datas:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/fragment/mimoji/MimojiInfo;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eqz p2, :cond_4

    iget-object p1, p2, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mConfigPath:Ljava/lang/String;

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v2, "add_state"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0801ad

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/bumptech/glide/c;->i(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object p1

    iget-object v3, p2, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mThumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/bumptech/glide/m;->load(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object p1

    new-instance v3, Lcom/android/camera/fragment/music/RoundedCornersTransformation;

    const/16 v4, 0xa

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/android/camera/fragment/music/RoundedCornersTransformation;-><init>(II)V

    invoke-static {v3}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/request/f;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/bumptech/glide/j;->b(Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/j;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/j;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_0
    const/16 p1, 0x8

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter;->adapterSelectState:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p2, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mConfigPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter;->adapterSelectState:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mConfigPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mConfigPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter;->mSelectItemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p2, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mConfigPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->isPrefabModel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter;->mSelectItemView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimoji;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter;->mSelectItemView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter;->this$0:Lcom/android/camera/fragment/mimoji/FragmentMimoji;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iput-object p2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter;->mimojiInfoSelected:Lcom/android/camera/fragment/mimoji/MimojiInfo;

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter;->mSelectItemView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter;->mimojiInfoSelected:Lcom/android/camera/fragment/mimoji/MimojiInfo;

    :cond_4
    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter$MimojiItemHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter$MimojiItemHolder;
    .locals 2

    iget-object p2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0b0033

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter$MimojiItemHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter$MimojiItemHolder;-><init>(Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setMimojiInfoList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/mimoji/MimojiInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter;->datas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateSelect()V
    .locals 1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->getCurrentMimojiState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter;->adapterSelectState:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateSelect(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimoji$MimojiItemAdapter;->adapterSelectState:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
