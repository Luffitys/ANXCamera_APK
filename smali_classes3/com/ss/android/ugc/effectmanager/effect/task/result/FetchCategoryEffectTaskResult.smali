.class public Lcom/ss/android/ugc/effectmanager/effect/task/result/FetchCategoryEffectTaskResult;
.super Lcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;
.source "FetchCategoryEffectTaskResult.java"


# instance fields
.field private categoryEffectModel:Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;

.field private exception:Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;


# direct methods
.method public constructor <init>(Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/FetchCategoryEffectTaskResult;->categoryEffectModel:Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;

    iput-object p2, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/FetchCategoryEffectTaskResult;->exception:Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    return-void
.end method


# virtual methods
.method public getEffectChannels()Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/FetchCategoryEffectTaskResult;->categoryEffectModel:Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;

    return-object p0
.end method

.method public getException()Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/FetchCategoryEffectTaskResult;->exception:Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    return-object p0
.end method

.method public setEffectChannels(Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/FetchCategoryEffectTaskResult;->categoryEffectModel:Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;

    return-void
.end method

.method public setException(Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/FetchCategoryEffectTaskResult;->exception:Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    return-void
.end method
