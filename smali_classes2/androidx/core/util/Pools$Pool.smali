.class public interface abstract Landroidx/core/util/Pools$Pool;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract acquire()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract release(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
