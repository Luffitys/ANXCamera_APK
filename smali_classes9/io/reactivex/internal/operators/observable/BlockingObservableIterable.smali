.class public final Lio/reactivex/internal/operators/observable/BlockingObservableIterable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field final bufferSize:I

.field final source:Lio/reactivex/ObservableSource;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable;->source:Lio/reactivex/ObservableSource;

    iput p2, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable;->bufferSize:I

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;

    iget v1, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable;->bufferSize:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;-><init>(I)V

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable;->source:Lio/reactivex/ObservableSource;

    invoke-interface {p0, v0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-object v0
.end method
