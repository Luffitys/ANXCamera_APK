.class public Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;
.super Ljava/lang/Object;
.source "PanelInfoModel.java"


# instance fields
.field private category_effects:Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;

.field private category_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;",
            ">;"
        }
    .end annotation
.end field

.field private front_effect_id:Ljava/lang/String;

.field private panel:Lcom/ss/android/ugc/effectmanager/effect/model/EffectPanelModel;

.field private rear_effect_id:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategoryEffectModel()Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;->category_effects:Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;

    return-object p0
.end method

.method public getCategoryList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;->category_list:Ljava/util/List;

    return-object p0
.end method

.method public getFrontEffectId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;->front_effect_id:Ljava/lang/String;

    return-object p0
.end method

.method public getPanel()Lcom/ss/android/ugc/effectmanager/effect/model/EffectPanelModel;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;->panel:Lcom/ss/android/ugc/effectmanager/effect/model/EffectPanelModel;

    return-object p0
.end method

.method public getRearEffectId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;->rear_effect_id:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;->version:Ljava/lang/String;

    return-object p0
.end method

.method public setCategoryEffectModel(Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;->category_effects:Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;

    return-void
.end method

.method public setCategoryList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/EffectCategoryModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;->category_list:Ljava/util/List;

    return-void
.end method

.method public setFrontEffectId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;->front_effect_id:Ljava/lang/String;

    return-void
.end method

.method public setPanel(Lcom/ss/android/ugc/effectmanager/effect/model/EffectPanelModel;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;->panel:Lcom/ss/android/ugc/effectmanager/effect/model/EffectPanelModel;

    return-void
.end method

.method public setRearEffectId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;->rear_effect_id:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;->version:Ljava/lang/String;

    return-void
.end method
