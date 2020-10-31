.class public interface abstract Lcom/android/internal/util/function/pooled/PooledPredicate;
.super Ljava/lang/Object;
.source "PooledPredicate.java"

# interfaces
.implements Lcom/android/internal/util/function/pooled/PooledLambda;
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/function/pooled/PooledLambda;",
        "Ljava/util/function/Predicate<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract asConsumer()Lcom/android/internal/util/function/pooled/PooledConsumer;
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

    invoke-interface {p0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    return-object v0
.end method

.method public abstract recycleOnUse()Lcom/android/internal/util/function/pooled/PooledPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/function/pooled/PooledPredicate<",
            "TT;>;"
        }
    .end annotation
.end method
