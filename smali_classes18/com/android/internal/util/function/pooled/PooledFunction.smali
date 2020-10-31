.class public interface abstract Lcom/android/internal/util/function/pooled/PooledFunction;
.super Ljava/lang/Object;
.source "PooledFunction.java"

# interfaces
.implements Lcom/android/internal/util/function/pooled/PooledLambda;
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/function/pooled/PooledLambda;",
        "Ljava/util/function/Function<",
        "TA;TR;>;"
    }
.end annotation


# virtual methods
.method public abstract asConsumer()Lcom/android/internal/util/function/pooled/PooledConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/function/pooled/PooledConsumer<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract recycleOnUse()Lcom/android/internal/util/function/pooled/PooledFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/function/pooled/PooledFunction<",
            "TA;TR;>;"
        }
    .end annotation
.end method

.method public bridge synthetic recycleOnUse()Lcom/android/internal/util/function/pooled/PooledLambda;
    .registers 2

    invoke-interface {p0}, Lcom/android/internal/util/function/pooled/PooledFunction;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledFunction;

    move-result-object v0

    return-object v0
.end method
