.class public final Lio/reactivex/internal/operators/observable/ObservableConcatMapCompletable;
.super Lio/reactivex/Completable;
.source ""


# instance fields
.field final bufferSize:I

.field final mapper:Lio/reactivex/functions/Function;

.field final source:Lio/reactivex/ObservableSource;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;I)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapCompletable;->source:Lio/reactivex/ObservableSource;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapCompletable;->mapper:Lio/reactivex/functions/Function;

    const/16 p1, 0x8

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapCompletable;->bufferSize:I

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 3

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapCompletable;->source:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableConcatMapCompletable$SourceObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapCompletable;->mapper:Lio/reactivex/functions/Function;

    iget p0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatMapCompletable;->bufferSize:I

    invoke-direct {v1, p1, v2, p0}, Lio/reactivex/internal/operators/observable/ObservableConcatMapCompletable$SourceObserver;-><init>(Lio/reactivex/CompletableObserver;Lio/reactivex/functions/Function;I)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
