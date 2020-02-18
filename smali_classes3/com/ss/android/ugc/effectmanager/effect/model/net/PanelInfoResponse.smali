.class public Lcom/ss/android/ugc/effectmanager/effect/model/net/PanelInfoResponse;
.super Lcom/ss/android/ugc/effectmanager/common/model/BaseNetResponse;
.source "PanelInfoResponse.java"


# instance fields
.field private data:Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/ugc/effectmanager/common/model/BaseNetResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public checkValue()Z
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/net/PanelInfoResponse;->data:Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getData()Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/net/PanelInfoResponse;->data:Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;

    return-object p0
.end method

.method public setData(Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/net/PanelInfoResponse;->data:Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;

    return-void
.end method
