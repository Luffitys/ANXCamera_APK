.class public Lcom/ss/android/ugc/effectmanager/link/task/result/HostListStatusUpdateTaskResult;
.super Lcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;
.source "HostListStatusUpdateTaskResult.java"


# instance fields
.field private mExceptionResult:Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

.field private mHosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/link/model/host/Host;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/link/model/host/Host;",
            ">;",
            "Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/link/task/result/HostListStatusUpdateTaskResult;->mHosts:Ljava/util/List;

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/link/task/result/HostListStatusUpdateTaskResult;->mHosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/link/task/result/HostListStatusUpdateTaskResult;->mHosts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object p2, p0, Lcom/ss/android/ugc/effectmanager/link/task/result/HostListStatusUpdateTaskResult;->mExceptionResult:Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    return-void
.end method


# virtual methods
.method public getExceptionResult()Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/link/task/result/HostListStatusUpdateTaskResult;->mExceptionResult:Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    return-object p0
.end method

.method public getHosts()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/link/model/host/Host;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/link/task/result/HostListStatusUpdateTaskResult;->mHosts:Ljava/util/List;

    return-object p0
.end method

.method public setExceptionResult(Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/link/task/result/HostListStatusUpdateTaskResult;->mExceptionResult:Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    return-void
.end method

.method public setHosts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/link/model/host/Host;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/link/task/result/HostListStatusUpdateTaskResult;->mHosts:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/link/task/result/HostListStatusUpdateTaskResult;->mHosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "HostListStatusUpdateTaskResult{ Hosts{"

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }, mExceptionResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/link/task/result/HostListStatusUpdateTaskResult;->mExceptionResult:Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
