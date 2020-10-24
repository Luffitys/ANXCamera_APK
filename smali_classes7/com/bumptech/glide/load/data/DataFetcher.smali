.class public interface abstract Lcom/bumptech/glide/load/data/DataFetcher;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract cleanup()V
.end method

.method public abstract getDataClass()Ljava/lang/Class;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getDataSource()Lcom/bumptech/glide/load/DataSource;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
