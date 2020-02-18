.class public Lcom/android/camera/resource/tmmusic/TMMusicListMapToMusicInfo;
.super Ljava/lang/Object;
.source "TMMusicListMapToMusicInfo.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/android/camera/resource/tmmusic/TMMusicList;",
        "Ljava/util/List<",
        "Lcom/android/camera/fragment/music/LiveMusicInfo;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/android/camera/resource/tmmusic/TMMusicList;

    invoke-virtual {p0, p1}, Lcom/android/camera/resource/tmmusic/TMMusicListMapToMusicInfo;->apply(Lcom/android/camera/resource/tmmusic/TMMusicList;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public apply(Lcom/android/camera/resource/tmmusic/TMMusicList;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/resource/tmmusic/TMMusicList;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/music/LiveMusicInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/camera/resource/BaseResourceList;->getResourceList()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/resource/tmmusic/TMMusicItem;

    new-instance v2, Lcom/android/camera/fragment/music/LiveMusicInfo;

    invoke-direct {v2}, Lcom/android/camera/fragment/music/LiveMusicInfo;-><init>()V

    iget-object v3, v1, Lcom/android/camera/resource/tmmusic/TMMusicItem;->artistName:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/camera/fragment/music/LiveMusicInfo;->mAuthor:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/camera/resource/tmmusic/TMMusicItem;->detailName:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/camera/fragment/music/LiveMusicInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/camera/resource/tmmusic/TMMusicItem;->getDurationText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/camera/fragment/music/LiveMusicInfo;->mDurationText:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/camera/resource/tmmusic/TMMusicItem;->albumImage320:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/camera/fragment/music/LiveMusicInfo;->mThumbnailUrl:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/camera/resource/tmmusic/TMMusicItem;->itemID:Ljava/lang/String;

    iput-object v1, v2, Lcom/android/camera/fragment/music/LiveMusicInfo;->mRequestItemID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/camera/resource/tmmusic/TMMusicList;->getCategoryID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/camera/fragment/music/LiveMusicInfo;->mCategoryId:Ljava/lang/String;

    const/4 v1, 0x6

    iput v1, v2, Lcom/android/camera/fragment/music/LiveMusicInfo;->downloadState:I

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
