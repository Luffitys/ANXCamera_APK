.class public Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;
.super Ljava/lang/Object;
.source "ProviderEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect$StickerBean;
    }
.end annotation


# instance fields
.field private click_url:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private sticker:Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect$StickerBean;

.field private thumbnail_sticker:Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect$StickerBean;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClickUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;->click_url:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getSticker()Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect$StickerBean;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;->sticker:Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect$StickerBean;

    return-object p0
.end method

.method public getThumbnailSticker()Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect$StickerBean;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;->thumbnail_sticker:Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect$StickerBean;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setClickUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;->click_url:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;->id:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;->path:Ljava/lang/String;

    return-void
.end method

.method public setSticker(Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect$StickerBean;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;->sticker:Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect$StickerBean;

    return-void
.end method

.method public setThumbnailSticker(Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect$StickerBean;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;->thumbnail_sticker:Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect$StickerBean;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StickerListBean{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", thumbnail_sticker="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;->thumbnail_sticker:Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect$StickerBean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", sticker="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;->sticker:Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect$StickerBean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", path=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;->path:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
