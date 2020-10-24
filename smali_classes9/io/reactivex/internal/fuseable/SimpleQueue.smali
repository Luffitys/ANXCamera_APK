.class public interface abstract Lio/reactivex/internal/fuseable/SimpleQueue;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract clear()V
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract offer(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
.end method

.method public abstract offer(Ljava/lang/Object;Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
.end method

.method public abstract poll()Ljava/lang/Object;
    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation
.end method
