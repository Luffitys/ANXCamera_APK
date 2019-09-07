.class public Lcom/ss/android/ugc/effectmanager/effect/model/CategoryListModel;
.super Ljava/lang/Object;
.source "CategoryListModel.java"


# instance fields
.field private icon:Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryIconsModel;

.field private icon_selected:Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryIconsModel;

.field private id:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tags_updated_at:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/CategoryListModel;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/CategoryListModel;->key:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/CategoryListModel;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/CategoryListModel;->id:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/CategoryListModel;->key:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/CategoryListModel;->name:Ljava/lang/String;

    return-void
.end method
