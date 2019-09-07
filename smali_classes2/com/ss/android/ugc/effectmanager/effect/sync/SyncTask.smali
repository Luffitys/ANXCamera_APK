.class public Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;
.super Ljava/lang/Object;
.source "SyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCanceled:Z

.field private mSyncTaskListener:Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTaskListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTaskListener<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;->mCanceled:Z

    return-void
.end method

.method public execute()V
    .locals 0

    return-void
.end method

.method public isCanceled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;->mCanceled:Z

    return p0
.end method

.method public onFailed(Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask<",
            "TT;>;",
            "Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;->mSyncTaskListener:Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTaskListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTaskListener;->onFailed(Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    :cond_0
    return-void
.end method

.method public onFinally(Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask<",
            "TT;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;->mSyncTaskListener:Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTaskListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTaskListener;->onFinally(Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask<",
            "TT;>;TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;->mSyncTaskListener:Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTaskListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTaskListener;->onResponse(Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onStart(Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask<",
            "TT;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;->mSyncTaskListener:Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTaskListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTaskListener;->onStart(Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTaskListener;)V
    .locals 0
    .param p1    # Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTaskListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTaskListener<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;->mSyncTaskListener:Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTaskListener;

    return-void
.end method
