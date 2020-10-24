.class public interface abstract Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract onLoadFailed(Ljava/lang/String;Ljava/util/List;Ljava/util/List;J)V
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract onLoadOK(Ljava/lang/String;Ljava/util/List;J)V
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method
