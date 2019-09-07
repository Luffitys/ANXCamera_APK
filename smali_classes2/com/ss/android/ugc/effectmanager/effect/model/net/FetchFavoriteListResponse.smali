.class public Lcom/ss/android/ugc/effectmanager/effect/model/net/FetchFavoriteListResponse;
.super Lcom/ss/android/ugc/effectmanager/common/model/BaseNetResponse;
.source "FetchFavoriteListResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ugc/effectmanager/effect/model/net/FetchFavoriteListResponse$Data;
    }
.end annotation


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/net/FetchFavoriteListResponse$Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ss/android/ugc/effectmanager/common/model/BaseNetResponse;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/net/FetchFavoriteListResponse;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public checkValued()Z
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/net/FetchFavoriteListResponse;->data:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/net/FetchFavoriteListResponse;->data:Ljava/util/List;

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getEffects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/Effect;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/net/FetchFavoriteListResponse;->data:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ugc/effectmanager/effect/model/net/FetchFavoriteListResponse$Data;

    invoke-static {p0}, Lcom/ss/android/ugc/effectmanager/effect/model/net/FetchFavoriteListResponse$Data;->access$100(Lcom/ss/android/ugc/effectmanager/effect/model/net/FetchFavoriteListResponse$Data;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/net/FetchFavoriteListResponse;->data:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ugc/effectmanager/effect/model/net/FetchFavoriteListResponse$Data;

    invoke-static {p0}, Lcom/ss/android/ugc/effectmanager/effect/model/net/FetchFavoriteListResponse$Data;->access$000(Lcom/ss/android/ugc/effectmanager/effect/model/net/FetchFavoriteListResponse$Data;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
