.class Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask$1;
.super Ljava/lang/Object;
.source "DownloadEffectTask.java"

# interfaces
.implements Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTaskListener<",
        "Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectTaskResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;


# direct methods
.method constructor <init>(Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask$1;->this$0:Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask<",
            "Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectTaskResult;",
            ">;",
            "Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask$1;->this$0:Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;

    new-instance p1, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectTaskResult;

    invoke-static {p0}, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;->access$000(Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;)Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectTaskResult;-><init>(Lcom/ss/android/ugc/effectmanager/effect/model/Effect;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    const/16 p2, 0xf

    invoke-static {p0, p2, p1}, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;->access$300(Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;ILcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;)V

    return-void
.end method

.method public onFinally(Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask<",
            "Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectTaskResult;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectTaskResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask<",
            "Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectTaskResult;",
            ">;",
            "Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectTaskResult;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask$1;->this$0:Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;

    new-instance p1, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectTaskResult;

    invoke-virtual {p2}, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectTaskResult;->getEffect()Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectTaskResult;-><init>(Lcom/ss/android/ugc/effectmanager/effect/model/Effect;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    const/16 p2, 0xf

    invoke-static {p0, p2, p1}, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;->access$200(Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;ILcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;)V

    return-void
.end method

.method public bridge synthetic onResponse(Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectTaskResult;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask$1;->onResponse(Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectTaskResult;)V

    return-void
.end method

.method public onStart(Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask<",
            "Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectTaskResult;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask$1;->this$0:Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;

    new-instance p1, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectTaskResult;

    invoke-static {p0}, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;->access$000(Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;)Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectTaskResult;-><init>(Lcom/ss/android/ugc/effectmanager/effect/model/Effect;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    const/16 v0, 0x2a

    invoke-static {p0, v0, p1}, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;->access$100(Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectTask;ILcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;)V

    return-void
.end method
