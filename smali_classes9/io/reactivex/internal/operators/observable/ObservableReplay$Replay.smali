.class final Lio/reactivex/internal/operators/observable/ObservableReplay$Replay;
.super Lio/reactivex/observables/ConnectableObservable;
.source ""


# instance fields
.field private final co:Lio/reactivex/observables/ConnectableObservable;

.field private final observable:Lio/reactivex/Observable;


# direct methods
.method constructor <init>(Lio/reactivex/observables/ConnectableObservable;Lio/reactivex/Observable;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/observables/ConnectableObservable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$Replay;->co:Lio/reactivex/observables/ConnectableObservable;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$Replay;->observable:Lio/reactivex/Observable;

    return-void
.end method


# virtual methods
.method public connect(Lio/reactivex/functions/Consumer;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$Replay;->co:Lio/reactivex/observables/ConnectableObservable;

    invoke-virtual {p0, p1}, Lio/reactivex/observables/ConnectableObservable;->connect(Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$Replay;->observable:Lio/reactivex/Observable;

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
