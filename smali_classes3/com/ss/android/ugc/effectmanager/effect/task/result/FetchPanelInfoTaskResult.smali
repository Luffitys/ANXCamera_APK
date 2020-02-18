.class public Lcom/ss/android/ugc/effectmanager/effect/task/result/FetchPanelInfoTaskResult;
.super Lcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;
.source "FetchPanelInfoTaskResult.java"


# instance fields
.field private exception:Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

.field private panelInfoModel:Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;


# direct methods
.method public constructor <init>(Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/FetchPanelInfoTaskResult;->panelInfoModel:Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;

    iput-object p2, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/FetchPanelInfoTaskResult;->exception:Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    return-void
.end method


# virtual methods
.method public getException()Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/FetchPanelInfoTaskResult;->exception:Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    return-object p0
.end method

.method public getPanelInfoModel()Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/FetchPanelInfoTaskResult;->panelInfoModel:Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;

    return-object p0
.end method

.method public setException(Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/FetchPanelInfoTaskResult;->exception:Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    return-void
.end method

.method public setPanelInfoModel(Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/FetchPanelInfoTaskResult;->panelInfoModel:Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;

    return-void
.end method
