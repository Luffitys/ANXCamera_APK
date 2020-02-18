.class public Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;
.super Ljava/lang/Object;
.source "CategoryEffectModel.java"


# instance fields
.field private category_key:Ljava/lang/String;

.field private collection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private cursor:I

.field private effects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private has_more:Z

.field private sorting_position:I

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategoryKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;->category_key:Ljava/lang/String;

    return-object p0
.end method

.method public getCollectEffects()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/Effect;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;->collection:Ljava/util/List;

    return-object p0
.end method

.method public getCursor()I
    .locals 0

    iget p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;->cursor:I

    return p0
.end method

.method public getEffects()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/Effect;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;->effects:Ljava/util/List;

    return-object p0
.end method

.method public getSortingPosition()I
    .locals 0

    iget p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;->sorting_position:I

    return p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;->version:Ljava/lang/String;

    return-object p0
.end method

.method public hasMore()Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;->has_more:Z

    return p0
.end method

.method public setCategoryKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;->category_key:Ljava/lang/String;

    return-void
.end method

.method public setCollectEffects(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/Effect;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;->collection:Ljava/util/List;

    return-void
.end method

.method public setCursor(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;->cursor:I

    return-void
.end method

.method public setEffects(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/Effect;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;->effects:Ljava/util/List;

    return-void
.end method

.method public setHasMore(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;->has_more:Z

    return-void
.end method

.method public setSortingPosition(I)V
    .locals 0

    iget p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;->sorting_position:I

    iput p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;->sorting_position:I

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;->version:Ljava/lang/String;

    return-void
.end method
