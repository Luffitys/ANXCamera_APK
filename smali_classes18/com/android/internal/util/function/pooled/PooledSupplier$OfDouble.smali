.class public interface abstract Lcom/android/internal/util/function/pooled/PooledSupplier$OfDouble;
.super Ljava/lang/Object;
.source "PooledSupplier.java"

# interfaces
.implements Ljava/util/function/DoubleSupplier;
.implements Lcom/android/internal/util/function/pooled/PooledLambda;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/function/pooled/PooledSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfDouble"
.end annotation


# virtual methods
.method public bridge synthetic recycleOnUse()Lcom/android/internal/util/function/pooled/PooledLambda;
    .registers 2

    invoke-interface {p0}, Lcom/android/internal/util/function/pooled/PooledSupplier$OfDouble;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public abstract recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfDouble;
.end method
