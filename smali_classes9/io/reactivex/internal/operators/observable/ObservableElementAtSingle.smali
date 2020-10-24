.class public final Lio/reactivex/internal/operators/observable/ObservableElementAtSingle;
.super Lio/reactivex/Single;
.source ""

# interfaces
.implements Lio/reactivex/internal/fuseable/FuseToObservable;


# instance fields
.field final defaultValue:Ljava/lang/Object;

.field final index:J

.field final source:Lio/reactivex/ObservableSource;


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;JLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle;->source:Lio/reactivex/ObservableSource;

    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle;->index:J

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle;->defaultValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public fuseToObservable()Lio/reactivex/Observable;
    .locals 7

    new-instance v6, Lio/reactivex/internal/operators/observable/ObservableElementAt;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle;->source:Lio/reactivex/ObservableSource;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle;->index:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle;->defaultValue:Ljava/lang/Object;

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableElementAt;-><init>(Lio/reactivex/ObservableSource;JLjava/lang/Object;Z)V

    invoke-static {v6}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 4

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle;->source:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle$ElementAtObserver;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle;->index:J

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle;->defaultValue:Ljava/lang/Object;

    invoke-direct {v1, p1, v2, v3, p0}, Lio/reactivex/internal/operators/observable/ObservableElementAtSingle$ElementAtObserver;-><init>(Lio/reactivex/SingleObserver;JLjava/lang/Object;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
