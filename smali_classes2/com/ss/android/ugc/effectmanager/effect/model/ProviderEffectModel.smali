.class public Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;
.super Ljava/lang/Object;
.source "ProviderEffectModel.java"


# instance fields
.field private cursor:I

.field private has_more:Z

.field private search_tips:Ljava/lang/String;

.field private sticker_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCursor()I
    .locals 0

    iget p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;->cursor:I

    return p0
.end method

.method public getSearchTips()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;->search_tips:Ljava/lang/String;

    return-object p0
.end method

.method public getStickerList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;->sticker_list:Ljava/util/List;

    return-object p0
.end method

.method public hasMore()Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;->has_more:Z

    return p0
.end method

.method public setCursor(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;->cursor:I

    return-void
.end method

.method public setHasMore(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;->has_more:Z

    return-void
.end method

.method public setSearchTips(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;->search_tips:Ljava/lang/String;

    return-void
.end method

.method public setStickerList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;->sticker_list:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProviderEffectModel{search_tips=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;->search_tips:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;->cursor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", has_more="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;->has_more:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
