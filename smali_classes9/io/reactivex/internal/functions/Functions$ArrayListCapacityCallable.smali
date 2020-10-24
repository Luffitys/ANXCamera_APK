.class final Lio/reactivex/internal/functions/Functions$ArrayListCapacityCallable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final capacity:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/reactivex/internal/functions/Functions$ArrayListCapacityCallable;->capacity:I

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lio/reactivex/internal/functions/Functions$ArrayListCapacityCallable;->call()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public call()Ljava/util/List;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    iget p0, p0, Lio/reactivex/internal/functions/Functions$ArrayListCapacityCallable;->capacity:I

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method
