.class public interface abstract Lcom/android/internal/util/function/pooled/PooledConsumer;
.super Ljava/lang/Object;
.source "PooledConsumer.java"

# interfaces
.implements Lcom/android/internal/util/function/pooled/PooledLambda;
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/function/pooled/PooledLambda;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract recycleOnUse()Lcom/android/internal/util/function/pooled/PooledConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/function/pooled/PooledConsumer<",
            "TT;>;"
        }
    .end annotation
.end method

.method public bridge synthetic recycleOnUse()Lcom/android/internal/util/function/pooled/PooledLambda;
    .registers 2

    invoke-interface {p0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    return-object v0
.end method
