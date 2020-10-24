.class public interface abstract Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract onDataReady(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onLoadFailed(Ljava/lang/Exception;)V
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
