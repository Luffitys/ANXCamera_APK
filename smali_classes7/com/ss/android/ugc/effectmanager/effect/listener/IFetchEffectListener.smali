.class public interface abstract Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListener;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract onFail(Lcom/ss/android/ugc/effectmanager/effect/model/Effect;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V
    .param p1    # Lcom/ss/android/ugc/effectmanager/effect/model/Effect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onStart(Lcom/ss/android/ugc/effectmanager/effect/model/Effect;)V
.end method

.method public abstract onSuccess(Lcom/ss/android/ugc/effectmanager/effect/model/Effect;)V
.end method
