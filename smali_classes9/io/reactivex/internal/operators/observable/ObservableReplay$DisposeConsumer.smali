.class final Lio/reactivex/internal/operators/observable/ObservableReplay$DisposeConsumer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final srw:Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$DisposeConsumer;->srw:Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;

    return-void
.end method


# virtual methods
.method public accept(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$DisposeConsumer;->srw:Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;->setResource(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$DisposeConsumer;->accept(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
