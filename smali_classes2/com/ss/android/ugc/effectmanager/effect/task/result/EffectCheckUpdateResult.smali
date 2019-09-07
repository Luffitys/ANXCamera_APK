.class public Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectCheckUpdateResult;
.super Lcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;
.source "EffectCheckUpdateResult.java"


# instance fields
.field private exception:Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

.field private isUpdate:Z


# direct methods
.method public constructor <init>(ZLcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;-><init>()V

    iput-boolean p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectCheckUpdateResult;->isUpdate:Z

    iput-object p2, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectCheckUpdateResult;->exception:Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    return-void
.end method


# virtual methods
.method public getException()Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectCheckUpdateResult;->exception:Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    return-object p0
.end method

.method public isUpdate()Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectCheckUpdateResult;->isUpdate:Z

    return p0
.end method

.method public setException(Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectCheckUpdateResult;->exception:Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    return-void
.end method

.method public setUpdate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectCheckUpdateResult;->isUpdate:Z

    return-void
.end method
