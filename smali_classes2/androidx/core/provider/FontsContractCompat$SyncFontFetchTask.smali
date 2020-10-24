.class final Landroidx/core/provider/FontsContractCompat$SyncFontFetchTask;
.super Ljava/util/concurrent/FutureTask;
.source ""


# direct methods
.method constructor <init>(Landroidx/core/provider/FontsContractCompat$SyncFontFetchTaskCallable;)V
    .locals 0
    .param p1    # Landroidx/core/provider/FontsContractCompat$SyncFontFetchTaskCallable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method constructor <init>(Landroidx/core/provider/FontsContractCompat$SyncFontFetchTaskCallable;Landroidx/core/provider/FontsContractCompat$OnCompletedCallback;)V
    .locals 1
    .param p1    # Landroidx/core/provider/FontsContractCompat$SyncFontFetchTaskCallable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/provider/FontsContractCompat$OnCompletedCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroidx/core/provider/FontsContractCompat$SyncFontFetchTask$CallableWrapper;

    invoke-direct {v0, p1, p2}, Landroidx/core/provider/FontsContractCompat$SyncFontFetchTask$CallableWrapper;-><init>(Ljava/util/concurrent/Callable;Landroidx/core/provider/FontsContractCompat$OnCompletedCallback;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method
