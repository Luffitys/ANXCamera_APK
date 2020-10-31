.class public final Landroid/media/MediaRoute2Info$Builder;
.super Ljava/lang/Object;
.source "MediaRoute2Info.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRoute2Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mAddress:Ljava/lang/String;

.field mClientPackageName:Ljava/lang/String;

.field mConnectionState:I

.field mDescription:Ljava/lang/CharSequence;

.field mExtras:Landroid/os/Bundle;

.field final mFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mIconUri:Landroid/net/Uri;

.field final mId:Ljava/lang/String;

.field mIsSystem:Z

.field final mName:Ljava/lang/CharSequence;

.field mProviderId:Ljava/lang/String;

.field mType:I

.field mVolume:I

.field mVolumeHandling:I

.field mVolumeMax:I


# direct methods
.method public constructor <init>(Landroid/media/MediaRoute2Info;)V
    .registers 3

    iget-object v0, p1, Landroid/media/MediaRoute2Info;->mId:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mType:I

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeHandling:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5d

    const-string/jumbo v0, "routeInfo must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mId:Ljava/lang/String;

    iget-object v0, p2, Landroid/media/MediaRoute2Info;->mName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mName:Ljava/lang/CharSequence;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p2, Landroid/media/MediaRoute2Info;->mFeatures:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    iget v0, p2, Landroid/media/MediaRoute2Info;->mType:I

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mType:I

    iget-boolean v0, p2, Landroid/media/MediaRoute2Info;->mIsSystem:Z

    iput-boolean v0, p0, Landroid/media/MediaRoute2Info$Builder;->mIsSystem:Z

    iget-object v0, p2, Landroid/media/MediaRoute2Info;->mIconUri:Landroid/net/Uri;

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mIconUri:Landroid/net/Uri;

    iget-object v0, p2, Landroid/media/MediaRoute2Info;->mDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mDescription:Ljava/lang/CharSequence;

    iget v0, p2, Landroid/media/MediaRoute2Info;->mConnectionState:I

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mConnectionState:I

    iget-object v0, p2, Landroid/media/MediaRoute2Info;->mClientPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mClientPackageName:Ljava/lang/String;

    iget v0, p2, Landroid/media/MediaRoute2Info;->mVolumeHandling:I

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeHandling:I

    iget v0, p2, Landroid/media/MediaRoute2Info;->mVolumeMax:I

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeMax:I

    iget v0, p2, Landroid/media/MediaRoute2Info;->mVolume:I

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolume:I

    iget-object v0, p2, Landroid/media/MediaRoute2Info;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mAddress:Ljava/lang/String;

    iget-object v0, p2, Landroid/media/MediaRoute2Info;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_58

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p2, Landroid/media/MediaRoute2Info;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mExtras:Landroid/os/Bundle;

    :cond_58
    iget-object v0, p2, Landroid/media/MediaRoute2Info;->mProviderId:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mProviderId:Ljava/lang/String;

    return-void

    :cond_5d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mType:I

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeHandling:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mId:Ljava/lang/String;

    iput-object p2, p0, Landroid/media/MediaRoute2Info$Builder;->mName:Ljava/lang/CharSequence;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    return-void

    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "feature must not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addFeatures(Ljava/util/Collection;)Landroid/media/MediaRoute2Info$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaRoute2Info$Builder;"
        }
    .end annotation

    const-string v0, "features must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    goto :goto_9

    :cond_19
    return-object p0
.end method

.method public build()Landroid/media/MediaRoute2Info;
    .registers 3

    iget-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Landroid/media/MediaRoute2Info;

    invoke-direct {v0, p0}, Landroid/media/MediaRoute2Info;-><init>(Landroid/media/MediaRoute2Info$Builder;)V

    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "features must not be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearFeatures()Landroid/media/MediaRoute2Info$Builder;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public setAddress(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;
    .registers 2

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mAddress:Ljava/lang/String;

    return-object p0
.end method

.method public setClientPackageName(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;
    .registers 2

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mClientPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;
    .registers 2

    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mConnectionState:I

    return-object p0
.end method

.method public setDescription(Ljava/lang/CharSequence;)Landroid/media/MediaRoute2Info$Builder;
    .registers 2

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/media/MediaRoute2Info$Builder;
    .registers 3

    if-nez p1, :cond_6

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0

    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setIconUri(Landroid/net/Uri;)Landroid/media/MediaRoute2Info$Builder;
    .registers 2

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mIconUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setProviderId(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mProviderId:Ljava/lang/String;

    return-object p0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "providerId must not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSystemRoute(Z)Landroid/media/MediaRoute2Info$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/media/MediaRoute2Info$Builder;->mIsSystem:Z

    return-object p0
.end method

.method public setType(I)Landroid/media/MediaRoute2Info$Builder;
    .registers 2

    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mType:I

    return-object p0
.end method

.method public setVolume(I)Landroid/media/MediaRoute2Info$Builder;
    .registers 2

    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mVolume:I

    return-object p0
.end method

.method public setVolumeHandling(I)Landroid/media/MediaRoute2Info$Builder;
    .registers 2

    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeHandling:I

    return-object p0
.end method

.method public setVolumeMax(I)Landroid/media/MediaRoute2Info$Builder;
    .registers 2

    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeMax:I

    return-object p0
.end method
