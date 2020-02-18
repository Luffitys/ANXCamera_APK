.class public interface abstract Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTaskListener;
.super Ljava/lang/Object;
.source "SyncTaskListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onFailed(Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask<",
            "TT;>;",
            "Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onFinally(Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract onResponse(Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask<",
            "TT;>;TT;)V"
        }
    .end annotation
.end method

.method public abstract onStart(Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/ugc/effectmanager/effect/sync/SyncTask<",
            "TT;>;)V"
        }
    .end annotation
.end method
