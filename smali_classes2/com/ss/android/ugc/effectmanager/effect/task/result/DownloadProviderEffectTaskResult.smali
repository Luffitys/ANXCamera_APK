.class public Lcom/ss/android/ugc/effectmanager/effect/task/result/DownloadProviderEffectTaskResult;
.super Lcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;
.source "DownloadProviderEffectTaskResult.java"


# instance fields
.field private effect:Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;

.field private exception:Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;


# direct methods
.method public constructor <init>(Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/DownloadProviderEffectTaskResult;->effect:Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;

    iput-object p2, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/DownloadProviderEffectTaskResult;->exception:Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    return-void
.end method


# virtual methods
.method public getEffect()Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/DownloadProviderEffectTaskResult;->effect:Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;

    return-object p0
.end method

.method public getException()Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/DownloadProviderEffectTaskResult;->exception:Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    return-object p0
.end method

.method public setEffect(Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/DownloadProviderEffectTaskResult;->effect:Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffect;

    return-void
.end method

.method public setException(Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/DownloadProviderEffectTaskResult;->exception:Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    return-void
.end method
