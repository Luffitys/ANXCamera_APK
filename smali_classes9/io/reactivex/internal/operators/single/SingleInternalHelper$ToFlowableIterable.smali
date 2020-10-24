.class final Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowableIterable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field private final sources:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowableIterable;->sources:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowableIterator;

    iget-object p0, p0, Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowableIterable;->sources:Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/single/SingleInternalHelper$ToFlowableIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method
